<?php 
$errors = '';
$myemail = 'contact@kitetea.com';
if(empty($_POST['name'])  || 
   empty($_POST['email']) || 
   empty($_POST['message']))
{
    $errors .= "\n Error: Please fill in all the required fields";
}

$name = $_POST['name']; 
$email_address = $_POST['email']; 
$message = $_POST['message']; 

if( empty($errors))
{
	$to = $myemail; 
	$email_subject = "KITE Inquiry";
	$email_body = "
	Name: $name
	Email: $email_address
	Message:
	$message"; 
	
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