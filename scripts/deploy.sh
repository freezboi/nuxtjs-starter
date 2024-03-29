#!/bin/bash
ZIP_PATH=$(ls /home/ec2-user/front/build/*.zip)

pm2 kill

# 기존 프로젝트 폴더 삭제
rm -rf /home/ec2-user/front/app
mkdir /home/ec2-user/front/app

echo "> $ZIP_PATH 압축 해제"
unzip -d /home/ec2-user/front/app/ $ZIP_PATH

cd /home/ec2-user/front/app

npm i

npm start