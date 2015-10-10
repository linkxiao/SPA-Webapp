<?php
date_default_timezone_set("PRC");

require('./mock/libs/Smarty.class.php');

$smarty = new Smarty();
$smarty->left_delimiter = "{%";
$smarty->right_delimiter = "%}";

$smarty->assign('tplData', array(
    "path"=>"/src",//配置全局路径，方便部署上线
    'homeData'=>array(
        "bannerImg"=>array(//配置banner路径，方便以后对banner维护
          0     => array('img' => '/src/common/img/banner1.jpg', 'link'=>'#/item/item~1'),
          1     => array('img' => '/src/common/img/banner2.jpg', 'link'=>'#/item/item~2'),
          2     => array('img' => '/src/common/img/banner3.jpg', 'link'=>'#/other/other~3'),
        )
    ),
    'region'=> '新加坡'//动态配置region，方便以后扩展地域
));

$smarty->display('index.html');
