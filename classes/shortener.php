<?php
  class Shortener {
   protected $db;

   //соединение с бд
   public function __construct() {
    $this->db = new Mysqli('mysql.zzz.com.ua', 'sinber', 'Andrew1904', 'sinber');
   }

   //генерация кода
   public function generateCode() {
     $symbols = 'qwertyuiopasdfghjklzxcvbnm1234567890';
     $count = strlen($symbols);
     $time = time();
     $result = '';
     for($i=0;$i<4;$i++){
       $n = $time%$count;
       $time = ($time - $n)/$count;
       $result .= $symbols[$n];
     }
    return $result;
   }

   public function makeCode($url) {
    $url = trim($url);

    //фильтрация, входящее значение проверяется как url
    if(!filter_var($url, FILTER_VALIDATE_URL)) {
     return '';
    }

    $url = $this->db->escape_string($url);

    //запрос к бд

    $exsists = $this->db->query("SELECT code FROM links WHERE url = '{$url}'");

    //если такая строка уже есть, то возвращается значение столбца code
    if($exsists->num_rows) {
     return $exsists->fetch_object()->code;
    } 
    //если нет, то заносится новая url, генерируется код и добавляется в таблицу
    else {
     $this->db->query("INSERT INTO links(url) VALUES('{$url}')");

     $code = $this->generateCode();

     $this->db->query("UPDATE links SET code = '{$code}' WHERE url = '{$url}'");

     return $code;
    }
   }

   public function getUrl($code) {
    $code = $this->db->escape_string($code);
    $code = $this->db->query("SELECT url FROM links WHERE code = '$code'");

    if($code->num_rows) {
     return $code->fetch_object()->url;
    }

    return '';
   }
  }
?>