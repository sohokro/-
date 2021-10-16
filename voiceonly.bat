@echo off
echo 音声取り出しプログラム
echo 2021/10/10 そほけろ作成
echo このbatはFFmpegを使用しています。インストールされていない場合、https://ffmpeg.org/ からダウンロードしてください。
set /p inputfile="ファイルを選択してください >"
ffprobe %inputfile%
set settings= -vn -acodec copy 
set outputname= %inputfile%_output.
set /p outputstyle="保存形式を選択してください >"
ffmpeg -i %inputfile%%settings%%outputname%%outputstyle%
pause