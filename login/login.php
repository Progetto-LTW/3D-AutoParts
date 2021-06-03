<?php

session_start();


$host="localhost";
$user="root";
$password="";

$con = mysqli_connect($host,$user,$password);

mysqli_select_db($con,'registrazione');


$uname=$_POST['username'];
$password=$_POST['password'];	


$sql="SELECT * FROM utenti_reg WHERE username='$uname' && password='$password'";

$result=mysqli_query($con, $sql);

$num = mysqli_num_rows($result);

if ($result->num_rows > 0){
    $_SESSION['username'] = $uname;
    header("location:../index.php");
}


	
if(isset($_POST['Signin'])){
        $sql="SELECT * FROM utenti_reg WHERE username='$uname' && password='$password'";
        $result = mysqli_query($con,$sql);
        $count=mysqli_num_rows($result);
        if($count >= 1){
            session_start();
            $_SESSION['LoginId']=$uname;
            header("location:index.php");
        }else{
            echo"<script>alert('Password sbagliata'); </script> ";
        }
}    



// controlla se esiste già un utente 

if($num == 1){
	header('location:../index.php');	
}
else{
	header('location:login_fall.html');
}































































    


