<?php
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/lib_order.php');


/*
*	acquire uid and accesstoken from facebook and use as the user info in kite db
*/
if($_REQUEST['step'] == 'login')
{
	include_once('includes/cls_json.php');
	$uid = $_GET['uid'];
	$token = $_GET['token'];
	$sql = "replace into ". $ecs->table('users'). " (user_id,access_token,channel) values(".$uid.",'".$token."',1)";
	
	$result = $GLOBALS['db']->query($sql);
	$_SESSION['user_id'] = $uid;
	 
	 if($_GET['reload'] == 1)
	 	header('Location: http://www.kitetea.com/');
}