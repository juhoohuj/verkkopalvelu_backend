<?php
require_once './inc/functions.php';
require_once './inc/headers.php';



$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);
$keyword = $parameters[1];

try {
    $db = openDB();

    $sql = "select * from product where name like '%$keyword%'";
    $query = $db->query($sql);
    $products = $query->fetchAll(PDO::FETCH_ASSOC);

    header('HTTP/1.1 200 OK');
    echo json_encode(array(
        "products" => $products
    ));

}catch (PDOException $pdoex) {
  returnError($pdoex);
}