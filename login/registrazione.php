<?php

session_start();

// variabili connessione

$host="localhost";
$user="root";
$password="";

$con = mysqli_connect($host,$user,$password);  // funzione connessione

mysqli_select_db($con,'registrazione');   // seleziona il database

// variabili di tipo post che prendono in input i dati dalla form index.html
$uname=$_POST['username'];
$email=$_POST['email'];
$password=$_POST['password'];



$sql="select * from utenti_reg where username='$uname'";  // fa il check con username all'interno del database 

	
$result=mysqli_query($con, $sql);

$num = mysqli_num_rows($result);

// controlla se l'utente esiste già nel database 

if($num == 1){   // se esiste una riga 
	echo "<script>alert('L'utente esiste già!'); </script>";	
    header('location:reg_fall.html');

}
else{  // altrimenti lo inserisce nella tabella utenti tramite la insert
	$reg= "insert into utenti_reg(username,email,password) values ('$uname','$email', '$password') ";
	mysqli_query($con, $reg);
	echo"Registrazione effettuata con successo!";
    header('location:index.html');
	
}

?>