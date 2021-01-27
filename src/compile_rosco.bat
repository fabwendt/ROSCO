ifort -c ROSCO_Types.f90
ifort -c Constants.f90
ifort -c Filters.f90
ifort -c Functions.f90
ifort -c ReadSetParameters.f90
ifort -c ControllerBlocks.f90
ifort -c Controllers.f90
ifort /dll ReadSetParameters.obj Filters.obj Constants.obj Controllers.obj Functions.obj ControllerBlocks.obj DISCON.F90 /exe:DISCON_ROSCO.dll
del *.obj
del *.mod
del *.exp
del *.lib