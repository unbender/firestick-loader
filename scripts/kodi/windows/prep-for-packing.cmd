@echo off

:reset

title Prep Kodi For Packaging                             esc0rtd3w 2016



del /f /q "%AppData%\Kodi\kodi.log"
del /f /q "%AppData%\Kodi\kodi.log.old"
del /f /q "%AppData%\Kodi\addons\packages\*"
rd /s /q "%AppData%\Kodi\cache"
rd /s /q "%AppData%\Kodi\media"
rd /s /q "%AppData%\Kodi\system"




:end