<?php
session_start();
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$input = json_decode(file_get_contents('php://input'));

$firstname = filter_var($input->firstname,FILTER_SANITIZE_SPECIAL_CHARS);
$lastname = filter_var($input->lastname,FILTER_SANITIZE_SPECIAL_CHARS);
$email = filter_var($input->email,FILTER_SANITIZE_SPECIAL_CHARS);
$address = filter_var($input->address,FILTER_SANITIZE_SPECIAL_CHARS);
$zip = filter_var($input->zip,FILTER_SANITIZE_SPECIAL_CHARS);
$city = filter_var($input->city,FILTER_SANITIZE_SPECIAL_CHARS);
$cart = $input->cart;



try{
  $db = openDB();
  $db->beginTransaction();

  $date = date('Y-m-d H:i:s');

  $sql = "insert into customer (firstname, lastname, email, address, zipcode, city) values ('$firstname', '$lastname', '$email', '$address', '$zip', '$city')";
  $sth = $db->prepare($sql);
  $sth->execute();

  $customer_id = 	$db->lastInsertId();


  $sql = "insert into orders (customer_id, orderdate) values ($customer_id, '$date')";
  $sth = $db->prepare($sql);
  $sth->execute();

  $order_id = $db->lastInsertId();

  foreach ($cart as $product) {
    $sql = "insert into orderline (order_id, product_id, amount) values ($order_id, $product->id, $product->amount )";
    $sth = $db->prepare($sql);
    $sth->execute();
  }
  $db->commit();

  header('HTTP/1.1 200 OK');
  $data = array('id' => $customer_id);
  echo json_encode($data);
} 
catch (PDOException $pdoex) {
    $db->rollBack();
    returnError($pdoex);
  
}
