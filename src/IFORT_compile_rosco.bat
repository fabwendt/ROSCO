:: Compile the ROSCO DLL using the Intel Fortrant compiler
:: SET CompOpts=/nologo /O2 /inline /traceback /libs:static /threads /iface:cref /names:uppercase /fpp
SET CompOpts=
ifort -c %CompOpts% ROSCO_Types.f90
ifort -c %CompOpts% Constants.f90
ifort -c %CompOpts% Filters.f90
ifort -c %CompOpts% Functions.f90
ifort -c %CompOpts% ReadSetParameters.f90
ifort -c %CompOpts% ControllerBlocks.f90
ifort -c %CompOpts% Controllers.f90
ifort /dll %CompOpts% ReadSetParameters.obj Filters.obj Constants.obj Controllers.obj Functions.obj ControllerBlocks.obj DISCON.F90 /exe:DISCON_ROSCO.dll
del *.obj
del *.mod
del *.exp
del *.lib