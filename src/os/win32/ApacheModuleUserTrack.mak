# Microsoft Developer Studio Generated NMAKE File, Based on ApacheModuleUserTrack.dsp
!IF "$(CFG)" == ""
CFG=ApacheModuleUserTrack - Win32 Release
!MESSAGE No configuration specified. Defaulting to ApacheModuleUserTrack -\
 Win32 Release.
!ENDIF 

!IF "$(CFG)" != "ApacheModuleUserTrack - Win32 Release" && "$(CFG)" !=\
 "ApacheModuleUserTrack - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ApacheModuleUserTrack.mak"\
 CFG="ApacheModuleUserTrack - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ApacheModuleUserTrack - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ApacheModuleUserTrack - Win32 Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ApacheModuleUserTrack - Win32 Release"

OUTDIR=.\ApacheModuleUserTrackR
INTDIR=.\ApacheModuleUserTrackR
# Begin Custom Macros
OutDir=.\.\ApacheModuleUserTrackR
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ApacheModuleUserTrack.dll"

!ELSE 

ALL : "$(OUTDIR)\ApacheModuleUserTrack.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\mod_usertrack.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.dll"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.exp"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\ap" /I "..\..\regex" /I "..\..\main"\
 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\ApacheModuleUserTrack.pch"\
 /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\ApacheModuleUserTrackR/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ApacheModuleUserTrack.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\CoreR\ApacheCore.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:windows\
 /dll /incremental:no /pdb:"$(OUTDIR)\ApacheModuleUserTrack.pdb" /machine:I386\
 /out:"$(OUTDIR)\ApacheModuleUserTrack.dll"\
 /implib:"$(OUTDIR)\ApacheModuleUserTrack.lib" 
LINK32_OBJS= \
	"$(INTDIR)\mod_usertrack.obj"

"$(OUTDIR)\ApacheModuleUserTrack.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ApacheModuleUserTrack - Win32 Debug"

OUTDIR=.\ApacheModuleUserTrackD
INTDIR=.\ApacheModuleUserTrackD
# Begin Custom Macros
OutDir=.\.\ApacheModuleUserTrackD
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ApacheModuleUserTrack.dll"

!ELSE 

ALL : "$(OUTDIR)\ApacheModuleUserTrack.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\mod_usertrack.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.dll"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.exp"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.ilk"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.lib"
	-@erase "$(OUTDIR)\ApacheModuleUserTrack.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\..\ap" /I "..\..\regex" /I\
 "..\..\main" /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\ApacheModuleUserTrack.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\"\
 /FD /c 
CPP_OBJS=.\ApacheModuleUserTrackD/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ApacheModuleUserTrack.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\CoreD\ApacheCore.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:windows\
 /dll /incremental:yes /pdb:"$(OUTDIR)\ApacheModuleUserTrack.pdb" /debug\
 /machine:I386 /out:"$(OUTDIR)\ApacheModuleUserTrack.dll"\
 /implib:"$(OUTDIR)\ApacheModuleUserTrack.lib" 
LINK32_OBJS= \
	"$(INTDIR)\mod_usertrack.obj"

"$(OUTDIR)\ApacheModuleUserTrack.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "ApacheModuleUserTrack - Win32 Release" || "$(CFG)" ==\
 "ApacheModuleUserTrack - Win32 Debug"
SOURCE=..\..\modules\standard\mod_usertrack.c

!IF  "$(CFG)" == "ApacheModuleUserTrack - Win32 Release"

DEP_CPP_MOD_U=\
	"..\..\ap\ap.h"\
	"..\..\main\alloc.h"\
	"..\..\main\buff.h"\
	"..\..\main\conf.h"\
	"..\..\main\http_config.h"\
	"..\..\main\http_core.h"\
	"..\..\main\httpd.h"\
	"..\..\regex\regex.h"\
	".\os.h"\
	".\readdir.h"\
	{$(INCLUDE)}"sys\stat.h"\
	{$(INCLUDE)}"sys\types.h"\
	
NODEP_CPP_MOD_U=\
	"..\..\main\ebcdic.h"\
	"..\..\main\os.h"\
	"..\..\main\sfio.h"\
	

"$(INTDIR)\mod_usertrack.obj" : $(SOURCE) $(DEP_CPP_MOD_U) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "ApacheModuleUserTrack - Win32 Debug"

DEP_CPP_MOD_U=\
	"..\..\main\alloc.h"\
	"..\..\main\buff.h"\
	"..\..\main\conf.h"\
	"..\..\main\http_config.h"\
	"..\..\main\http_core.h"\
	"..\..\main\httpd.h"\
	"..\..\regex\regex.h"\
	".\os.h"\
	".\readdir.h"\
	

"$(INTDIR)\mod_usertrack.obj" : $(SOURCE) $(DEP_CPP_MOD_U) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

