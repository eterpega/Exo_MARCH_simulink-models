@echo off 
SET PROMPT=$P$G
SET PATH=c:\fdos\bin
REM KEYB SG,,keyboard.sys 

DOSUSB.COM /E /Y1D
DEVLOAD USBDISK.SYS /D2

cd C:\xpcfiles
autoexec

cls
ECHO .           
ECHO .           
ECHO .            m o b i l e 
ECHO .                                               
ECHO .            r e a l - t i m e 
ECHO .                                               
ECHO .            t a r g e t 
ECHO .                                               
ECHO .            m a c h i n e
ECHO .                                               
ECHO .                                               
ECHO .                                               
ECHO .            s p e e d g o a t                  
ECHO .                                                                 
ECHO .                                                                 
ECHO .                                                                 
ECHO .                                                                 
ECHO . 

IF NOT EXIST D:\ftp.sg GOTO L0
runftp.bat
GOTO END
:L0
IF NOT EXIST D:\dos.sg GOTO L1
IF EXIST D:\XPCKRNL.RTB GOTO L2


cls
ECHO .           
ECHO .           
ECHO .            m o b i l e 
ECHO .                                               
ECHO .            r e a l - t i m e 
ECHO .                                               
ECHO .            t a r g e t 
ECHO .                                               
ECHO .            m a c h i n e
ECHO .                                               
ECHO .                                               
ECHO .                                               
ECHO .            s p e e d g o a t                  
ECHO .                                                                 
ECHO .                                                                 
ECHO .                                                                 
ECHO .                                                                 
ECHO . 
ECHO . No new Simulink real-time kernel image found on USB memory device.
ECHO . 
ECHO . Use speedgoatkerneltransfer in Matlab to create your kernel.
ECHO . 
GOTO END

:L2
COPY D:\XPCKRNL.RTB C:\ /Y
REM DEL D:\XPCKRNL.RTB

cls
ECHO .           
ECHO .           
ECHO .            m o b i l e 
ECHO .                                               
ECHO .            r e a l - t i m e 
ECHO .                                               
ECHO .            t a r g e t 
ECHO .                                               
ECHO .            m a c h i n e
ECHO .                                               
ECHO .                                               
ECHO .                                               
ECHO .            s p e e d g o a t                  
ECHO .                                                                 
ECHO .                                                                 
ECHO .                                                                 
ECHO .                                                                 
ECHO . 
ECHO . Simulink real-time kernel has been successfully transferred 
ECHO . from USB memory device to solid state drive
ECHO . 
ECHO . Please remove the USB memory device and reboot me. 
GOTO END

:L1
ECHO Booting Simulink real-time kernel...
IF EXIST C:\RTTBOOT.COM GOTO L4
ECHO ERROR: File rttboot.com is missing on SSD
ECHO        Simulink real-time kernel cannot be booted.
GOTO END
:L4
IF EXIST C:\XPCKRNL.RTB GOTO L5
ECHO ERROR: File xpckrnl.rtb is missing on SSD
ECHO        Simulink real-time kernel cannot be booted.
GOTO END
:L5
DOSUSB.COM
RTTBOOT -M- XPCKRNL.RTB
cls
:END
 



