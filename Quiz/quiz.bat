@echo off
title Quiz o Meksyku
:menu
if exist sukces.txt del sukces.txt
if exist stop.txt del stop.txt
if exist czas.txt del czas.txt
cls
color a
echo.
echo Witaj w tym krotkim quizie o Meksyku!
echo.
echo Wybierz opcje!

echo 1. Rozpocznij quiz.
echo 2. Wyniki graczy.
echo 3. Wyjscie.

set /p opcja=Wybierz opcje:
if %opcja%==1 goto Start
if %opcja%==2 goto Wyniki
if %opcja%==3 goto Koniec

:Wyniki
cls

set /p WynikO=Aby pokazac wyniki wcisnij 1, aby je zresetowac wcisnij 2, aby wrocic do menu wcisnij 3:
if %WynikO%==1 goto PokazWyniki
if %WynikO%==2 goto Reset
if %WynikO%==3 goto Menu

:PokazWyniki
cls
echo Uwaga, nie potrafie sortowac wynikow pomimo wielu prob, wiec wyniki sa w kolejnosci rozwiazan.
timeout /t 4 >nul
cls
if exist wyniki.txt (type wyniki.txt) ELSE (echo Wyniki nie istnieja.)
echo.
echo Wcisnij dowolny klawisz aby powrocic.
pause>nul
goto Wyniki
:Reset
cls
if exist wyniki.txt (echo sukces > sukces.txt)
if exist wyniki.txt (del wyniki.txt) ELSE (echo Wyniki nie istnieja.)
if exist sukces.txt echo Wyniki zostaly zresetowane!
timeout /t 2 >nul
if exist sukces.txt del sukces.txt
goto Wyniki

:Start
cls
set pkt=0
set /p imie=Podaj imie:

start /MIN czas.bat

:p1
cls
echo Pytanie 1. 
echo Jakie jest najwieksze miasto w Meksyku?
echo a. Mexico City
echo b. Guadalajara
echo c. Monterrey

set /p odp1=Wpisz litere: 
set w1=%odp1%

if /i %w1% == a (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
goto p2
:p2
cls
echo Pytanie 2. 
echo Ktora rzeka stanowi granice pomiedzy Meksykiem a Stanami Zjednoczonymi?
echo a. Rio Grande
echo b  Amazonka
echo c. Jukatan


set /p odp2=Wpisz litere: 
set w2=%odp2%

if /i %w2% == a (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p3
cls
echo Pytanie 3. 
echo Jak nazywa sie slynne meksykanskie danie skladaj?ce si? z tortilli z miesem i roznymi dodatkami?
echo a. Spaghetti
echo b. Enchiladas
echo c. Tacos

set /p odp3=Wpisz litere: 
set w3=%odp3%

if /i %w3% == c (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p4
cls
echo Pytanie 4. 
echo Jakie sa najwazniejsze swieta narodowe obchodzone w Meksyku?
echo a. Dia de la Revolucion (Dzien Rewolucji) i Dia de la Constitucion (Dzien Konstytucji)
echo b. Cinco de Mayo (Piaty Maj) i Dia de los Reyes (Swieto Trzech Kroli)
echo c. Dia de la Independencia (Dzien Niepodleglosci) i Dia de los Muertos (Dzien Zmarlych)
set /p odp4=Wpisz litere: 
set w4=%odp4%

if /i %w4% == c (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p5
cls
echo Pytanie 5. 
echo Jakie sa popularne meksykanskie alkohole?
echo a. Tequila i mezcal
echo b. Rum i whisky
echo c. Piwo i wodka
set /p odp5=Wpisz litere: 
set w5=%odp5%

if /i %w5% == a (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul

echo stop >> stop.txt
cls 
echo Kliknij dowolny przycisk aby poznac wynik!
pause>nul
set /p czas1=<czas.txt
set /a SumaWynik=%pkt%*100-%czas1%
echo Ukonczyles quiz z wynikiem %pkt% na 5 punktow w czasie %czas1%sekund, dajac wynik %SumaWynik%.
echo.


if %pkt%==5 echo "Quiz ukonczony na 100%! Gratulacje!"
if %pkt%==4 echo Juz prawie! Jeszcze raz!
if %pkt%==3 echo Lepiej lecz musisz dac z siebie wiecej..
if %pkt%==2 echo Lepiej lecz musisz dac z siebie wiecej.
if %pkt%==1 echo Lepiej sproboj ponownie...
if %pkt%==0 echo Lepiej sproboj ponownie...
echo.
echo Wcisnij dowolny klawisz aby kontynuowac.
pause>nul
cls
echo Czy chcesz zapisac wynik?
echo.
set /p zapisz="Czy zapisac wynik? (tak/nie): "
set zapis=%zapisz%
if /i %zapis%==tak (
  echo %imie% uzyskal %pkt% punktow w czasie %czas1% sekund, dajac ogolny wynik %SumaWynik%. >> wyniki.txt
)
cls

set /p ponownie="Czy chcesz wyjsc do menu? (tak/nie): "
set pon=%ponownie%
if /i "%pon%"=="tak" (
  goto menu
) ELSE (
  goto Koniec
)





:Koniec
cls 
if exist stop.txt (del stop.txt) 
if exist czas.txt (del czas.txt) 
timeout /t 1 >nul
echo Do 
timeout /t 1 >nul
echo zobaczenia!
timeout /t 2 >nul
exit