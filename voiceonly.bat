@echo off
echo �������o���v���O����
echo 2021/10/10 ���ق���쐬
echo ����bat��FFmpeg���g�p���Ă��܂��B�C���X�g�[������Ă��Ȃ��ꍇ�Ahttps://ffmpeg.org/ ����_�E�����[�h���Ă��������B
set /p inputfile="�t�@�C����I�����Ă������� >"
ffprobe %inputfile%
set settings= -vn -acodec copy 
set outputname= %inputfile%_output.
set /p outputstyle="�ۑ��`����I�����Ă������� >"
ffmpeg -i %inputfile%%settings%%outputname%%outputstyle%
pause