#module:build and release for onlin
#author:linkxiao
#date:2015 10 11 00:10

targetPrefix="./release"

# build static
edp build -s release -f
version="heart"
# 目标模板路径
tplDist="$targetPrefix/views/heart"
mkdir -p $tplDist
cat output/index.html  > $tplDist/index.tpl
rm output/index.html

# 目标静态资源路径
staticDist="$targetPrefix/fe/heart"
# 清空目标目录
rm -rf $staticDist/*
staticDirPath=$staticDist
mkdir -p $staticDirPath
cp -rf output/asset $staticDirPath
cp -rf output/dep $staticDirPath

# clean
rm -rf output
mkdir output
# tar
tar czf output/fe.tar.gz $targetPrefix

#cp -rf output/fe/m/patient/$version/ $odpRoot/webroot/static/wise/m/patient/
#cp -rf output/views/m-patient/index.tpl $odpRoot/template/wise/
