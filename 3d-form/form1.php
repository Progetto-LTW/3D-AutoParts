<?php

session_start();

// variabili connessione

$host="localhost";
$user="root";
$password="";

$con = mysqli_connect($host,$user,$password);  // funzione connessione

mysqli_select_db($con,'3d');   // seleziona il database


$nome=$_POST['nome'];
$cognome=$_POST['cognome'];
$email=$_POST['email'];
$metodo=$_POST['metodo'];
$file=$_POST['file'];



$sql="select * from form1 where nome='$nome'";  // fa il check con username all'interno del database 

	
$result=mysqli_query($con, $sql);

$num = mysqli_num_rows($result);


// inserisce nella tabella form1 tramite la insert
	$reg= "insert into form1(nome,cognome,email,metodo,file) values ('$nome','$cognome', '$email','$metodo','$file') ";
	
	mysqli_query($con, $reg);
	
    header('location:form_succ.html');

?>