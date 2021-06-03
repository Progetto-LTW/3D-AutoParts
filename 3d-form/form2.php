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
$file=$_POST['file'];
$descrizione=$_POST['descrizione'];



$sql="select * from form2 where nome='$nome'";  // fa il check con nome all'interno del database 

	
$result=mysqli_query($con, $sql);

$num = mysqli_num_rows($result);



// inserisce nella tabella form1 tramite la insert
	$reg= "insert into form2(nome,cognome,email,file,descrizione) values ('$nome','$cognome', '$email','$file','$descrizione') ";
	
	mysqli_query($con, $reg);
	
    header('location:form_succ.html');

?>