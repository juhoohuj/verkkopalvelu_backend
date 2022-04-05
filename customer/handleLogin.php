<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';
session_start();

$errors = array();

$db = openDB();

$input = json_decode(file_get_contents('php://input'));

$email = filter_var($input->email,FILTER_SANITIZE_SPECIAL_CHARS);
$password = filter_var($input->password,FILTER_SANITIZE_SPECIAL_CHARS);

  if (empty($email)) {
  	array_push($errors, "Sähköposti vaaditaan");
  }
  if (empty($password)) {
  	array_push($errors, "Salasana vaaditaan");
  }

  if (empty($errors)) {
  	$query = "SELECT * FROM customer WHERE email= ? ";
    $results = $db->prepare($query);
		$results->bindParam(1, $email);
    $results->execute();

		$user = $results->fetch();

		if($user !== false) { //Check if user exists in database
  		if (password_verify($password, $user['password'])) { //Check if password matches returns true or false
  	  	$_SESSION['firstname'] = $user['firstname'];
				$_SESSION['lastname'] = $user['lastname'];
				array_push($errors, "Tervetuloa " .$_SESSION['firstname']. " ".$_SESSION['lastname']);
  		}
			else { //Wrong password
				array_push($errors, "Väärä sähköposti tai salasana");
			}}

			else { //Wrong email
				array_push($errors, "Väärä sähköposti tai salasana");

			}
  }

	echo json_encode($errors);