# Accudraw Reset
MicroStation Add-in changes focus to accudraw on reset. Added .Net version for MS Connect and OpenRoads.<br><br>
Commit description says that the V8i version if for MS Connect. This is not right. Ignore the description. Adrstv8i will run in the latest version of MicroStation V8i. Adrstmsc is the MicroStation CONNECT version. 

## What do I Download?
If you just want to install and run the program...<br><br>
For MicroStation Connect: Open the AccuDrawReset/adrstmsc/adrstmsc/bin/x64/Debug/ folder. Find the file Adrstmsc.dll. Right click and download this file. Put it in your MdlApps folder.<br><br>
All other versions - go to the applicable version folder. That is adrstxm for XM, adrstv8i for V8i and so on. Find the file with the .ma extension. Right click to download this file. Put it in your MdlApps folder.

## V8i Usage
To load: MDL LOAD ADRSTV8I

On load a monitoring command is launched that watches for a
user reset (left mouse button). When this happens focus is
moved to the accudraw dialog.

Dev note: Not certain how useful this add-in is. It
might interfere with other event listeners.

## MS CONNECT Usage
Right Click anywhere (i.e. reset) to move the cursor to the Accudraw dialog.

## V8i Files
9/17/2017 - added source for older versions. The following folders were added.<br />
adrst: Original accudraw reset code.<br />
adrstse: compiled version for MicroStationSE<br />
adrstV8: first version for V8<br />
adrstXM: updated V8 version for MicroStationXM build.<br /><br />
adrstv8i.h - header file.<br />
adrstv8i.ma - compiled add-in. Put this file in your mdlapps folder.<br />
adrstv8i.mc - main code file and entry point.<br />
adrstv8i.mke - make file.<br />
adrstv8i.mki - make file called from mke.<br />
adrstv8i.r - standard resource file.<br />
adrstv8icmd.r - command resources.<br />
fdf.fdf - program includes.<br />
go.bat - use this file to run bmake. Needs to be edited and<br />
expects that the environment variable MS is defined and points<br />
to the MicroStation folder containing ustation.exe.<br />

## Compiling the V8i Source
Use bmake to compile. Example included in go.bat. The MicroStation
SDK command window is the easiest way to build the source.

Open the command window and cd to MicroStation\mdl\bin\
For a standard install,
c:\Program Files (x86)\Bentley\MicroStation V8i (Selectseries)\MicroStation\mdl\bin\

From this location you can run,
bmake -a (path to app)\adrstv8i.mke

For me, bmake -a Z:\Documents\Github\CADGURUS\adrstv8i\adrstv8i.mke
