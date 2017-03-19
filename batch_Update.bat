@echo off
color 0E
title Update Sofone Repo.

set WorkingDir=%~dp0
set PythonCMD=c:\Python27\python.exe
set SufoneRepo_UpdateScript=%WorkingDir%/addons_xml_generator.py

echo update soufone repo
%PythonCMD%  %SufoneRepo_UpdateScript%

echo commit to github
git add */*
git commit "update repo."
git push --set-upstream origin master
