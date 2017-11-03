@echo off
color 0E
title Update Sofone Repo.

set WorkingDir=%~dp0
set PythonCMD=c:\Python27\python.exe
set SufoneRepo_UpdateScript=%WorkingDir%/addons_xml_generator.py

echo update soufone repo
%PythonCMD%  %SufoneRepo_UpdateScript%

cd %WorkingDir%
echo commit to github

set GitHubExe="C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"



%GitHubExe%  git config credential.helper store
%GitHubExe%  git config --global user.name "soufon94"
%GitHubExe%  git add *
%GitHubExe%  git commit -m "update repo."
%GitHubExe%  git push --set-upstream origin master
echo commit fini 

pause