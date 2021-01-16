rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:Straight-GZ/q-ui.git &&
git remote add origin2 git@e.coding.net:gengzhi/vue3/qui.git &&
git remote add origin3 git@gitee.com:gengzhii/q-ui.git &&
git push -f -u origin master &&
git push -f -u origin2 master &&
git push -f -u origin3 master &&
cd - 
echo https://straight-gz.github.io/q-ui/index.html#/

