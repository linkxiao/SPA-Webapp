开发环境搭建（MAC OS）
转至元数据结尾
创建： 李理，最新修改： 肖凤言 于 2015-10-08 转至元数据起始
Ⅰ.Please install some software before you to do(在开始之前需要你安装以下软件):
  1>Install Homebrew: ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" or ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  2>Install NodeJs: brew install node
  3>Install Git: brew install git
  4>Install EDP: npm install -g edp
  5>Install php-cgi:brew install php54 --with-cgi --with-debug , 如果提示远程服务挂镜,
   则执行:'sh -c "$( curl http://fouber.github.io/install-php-cgi/install-php.sh -k )" -o 5.4.38'命令;
   如果两者都挂了，则复制插件:下载php-cgi(在百度中搜索"php-cgi for mac",如:php-mac.tar.gz)然后解压,将bin文件中的"php-cgi,phpize,php-config"文件至"/usr/local/bin/"下；


Ⅱ.Explain(说明):
  1>Homebrew:Homebrew是mac osX平台下最流行的包管理工具,project中的很多依赖包都需要用它来Install;
  2>NodeJs:Node Package Manager,Nodejs的包管理器,我们project中的很多packages用npm很方便进行包的升级和管理,such as: edp,compress and so on...;
  3>Git:版本管理利器
  4>EDP:前端集成开发平台,提供了webserver以及前端常用的打包,压缩等构建功能;
  5>php-cgi:php环境,提供php解析功能,mac osx默认自带了php,通常我们自己需要自定义php版本;
  6>summary:以上各软/插件,判断是否Install成功,只需要在终端下面执行: 对应的软件名 --version, such as:
    $ brew --version
         0.9.5
Ⅲ.Get Project(获取工程):
  1>clone by http:通过http通信方式进行克隆:运行终端进入自己的project目录,执行git clone命令,For example:git clone http://gitlab.baidu.com/care-fe/wise.git;
  2>clone by ssh:通过ssh通信方式进行克隆:
    a>生存rsa非对称密钥:$ssh-keygen -t rsa -C "your_email@example.com";
    b>复制sshkeys并粘贴到gitlab中:运行"clip < ~/.ssh/id_rsa.pub"命令将刚生存的ssh key复制到粘贴板中,然后到gitlab的profiles->setings->ssh keys目录,将其粘贴进去;
    c>开始clone:执行git clone命令,For example:git clone ssh://g@gitlab.baidu.com:8022/care-fe/wise.git;
  3>summary:建议采用第一种clone方式,第二种生存非对称密钥的clone方式详细请参考:http://www.tecmint.com/ssh-passwordless-login-using-ssh-keygen-in-5-easy-steps/
IV.Install dependence(安装依赖):
  1>npm install:运行终端进入自己的project目录,执行npm install命令,npm包管理工具会自动安装package中的工程依赖插件(需要依赖哪些插件,pc/wise患者端工程已经配置过了;
如果是新的工程,需要自己手动配置package.json,然后再执行npm install);
  2>such as:
 "dependencies": {
  "edp-provider-rider": "^0.4.5",
  "rider-ui": "^0.1.2",
  "node-phpcgi": "^0.2.8"
  },运行"npm install"后,project根目录下会生存一个node_modules目录，"edp-provider-rider,edp-provider-rider,rider-ui,node-phpcgi"便会被install到该目录下.

V.Run:
  1>edp ws start:在自己的project目录下,执行edp ws start命令,project会进入启动进程中,几秒中终端会出现一个url,for example:http://192.168.1.1:8848/
  2>Open url through browser:在浏览器中输入该url
  至此,project已经run起来了！
