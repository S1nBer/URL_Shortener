<?php
  session_start();
  require_once "classes/shortener.php";

  $s = new Shortener();

  if(isset($_POST['url'])) {
   $url = $_POST['url'];

   if($code = $s->makeCode($url)) {
    $_SESSION['message'] = "Дело сделано, вот ссылка: <a href='http://".$_SERVER['HTTP_HOST']."/".$code."'>http://".$_SERVER['HTTP_HOST']."/".$code."</a>";
   } else {
    $_SESSION['message'] = "Ошибка! Возможно, некорректный URL?";
   }
  }
  header('Location: index.php');
?>