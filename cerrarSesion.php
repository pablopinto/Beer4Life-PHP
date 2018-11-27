<?php
require_once "session/sesion.php";
$ses = Sesion::startSession() ;
$_SESSION=array();
Sesion::close();
header("location:index.php");