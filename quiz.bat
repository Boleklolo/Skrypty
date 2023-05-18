@echo off
if exist sukces.txt del sukces.txt
if exist stop.txt del stop.txt
if exist czas.txt del czas.txt
:menu
cls
color a
echo.
echo Witaj w tym krotkim quizie!
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
timeout /t 2 >nul
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
echo W jakim jezyku jest napisany ten quiz?
echo a. C++
echo b. Python
echo c. Bash
echo d. HTML

set /p odp1=Wpisz litere: 
set w1=%odp1%

if /i %w1% == c (
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
echo Do czego sluzy komenda echo?
echo a. Wyswietlania tekstu
echo b  Zapisywania tekstu do pliku
echo c. Tworzenia pliku
echo d. Wszystkie powyzsze.


set /p odp2=Wpisz litere: 
set w2=%odp2%

if /i %w2% == d (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p3
cls
echo Pytanie 3. 
echo Do czego sluzy opcja /i w set?
echo a. Do ignorowania wielkosci liter
echo b. Do ignorowania spacji
echo c. Do ignorowania znakow specjalnych
echo d. Do ignorowania wszystkiego.


set /p odp3=Wpisz litere: 
set w3=%odp3%

if /i %w3% == a (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p4
cls
echo Pytanie 4. 
echo Czy mozna zrobic quiz w batchu?
echo a. Nie
echo b. Tak
echo c. Nie wiem
echo d. Nie wiem i nie chce mi sie sprawdzac.
set /p odp4=Wpisz litere: 
set w4=%odp4%

if /i %w4% == b (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p5
cls
echo Pytanie 5. 
echo Kto pomagal w tworzeniu Windowsa i posiada firme valve?
echo a. Bill Gates
echo b. Steve Jobs
echo c. Gabe Newell
echo d. Elon Musk
set /p odp5=Wpisz litere: 
set w5=%odp5%

if /i %w5% == c (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p6
cls
echo Pytanie 6. 
echo W jakim kolorze jest niebo?
echo a. Niebieskim
echo b. Czerwonym
echo c. Zielonym
echo d. Cerulowe
set /p odp6=Wpisz litere: 
set w6=%odp6%

if /i %w6% == a (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) 
if /i %w6% == b echo Zla odpowiedz!
if /i %w6% == c echo Zla odpowiedz!
if /i %w6% == d (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!)
timeout /t 2 >nul
:p7
cls
echo Pytanie 7. 
echo Kiedy zakonczyla sie 2 wojna swiatowa?
echo a. 1945
echo b. 1944
echo c. 1943
echo d. 1942
set /p odp7=Wpisz litere: 
set w7=%odp7%

if /i %w7% == a (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p8
cls
echo Pytanie 8. 
echo Co robi komenda sum?
echo a. Pozwala na dzialania na liczbach
echo b. Dodaje liczby
echo c. Dodaje komentarz
echo d. Dodaje liczby w pliku i wyswietla wynik
set /p odp8=Wpisz litere: 
set w8=%odp8%

if /i %w8% == c (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
) ELSE (
  echo Zla odpowiedz!
)
timeout /t 2 >nul
:p9
cls
echo Pytanie 9. 
echo W jakim jezyku jest napisany ten quiz?
echo a. Batch
echo b. Polskim
echo c. Angielskim
echo d. Homogenizowanym
set /p odp9=Wpisz litere: 
set w9=%odp9%

if /i %w9% == b (
  set /a pkt=%pkt%+1 
  echo Poprawna odpowiedz!
)

if /i %w9% == a echo Batch to nie jezyk ;)
if /i %w9% == c echo Zla odpowiedz!
if /i %w9% == d echo Jestes idiota.
timeout /t 2 >nul
:p10
cls
echo Pytanie 10. 
echo Jaki skrot konczy zadanie batch?
echo a. ctrl + f4
echo b. alt + c
echo c. ctrl + c
echo d. ctrl + k
set /p odp10=Wpisz litere: 
set w10=%odp10%

if /i %w10% == c (
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
echo Ukonczyles quiz z wynikiem %pkt% na 10 punktow w czasie %czas1%sekund, dajac wynik %SumaWynik%.
echo.
if %pkt%==10 echo "Quiz ukonczony na 100%! Gratulacje!"
if %pkt%==9 echo Juz prawie! Jeszcze raz!
if %pkt%==8 echo Juz prawie! Jeszcze raz!
if %pkt%==7 echo Juz prawie! Jeszcze raz!
if %pkt%==6 echo Lepiej lecz musisz dac z siebie wiecej.
if %pkt%==5 echo Lepiej lecz musisz dac z siebie wiecej.
if %pkt%==4 echo Lepiej lecz musisz dac z siebie wiecej.
if %pkt%==3 echo Lepiej sproboj ponownie...
if %pkt%==2 echo Lepiej sproboj ponownie...
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