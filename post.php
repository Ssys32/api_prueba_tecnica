<?php
include "config.php";
include "utils.php";
$dbConn =  connect($db);
/*
  listar todos los posts o solo uno
 */
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['autor']))
    {
        //Mostrar una entrada
      $sql = $dbConn->prepare("SELECT * FROM entradas where autor=:autor");
      $sql->bindValue(':autor', $_GET['autor']);
      $sql->execute();
      $sql->setFetchMode(PDO::FETCH_ASSOC);
      header("HTTP/1.1 200 OK");
      echo json_encode(  $sql->fetchAll(PDO::FETCH_ASSOC));
      exit();
	}
	else 
	{
	    //Mostrar lista de entradas
      $sql = $dbConn->prepare("SELECT * FROM entradas");
      $sql->execute();
      $sql->setFetchMode(PDO::FETCH_ASSOC);
      header("HTTP/1.1 200 OK");
      echo json_encode( $sql->fetchAll());
      exit();
	}
}
// Crear una nueva entrada
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $input = $_POST;
    $sql = "INSERT INTO entradas
          (titulo, autor, fecha, contenido)
          VALUES
          (:titulo, :autor, :fecha, :contenido)";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    $Id = $dbConn->lastInsertId();
    if($Id)
    {
      $input['id'] = $Id;
      header("HTTP/1.1 200 OK");
      echo json_encode($input);
      exit();
	 }
}

//En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");
?>