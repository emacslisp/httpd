# Microsoft Developer Studio Generated NMAKE File, Based on ApacheModuleInfo.dsp
!IF "$(CFG)" == ""
CFG=ApacheModuleInfo - Win32 Release
!MESSAGE No configuration specified. Defaulting to ApacheModuleInfo - Win32\
 Release.
!ENDIF 

!IF "$(CFG)" != "ApacheModuleInfo - Win32 Release" && "$(CFG)" !=\
 "ApacheModuleInfo - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ApacheModuleInfo.mak" CFG="ApacheModuleInfo - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ApacheModuleInfo - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ApacheModuleInfo - Win32 Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "ApacheModuleInfo - Win32 Release"

OUTDIR=.\ApacheModuleInfoR
INTDIR=.\ApacheModuleInfoR
# Begin Custom Macros
OutDir=.\.\ApacheModuleInfoR
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ApacheModuleInfo.dll"

!ELSE 

ALL : "$(OUTDIR)\ApacheModuleInfo.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\mod_info.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\ApacheModuleInfo.dll"
	-@erase "$(OUTDIR)\ApacheModuleInfo.exp"
	-@erase "$(OUTDIR)\ApacheModuleInfo.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\..\ap" /I "..\..\regex" /I "..\..\main"\
 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\ApacheModuleInfo.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\ApacheModuleInfoR/
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ApacheModuleInfo.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\CoreR\ApacheCore.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:windows\
 /dll /incremental:no /pdb:"$(OUTDIR)\ApacheModuleInfo.pdb" /machine:I386\
 /out:"$(OUTDIR)\ApacheModuleInfo.dll" /implib:"$(OUTDIR)\ApacheModuleInfo.lib" 
LINK32_OBJS= \
	"$(INTDIR)\mod_info.obj"

"$(OUTDIR)\ApacheModuleInfo.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ApacheModuleInfo - Win32 Debug"

OUTDIR=.\ApacheModuleInfoD
INTDIR=.\ApacheModuleInfoD
# Begin Custom Macros
OutDir=.\.\ApacheModuleInfoD
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ApacheModuleInfo.dll"

!ELSE 

ALL : "$(OUTDIR)\ApacheModuleInfo.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\mod_info.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\ApacheModuleInfo.dll"
	-@erase "$(OUTDIR)\ApacheModuleInfo.exp"
	-@erase "$(OUTDIR)\ApacheModuleInfo.ilk"
	-@erase "$(OUTDIR)\ApacheModuleInfo.lib"
	-@erase "$(OUTDIR)\ApacheModuleInfo.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\..\ap" /I "..\..\regex" /I\
 "..\..\main" /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\ApacheModuleInfo.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD\
 /c 
CPP_OBJS=.\ApacheModuleInfoD/
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ApacheModuleInfo.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\CoreD\ApacheCore.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib /nologo /subsystem:windows\
 /dll /incremental:yes /pdb:"$(OUTDIR)\ApacheModuleInfo.pdb" /debug\
 /machine:I386 /out:"$(OUTDIR)\ApacheModuleInfo.dll"\
 /implib:"$(OUTDIR)\ApacheModuleInfo.lib" 
LINK32_OBJS= \
	"$(INTDIR)\mod_info.obj"

"$(OUTDIR)\ApacheModuleInfo.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "ApacheModuleInfo - Win32 Release" || "$(CFG)" ==\
 "ApacheModuleInfo - Win32 Debug"
SOURCE=..\..\modules\standard\mod_info.c
DEP_CPP_MOD_I=\
	"..\..\ap\ap.h"\
	"..\..\main\alloc.h"\
	"..\..\main\buff.h"\
	"..\..\main\conf.h"\
	"..\..\main\http_conf_globals.h"\
	"..\..\main\http_config.h"\
	"..\..\main\http_core.h"\
	"..\..\main\http_log.h"\
	"..\..\main\http_main.h"\
	"..\..\main\http_protocol.h"\
	"..\..\main\httpd.h"\
	"..\..\main\util_script.h"\
	"..\..\regex\regex.h"\
	".\os.h"\
	".\readdir.h"\
	{$(INCLUDE)}"sys\stat.h"\
	{$(INCLUDE)}"sys\types.h"\
	
NODEP_CPP_MOD_I=\
	"..\..\main\ebcdic.h"\
	"..\..\main\os.h"\
	"..\..\main\sfio.h"\
	

"$(INTDIR)\mod_info.obj" : $(SOURCE) $(DEP_CPP_MOD_I) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

