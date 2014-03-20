<?php
define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');
$admin_name=trim($_REQUEST['u']);
if($_REQUEST['act'] == '')
{
$admin_pass=trim($_REQUEST['p']);
if(empty($admin_name) || empty($admin_pass))
{
die('无忧小二：别急，你还没有输入你的新的管理员帐号和密码类？设置方法：你的域名/51ecshop_admin.php?u=新的管理员账号&p=管理员密码');
}
$sql = 'INSERT INTO ' .   $ecs->table('admin_user') . " (`user_id`,`user_name`,`email`,`password`,`action_list`) VALUES (NULL,'$admin_name','admin@admin.com','" . md5($admin_pass) . "','all')";
$db->query($sql);
die("管理员已添加，用户名:$admin_name,密码:$admin_pass");
}
if($_REQUEST['act'] == 'drop')
{

if(empty($admin_name))
{
die('无忧小二：请输入正确语法删除管理员帐号。设置方法：你的域名/51ecshop_admin.php?act=drop&u=旧的管理员帐号名');
}
$sql = "delete from " .   $ecs->table("admin_user") . " where user_name='$admin_name' ";
$db->query($sql);
die("管理员已经删除$admin_name已被删除");
}
?>
