<?php

require './core/core.php';

if(isset($_SESSION['id']) && !empty($_SESSION['id'])){
    unset($_SESSION['id']);
    header("Location:/$base_url/login.php");
}
