@echo off
cls

set czas=0
del 1.txt
del stop.txt

:czasomierz
cls
set /a czas+=1
echo Aktualny czas to %czas% sekund.
timeout 1 >nul
if exist stop.txt (
    goto koniec
) else (
    goto czasomierz
)

:koniec
echo %czas% > czas.txt
exit
