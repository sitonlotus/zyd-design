#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build:docs

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<xiaobaili1992>.github.io
# git push -f git@github.com:xiaobaili1992/xiaobaili1992.github.io.git master
# git@github.com:xiaobaili1992/zyd-design.git

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:xiaobaili1992/zyd-design.git master:gh-pages

cd -