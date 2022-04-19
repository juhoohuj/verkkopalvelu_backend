<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';
session_start();

$errors = array(); 
try{
  $db = openDB();

// REGISTER USER
  $input = json_decode(file_get_contents('php://input'));

  $firstname = filter_var($input->firstname,FILTER_SANITIZE_SPECIAL_CHARS);
  $lastname = filter_var($input->lastname,FILTER_SANITIZE_SPECIAL_CHARS);
  $email = filter_var($input->email,FILTER_SANITIZE_SPECIAL_CHARS);
  $password_1 = filter_var($input->password1,FILTER_SANITIZE_SPECIAL_CHARS);
  $password_2 = filter_var($input->password2,FILTER_SANITIZE_SPECIAL_CHARS);
  $address = filter_var($input->address,FILTER_SANITIZE_SPECIAL_CHARS);
  $zipcode = filter_var($input->zipcode,FILTER_SANITIZE_SPECIAL_CHARS);
  $city = filter_var($input->city,FILTER_SANITIZE_SPECIAL_CHARS);

  //Form validation
  if (empty($firstname)) { 
    array_push($errors, "Etunimi vaaditaan"); 
  }
  if (empty($lastname)) { 
    array_push($errors, "Sukunimi vaaditaan"); 
  }
  if (empty($email)) { 
    array_push($errors, "Sähköposti vaaditaan"); 
  }
  if (empty($password_1)) { 
    array_push($errors, "Salasana vaaditaan");
  }
  if ($password_1 != $password_2) {
	array_push($errors, "Salasanat ei vastaa toisiaan");
  }
  if (empty($address)) { 
    array_push($errors, "Osoite vaaditaan"); 
  }
  if (empty($zipcode)) { 
    array_push($errors, "Postinumero vaaditaan"); 
  }
  if (empty($city)) { 
    array_push($errors, "Postitoimipaikka vaaditaan"); 
  }
  // Check the database to make sure 
  // a user does not already exist with the email
  $user_check_query = "SELECT * FROM customer where email= ? LIMIT 1";
  $result = $db->prepare($user_check_query);
  $result->execute([$email]);
  $user = $result->fetchAll();

  if ($user) { // if user exists
      array_push($errors, "Sähköposti on jo rekisteröity");
  }
  // Register user if there are no errors in the form
  if (count($errors) == 0) {
  	$hashed_password = password_hash($password_1, PASSWORD_DEFAULT);//encrypt the password before saving in the database

  	$query = "INSERT INTO customer (password, firstname, lastname, email, address, zipcode, city) 
  			      VALUES('$hashed_password', '$firstname', '$lastname', '$email', '$address', '$zipcode', '$city')";

  	$register = $db->prepare($query);
    $register->execute();
  	$_SESSION['email'] = $email;
  	$_SESSION['success'] = "You are now logged in";
  } else {
      echo json_encode($errors);
  }
}  catch (PDOException $pdoex) {
    returnError($pdoex);
  
}
