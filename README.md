# adrstv8i
MicroStation V8i MDL Add-in changes Focus to accudraw on reset

## Usage
To load: MDL LOAD ADRSTV8I

On load a monitoring command is launched that watches for a
user reset (left mouse button). When this happens focus is
moved to the accudraw dialog.

Dev note: Not certain how useful this add-in is. It
might interfere with other event listeners.

## Files
adrstv8i.h - header file
adrstv8i.ma - compiled add-in. Put this file in your mdlapps folder.
adrstv8i.mc - main code file and entry point.
adrstv8i.mke - make file
adrstv8i.mki - make file called from mke.
adrstv8i.r - standard resource file
adrstv8icmd.r - command resources
fdf.fdf - program includes (not an Adobe file)
go.bat - use this file to run bmake. Needs to be edited and
expects that the environment variable MS is defined and points
to the MicroStation folder containing ustation.exe

## Compiling the Source
Use bmake to compile. Example included in go.bat. The MicroStation
SDK command window is the easiest way to build the source.

