@echo off
setlocal enabledelayedexpansion
set n=0
echo jpg��webp�ϊ��v���O����v0.1(FFmpeg�񓯍���)
echo 2021/10/18 ���ق���쐬
echo ����bat��FFmpeg���g�p���Ă��܂��B�C���X�g�[������Ă��Ȃ��ꍇ�Ahttps://ffmpeg.org/ ����_�E�����[�h���Ă��������B
set /p inputfile="�ϊ��������ʐ^�̓������t�H���_�������Ƀh���b�N���h���b�v���Ă������� >"
set /p outputfile="�ۑ��������t�H���_�������Ƀh���b�N���h���b�v���Ă������� >"
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
