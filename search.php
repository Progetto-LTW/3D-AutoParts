<?php   
    // Db connect
    $conn = mysqli_connect("localhost", "root", "", "cart_system");
    $sql = "SELECT * FROM `product` WHERE `product_name` LIKE '%".$_POST['name']."%' OR `product_auto` LIKE '%".$_POST['name']."%' ";
    $result = mysqli_query($conn, $sql);
    if(mysqli_num_rows($result)>0){
        while ($row=mysqli_fetch_assoc($result)) {
            echo "	
            <tr>
            <td>".$row['product_name']."</td>
            <td>".$row['product_auto']."</td>
            <td>".$row['product_price']."€</td>
            

            </tr>

                    
                ";
        }
    }
    else{
        echo "<tr><td>0 result's found</td></tr>";
    }
    



?>