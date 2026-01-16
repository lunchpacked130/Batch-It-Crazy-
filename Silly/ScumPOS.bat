@echo off
:start
cls
color 0F
setlocal enabledelayedexpansion
timeout /t 1 >nul
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Crimes.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Databases.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Yellow.
timeout /t 1 >nul
cls
color 0E
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Retaculating Splines.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Viruses and Malware.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Blue.
timeout /t 1 >nul
color 1E
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Activating Dicipined Pimps.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Drivers.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading More Drivers.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Even More Drivers.
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Drivers. (Of Vehicles)
timeout /t 1 >nul
cls
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Loading Loaded.
timeout /t 1 >nul
echo Booting Scumsoft Police Operating System (SCUM-POS)
echo.
echo Starting User Interface.
timeout /t 2 >nul
goto menu

:menu
color 1E
cls
echo ===========================================
echo I   SCUM-POS - THE ALL-IN-ONE DISCOUNT    I
echo I  POLICE DEPARTMENT OPERATING SOFTWARE   I
echo I  Licenced to Lytton Police Department   I
echo I        Copyright 2026 - ScumSoft        I             
echo ===========================================
echo I                                         I
echo I            Choose a choice:             I
echo I                                         I
echo I        1 - Evidence Locker Access       I
echo I             2 - Mike's Choice           I
echo I 3 - Sonny Bonds Collateral Damage Tally I
echo I           4 - Promotinator 5000         I
echo I       5 - Patrol Route Optimization     I
echo I    6 - Suspect Interrogation Protocol   I
echo I     7 - Extra jobhicular Keithtivity    I
echo I     8 - Flashbang Calibration Tester    I
echo I                                         I
echo I                0 - Quit                 I
echo ===========================================
set /p choice="Choose your choice: "

:: Choice 2:  Mike's Choice
if "%choice%"=="2" goto mike

:: Choice 3: Collateral Damage Counter
if "%choice%"=="3" goto sonny

:: Choice 4: Promotinator
if "%choice%"=="4" goto promo

:: Choice 5: Route Optimizer
if "%choice%"=="5" goto route

:: Choice 6: Interrogation
if "%choice%"=="6" goto susp

:: Choice 7: Smoke Break
if "%choice%"=="7" goto smoke

:: Choice 8: flashbang
if "%choice%"=="8" goto flash

:: Choice 0: Quit
if "%choice%"=="0" goto quit

:: Other choices
if "%choice%"=="1" goto notclose
if "%choice%"=="9" goto secretive

color 04
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                        
echo Wow, you couldn't even select a number, huh...
timeout /t 2 >nul
echo Well done numbnuts, now we have to reboot!.
timeout /t 3 >nul
goto start

:sonny
color 02
cls
setlocal enabledelayedexpansion
set counter=1
echo.
echo ===========================================
echo I   Sonny Bonds Collateral Damage Tally   I
echo ===========================================
echo I Collateral damage caused by Sonny Bonds I
echo I This Running Tally Started Counting on: I
echo I                 %time%:                 I
echo I    Amount in Dollars: 00000000m.-       I
echo I  (Rounded up to the nearest million)    I
echo I                                         I
echo I  Pressing M will retun you to the menu  I
echo ===========================================
:sonnyloop
set /a counter+=1
set padded=00000000!counter!
set padded=!padded:~-8!
cls
echo ===========================================
echo I   Sonny Bonds Collateral Damage Tally   I
echo ===========================================
echo I Collateral damage caused by Sonny Bonds I
echo I This Running Tally Started Counting on: I
echo I                 %time%             I                  
echo I    Amount in Dollars: $!padded!m.-      I
echo I  (Rounded up to the nearest million)    I
echo I                                         I
echo I  Pressing M will retun you to the menu  I
echo ===========================================
ping -n 1 -w 500 127.0.0.1 >nul
)
choice /c KM /n /t 1 /d K >nul
if %errorlevel%==1 goto sonnyloop
if %errorlevel%==2 goto menu
if !counter! lss 200000 goto menu
goto sonnyloop

