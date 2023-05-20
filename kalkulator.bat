@echo off
title Kalkulator
color a
:menu
cls
echo.
echo Witaj w Kalkulatorze!
echo.
echo 1. Podstawowe Dzialania
echo 2. Geometria
echo 3. Konwersja
echo 4. Inne
echo 5. Wyjscie
echo.
set /p OpcjaS=Wybierz opcje:

if %OpcjaS%==1 goto podstawowe
if %OpcjaS%==2 goto geometria
if %OpcjaS%==3 goto konwersja
if %OpcjaS%==4 goto inne
if %OpcjaS%==5 goto wyjscie

:podstawowe
cls
echo.
echo Dostepne funckje:
echo.
echo 1. Dodawanie
echo 2. Odejmowanie
echo 3. Mnozenie
echo 4. Dzielenie
echo 5. Powrot do menu
echo.
set /p opcjaP=Wybierz opcje:
if %opcjaP%==1 goto dodawanie
if %opcjaP%==2 goto odejmowanie
if %opcjaP%==3 goto mnozenie
if %opcjaP%==4 goto dzielenie
if %opcjaP%==5 goto menu


:dodawanie
cls
echo.
echo Dodawanie
echo.
set /p dod1=Podaj pierwsza liczbe:
set /p dod2=Podaj druga liczbe:
set /a dod3=%dod1%+%dod2%
echo.
echo Wynik: %dod3%
echo.
pause
goto podstawowe

:odejmowanie
cls
echo.
echo Odejmowanie
echo.
set /p ode1=Podaj pierwsza liczbe:
set /p ode2=Podaj druga liczbe:
set /a ode3=%ode1%-%ode2%
echo.
echo Wynik: %ode3%
echo.
pause
goto podstawowe

:mnozenie
cls
echo.
echo Mnozenie
echo.
set /p mno1=Podaj pierwsza liczbe:
set /p mno2=Podaj druga liczbe:
set /a mno3=%mno1%*%mno2%
echo.
echo Wynik: %mno3%
echo.
pause
goto podstawowe

:dzielenie
cls
echo.
echo Dzielenie
echo.
set /p dzi1=Podaj pierwsza liczbe:
set /p dzi2=Podaj druga liczbe:
set /a dzi3=%dzi1%/%dzi2%
echo.
echo Wynik: %dzi3%
echo.
pause
goto podstawowe
















:geometria
cls
echo.
echo Dostepne funckje:
echo.
echo 1. Pole kwadratu
echo 2. Pole prostokata
echo 3. Pole trojkata
echo 4. Pole kola
echo 5. Obwod kwadratu
echo 6. Obwod prostokata
echo 7. Obwod trojkata
echo 8. Obwod kola
echo 9. Powrot do menu
echo.
set /p opcjaG=Wybierz opcje:
if %opcjaG%==1 goto polekwadratu
if %opcjaG%==2 goto poleprostokata
if %opcjaG%==3 goto poletrojkata
if %opcjaG%==4 goto polekola
if %opcjaG%==5 goto obwodkwadratu
if %opcjaG%==6 goto obwodprostokata
if %opcjaG%==7 goto obwodtrojkata
if %opcjaG%==8 goto obwodkola
if %opcjaG%==9 goto menu

:polekwadratu
cls
echo.
echo Pole kwadratu
echo.
set /p kwad1=Podaj bok kwadratu:
set /a kwad2=%kwad1%*%kwad1%
echo.
echo Wynik: %kwad2%
echo.
pause
goto geometria

:poleprostokata
cls
echo.
echo Pole prostokata
echo.
set /p pros1=Podaj pierwszy bok prostokata:
set /p pros2=Podaj drugi bok prostokata:
set /a pros3=%pros1%*%pros2%
echo.
echo Wynik: %pros3%
echo.
pause
goto geometria

:poletrojkata
cls
echo.
echo Pole trojkata
echo.
set /p troj1=Podaj podstawe trojkata:
set /p troj2=Podaj wysokosc trojkata:
set /a troj3=(%troj1%*%troj2%)/2
echo.
echo Wynik: %troj3%
echo.
pause
goto geometria

:polekola
cls
echo.
echo Pole kola
echo.
set /p kol1=Podaj promien kola:
set /a kol2=3,14*%kol1%*%kol1%
echo.
echo Wynik: %kol2%
echo.
pause
goto geometria

:obwodkwadratu
cls
echo.
echo Obwod kwadratu
echo.
set /p kwad1=Podaj bok kwadratu:
set /a kwad2=%kwad1%*4
echo.
echo Wynik: %kwad2%
echo.
pause
goto geometria

:obwodprostokata
cls
echo.
echo Obwod prostokata
echo.
set /p pros1=Podaj pierwszy bok prostokata:
set /p pros2=Podaj drugi bok prostokata:
set /a pros3=(%pros1%*2)+(%pros2%*2)
echo.
echo Wynik: %pros3%
echo.
pause
goto geometria

:obwodtrojkata
cls
echo.
echo Obwod trojkata
echo.
set /p troj1=Podaj pierwszy bok trojkata:
set /p troj2=Podaj drugi bok trojkata:
set /p troj3=Podaj trzeci bok trojkata:
set /a troj4=%troj1%+%troj2%+%troj3%
echo.
echo Wynik: %troj4%
echo.
pause
goto geometria

:obwodkola
cls
echo.
echo Obwod kola
echo.
set /p kol1=Podaj promien kola:
set /a kol2=2*3,14*%kol1%
echo.
echo Wynik: %kol2%
echo.
pause
goto geometria


