@echo off
color 0E
title Update Sofone Repo.
REM C:\Users\soufian\AppData\Local\GitHub\GitHub.appref-ms --open-shell


set WorkingDir=%~dp0
set PythonCMD=c:\Python27\python.exe
set SufoneRepo_UpdateScript=%WorkingDir%/addons_xml_generator.py

echo update soufone repo
%PythonCMD%  %SufoneRepo_UpdateScript%

cd %WorkingDir%
echo commit to github
git config credential.helper store
git config --global user.name "soufon94"
git add *
git commit -m "update repo."
git push --set-upstream origin master
