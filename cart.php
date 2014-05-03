<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Administrator
 * Date: 14-4-20
 * Time: 下午12:32
 * To change this template use File | Settings | File Templates.
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/lib_order.php');


if($_REQUEST['step'] == 'add_all_to_cart')
{
	include_once('includes/cls_json.php');
	$teaId = $_POST['goods'];
	$_POST['acc']=strip_tags(urldecode($_POST['acc']));
    $_POST['acc'] = json_str_iconv($_POST['acc']);
    $json = new JSON();
    $acc = $json->decode($_POST['acc']);

	//清空购物车
	 clear_cart();
	
	//批量添加商品到购物车
    try{
        addto_cart($teaId, 1, '',0,0); //添加主茶

        $accName = $acc->names;
        $accNum = $acc->count;
        for($i=0;$i<count($accName); $i++) //添加配件
        {
            addto_cart(intval($accName[$i]),$accNum[$i],'',$teaId);
        }

        $result =Array();
        if ($_CFG['cart_confirm'] > 2)
        {
            $result['message'] = '';
        }
        else
        {
            $result['message'] = $_CFG['cart_confirm'] == 1 ? $_LANG['addto_cart_success_1'] : $_LANG['addto_cart_success_2'];
        }
        $result['error']=0; //没有错误
        $result['content'] = insert_cart_info();
        $result['confirm_type'] = !empty($_CFG['cart_confirm']) ? $_CFG['cart_confirm'] : 2;
        die($json->encode($result));
    }
    catch(Exception $e)
    {
        $result = Array();
        $result['message'] = $e->getMessage();
        $result['error'] = 3;
        die($json->encode($result));
    }
}
