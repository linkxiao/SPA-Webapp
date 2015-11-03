<?php
date_default_timezone_set("PRC");
/*
说明：以下require的“Smarty.class.php”文件是用于解析smarty模版,我本机是从网上下载的用于解析smarty模版的lib包，不知道你那边怎么配置。
地址：这是官网的说明文档和下载地址：http://www.smarty.net/download
*/
require('./mock/libs/Smarty.class.php');

$smarty = new Smarty();
$smarty->left_delimiter = "{%";
$smarty->right_delimiter = "%}";

$smarty->assign('tplData', array(
    "path"=>"./release/fe/heart/asset",//配置全局路径，方便部署上线
    'homeData'=>array(
        "bannerImg"=>array(//配置banner路径，方便以后对banner维护
          0     => array('img' => './release/fe/heart/asset/common/img/banner1.jpg', 'link'=>'#/item/item~1'),
          1     => array('img' => './release/fe/heart/asset/common/img/banner2.jpg', 'link'=>'#/item/item~2'),
          2     => array('img' => './release/fe/heart/asset/common/img/banner3.jpg', 'link'=>'#/other/other~3'),
        )
    ),
    'region'=> '新加坡'//动态配置region，方便以后扩展地域
));

$smarty->display('./release/views/heart/index.tpl');