:smoke
color 05
cls
echo Enter the secretive three digit code number (001-999):
set /p secretNum="The secretive code number is: "

:: Validate input
if %secretNum% LSS 1 set secretNum=300
if %secretNum% GTR 999 set secretNum=999
echo Congratulations! that was the correct number.
timeout /t 2 >nul
cls
color 50
echo ==============================
echo =  SMOKING BREAK IS READY!   =
echo ==============================
echo.
echo  Your smoking break will last
echo          for %secretNum% Seconds
timeout /t 3 >nul
cls
echo ==============================
echo = SMOKING BREAK IS STARTING! =
echo ==============================
echo.
echo   Smoking break is starting.
echo.
timeout /t 2 >nul

:: Countdown loop
for /L %%i in (%secretNum%,-1,1) do (
    cls
    echo ==============================
    echo = SMOKING BREAK IN PROGRESS! =
    echo ==============================
    echo.
    echo     Seconds left to smoke: 
    echo            %%i Seconds
    timeout /t 1 >nul
)

cls
color 08
echo ==============================
echo =   SMOKING BREAK IS OVER!   =
echo ==============================
echo.
echo There's no time left to smoke!
pause
echo Well, wasn't that productive!
timeout /t 2 >nul
echo Now, Do you need another smoking break?
echo.
set /p userChoice="Press Y for Yes or N for Nyes, but i got mucho paperwork first: "
if /I "%userChoice%"=="Y" goto keith
if /I "%userChoice%"=="N" goto menu

:smuker
color 05
cls
echo Enter the secretive three digit code number (001-999):
set /p secretNum="The secretive code number is: "

:: Validate input
if %secretNum% LSS 1 set secretNum=300
if %secretNum% GTR 999 set secretNum=999
echo Congratulations! that was the correct number.
cls
color 50
echo ==============================
echo =  SMOKING BREAK IS READY!   =
echo ==============================
echo.
echo  Your smoking break will last
echo          for %secretNum% Seconds
timeout /t 3 >nul
cls
echo ==============================
echo = SMOKING BREAK IS STARTING! =
echo ==============================
echo.
echo   Smoking break is starting.
echo.
timeout /t 2 >nul

:: Countdown loop
for /L %%i in (%secretNum%,-1,1) do (
    cls
    echo ==============================
    echo = SMOKING BREAK IN PROGRESS! =
    echo ==============================
    echo.
    echo     Seconds left to smoke: 
    echo            %%i Seconds

    timeout /t 1 >nul
)

cls
color 08
echo ==============================
echo =   SMOKING BREAK IS OVER!   =
echo ==============================
echo.
echo There's no time left to smoke!
pause
echo Well, wasn't that productive!
timeout /t 2 >nul
echo Now, Do you need another smoking break?
echo.
set /p userChoice="Press Y for Yes or N for Nyes, but i got mucho paperwork first: "
if /I "%userChoice%"=="Y" goto smuker
if /I "%userChoice%"=="N" goto menu