:konwersja
cls
echo.
echo Dostepne funckje:
echo.
echo 1. Temperatura
echo 2. Masa
echo 3. Powrot do menu
echo.
set /p opcjaK=Wybierz opcje:
if %opcjaK%==1 goto temperatura
if %opcjaK%==2 goto masa
if %opcjaK%==3 goto menu

:temperatura
cls
echo.
echo Dostepne funckje:
echo.
echo 1. Celcjusz na Fahrenheita
echo 2. Fahrenheit na Celcjusza
echo 3. Powrot do menu
echo.
set /p opcjaT=Wybierz opcje:
if %opcjaT%==1 goto celcjusz
if %opcjaT%==2 goto fahrenheit
if %opcjaT%==3 goto konwersja

:celcjusz
cls
echo.
echo Celcjusz na Fahrenheita
echo.
set /p cel1=Podaj temperature w stopniach Celcjusza:
set /a cel2=(%cel1%*9/5)+32
echo.
echo Wynik: %cel2%
echo.
pause
goto temperatura

:fahrenheit
cls
echo.
echo Fahrenheit na Celcjusza
echo.
set /p far1=Podaj temperature w stopniach Fahrenheita:
set /a far2=(%far1%-32)*5/9
echo.
echo Wynik: %far2%
echo.
pause
goto temperatura

:masa
cls
echo.
echo Dostepne funckje:
echo.
echo 1. Kilogramy na Funty
echo 2. Powrot do menu
echo.
set /p opcjaM=Wybierz opcje:
if %opcjaM%==1 goto kilogramy
if %opcjaM%==2 goto konwersja

:kilogramy
cls
echo.
echo Kilogramy na Funty
echo.
set /p kil1=Podaj mase w Kilogramach:
set /a kil2=%kil1%*2,20462262
echo.
echo Wynik: %kil2%
echo.
pause
goto masa


:inne
cls
echo.
echo Wybierz funckje:
echo.
echo 1. Najwieksza liczba
echo 2. Najmniejsza liczba
echo 3. Srednia arytmetyczna
echo 4. Mediana
echo 5. Powrot do menu
echo 6. totalnie dzialajacy program 100 procent
echo.
set /p opcjaI=Wybierz opcje:
if %opcjaI%==1 goto najwieksza
if %opcjaI%==2 goto najmniejsza
if %opcjaI%==3 goto sredniaarytmetyczna
if %opcjaI%==4 goto mediana
if %opcjaI%==5 goto menu
if %opcjaI%==6 goto bezsens

:najwieksza
cls
echo.
echo Najwieksza liczba
echo.
set /p naj1=Podaj pierwsza liczbe:
set /p naj2=Podaj druga liczbe:
set /p naj3=Podaj trzecia liczbe:
if %naj1% GTR %naj2% if %naj1% GTR %naj3% set naj4=%naj1%
if %naj2% GTR %naj1% if %naj2% GTR %naj3% set naj4=%naj2%
if %naj3% GTR %naj1% if %naj3% GTR %naj2% set naj4=%naj3%
echo.
echo Najwieksza liczba: %naj4%
echo.
pause
goto inne

:najmniejsza
cls
echo.
echo Najmniejsza liczba
echo.
set /p naj1=Podaj pierwsza liczbe:
set /p naj2=Podaj druga liczbe:
set /p naj3=Podaj trzecia liczbe:
if %naj1% LSS %naj2% if %naj1% LSS %naj3% set naj4=%naj1%
if %naj2% LSS %naj1% if %naj2% LSS %naj3% set naj4=%naj2%
if %naj3% LSS %naj1% if %naj3% LSS %naj2% set naj4=%naj3%
echo.
echo Najwieksza liczba: %naj4%
echo.
pause
goto inne

:sredniaarytmetyczna
cls
echo.
echo Srednia arytmetyczna
echo.
set /p sre1=Podaj pierwsza liczbe:
set /p sre2=Podaj druga liczbe:
set /p sre3=Podaj trzecia liczbe:
set /a sre4=(%sre1%+%sre2%+%sre3%)/3
echo.
echo Srednia arytmetyczna: %sre4%
echo.
pause
goto inne


:mediana
cls
echo.
echo Mediana
echo.
set /p med1=Podaj pierwsza liczbe:
set /p med2=Podaj druga liczbe:
set /p med3=Podaj trzecia liczbe:
if %med1% GTR %med2% if %med1% GTR %med3% set med4=%med1%
if %med2% GTR %med1% if %med2% GTR %med3% set med4=%med2%
if %med3% GTR %med1% if %med3% GTR %med2% set med4=%med3%
if %med1% LSS %med2% if %med1% LSS %med3% set med4=%med1%
if %med2% LSS %med1% if %med2% LSS %med3% set med4=%med2%
if %med3% LSS %med1% if %med3% LSS %med2% set med4=%med3%
echo.
echo Mediana: %med4%
echo.
pause
goto inne




Witam pana





:bezsens
cls
echo.
echo Obliczanie imienia bazujac na wiek
set /p imie=Podaj imie:
set /p wiek=Podaj wiek:
echo Jestes %wiek% i masz %imie% lat
echo.
echo Pozdrawiam
echo.
echo Wcisnij dowolny przycisk
pause>nul
goto inne


:wyjscie
cls
timeout /t 2 >nul
echo Do zobaczenia!
timeout /t 2 >nul
exit





pause