<?php
    $menu = $_POST['menu'];
    $fullname = $_POST['customername'];
    $quantity = $_POST['quantity_item'];
    $address = $_POST ['address_cust'];
    $phonenumber = $_POST ['phone_num'];
    $total = $_POST ['total_item'];
    $date = $_POST['created_at'];
    saveToFile($menu, $fullname, $quantity, $address,$phonenumber,$total,$date);
    saveToDatabase($menu, $fullname, $quantity, $address,$phonenumber,$total,$date);
    header('Location:success.html');

    function saveToFile($menu, $fullname, $quantity, $address,$phonenumber,$total,$date ){
        $fileHandler = fopen('record.txt', 'a');
        $string =$menu .','. $fullname .','. $quantity .','. $address.','.$phonenumber.','.$total.','.$date;
        fwrite($fileHandler, $string);
        fclose($fileHandler);
    }
    function saveToDatabase($menu, $fullname, $quantity, $address,$phonenumber,$total,$date){
        $serverName = "localhost";
        $database = "mohfoods";
        $username = "root";
        $password = "";

        $conn = mysqli_connect($serverName, $username, $password, $database);
        if(!$conn){
            die("connection failed:" .mysqli_connect());
        }
        $sql = "INSERT INTO `order` (`order_id`,`menu`, `customername`, `quantity_item`, `address_cust`,`phone_num`, `total_item`, `created_at`)
            VALUES ('','$menu', '$fullname', '$quantity', '$address','$phonenumber','$total','$date')";
        $result = mysqli_query ($conn, $sql);

        if (!$result){
            die("Error:". $sql. "<br>" . mysqli_error($conn));
        }
        mysqli_close($conn);
    }
    ?>

    
    