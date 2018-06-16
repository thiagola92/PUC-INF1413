##################################################
###
### Diretivas de MAKE para o construto: Tst-lib
### Gerado a partir de: tst-lib.comp
###
### ----- Arquivo gerado, N�O EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = Tst-lib


### Nomes de paths

Ptable               = ..\tables
Pinc                 = ..\tables;..\..\Global\Consts
Phpp                 = ..\sources
Pferram              = ..\..\tools\programs
Pobj                 = ..\Obj
Perr                 = ..\sources
PDEFAULT             = ..\sources
Pmakeup              = ..\tables
Pstr                 = ..\tables
Pcpp                 = ..\sources

### Nomes de diret�rios para gera��o

Ftable               = ..\tables
Finc                 = ..\tables
Fhpp                 = ..\sources
Fferram              = ..\..\tools\programs
Fobj                 = ..\Obj
Ferr                 = ..\sources
FDEFAULT             = ..\sources
Fmakeup              = ..\tables
Fstr                 = ..\tables
Fcpp                 = ..\sources

### Macros da plataforma


O       = /Gs /D_CRT_SECURE_NO_DEPRECATE
OD      = /Gs /Zi /Od /D_CRT_SECURE_NO_DEPRECATE
L       =
LD      = /DEBUG /DEBUGTYPE:CV

CDB     = /D_DEBUG

OPT     = /c /J /W4 /EHa /GA /GF /GR /Zp /nologo

!IFDEF PRD
O       = /Ox  /D_CRT_SECURE_NO_DEPRECATE
CDB     =
!ENDIF

INCLUDE     = $(INCLUDE);$(Pinc)


SPECTEST    = dummy_test





### Macros do construto posteriores � plataforma

SPECTEST    = tst_str


### Regras de gera��o

all : limpa \
   $(Fobj)\main.obj   $(Fobj)\breakpnt.obj   $(Fobj)\string.obj \
   $(Fobj)\tst_str.obj \
   Construto

### Limpar arquivos

limpa :
   $(Fferram)\CompileBanner /c$(NOME)
   $(Fferram)\GenerateFile ..\sources\specific-test.hpp  "#include \"$(SPECTEST).hpp\""
   $(Fferram)\CompileBanner /c$(NOME)  > $(Ferr)\$(NOME).err
   SET CL=$(OPT)


### Depend�ncias de m�dulos objeto a compilar

$(Fobj)\main.obj :  {$(Pcpp)}\main.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}specific-test.hpp    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}talisman_versioncontrol.inc {$(Phpp)}tst_rtst.hpp         \
    {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\breakpnt.obj :  {$(Pcpp)}\breakpnt.cpp \
    {$(Phpp)}breakpnt.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\string.obj :  {$(Pcpp)}\string.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_global.inc       {$(Pinc)}str_str.inc          \
    {$(Phpp)}string.hpp           {$(Ptable)}string.table         {$(Phpp)}symbtab.hpp          \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\tst_str.obj :  {$(Pcpp)}\tst_str.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Pinc)}cte_str.inc          {$(Phpp)}environ.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           {$(Phpp)}gnrctest.hpp         \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tst_rtst.hpp         {$(Phpp)}tst_str.hpp          {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err


### Termina��o

Construto : \
   $(Fobj)\main.obj   $(Fobj)\breakpnt.obj   $(Fobj)\string.obj \
   $(Fobj)\tst_str.obj
   SET CL=
   CD  $(Fobj)
   LINK  $(L)  @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: Tst-lib
###
##################################################

