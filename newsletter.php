<?php 
$errors = '';
$myemail = 'contact@kitetea.com';
if(empty($_POST['name'])  || 
   empty($_POST['email']))
{
    $errors .= "\n Error: Please fill in all the required fields";
}

$name = $_POST['name']; 
$email_address = $_POST['email']; 

if( empty($errors))
{
	$to = $myemail; 
	$email_subject = "KITE Subscription";
	$email_body = "
	Name: $name
	Email: $email_address";
	
	$headers = "From: $email_address";
	
	mail($to,$email_subject,$email_body,$headers);
} 
?>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Invalid Form</title>
</head>
<body>

<?php
echo nl2br($errors);
?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47032460-1', 'kitetea.com');
  ga('send', 'pageview');

</script>
</body>
</html>