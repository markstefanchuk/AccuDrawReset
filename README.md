# Accudraw Reset
MicroStation V8i MDL Add-in changes Focus to accudraw on reset

## Usage
To load: MDL LOAD ADRSTV8I

On load a monitoring command is launched that watches for a
user reset (left mouse button). When this happens focus is
moved to the accudraw dialog.

Dev note: Not certain how useful this add-in is. It
might interfere with other event listeners.

## Files
9/17/2017 - added source for older versions. The following folders were added.
adrst: Original accudraw reset code.
adrstse: compiled version for MicroStationSE
adrstV8: first version for V8
adrstXM: updated V8 version for MicroStationXM build.

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

## Compiling the Source
Use bmake to compile. Example included in go.bat. The MicroStation
SDK command window is the easiest way to build the source.

Open the command window and cd to MicroStation\mdl\bin\
For a standard install,
c:\Program Files (x86)\Bentley\MicroStation V8i (Selectseries)\MicroStation\mdl\bin\

From this location you can run,
bmake -a (path to app)\adrstv8i.mke

For me, bmake -a Z:\Documents\Github\CADGURUS\adrstv8i\adrstv8i.mke
