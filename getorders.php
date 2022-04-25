<?php
require_once 'inc/functions.php';
require_once 'inc/headers.php';

try{
    $db = openDB();
    
    $sql = "select firstname, lastname, customer_id, orders.order_id, name, amount, orderdate from orders, customer, orderline, product where orders.customer_id = customer.id && orderline.order_id = orders.order_id && product.id = orderline.product_id;";
    $query = $db->query($sql);
    $results = $query->fetchAll(PDO::FETCH_ASSOC);
    header('HTTP/1.1 200 OK');
    print json_encode($results);
}   catch (PDOException $pdoex) {
    returnError($pdoex);
}