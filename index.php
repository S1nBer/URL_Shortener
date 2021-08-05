<?php
  session_start();
?>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <title>Сокращатель URL</title>
  <link rel="stylesheet" href="css/style.css">
  <script src="libs/jquery-3.5.1.min.js"></script>
</head>
<body>
  <div class="container">
   <h1 class="title">Сокращатель URL</h1>
<?php
  if(isset($_SESSION['message'])) {
   echo "<p>".$_SESSION['message']."</p>";
   unset($_SESSION['message']);
  }
?>
   <form id="form">
    <input type="url" name="url" placeholder="Введите URL" autocomplete="off">
    <input type="submit" value="Сократить">
   </form>
  </div>
</body>
<script>
  $("#form").on("submit", function(){
	$.ajax({
		url: 'shorten.php',
		method: 'post',
		dataType: 'html',
		data: $(this).serialize()
	});
});
</script>
</html>