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

</body>
</html>