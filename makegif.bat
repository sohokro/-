@echo off
echo gif変換プログラム
echo 2021/10/10 そほけろ作成
echo このbatはFFmpegを使用しています。インストールされていない場合、https://ffmpeg.org/ からダウンロードしてください。
set /p inputfile="ファイルを選択してください >"
set settings= -filter_complex "split [a][b];[a] palettegen [p];[b][p] paletteuse" 
set outputfile="%inputfile%_output.gif"
ffmpeg -i %inputfile%%settings%%outputfile%
pause