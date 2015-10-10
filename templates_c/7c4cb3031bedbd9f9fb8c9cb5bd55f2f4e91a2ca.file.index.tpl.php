<?php /* Smarty version Smarty-3.1.13, created on 2015-10-11 00:28:18
         compiled from "release/views/heart/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9772724856193adf969394-22417548%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7c4cb3031bedbd9f9fb8c9cb5bd55f2f4e91a2ca' => 
    array (
      0 => 'release/views/heart/index.tpl',
      1 => 1444494325,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9772724856193adf969394-22417548',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_56193adf9ac511_52280500',
  'variables' => 
  array (
    'tplData' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_56193adf9ac511_52280500')) {function content_56193adf9ac511_52280500($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no, email=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <title>法兰医疗</title>
    <link href="<?php echo $_smarty_tpl->tpl_vars['tplData']->value['path'];?>
/common/css/app.css" rel="stylesheet" >
    <script src="<?php echo $_smarty_tpl->tpl_vars['tplData']->value['path'];?>
/plugin/esl/1.0/esl.js"></script>
    <script src="<?php echo $_smarty_tpl->tpl_vars['tplData']->value['path'];?>
/plugin/zepto/1.6/zepto.min.js"></script>
  	<script src="<?php echo $_smarty_tpl->tpl_vars['tplData']->value['path'];?>
/plugin/touch/1.0/toucher.js"></script>
    <script>
    require.config({
        'baseUrl': '<?php echo $_smarty_tpl->tpl_vars['tplData']->value['path'];?>
',
        'paths': {},
        'packages': [
            {
                'name': 'etpl',
                'location': '../dep/etpl/3.0.1/asset',
                'main': 'main'
            },
            {
                'name': 'fastclick',
                'location': '../dep/fastclick/1.0.6/asset',
                'main': 'fastclick'
            },
            {
                'name': 'saber-ajax',
                'location': '../dep/saber-ajax/2.1.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-dom',
                'location': '../dep/saber-dom/1.0.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-emitter',
                'location': '../dep/saber-emitter/2.0.0/asset',
                'main': 'emitter'
            },
            {
                'name': 'saber-firework',
                'location': '../dep/saber-firework/2.0.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-lang',
                'location': '../dep/saber-lang/2.0.1/asset',
                'main': 'main'
            },
            {
                'name': 'saber-mm',
                'location': '../dep/saber-mm/1.0.1/asset',
                'main': 'main'
            },
            {
                'name': 'saber-promise',
                'location': '../dep/saber-promise/2.0.0/asset',
                'main': 'promise'
            },
            {
                'name': 'saber-router',
                'location': '../dep/saber-router/2.0.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-run',
                'location': '../dep/saber-run/1.0.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-string',
                'location': '../dep/saber-string/1.0.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-uri',
                'location': '../dep/saber-uri/1.0.6/asset',
                'main': 'main'
            },
            {
                'name': 'saber-viewport',
                'location': '../dep/saber-viewport/1.1.0/asset',
                'main': 'main'
            },
            {
                'name': 'saber-widget',
                'location': '../dep/saber-widget/1.0.0/asset',
                'main': 'main'
            }
        ]
    });
    </script>
</head>

<body>

<div id="viewport" data-path="<?php echo $_smarty_tpl->tpl_vars['tplData']->value['path'];?>
">


</div>
<script>
  define('global/path', <?php echo json_encode($_smarty_tpl->tpl_vars['tplData']->value['path']);?>
);
  define('global/homedata', <?php echo json_encode($_smarty_tpl->tpl_vars['tplData']->value['homeData']);?>
);
  define('global/region', <?php echo json_encode($_smarty_tpl->tpl_vars['tplData']->value['region']);?>
);

  require(['app'], function (app) {
      app.init();
  });
</script>
</body>
</html>
<?php }} ?>