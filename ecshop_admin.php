<?php
define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');
$admin_name=trim($_REQUEST['u']);
if($_REQUEST['act'] == '')
{
$admin_pass=trim($_REQUEST['p']);
if(empty($admin_name) || empty($admin_pass))
{
die('����С�����𼱣��㻹û����������µĹ���Ա�ʺź������ࣿ���÷������������/51ecshop_admin.php?u=�µĹ���Ա�˺�&p=����Ա����');
}
$sql = 'INSERT INTO ' .   $ecs->table('admin_user') . " (`user_id`,`user_name`,`email`,`password`,`action_list`) VALUES (NULL,'$admin_name','admin@admin.com','" . md5($admin_pass) . "','all')";
$db->query($sql);
die("����Ա����ӣ��û���:$admin_name,����:$admin_pass");
}
if($_REQUEST['act'] == 'drop')
{

if(empty($admin_name))
{
die('����С������������ȷ�﷨ɾ������Ա�ʺš����÷������������/51ecshop_admin.php?act=drop&u=�ɵĹ���Ա�ʺ���');
}
$sql = "delete from " .   $ecs->table("admin_user") . " where user_name='$admin_name' ";
$db->query($sql);
die("����Ա�Ѿ�ɾ��$admin_name�ѱ�ɾ��");
}
?>
