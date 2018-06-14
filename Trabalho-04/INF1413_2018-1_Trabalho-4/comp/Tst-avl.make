##################################################
###
### Diretivas de MAKE para o construto: Tst-avl
### Gerado a partir de: tst-avl.comp
###
### ----- Arquivo gerado, NÃO EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = Tst-avl


### Nomes de paths

Pinc                 = ..\sources;..\test
Phpp                 = ..\sources;..\test
Pobj                 = ..\obj
Perr                 = ..\sources
PDEFAULT             = ..\sources
Pcpp                 = ..\sources

### Nomes de diretórios para geração

Finc                 = ..\sources
Fhpp                 = ..\sources
Fobj                 = ..\obj
Ferr                 = ..\sources
FDEFAULT             = ..\sources
Fcpp                 = ..\sources

### Macros do construto anteriores à plataforma

DEFS = /D_TESTPAGE


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





### Macros do construto posteriores à plataforma

SPECTEST    = tst_avl


### Regras de geração

all : limpa \
   $(Fobj)\avltree.obj   $(Fobj)\tst_avl.obj   $(Fobj)\main.obj \
   $(Fobj)\breakpnt.obj   $(Fobj)\string.obj \
   Construto

### Limpar arquivos

limpa :
   ..\tools\GenerateFile ..\sources\specific-test.hpp  "#include \"$(SPECTEST).hpp\""
   SET CL=$(OPT)


### Dependências de módulos objeto a compilar

$(Fobj)\avltree.obj :  {$(Pcpp)}\avltree.cpp \
    {$(Phpp)}avltree.hpp          {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}environ.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}global.hpp           \
    {$(Phpp)}logger.hpp           {$(Phpp)}message.hpp          {$(Phpp)}simplist.hpp         \
    {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         {$(Phpp)}string.hpp           \
    {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\tst_avl.obj :  {$(Pcpp)}\tst_avl.cpp \
    {$(Phpp)}avltree.hpp          {$(Phpp)}bcdarit.hpp          {$(Phpp)}exceptn.hpp          \
    {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          {$(Phpp)}readtest.hpp         \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          {$(Phpp)}sls_elem.hpp         \
    {$(Phpp)}string.hpp           {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc \
    {$(Phpp)}tst_avl.hpp          {$(Phpp)}tst_rtst.hpp         {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\main.obj :  {$(Pcpp)}\main.cpp \
    {$(Phpp)}avltree.hpp          {$(Phpp)}bcdarit.hpp          {$(Phpp)}dynspac.hpp          \
    {$(Phpp)}exceptn.hpp          {$(Phpp)}gnrctest.hpp         {$(Phpp)}message.hpp          \
    {$(Phpp)}readtest.hpp         {$(Phpp)}simplist.hpp         {$(Phpp)}sioctrl.hpp          \
    {$(Phpp)}sls_elem.hpp         {$(Phpp)}specific-test.hpp    {$(Phpp)}string.hpp           \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}talisman_versioncontrol.inc \
    {$(Phpp)}tst_avl.hpp          {$(Phpp)}tst_rtst.hpp         {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\breakpnt.obj :  {$(Pcpp)}\breakpnt.cpp \
    {$(Phpp)}breakpnt.hpp        
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err

$(Fobj)\string.obj :  {$(Pcpp)}\string.cpp \
    {$(Phpp)}bcdarit.hpp          {$(Phpp)}counters.hpp         {$(Pinc)}cte_str.inc          \
    {$(Phpp)}dynspac.hpp          {$(Phpp)}exceptn.hpp          {$(Phpp)}message.hpp          \
    {$(Phpp)}simplist.hpp         {$(Phpp)}sls_elem.hpp         {$(Pinc)}str_global.inc       \
    {$(Pinc)}str_str.inc          {$(Phpp)}string.hpp           {$(PDEFAULT)}string.table         \
    {$(Phpp)}symbtab.hpp          {$(Pinc)}talisman_constants.inc {$(Pinc)}typeidmessageitem.inc
    CL $(O) $(CDB) $(DEFS) /Fo$(Fobj)\  $(Fcpp)\$(@B).cpp >> $(Ferr)\$(NOME).err


### Terminação

Construto : \
   $(Fobj)\avltree.obj   $(Fobj)\tst_avl.obj   $(Fobj)\main.obj \
   $(Fobj)\breakpnt.obj   $(Fobj)\string.obj
   SET CL=
   CD  $(Fobj)
   LINK  $(L)  @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: Tst-avl
###
##################################################

