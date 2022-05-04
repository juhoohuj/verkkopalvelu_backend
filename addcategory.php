<?php
require_once 'inc/functions.php';
require_once 'inc/headers.php';

$input = json_decode(file_get_contents('php://input'));
$name = filter_var($input->name,FILTER_SANITIZE_STRING);

try{
    $db = openDb();

    $query = $db->prepare('insert into category(name) values (:name)');
    $query->bindValue(':name',$name,PDO::PARAM_STR);
    $query->execute();

    header('HTTP/1.1 200 OK');
    $data = array('id' => $db->lastInsertId(),'name' => $name);
    print json_encode($data);
}
    catch (PDOException $pdoex) {
        returnError($pdoex);
}