<?php

/**
 * ECSHOP formula文件
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');


 $_SESSION['user_id'] =0; //for test



if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = true;
}
$ua = strtolower($_SERVER['HTTP_USER_AGENT']);

$uachar = "/(nokia|sony|ericsson|mot|samsung|sgh|lg|philips|panasonic|alcatel|lenovo|cldc|midp|mobile)/i";

if(($ua == '' || preg_match($uachar, $ua))&& !strpos(strtolower($_SERVER['REQUEST_URI']),'wap'))
{
    $Loaction = 'mobile/';

    if (!empty($Loaction))
    {
        ecs_header("Location: $Loaction\n");

        exit;
    }

}



/*------------------------------------------------------ */
//-- 判断是否存在缓存，如果存在则调用缓存，反之读取相应内容
/*------------------------------------------------------ */
/* 缓存编号 */
$cache_id = sprintf('%X', crc32($_SESSION['user_rank'] . '-' . $_CFG['lang']));


    assign_template();

    /*$position = assign_ur_here();
    $smarty->assign('page_title',      $position['title']);    // 页面标题
    $smarty->assign('ur_here',         $position['ur_here']);  // 当前位置*/

    $sql = 'select A.goods_id,A.session_id,A.goods_number,B.goods_img,B.goods_name from '. $ecs->table('collect_goods').
        "as A left join ".$ecs->table('goods')." as B on A.goods_id=B.goods_id where user_id =".$_SESSION['user_id'] ." order by A.rec_id DESC";
    $res = $db->getAll($sql);
    $res = sortRecipe($res);
    //var_dump($res[0]);die();

    /* meta information */
    $smarty->assign('keywords',        htmlspecialchars($_CFG['shop_keywords']));
    $smarty->assign('description',     htmlspecialchars($_CFG['shop_desc']));
    $smarty->assign('currentPage','formula');
    $smarty->assign('recipes',$res);

    


    /* 页面中的动态内容 */
   // assign_dynamic('index');


$smarty->display('formula.dwt');

/*
 * get user recipes from collect_goods db
 * array $res : user collect history
 * output array $recipes:
 * Sample output array (size=2)
  'session_id' => string '512d3ead8d9f7fb758a9786313e25b1c' (length=32)
  'goods' =>
    array (size=2)
      0 =>
        array (size=3)
          0 => string '5' (length=1)
          1 => string '0' (length=1)
          2 => string 'images/201404/goods_img/5_G_1397491152885.jpg' (length=45)
      1 =>
        array (size=3)
          0 => string '1' (length=1)
          1 => string '0' (length=1)
          2 => string 'images/201403/goods_img/1_G_1395399414346.jpg' (length=45)
* Author :Daniel
 */
function sortRecipe($res)
{
    $recipes = Array();
    foreach($res as $oneres)
    {

        $mark = 0;
        for($i = 0 ; $i< count($recipes); $i++)
        {
            if($recipes[$i]['session_id'] == $oneres['session_id'])
            {
                array_push( $recipes[$i]['goods'],array('goods_id'=> $oneres['goods_id'],'goods_num'=>$oneres['goods_number'],'goods_img'=>$oneres['goods_img'],'goods_name'=>$oneres['goods_name']));
                $mark =1;
                break;
            }
        }
        if($mark == 0)
        {

            array_push($recipes,array('session_id'=>$oneres['session_id'],'goods'=>array(array('goods_id'=> $oneres['goods_id'],'goods_num'=>$oneres['goods_number'],'goods_img'=>$oneres['goods_img'],'goods_name'=>$oneres['goods_name']))));

        }

    }
    return $recipes;
}