:keith
color 01
cls
timeout /t 1 >nul
cls
echo K
timeout /t 0 >nul
cls
echo Ke
timeout /t 0 >nul
cls
echo Kei
timeout /t 0 >nul
cls
echo Keit
timeout /t 0 >nul
cls
echo Keith
timeout /t 0 >nul
cls
echo Keith.
timeout /t 0 >nul
cls
echo Keith..
timeout /t 0 >nul
cls
echo Keith...
timeout /t 2 >nul
cls
echo Keith...
echo I
timeout /t 0 >nul
cls
echo Keith...
echo Is
timeout /t 0 >nul
cls
echo Keith...
echo Is.
timeout /t 0 >nul
cls
echo Keith...
echo Is..
timeout /t 0 >nul
cls
echo Keith...
echo Is...
timeout /t 2 >nul
cls
echo Keith...
echo Is... 
echo I
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is 
timeout /t 1 >nul
cls
echo Keith...
echo Is... 
echo Is t
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is th
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is tha
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is that
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is that y
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is that yo
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is that you
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is that you?
timeout /t 0 >nul
cls
echo Keith...
echo Is... 
echo Is that you??
timeout /t 1 >nul
cls
echo Keith...
echo Is... 
echo Is that you???
timeout /t 3 >nul
cls
color 0C
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       Sonny Bonds knows something....
timeout /t 3 >nul
echo                                                       (and it's not how to crash cars)
timeout /t 2 >nul
cls
goto smuker

:flash
color 01
cls
timeout /t 1 >nul
echo Ready to calibrate flashbang
set /p userChoice="Enter F to test Flashbang or W if you are a Wimp: "
if /I "%userChoice%"=="F" goto Flasher
if /I "%userChoice%"=="W" goto menu

:flasher
cls
echo Ready to calibrate flashbang
echo Priming Flashbang
timeout /t 2 >nul
color 02
echo Flashbang Calibrated and ready for testing.
timeout /t 3 >nul
cls
echo Ready to calibrate flashbang
echo Priming Flashbang
echo Flashbang Calibrated and ready for testing.
echo Running Flasbang test in: 5 Seconds.
timeout /t 1 >nul
cls
echo Ready to calibrate flashbang
echo Priming Flashbang
echo Flashbang Calibrated and ready for testing.
echo Running Flasbang test in: 4 Seconds.
timeout /t 1 >nul
cls
echo Ready to calibrate flashbang
echo Priming Flashbang
echo Flashbang Calibrated and ready for testing.
echo Running Flasbang test in: 3 Seconds.
timeout /t 1 >nul
cls
echo Ready to calibrate flashbang
echo Priming Flashbang
echo Flashbang Calibrated and ready for testing.
echo Running Flasbang test in: 2 Seconds.
timeout /t 1 >nul
cls
color F0
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                        BANG!
timeout /t 1 >nul
echo                                              I lied about the time left.
timeout /t 1 >nul
cls
color 01
echo Test complete!
timeout /t 2 >nul
echo Returning to main menu.
timeout /t 3 >nul
cls
goto menu

:promo
setlocal enabledelayedexpansion
color 09
cls
echo ====================================
echo I            Lytton PD             I
echo I        Promotinator 5000         I
echo I  Instant, undeserved promotions  I
echo I        in just 3 seconds!         I
echo ====================================
echo.
echo Enter the name of the officer you want to promote
set /p promt="(e.g., Sonny Bonds): "
echo thank you, %promt%.
echo Is that correct?
set /p userChoice="Enter C if name is Correct or I if it's Incorrect: "
if /I "%userChoice%"=="C" goto promo2
if /I "%userChoice%"=="I" goto promo

:promo2
setlocal enabledelayedexpansion
color 09
cls
echo ====================================
echo I            Lytton PD             I
echo I        Promotinator 5000         I
echo I  Instant, undeserved promotions  I
echo I        in just 3 seconds!         I
echo ====================================
echo Tine elapsed: 00:00:00   
echo ====================================
echo I        Finding new rank          I
echo I                                  I
echo ====================================
echo.
timeout /t 1 >nul
cls
echo ====================================
echo I            Lytton PD             I
echo I        Promotinator 5000         I
echo I  Instant, undeserved promotions  I
echo I        in just 3 seconds!         I
echo ====================================
echo Tine elapsed: 00:00:01   
echo ====================================
echo I        Finding new rank.         I
echo I        Head of Department        I
echo ====================================
echo.
timeout /t 1 >nul
cls
echo ====================================
echo I            Lytton PD             I
echo I        Promotinator 5000         I
echo I  Instant, undeserved promotions  I
echo I        in just 3 seconds!         I
echo ====================================
echo Tine elapsed: 00:00:02
echo ====================================
echo I        Finding new rank..        I
echo I        Supreme Court Judge       I
echo ====================================
echo.
echo.
timeout /t 1 >nul
cls
echo ====================================
echo I            Lytton PD             I
echo I        Promotinator 5000         I
echo I  Instant, undeserved promotions  I
echo I        in just 3 seconds!         I
echo ====================================
echo Tine elapsed: 00:00:03     
echo ====================================
echo I        Finding new rank...       I
echo I           Judge Dredd            I
echo ====================================
echo.
echo.
timeout /t 1 >nul

cls
set "ranks[0]=I            Toilet Guy            I"
set "ranks[1]=I            Shower Guy            I"
set "ranks[2]=I            The Gremlin           I"
set "ranks[3]=I           Loose cannon           I"
set "ranks[4]=I         Department drunk         I"
set "ranks[5]=I            Major idiot           I"
set "ranks[6]=I        Sonny Bond's carer        I"
set "ranks[7]=I          Gash Scratcher          I"


:: Generate random index
set /a idx=%random% %% 8


echo ====================================
echo I            Lytton PD             I
echo I        Promotinator 5000         I
echo I  Instant, undeserved promotions  I
echo I        in just 3 seconds!         I
echo ====================================
echo Congratulations Officer %promt%!
echo ====================================
echo I     You have been Promoted to    I
echo !ranks[%idx%]!
echo ====================================
echo.
pause
goto menu

:Route
cls
echo Patrol Route Optimization
pause
echo.
echo Optimizing Route
timeout /t 3 >nul
color 2E
echo Route Optimized
timeout /t 3 >nul
goto menu

:secretive
cls
color E0
echo You have found the secretive menu entry!
timeout /t 5 >nul
color 03
echo But all you got was a lousy Lucasarts joke.
timeout /t 5 >nul
goto menu

:susp
color 06
cls
echo Lytton Police Dept - Suspect Interrogation Protocol
echo.
timeout /t 1 >nul
echo A 5 step guide to properly conduct Lytton PD interrogations
echo.
timeout /t 1 >nul
pause
cls
echo Step 1: Starting the interrogation.
echo.
timeout /t 2 >nul
echo What to do:
timeout /t 1 >nul
echo Greet (INSERT SUSPECT'S NAME HERE) with a smile. 
echo Offer coffee, donuts, or maybe a beer.
echo.
timeout /t 3 >nul
echo What to say: 
timeout /t 1 >nul
echo "Hello (INSERT SUSPECT'S NAME HERE), would (INSERT SUSPECT'S NAME HERE) like anything to drink or nibble on?"
echo.
timeout /t 1 >nul
pause
cls
echo Step 2: Interrogation Techniques
echo.
timeout /t 2 >nul
echo What to do:
timeout /t 1 >nul
echo Make sure (INSERT SUSPECT'S NAME HERE) is comfortable.
echo If (INSERT SUSPECT'S NAME HERE) look nervous, close the blinds and lock the door. this builds trust.
echo.
timeout /t 3 >nul
echo What to say:
timeout /t 1 >nul
echo "How about those (INSERT LOCAL SPORTS TEAM HERE) playing (INSERT NON-LOCAL SPORTS TEAM HERE) at the (INSERT RECENT GAME HERE)?"
echo.
timeout /t 1 >nul
pause
cls
echo Step 3: Ask the Big Question
echo.
timeout /t 2 >nul
echo What to do:
timeout /t 1 >nul
echo casually ask (INSERT SUSPECT'S NAME HERE) if they performed (INSERT CRIMES HERE).
echo If (INSERT SUSPECT'S NAME HERE) say yes, go ahead and arrest (INSERT SUSPECT'S NAME HERE) for (INSERT CRIMES HERE).
echo (You can then skip the rest of the questions)
echo.
timeout /t 3 >nul
echo What to say:
timeout /t 1 >nul
echo "Oh, by the way, (INSERT SUSPECT'S NAME HERE) didn't perform (INSERT CRIMES HERE) by any chance, did (INSERT SUSPECT'S NAME HERE)?"
echo.
timeout /t 1 >nul
pause
cls
echo Step 4: (INSERT SUSPECT'S NAME HERE) says they didn't perform (INSERT CRIMES HERE)
echo.
timeout /t 2 >nul
echo What to do:
timeout /t 1 >nul
echo Continue interrogation of (INSERT SUSPECT'S NAME HERE) in an attempt to find out who performed (INSERT CRIMES HERE).
echo If (INSERT SUSPECT'S NAME HERE) tells you who performed (INSERT CRIMES HERE), arrest that person for (INSERT CRIMES HERE).
echo (You can then skip the rest of the questions)
echo.
timeout /t 3 >nul
echo What to say:
timeout /t 1 >nul
echo "Well, if (INSERT SUSPECT'S NAME HERE) didn't perform (INSERT CRIMES HERE), do (INSERT SUSPECT'S NAME HERE) know who did?"
echo.
timeout /t 1 >nul
pause
cls
echo Step 5: Wrapping It Up
echo.
timeout /t 2 >nul
echo What to do:
timeout /t 1 >nul
echo If (INSERT SUSPECT'S NAME HERE) didn't perform (INSERT CRIMES HERE), and also doesn't know who else performed (INSERT CRIMES HERE), apologize for taking up the suspect's time.
echo.
timeout /t 3 >nul
echo What to say:
timeout /t 1 >nul
echo "Well, we tried. (INSERT SUSPECT'S NAME HERE) seem nice. Here's 50 bucks for (INSERT SUSPECT'S NAME HERE)'s trouble, can we offer to pay (INSERT SUSPECT'S NAME HERE)'s taxi fare?."
echo.
timeout /t 1 >nul
pause
cls
echo Bonus Tips - 5 handy tips 
echo.
timeout /t 2 >nul
echo 1 - Never record the interrogation. Tech is unreiable and probably never convicted anyone anyway. 
timeout /t 1 >nul
echo Use napkins or toilet paper for notes.
echo.
timeout /t 1 >nul
echo 2 -  If (INSERT SUSPECT'S NAME HERE) ask for a lawyer, abort the interrogation immediately!
timeout /t 1 >nul
echo Lawyers are so annoying.
echo.
timeout /t 1 >nul
echo 3 - Always trust (INSERT SUSPECT'S NAME HERE).
timeout /t 1 >nul
echo No one would lie to a police officer.
echo.
timeout /t 1 >nul
echo 4 - Try not to resort to taking off all your clothes.
timeout /t 1 >nul
echo You might inconvenience (INSERT SUSPECT'S NAME HERE).
echo.
timeout /t 1 >nul
echo 5 - Let Sonny Bonds conduct the interrogation.
timeout /t 1 >nul
echo You've had a long half our at work, might as well call it a day.
timeout /t 1 >nul
echo.
pause
echoReturning to Main Menu.
timeout /t 2 >nul
cls
goto menu


:mike
color 0C
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                   This is Mike's choice!
echo.
timeout /t 3 >nul
echo                 Don't choose Mike's choice!
timeout /t 4 >nul
goto menu

:notclose
color 06
cls
echo Accessing Evidence Lockers
timeout /t 1 >nul
cls
echo Accessing Evidence Lockers.
timeout /t 1 >nul
cls
echo Accessing Evidence Lockers..
timeout /t 1 >nul
cls
echo Accessing Evidence Lockers...
timeout /t 1 >nul
echo Done!
timeout /t 2 >nul
cls
echo Accessing Evidence Lockers...
timeout /t 1 >nul
echo Authenticating user\
timeout /t 1 >nul
cls
echo Accessing Evidence Lockers...
echo Authenticating user-
timeout /t 1 >nul
cls
echo Accessing Evidence Lockers...
echo Authenticating user/
timeout /t 1 >nul
cls
color 04
echo Accessing Evidence Lockers...
echo ERROR!
timeout /t 3 >nul
echo You're not close enough.
timeout /t 2 >nul
echo Move closer to the Evidence Lockers and try again.
timeout /t 4 >nul
goto menu

:quit
cls
color B0
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                        QUITTER!
timeout /t 1 >nul
exit /b
