<?php
require_once 'inc/functions.php';
require_once 'inc/headers.php';


$input = json_decode(file_get_contents('php://input'));
$order_id = filter_var($input->order_id,FILTER_SANITIZE_STRING);

try{
    $db = openDb();

    $query = $db->prepare('
    DELETE FROM orderline WHERE order_id = (:order_id);
    DELETE FROM orders WHERE order_id = (:order_id);');
    $query->bindValue(':order_id' ,$order_id,PDO::PARAM_INT);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('order_id' => $order_id);
    print json_encode($data);
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}