@echo off
setlocal enabledelayedexpansion
set n=0
echo jpg→webp変換プログラムv0.1(FFmpeg非同梱版)
echo 2021/10/18 そほけろ作成
echo このbatはFFmpegを使用しています。インストールされていない場合、https://ffmpeg.org/ からダウンロードしてください。
set /p inputfile="変換したい写真の入ったフォルダをここにドラック＆ドロップしてください >"
set /p outputfile="保存したいフォルダをここにドラック＆ドロップしてください >"
pushd %inputfile%
for /r %%a in (*.jpg) do (
echo %%a
set /a n=!n!+1
ffmpeg -i %%a %outputfile%\!n!.webp
)
for /r %%a in (*.jpeg) do (
echo %%a
set /a n=!n!+1
ffmpeg -i %%a %outputfile%\!n!.webp
)
pause
