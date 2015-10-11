<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no, email=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <title>法兰医疗</title>
    <link href="{%$tplData.path%}/common/css/app.css" rel="stylesheet" >
    <script src="{%$tplData.path%}/plugin/esl/1.0/esl.js"></script>
    <script src="{%$tplData.path%}/plugin/zepto/1.6/zepto.min.js"></script>
  	<script src="{%$tplData.path%}/plugin/touch/1.0/toucher.js"></script>
    <script>
    require.config({
        'baseUrl': '{%$tplData.path%}',
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

<div id="viewport" data-path="{%$tplData.path%}">


</div>
<script>
  define('global/path', {%$tplData.path|@json_encode%});
  define('global/homedata', {%$tplData.homeData|@json_encode%});
  define('global/region', {%$tplData.region|@json_encode%});

  require(['app'], function (app) {
      app.init();
  });
</script>
</body>
</html>