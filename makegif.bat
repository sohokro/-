@echo off
echo gif�ϊ��v���O����
echo 2021/10/10 ���ق���쐬
echo ����bat��FFmpeg���g�p���Ă��܂��B�C���X�g�[������Ă��Ȃ��ꍇ�Ahttps://ffmpeg.org/ ����_�E�����[�h���Ă��������B
set /p inputfile="�t�@�C����I�����Ă������� >"
set settings= -filter_complex "split [a][b];[a] palettegen [p];[b][p] paletteuse" 
set outputfile="%inputfile%_output.gif"
ffmpeg -i %inputfile%%settings%%outputfile%
pause