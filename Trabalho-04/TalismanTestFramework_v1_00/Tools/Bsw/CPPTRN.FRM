/**************************************************************************
*
**** Programa de formul rios: CPPTRN Transformar módulo C++
*
**** Nome do arquivo gerado:  CPPTRN
*
*Nome l¢gico da base: Programas de formul rio de apoio … programa‡„o C++
*Nome do arquivo:     Z:\TALISMAN\TOOLS\BSW\CPPFRM.BSW
*
*   Projeto TALISMAN
*
*Vers„o corrente da base
*  Vers„o: 1    Modifica‡„o: 0    Altera‡„o:      Data libera‡„o: 
*
*  Autorizou libera‡„o     
*
*Hist¢rico da base
*   Vers Modf Altr  Autor    Data     Observa‡”es
*     1    avs    03-jul-2000  Inicio do desenvolvimento, copiado de cppfrm
*
*Altera‡”es de emergˆncia realizadas e ainda n„o passadas a limpo
*
*Altera‡”es e corre‡”es realizadas
*
****************************************************************************
*
* Formul rios externos (selecion veis)
*
*  CPPTRN Corrigir nomes de blocos     : "Acertar nome raiz"
*  CPPTRN Gerar modulo teste           : "Gerar modulo teste"
*  CPPTRN Regerar documentacao dos     : "Regerar documentacao teste"
*  CPPTRN Desmarcar todos should tr    : "Desmarcar todos \"should trace\""
*  CPPTRN Marcar modulo todos bloco    : "Marcar todos blocos do modulo \"should trace\""
*  CPPTRN Marcar pacote todos bloco    : "Marcar todos blocos de pacote \"should trace\""
*  CPPTRN Regerar tabela de comando    : "Regerar tabela comandos teste"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  CPPTRN Corrigir nomes de blocos     : "Acertar nome raiz"
*  CPPTRN Regerar tabela de comando    : "Regerar tabela comandos teste"
*  CPPTRN Regerar documentacao dos     : "Regerar documentacao teste"
*  CPPTRN Copiar texto com margem      : "Copiar com margem"( ListaTexto Doc , inteiro Margem , ListaTexto Lista )
*  CPPTRN Desmarcar todos should tr    : "Desmarcar todos \"should trace\""
*  CPPTRN Marcar modulo todos bloco    : "Marcar todos blocos do modulo \"should trace\""
*  CPPTRN Marcar pacote todos bloco    : "Marcar todos blocos de pacote \"should trace\""
*  CPPTRN Marcar todos blocos shoul    : "Marcar todos blocos should trace"
*  CPPTRN Gerar documentação de tes    : "Gerar documentacao de teste"
*  CPPTRN Gerar tabela de comandos     : "Gerar tabela comandos teste"
*  CPPTRN Gerar modulo teste           : "Gerar modulo teste"
*  CPPTRN Gerar corpo inicial de mo    : "Gera corpo inicial do modulo de teste"(
*                                                  Objeto    objModulo  ,
*                                                  Sequencia idModulo   ,
*                                                  Sequencia idPrefix    )
*  CPPTRN Gerar construtor da class    : "Gerar construtor de classe de teste"
*  CPPTRN Gerar destrutor da classe    : "Gerar destrutor de classe de teste"
*  CPPTRN Gerar interpretador de co    : "Gerar interpretador de comandos de teste"
*  CPPTRN Gerar verificador de indi    : "Gerar verificador de indice de vetor"
*  CPPTRN Gerar estrutura do interp    : "Criar interface de teste"
*
***************************************************************************/

/***** Formul rio global *****/

   InicGlobal

         Sequencia      idModuloTeste ;
         Sequencia      NomeDimVetor ;
         Sequencia      NomeEnum ;
         Objeto         ModuloTeste ;
         Objeto         ModuloGerado ;
         Objeto         ClasseCorr ;

         /* Estrutura de dados CPP  Declara‡„o das constantes padronizadas */

            /* Estrutura de dados Constantes globais */

               Constante      AliasPublico    =  20 ;
               Constante      AliasProtegido  =  21 ;
               Constante      AliasPrivado    =  22 ;
               Constante      AliasCor        = 255 ;

            /* Estrutura de dados Constantes para m¢dulos */

               Constante      AliasModExtenDefin   = 5 ;
               Constante      AliasModExtenImple   = 6 ;
               Constante      AliasModLetrasId     = 7 ;
               Constante      AliasModNumeroId     = 8 ;
               Constante      AliasModMFC          = 9 ;

               Constante      TxtModComdTeste      = 17 ;
               Constante      TxtModDeclExp        = 18 ;
               Constante      TxtModInclus         = 19 ;
               Constante      TxtModDeclEncps      = 20 ;
               Constante      TxtModIdentif        = 21 ;
               Constante      TxtModInterf         = 22 ;
               Constante      TxtModMod            = 23 ;
               Constante      TxtModAmb            = 24 ;
               Constante      TxtModDeclApos       = 25 ;
               Constante      TxtModInclApos       = 26 ;
               Constante      TxtModInterfImpl     = 27 ;
               Constante      TxtModAmbImpl        = 28 ;
               Constante      TxtModRequisImpl     = 29 ;
               Constante      TxtModHipotImpl      = 30 ;
               Constante      TxtModRefBib         = 31 ;
               Constante      TxtModAltFeitas      = 32 ;
               Constante      TxtModDeclExpFim     = 33 ;

               Constante      TxtModDataStructInterface = 41 ;
               Constante      TxtModDataStructImplem    = 42 ;
               Constante      TxtModQualityControl      = 43 ;

            /* Estrutura de dados Constantes para classes */

               Constante      AliasClasseVarEstado = 12 ;
               Constante      AliasClasseEncapsulada = 13 ;


               Constante      TxtDclClassePubl     = 10 ;
               Constante      TxtDclClasseProt     = 11 ;
               Constante      TxtDclClassePriv     = 12 ;

               Constante      TxtClasseTemplate    = 17 ;
               Constante      TxtClasseCabec       = 18 ;

               Constante      TxtDclClasseIniLoc   = 20 ;
               Constante      TxtDclClasseIniExp   = 21 ;
               Constante      TxtClasseCabecMapa   = 22 ;
               Constante      TxtClasseMapaAdic    = 23 ;
               Constante      TxtClasseImplDescr   = 24 ;
               Constante      TxtClasseImplReq     = 25 ;
               Constante      TxtClasseImplHipot   = 26 ;
               Constante      TxtClasseAltFeitas   = 27 ;
               Constante      TxtClasseUso         = 28 ;
               Constante      TxtClasseEstrtDados  = 29 ;
               Constante      TxtDclClasseApos     = 30 ;

            /* Estrutura de dados Constantes para pacotes */

               Constante      AliasInline          = 10 ;
               Constante      AliasVirtualPuro     = 11 ;
               Constante      AliasDebug           = 12 ;
               Constante      AliasVirtual         = 13 ;
               Constante      AliasStatic          = 14 ;
               Constante      AliasBlcOnlyDecl     = 15 ;

               Constante      TxtPactEntra           = 21 ;
               Constante      TxtPactExceptions      = 22 ;
               Constante      TxtPactSai             = 23 ;
               Constante TxtPactPrecondicao          = 24 ;
               Constante TxtPactPoscondicao          = 25 ;
               Constante TxtPactTiposDados           = 26 ;
               Constante TxtPactTiposDadosImportados = 27 ;
               Constante TxtPactMembros              = 28 ;
               Constante TxtPactLogDetails           = 29 ;
               Constante      TxtPactAltFeitas       = 30 ;
               Constante      TxtPactGlobalEntra     = 31 ;
               Constante      TxtPactImportEntra     = 32 ;
               Constante      TxtPactArqEntra        = 33 ;
               Constante      TxtPactEstadoEntra     = 34 ;
               Constante      TxtPactEncapsEntra     = 35 ;
               Constante TxtPactInterfaceUsuario     = 36 ;
               Constante TxtPactInterfaceRequisitos  = 37 ;
               Constante TxtPactInterfaceHipoteses   = 38 ;
               Constante TxtPactInterfaceRestricoes  = 39 ;
               Constante TxtPactSobreCarga           = 40 ;
               Constante      TxtPactTraceIn         = 41 ;

            /* Estrutura de dados Constantes para blocos programa */

               Constante      AliasDiag       = 11 ;
               Constante      AliasBlcDbg     = 12 ;
               Constante      AliasPrepara    = 13 ;
               Constante      AliasBlcNomeDebug  = 14 ;
               Constante      AliasBlcCallStack  = 15 ;

               Constante      TxtAssertEnt    = 11 ;
               Constante      TxtAssertSai    = 12 ;
               Constante      TxtCondRepet    = 13 ;
               Constante      TxtCondAtiv     = 14 ;
               Constante      TxtCondSelec    = 15 ;
               Constante      TxtFonteAntes   = 16 ;
               Constante      TxtFonteApos    = 17 ;
               Constante      TxtBlcCabecDecl = 18 ;
               Constante      TxtBlcDados     = 19 ;
               Constante      TxtBlcCabecDef  = 20 ;
               Constante      TxtBlcCabecMapa = 21 ;

               Constante      TxtBlcIniPac    = 25 ;
               Constante      TxtBlcFimPac    = 26 ;
               Constante      TxtBlcMensagem  = 27 ;
               Constante      TxtDebugAntes   = 28 ;
               Constante      TxtBlcAssertPac = 29 ;
               Constante      TxtTraceAntes   = 30 ;
               Constante      TxtTransAntes   = 31 ;
               Constante      TxtEnvelopePt   = 32 ;

            /* Estrutura de dados Constantes para blocos estruturas de dados */

               Constante      AliasDadoExport    = 11 ;

               Constante      TxtTipoDado        = 13 ;
               Constante      TxtDclMedida       = 14 ;
               Constante      TxtDclValido       = 15 ;
               Constante      TxtDclFim          = 16 ;
               Constante      TxtDclTipoExportado = 17 ;
               Constante      TxtDclCabec        = 18 ;

               Constante      TxtDclAssert       = 21 ;
               Constante      TxtDclRepet        = 22 ;
               Constante      TxtDclIniciaStatic = 23 ;

               Constante      TxtDclDado         = 25 ;
               Constante      TxtDclInic         = 26 ;
               Constante      TxtDclDadoAntes    = 27 ;
               Constante      TxtDclDadoApos     = 28 ;

            /* Estrutura de dados Constantes para controles */

               Constante      TxtTipoControle = 11 ;
               Constante      TxtSignfCtrl    = 12 ;

            /* Estrutura de dados Constantes para transi‡”es */

               Constante      AliasMsgWnd          = 30 ;

               Constante      TxtTransC¢digoDecl   = 11 ;

               Constante      TxtTransC¢digoIni    = 16 ;
               Constante      TxtTransC¢digoFim    = 17 ;
               Constante      TxtTransC¢digoMeio   = 22 ;
               Constante      TxtTransFazNada      = 23 ;

               Constante      TxtTransAsEntra      = 29 ;
               Constante      TxtTransAsSai        = 30 ;
               Constante      TxtTransGlobalEntra  = 31 ;
               Constante      TxtTransImportEntra  = 32 ;
               Constante      TxtTransArqEntra     = 33 ;
               Constante      TxtTransEstadoEntra  = 34 ;
               Constante      TxtTransEncapsEntra  = 35 ;
               Constante      TxtTransIntfUsuComd  = 36 ;
               Constante      TxtTransIntfUsuDados = 37 ;
               Constante      TxtTransIntfUsuRelat = 38 ;
               Constante      TxtTransIntfUsuMsg   = 39 ;
               Constante      TxtTransIntfUsuFBack = 40 ;
               Constante      TxtTransParmSai      = 41 ;
               Constante      TxtTransGlobSai      = 42 ;
               Constante      TxtTransImportSai    = 43 ;
               Constante      TxtTransArqSai       = 44 ;
               Constante      TxtTransEstadoSai    = 45 ;
               Constante      TxtTransEncapsSai    = 46 ;
               Constante      TxtTransEntra        = 47 ;
               Constante      TxtTransIntfUsu      = 48 ;
               Constante      TxtTransSai          = 49 ;

            /* Estrutura de dados Constantes para estados */

               Constante      AliasDefineEstado = 10 ;
               Constante      AliasEstadoIni    = 11 ;

               Constante      TxtEstC¢digo      = 22 ;
               Constante      TxtEstC¢dInvar    = 23 ;
               Constante      TxtEstC¢dLiberar  = 24 ;

               Constante      TxtEstadGlobal    = 31 ;
               Constante      TxtEstadImport    = 32 ;
               Constante      TxtEstadArq       = 33 ;
               Constante      TxtEstadEncaps    = 34 ;
               Constante      TxtEstadIntfUsuFBack   = 35 ;

            /* Estrutura de dados Constantes para processos */

               Constante      TxtProcAtiva      = 21 ;
               Constante      TxtProcC¢digo     = 22 ;
               Constante      TxtProcString     =  9 ;

            /* Estrutura de dados Constantes para m quina de estado convencional */

               Constante      AliasNomeEstado = 11 ;   /* igual em DFD */

               Constante      TxtStringFluxo  =  9 ;
               Constante      TxtMsgFluxo     = 11 ;

               Constante      TxtDecisaoFluxo = 21 ;   /* igual em DFD */
               Constante      TxtAcaoSempre   = 21 ;   /* igual em DFD */
               Constante      TxtAcaoFluxo    = 22 ;   /* igual em DFD */
               Constante      TxtAcaoErro     = 22 ;   /* igual em DFD */
               Constante      TxtAcaoEntra    = 23 ;   /* igual em DFD */
               Constante      TxtAcaoSai      = 24 ;   /* igual em DFD */

            /* Estrutura de dados Declara‡”es para gerar lista LIMBO */

               Constante      NomeLimbo       = "! Limbo" ;
               ListaTexto     TextoRelLimbo ;
               ListaTexto     TextoVazio ;
               Sequencia      Letras ;
      FimDecl
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: CPPTRN Corrigir nomes de blocos raiz de pacotes *****/

   InicExterno "Acertar nome raiz"
      /* Dado do bloco Acerta nomes de pacotes */

         Sequencia NomePacote ;
         Sequencia NomeRaiz ;

      FimDecl

   /* Corpo de CPPTRN Corrigir nomes de blocos raiz de pacotes */

      /* Acerta nomes de pacotes */

         ParaTodos Dicionario DicPacotePrograma Faz
            NomePacote = [ Nome ] ;
            NomeRaiz   = ConcatSeq( "Root of " , NomePacote ) ;
            ParaTodos Blocos Faz
               Nome = NomeRaiz ;
               SaiRepeticao ;
            Fim ; /* ParaTodos */
         Fim ;

      /* Acerta nomes de tipos */

         ParaTodos Dicionario DicTipoDados Faz
            NomePacote = [ Nome ] ;
            NomeRaiz   = ConcatSeq( "Root of " , NomePacote ) ;
            ParaTodos Dados Faz
               Nome = NomeRaiz ;
               SaiRepeticao ;
            Fim ; /* ParaTodos */
         Fim ;
   FimFrm

/***** Formul rio: CPPTRN Regerar tabela de comandos de teste *****/

   InicExterno "Regerar tabela comandos teste"
      /* Dado do bloco Corpo de CPPTRN Regerar tabela de comandos de teste */

         Sequencia Temp ;

      FimDecl

   /* Corpo de CPPTRN Regerar tabela de comandos de teste */

      GeraLaudo Novo ;

      Se ClasseObj( Corrente ) == DicModulo
         e Existe( [ Relacao Depende ] )
      Entao
         ParaTodos Depende Faz
            ModuloGerado = Corrente ;
            ParaTodos Classes Faz
               ParaTodos Pacotes Faz
                   Temp = [ Nome ] ;
                   Se Indice( Temp , "!P " , 1 , 35 ) > 1
                   Entao
                      ParaTodos Blocos Faz
                         Frm "Gerar tabela comandos teste" ;
                      Fim ; /* ParaTodos */
                      SaiRepeticao ;
                   Senao
                   Fim ; /* Se */
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */
      Senao
         Titulo "Module cannot be tested or has no tester" ;
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Regerar documentacao dos comandos de teste *****/

   InicExterno "Regerar documentacao teste"
      /* Dado do bloco Corpo de CPPTRN Regerar documentacao dos comandos de teste */

         Sequencia Temp ;

      FimDecl

   /* Corpo de CPPTRN Regerar documentacao dos comandos de teste */

      GeraLaudo Novo ;

      Se ClasseObj( Corrente ) == DicModulo
         e Existe( [ Relacao Depende ] )
      Entao
         ParaTodos Depende Faz
            ModuloGerado = Corrente ;
            ParaTodos Classes Faz
               ClasseCorr = Corrente ;
               ParaTodos Pacotes Faz
                   Temp = [ Nome ] ;
                   Se Indice( Temp , "!P " , 1 , 35 ) > 1
                   Entao
                      ParaTodos Blocos Faz
                         Frm "Gerar documentacao de teste" ;
                      Fim ; /* ParaTodos */
                      SaiRepeticao ;
                   Senao
                   Fim ; /* Se */
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */
      Senao
         Titulo "Module cannot be tested or has no tester" ;
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Copiar texto com margem *****/

   InicFrm "Copiar com margem"( ListaTexto Doc , inteiro Margem , ListaTexto Lista )
      /* Dado do bloco Corpo de CPPTRN Copiar texto com margem */

         Inteiro   TamTxt  ;
         Inteiro   Conta   ;
         Sequencia MargTxt ;
         Sequencia LinTxt  ;

      FimDecl

   /* Corpo de CPPTRN Copiar texto com margem */

      TamTxt  = TamTexto( Lista ) ;
      MargTxt = SubSeq( "                    " , 0 , Margem ) ;
      Conta   = 1 ;
      enquanto ( Conta <= TamTxt ) faz
         LinTxt = MargTxt ;
         LinTxt = ConcatSeq( LinTxt , LinhaTexto( Lista , Conta ) ) ;
         InsereTexto( Doc , 10000 , LinTxt ) ;
         Conta = Conta + 1 ;
      fim ;
   FimFrm

/***** Formul rio: CPPTRN Desmarcar todos should trace *****/

   InicExterno "Desmarcar todos \"should trace\""

   /* Corpo de CPPTRN Excluir todos should trace */

      ParaTodos Dicionario DicBlocoPrograma Faz
         Se Existe( [ Alias AliasBlcNomeDebug ] )
         Entao
            Alias AliasBlcNomeDebug = "" ;
         Senao
         Fim ; /* Se */
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: CPPTRN Marcar modulo todos blocos should trace *****/

   InicExterno "Marcar todos blocos do modulo \"should trace\""

   /* Corpo de CPPTRN Marcar modulo todos blocos should trace */

      ParaTodos Classes Faz
         ParaTodos Pacotes Faz
            Se NAO Existe( [ Alias AliasVirtualPuro ] )
            Entao
               ParaTodos Blocos Faz
                  Frm "Marcar todos blocos should trace" ;
               Fim ; /* ParaTodos */
            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */
      Fim ; /* ParaTodos */


      ParaTodos Pacotes Faz
         ParaTodos Blocos Faz
            Frm "Marcar todos blocos should trace" ;
         Fim ; /* ParaTodos */
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: CPPTRN Marcar pacote todos blocos should trace *****/

   InicExterno "Marcar todos blocos de pacote \"should trace\""

   /* Corpo de CPPTRN Marcar funcao todos blocos should trace */

      Se NAO Existe( [ Alias AliasVirtualPuro ] )
      Entao
         ParaTodos Blocos Faz
         Frm "Marcar todos blocos should trace" ;
      Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Marcar todos blocos should trace *****/

   InicFrm "Marcar todos blocos should trace"

   /* Corpo de CPPTRN Marcar todos blocos should trace */

      Se NAO Existe( [ Alias AliasBlcNomeDebug ] )
      Entao
         Alias AliasBlcNomeDebug = "x" ;

         ParaTodos Decomp  Faz
            Frm "Marcar todos blocos should trace" ;
         Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Gerar documentação de teste *****/

   InicFrm "Gerar documentacao de teste"
      /* Dado do bloco Corpo de CPPTRN Gerar documentação de teste */

         ListaTexto Documentacao ;
         ListaTexto Lista    ;
         Sequencia  NomeFunc ;

      FimDecl

   /* Corpo de CPPTRN Gerar documentação de teste */

      EsvaziaTexto( Documentacao ) ;
      InsereTexto( Documentacao , 10000 , "Test commands syntax" ) ;

      ParaTodos Decomp Faz
         InsereTexto( Documentacao , 10000 , "" ) ;
         NomeFunc = [ Nome ] ;
         InsereTexto( Documentacao , 10000 , NomeFunc ) ;

         Se Existe( [ Texto TxtAssertEnt ] )
         Entao
            Lista = [ Texto TxtAssertEnt ] ;
            Frm "Copiar com margem"( Documentacao , 3 , Lista ) ;
         Senao
         Fim ; /* Se */
         Se Existe( [ Texto TxtObserv ] )
         Entao
            Lista = [ Texto TxtObserv ] ;
            Frm "Copiar com margem"( Documentacao , 6 , Lista ) ;
         Senao
         Fim ; /* Se */
         ParaTodos Chama Faz
            Se ObjRelInx( [ Relacao Classes ] , ClasseCorr ) == -1
            Entao
               ParaTodos Blocos Faz
                  Se Existe( [ Texto TxtBlcCabecDecl ] )
                  Entao
                     Lista = [ Texto TxtBlcCabecDecl ] ;
                     Frm "Copiar com margem"( Documentacao , 10 , Lista ) ;
                  Senao
                     Lista = [ Texto TxtBlcCabecDef ] ;
                     Frm "Copiar com margem"( Documentacao , 10 , Lista ) ;
                  Fim ; /* Se */
               Fim ; /* ParaTodos */
            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */
      Fim ; /* ParaTodos */


      ComObjeto ModuloGerado Faz
         Texto TxtModInterf = Documentacao ;
      Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: CPPTRN Gerar tabela de comandos de teste *****/

   InicFrm "Gerar tabela comandos teste"
      /* Dado do bloco Extract commands and command names */

         inteiro Tam ;
         inteiro inx ;
         listatexto Comnds ;
         listatexto ComndNames ;
         listatexto txt ;
         sequencia linha ;

      /* Dado do bloco Generate command list table */

         ListaTexto DeclaraCmd ;
         Inteiro    NumDecl ;
         Inteiro    ContaDecl ;
         Inteiro    TamCommand ;
         Inteiro    inxinsert ;
         Inteiro    taminsert ;
         Sequencia  Brancos ;
         Sequencia  DeclCmd ;

      FimDecl

   /* Corpo de CPPTRN Gerar tabela de comandos de teste */

      /* Extract commands and command names */

         EsvaziaTexto( comnds ) ;
         EsvaziaTexto( comndNames ) ;

         ParaTodos Decomp Faz
            txt   = [ texto TxtCondAtiv ] ;
            linha = LinhaTexto( txt , 1 ) ;

            inx   = indice( linha , "," , 1 , 1000 ) ;
            linha = subseq( linha , inx + 1 , 1000 ) ;
            Enquanto linha != "" Faz
               Se subseq( linha , 1 , 1 ) == " "
               Entao
                  linha = subseq( linha , 2 , 1000 ) ;
               Senao
                  sairepeticao ;
               Fim ; /* Se */
            Fim ; /* Enquanto */

            inx   = indice( linha , ")" , 1 , 1000 ) ;
            linha = subseq( linha , 1 , inx - 1 ) ;

            inx   = indice( linha , " " , 1 , 1000 ) ;
            Se inx > 1
            Entao
               linha = subseq( linha , 1 , inx - 1 ) ;
            Senao
            Fim ; /* Se */

            Se linha != ""
            Entao
               InsereTexto( Comnds , 100 , linha ) ;

               txt   = [ texto txtassertent ] ;
               linha = LinhaTexto( txt , 1 ) ;
               inx   = indice( linha , " " , 1 , 1000 ) ;
               Se inx > 1
               Entao
                  linha = subseq( linha , 1 , inx - 1 ) ;
               Senao
               Fim ; /* Se */

               Se linha != ""
               Entao
                  InsereTexto( ComndNames , 100 , linha ) ;
               Senao
                  InsereTexto( ComndNames , 100 , "???" ) ;
               Fim ; /* Se */

            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */

      /* Generate command list table */

         ComObjeto ModuloGerado Faz

            EsvaziaTexto( DeclaraCmd ) ;
            NumDecl    = TamTexto( Comnds ) ;
            ContaDecl  = 1 ;

            Enquanto ContaDecl <= NumDecl Faz
               DeclCmd = ConcatSeq( "static const char " ,
                              LinhaTexto( Comnds , ContaDecl )) ;
               DeclCmd = ConcatSeq( DeclCmd , "[ ]" ) ;

               TamCommand = TamSeq( DeclCmd ) ;

               Brancos    = SubSeq( "                                             " ,
                                    1 , 56 - TamCommand ) ;

               DeclCmd = ConcatSeq( DeclCmd , Brancos ) ;
               DeclCmd = ConcatSeq( DeclCmd , "= \"=" );
               DeclCmd = ConcatSeq( DeclCmd , LinhaTexto( ComndNames , ContaDecl ));
               DeclCmd = ConcatSeq( DeclCmd , "\" ;" ) ;

               InxInsert = 1 ;
               TamInsert = TamTexto( DeclaraCmd ) ;

               Enquanto InxInsert <= TamInsert Faz
                  Se LinhaTexto( DeclaraCmd , InxInsert ) > DeclCmd
                  Entao
                     SaiRepeticao ;
                  Senao
                  Fim ; /* Se */
                  InxInsert = InxInsert + 1 ;
               Fim ; /* Enquanto */

               InsereTexto( DeclaraCmd , InxInsert - 1 , DeclCmd ) ;
               ContaDecl = ContaDecl + 1 ;
            Fim ; /* Enquanto */

            InsereTexto( DeclaraCmd , 10000 , "" ) ;
            InsereTexto( DeclaraCmd , 10000 , "" ) ;
            Texto TxtModComdTeste = DeclaraCmd ;

         Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: CPPTRN Gerar modulo teste *****/

   InicExterno "Gerar modulo teste"
      /* Dado do bloco CPPTRN Gera o módulo completo */

         ListaTexto Relacoes ;

      /* Dado do bloco Gera o objeto modulo de teste */

         Sequencia NomeModulo ;
         Sequencia NomeTeste ;
         Sequencia idModulo ;
         Sequencia idPrefix ;
         Objeto    objModulo ;
         Objeto    objTeste ;
         Objeto    objClasse ;

      /* Dado do bloco Gerar as funcoes da classe de teste especifico */

         Fila ListaPacotes ;

      /* Dado do bloco Selecionar a funcao a ser gerada */

         Sequencia Temp ;

      FimDecl

   /* Corpo de CPPTRN Gerar modulo teste */

      GeraLaudo Novo ;

      Se ClasseObj( Corrente ) == DicModulo
         e nao Existe( [ Relacao EhDependente ] ) Ent„o

      /* CPPTRN Gera o módulo completo */

         ModuloTeste = Corrente ;

         /* Gera o objeto modulo de teste */

            /* Acerta o nome do modulo a ser testado */

               NomeModulo = [ Nome ] ;
               idModulo   = [ Alias AliasModLetrasId ] ;
               Se TamSeq( idModulo ) < 4
               Entao
                  idPrefix = ConcatSeq( idModulo , SubSeq( "       " , 0 , 4 - TamSeq( idModulo ))) ;
               Senao
                  idPrefix = idModulo ;
               Fim ; /* Se */

               Se Subseq( NomeModulo , 1 , TamSeq( idModulo )) != IdModulo
               Entao
                  NomeModulo = ConcatSeq( ConcatSeq( idPrefix , " " ) , NomeModulo ) ;
                  Nome       = NomeModulo ;
               Senao
               Fim ; /* Se */

            /* Constroi o nome do modulo de teste */

               objModulo      = Corrente ;
               idModuloTeste  = ConcatSeq( "T" , idModulo ) ;
               idPrefix       = ConcatSeq( "T" , SubSeq( idPrefix , 0 , 4 )) ;
               NomeTeste      = ConcatSeq( idPrefix ,
                         ConcatSeq( "Test module of: " , NomeModulo )) ;
               NomeDimVetor   = ConcatSeq( idModuloTeste , "_dimVtObj" ) ;
               NomeEnum       = ConcatSeq( idModuloTeste , "_tpExistCond" );

               Se Nao Existe( [ Relacao Depende ] )
               Entao
                  InsereTexto( Relacoes , 0 , NomeTeste ) ;
                  Relacao Depende = Relacoes ;

                  ComObjeto RelInx( [ Relacao Depende ] , 0 ) Faz
                     Frm "Gera corpo inicial do modulo de teste"(
                               objModulo , idModulo , idPrefix ) ;
                  Fim ; /* ComObjeto */
               Senao
               Fim ; /* Se */

            /* Gerar a classe de teste */

               ComObjeto RelInx( [ Relacao Depende ] , 0 ) Faz
                  objTeste     = Corrente ;
                  ModuloGerado = Corrente ;

                  Se Nao Existe( [ Relacao Classes ] )
                  Entao
                     EsvaziaTexto( Relacoes ) ;
                     InsereTexto( Relacoes , 0 , ConcatSeq( idPrefix , "Specific test class" )) ;
                     Relacao Classes = Relacoes ;

                     ComObjeto RelInx( [ Relacao Classes ] , 0 ) Faz
                        objClasse = Corrente ;

                        EsvaziaTexto( Relacoes ) ;
                        InsereTexto( Relacoes , 0 , "TST_TestSpecific : public TST_TestGeneric" ) ;
                        Texto TxtClasseCabec = Relacoes ;

                        EsvaziaTexto( Relacoes ) ;
                        InsereTexto( Relacoes , 0 ,
                                  ConcatSeq( idModuloTeste , " !C Specific tester constructor"   )) ;
                        InsereTexto( Relacoes , 1 ,
                                  ConcatSeq( idModuloTeste , " !D Specific tester destructor"    )) ;
                        InsereTexto( Relacoes , 2 ,
                                  ConcatSeq( idModuloTeste , " !P Perform specific test actions" )) ;
                        InsereTexto( Relacoes , 3 ,
                                  ConcatSeq( idModuloTeste , " $V Verify object vector index"    )) ;
                        Relacao Pacotes = Relacoes ;

                        EsvaziaTexto( Relacoes ) ;
                        InsereTexto( Relacoes , 0 , "// Vector of test objects" ) ;
                        InsereTexto( Relacoes , 1 , "" ) ;
                        InsereTexto( Relacoes , 2 , ConcatSeq( "   static const int " ,
                                     ConcatSeq( NomeDimVetor , " = 20 ;" ))) ;
                        InsereTexto( Relacoes , 3 ,
                                 ConcatSeq( "   void * vtObj[ "  ,
                                       ConcatSeq( NomeDimVetor , " ] ;" ))) ;
                        Texto TxtDclClassePriv = Relacoes ;

                     Fim ; /* ComObjeto */

                  Senao
                     objClasse = RelInx( [ Relacao Classes ] , 0 ) ;
                  Fim ; /* Se */
               Fim ; /* ComObjeto */

            /* Gerar as funcoes da classe de teste especifico */

               ComObjeto objClasse Faz

               EsvaziaLista( ListaPacotes ) ;
               ParaTodos Pacotes Faz
                  InsereObj( ListaPacotes , Corrente ) ;
               Fim ; /* ParaTodos */

               ParaTodos ListaPacotes Faz

               /* Selecionar a funcao a ser gerada */

                  Temp = [ Nome ] ;
                  Se Indice( Temp , "$V " , 1 , 25 ) > 0
                  Entao
                     Frm "Gerar verificador de indice de vetor" ;
                  Senao
                     Se Indice( Temp , "!C " , 1 , 25 ) > 0
                     Entao
                        Frm "Gerar construtor de classe de teste" ;
                     Senao
                        Se Indice( Temp , "!D " , 1 , 25 ) > 0
                        Entao
                           Frm "Gerar destrutor de classe de teste" ;
                        Senao
                           Se Indice( Temp , "!P " , 1 , 25 ) > 0
                           Entao
                              Frm "Gerar interpretador de comandos de teste" ;
                           Senao
                           Fim ; /* Se */
                        Fim ; /* Se */
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ;

               Fim ; /* ComObjeto */

         /* Obtem lista da interface a ser gerada */

         /* Gerar a funcao de teste especifica */

         /* Gerar a tabela de comandos */

      Sen„o

      /* CPPTRN objeto corrente não é módulo */

         Se Existe( [ Relacao EhDependente ] )
         Entao
            Titulo "O modulo corrente e' o modulo de teste" ;
         Senao
            Titulo "Nao e' modulo, e': " ;
            NaoAvLin ;
            Titulo nomeclasse( classeobj( corrente )) ;
         Fim ; /* Se */
      Fim ;
   FimFrm

/***** Formul rio: CPPTRN Gerar corpo inicial de modulo *****/

   InicFrm "Gera corpo inicial do modulo de teste"(
                     Objeto    objModulo  ,
                     Sequencia idModulo   ,
                     Sequencia idPrefix    )
      /* Dado do bloco Corpo de CPPTRN Gera corpo inicial de modulo */

         ListaTexto Relacoes ;

      FimDecl

   /* Corpo de CPPTRN Gera corpo inicial de modulo */

      /* Gerar dados de identificacao do modulo */

         Alias AliasArquivo         = ConcatSeq( "TST_" , idModulo ) ;
         Alias AliasModExtenDefin   = "hpp" ;
         Alias AliasModExtenImple   = "cpp" ;
         Alias AliasModLetrasId     = idPrefix ;

         EsvaziaTexto( Relacoes ) ;
         InsereTexto( Relacoes , 0 ,    "#include   \"gnrctest.hpp\"" ) ;
         ComObjeto objModulo Faz
            InsereTexto( Relacoes , 1 ,
                      ConcatSeq( "#include   \"" ,
                      ConcatSeq( [ Alias AliasArquivo ] , ".hpp\"" ))) ;
         Fim ; /* ComObjeto */
         InsereTexto( Relacoes , 2 ,    "#include   \"tst_rtst.hpp\"" ) ;
         Texto TxtModDeclExp = Relacoes ;

         EsvaziaTexto( Relacoes ) ;
         InsereTexto( Relacoes , 0 , ConcatSeq( "   enum " , NomeEnum ));
         InsereTexto( Relacoes , 1 , "   {" ) ;
         InsereTexto( Relacoes , 2 , "      YES ," ) ;
         InsereTexto( Relacoes , 3 , "      NO  ," ) ;
         InsereTexto( Relacoes , 4 , "      ANY  " ) ;
         InsereTexto( Relacoes , 5 , "   } ;" ) ;
         Texto TxtModDeclApos = Relacoes ;

         EsvaziaTexto( Relacoes ) ;
         InsereTexto( Relacoes , 0 , "#include   <stdio.h>" ) ;
         InsereTexto( Relacoes , 1 , "#include   <string.h>" ) ;
         Texto TxtModInclus = Relacoes ;
   FimFrm

/***** Formul rio: CPPTRN Gerar construtor da classe de teste *****/

   InicFrm "Gerar construtor de classe de teste"
      /* Dado do bloco Corpo de CPPTRN Gerar construtor da classe de teste */

         ListaTexto Codigo ;

      FimDecl

   /* Corpo de CPPTRN Gerar construtor da classe de teste */

      Se nao Existe( [ Relacao Blocos ] )
      Entao
         EsvaziaTexto( Codigo ) ;
         Alias AliasPublico = "x" ;
         InsereTexto( Codigo , 0 , ConcatSeq( "Root of " , [ Nome ] )) ;
         Relacao Blocos = Codigo ;

         ParaTodos Blocos Faz

            EsvaziaTexto( Codigo ) ;
            InsereTexto( Codigo , 0 , "TST_TestSpecific( )" ) ;
            Texto TxtBlcCabecDecl = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "TST_TestSpecific ::" ) ;
            InsereTexto(  Codigo , 1 , "          TST_TestSpecific( )" ) ;
            Texto TxtBlcCabecDef = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto( Codigo , 0 , ConcatSeq( "for ( int i = 0 ; i < " ,
                      ConcatSeq( NomeDimVetor , " ; i++ )" ))) ;
            InsereTexto( Codigo , 1 , "{" ) ;
            InsereTexto( Codigo , 2 , "   vtObj[ i ] = NULL ;" ) ;
            InsereTexto( Codigo , 3 , "} /* for */" ) ;
            Texto TxtFonteAntes = Codigo ;

         Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Gerar destrutor da classe de teste *****/

   InicFrm "Gerar destrutor de classe de teste"
      /* Dado do bloco Corpo de CPPTRN Gerar destrutor da classe de teste */

         ListaTexto Codigo ;

      FimDecl

   /* Corpo de CPPTRN Gerar destrutor da classe de teste */

      Se nao Existe( [ Relacao Blocos ] )
      Entao

         EsvaziaTexto( Codigo ) ;
         Alias AliasPublico = "x" ;
         Alias AliasVirtual = "x" ;
         InsereTexto( Codigo , 0 , ConcatSeq( "Root of " , [ Nome ] )) ;
         Relacao Blocos = Codigo ;

         ParaTodos Blocos Faz

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "~TST_TestSpecific( )" ) ;
            Texto TxtBlcCabecDecl = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "TST_TestSpecific ::" ) ;
            InsereTexto(  Codigo , 1 , "          ~TST_TestSpecific( )" ) ;
            Texto TxtBlcCabecDef = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto( Codigo , 0 , ConcatSeq( "for ( int i = 0 ; i < " ,
                      ConcatSeq( NomeDimVetor , " ; i++ )" ))) ;
            InsereTexto( Codigo , 1 , "{" ) ;
            InsereTexto( Codigo , 2 , "   delete vtObj[ i ] ;" ) ;
            InsereTexto( Codigo , 3 , "} /* for */" ) ;
            Texto TxtFonteAntes = Codigo ;

         Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Gerar interpretador de comandos de teste *****/

   InicFrm "Gerar interpretador de comandos de teste"
      /* Dado do bloco Corpo de CPPTRN Gerar interpretador de comandos de teste */

         ListaTexto Codigo ;
         Fila       BlocosTemp ;

      FimDecl

   /* Corpo de CPPTRN Gerar interpretador de comandos de teste */

      Se nao Existe( [ Relacao Blocos ] )
      Entao
         Alias AliasPublico = "x" ;

         EsvaziaTexto( Codigo ) ;
         InsereTexto( Codigo , 0 , ConcatSeq( "Root of " , [ Nome ] )) ;
         Relacao Blocos = Codigo ;

         EsvaziaLista( BlocosTemp ) ;
         ParaTodos Blocos Faz
            InsereObj( BlocosTemp , Corrente ) ;
         Fim ; /* ParaTodos */

         ParaTodos BlocosTemp Faz

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "TST_tpRetCode PerformSpecificTest( char * Command )" ) ;
            Texto TxtBlcCabecDecl = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "TST_tpRetCode TST_TestSpecific ::" ) ;
            InsereTexto(  Codigo , 1 , "          PerformSpecificTest( char * Command )" ) ;
            Texto TxtBlcCabecDef = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto( Codigo , 0 , "return TST_RetCodeUnknown ;" ) ;
            Texto TxtFonteApos = Codigo ;

         Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */

      EsvaziaLista( BlocosTemp ) ;
      ParaTodos Blocos Faz
         InsereObj( BlocosTemp , Corrente ) ;
      Fim ; /* ParaTodos */

      ParaTodos BlocosTemp Faz
         Frm "Criar interface de teste" ;
         Frm "Gerar tabela comandos teste" ;
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: CPPTRN Gerar verificador de indice de objetos de teste *****/

   InicFrm "Gerar verificador de indice de vetor"
      /* Dado do bloco Corpo de CPPTRN Gerar verificador de indice de objetos de teste */

         ListaTexto Codigo ;

      FimDecl

   /* Corpo de CPPTRN Gerar verificador de indice de objetos de teste */

      Se nao Existe( [ Relacao Blocos ] )
      Entao
         Alias AliasPrivado = "x" ;

         EsvaziaTexto( Codigo ) ;
         InsereTexto( Codigo , 0 , ConcatSeq( "Root of " , [ Nome ] )) ;
         Relacao Blocos = Codigo ;

         ParaTodos Blocos Faz

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "bool VerifyInxElem( int  inxElemParm ," ) ;
            InsereTexto(  Codigo , 1 , ConcatSeq( "                    " ,
                      ConcatSeq( NomeEnum , " MustExist   )" ))) ;
            Texto TxtBlcCabecDecl = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo , 0 , "bool TST_TestSpecific ::" ) ;
            InsereTexto(  Codigo , 1 , "          VerifyInxElem( int  inxElemParm ," ) ;
            InsereTexto(  Codigo , 2 , ConcatSeq( "                         " ,
                      ConcatSeq( NomeEnum , " MustExist   )" ))) ;
            Texto TxtBlcCabecDef = Codigo ;

            EsvaziaTexto( Codigo ) ;
            InsereTexto(  Codigo ,  0 , "if ( ( inxElemParm < 0          )" ) ;
            InsereTexto(  Codigo ,  1 , ConcatSeq( "  || ( inxElemParm >= " ,
                      ConcatSeq( NomeDimVetor, " ))" ))) ;
            InsereTexto(  Codigo ,  2 , "{" ) ;
            InsereTexto(  Codigo ,  3 , "   return false ;" ) ;
            InsereTexto(  Codigo ,  4 , "} /* if */" ) ;
            InsereTexto(  Codigo ,  5 , "" ) ;
            InsereTexto(  Codigo ,  6 , "if ( MustExist == YES )" ) ;
            InsereTexto(  Codigo ,  7 , "{" ) ;
            InsereTexto(  Codigo ,  8 , "   if ( vtObj[ inxElemParm ] == NULL )" ) ;
            InsereTexto(  Codigo ,  9 , "   {" ) ;
            InsereTexto(  Codigo , 10 , "      return false ;" ) ;
            InsereTexto(  Codigo , 11 , "   } /* if */" ) ;
            InsereTexto(  Codigo , 12 , "" ) ;
            InsereTexto(  Codigo , 13 , "} else if ( MustExist == NO )" ) ;
            InsereTexto(  Codigo , 14 , "{" ) ;
            InsereTexto(  Codigo , 15 , "   if ( vtObj[ inxElemParm ] != NULL )" ) ;
            InsereTexto(  Codigo , 16 , "   {" ) ;
            InsereTexto(  Codigo , 17 , "      return false ;" ) ;
            InsereTexto(  Codigo , 18 , "   } /* if */" ) ;
            InsereTexto(  Codigo , 19 , "} /* if */" ) ;
            InsereTexto(  Codigo , 20 , "" ) ;
            InsereTexto(  Codigo , 21 , "return true ;" ) ;
            Texto TxtFonteAntes = Codigo ;

         Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPTRN Gerar estrutura do interpretador *****/

   InicFrm "Criar interface de teste"
      /* Dado do bloco Colecionar metodos publicos e funcoes externadas */

         ConjuntoFila  ListaFuncs ;
         Objeto        FuncCorrente ;

      /* Dado do bloco Colecionar dados publicos e externados */

         ConjuntoFila ListaVars ;
         Sequencia DeclVar ;

      /* Dado do bloco Gera bloco reset */

         ListaTexto FragTxt ;

      /* Dado do bloco Gerar a estrutura do interpretador de comandos de teste */

         Inteiro InxInsert ;
         Inteiro TamInsert ;
         Inteiro ContaGerado ;

         Sequencia NomeBloco ;
         Sequencia NomeFunc  ;
         Sequencia NomeComnd ;
         Sequencia ComndSelec ;
         Sequencia NomeProt ;

         Objeto NovoObj ;
         Objeto ObjFunc ;
         ListaTexto Relac ;
         ListaTexto RelacFil ;
         ListaTexto Comnds ;

         Inteiro FimNome ;

      /* Dado do bloco Controlar a geracao do bloco de teste de funcao */

         Logico TemFuncao ;

      /* Dado do bloco Inserir bloco teste funcao ordenadamente na lista de filhos */

         Logico NaoAchou ;

      /* Dado do bloco Gerar codigo de interpretacao do comando de teste de funcao */

         ListaTexto Prototipo ;

      /* Dado do bloco Generate exported and public variable list */

         Sequencia NomeVar ;

      FimDecl

   /* Corpo de CPPTRN Gerar estrutura do interpretador */

      /* Collecionar interface do modulo a testar */

         /* Colecionar metodos publicos e funcoes externadas */

            EsvaziaLista( ListaFuncs ) ;

            ComObjeto ModuloTeste Faz
               ParaTodos Classes Faz
                  ParaTodos Pacotes Faz
                     Se Existe( [ Alias AliasPublico ] )
                     Entao
                        FuncCorrente = Corrente ;
                        ParaTodos Blocos Faz
                           Se Existe( [ Texto TxtBlcCabecDecl ] )
                           Ent„o
                              InsereObj( ListaFuncs , FuncCorrente ) ;
                           Sen„o
                           Fim ; /* Se */
                        Fim ; /* ParaTodos */
                     Senao
                     Fim ; /* Se */
                  Fim ; /* ParaTodos */
               Fim ; /* ParaTodos */

               ParaTodos PacotesInterface Faz
                  FuncCorrente = Corrente ;
                  ParaTodos Blocos Faz
                     Se Existe( [ Texto TxtBlcCabecDecl ] )
                     Ent„o
                        InsereObj( ListaFuncs , FuncCorrente ) ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* ParaTodos */
               Fim ; /* ParaTodos */

            Fim ; /* ComObjeto */

         /* Colecionar dados publicos e externados */

            EsvaziaLista( ListaVars ) ;

            ComObjeto ModuloTeste Faz
               ParaTodos Classes Faz
                  ParaTodos Dados Faz
                     ParaTodos Decomp Faz
                        Se Existe( [ Alias AliasPublico ] )
                        Entao
                           InsereObj( ListaVars , corrente ) ;
                        Senao
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                  Fim ; /* ParaTodos */
               Fim ; /* ParaTodos */

               ParaTodos DadosInterface Faz
                  ParaTodos Decomp Faz
                     DeclVar = LinhaTexto( [ Texto TxtDclDado ] , 1 ) ;
                     Se Indice( DeclVar , "const " , 1 , 50 ) <= 0
                     Entao
                        InsereObj( ListaVars , corrente ) ;
                     Senao
                     Fim ; /* Se */

                  Fim ; /* ParaTodos */

               Fim ; /* ParaTodos */

            Fim ; /* ComObjeto */

      /* Gera bloco reset */

         Se nao Existe( [ Relacao Decomp ] )
         Entao
            EsvaziaTexto( FragTxt ) ;
            InsereTexto( FragTxt , 0 , ConcatSeq( "Interpret " ,
                      ConcatSeq( IdModuloTeste , " Reset" ))) ;
            Relacao Decomp = FragTxt ;

            ParaTodos Decomp Faz

               EsvaziaTexto( FragTxt ) ;
               InsereTexto(  FragTxt , 0 , "if ( strcmp( Command , Reset_CMD ) == 0 ) " ) ;
               Texto TxtCondAtiv = FragTxt ;

               EsvaziaTexto( FragTxt ) ;
               InsereTexto( FragTxt , 0 , "Reset_001" ) ;
               Texto TxtAssertEnt = FragTxt ;

               EsvaziaTexto( FragTxt ) ;
               InsereTexto( FragTxt , 100 , ConcatSeq( "for ( int i = 0 ; i < " ,
                         ConcatSeq( NomeDimVetor , " ; i++ )" ))) ;
               InsereTexto( FragTxt , 100 , "{" ) ;
               InsereTexto( FragTxt , 100 , "   delete vtObj[ i ] ;" ) ;
               InsereTexto( FragTxt , 100 , "   vtObj[ i ] = NULL ;" ) ;
               InsereTexto( FragTxt , 100 , "} /* for */" ) ;
               InsereTexto( FragTxt , 100 , "" ) ;
               InsereTexto( FragTxt , 100 , "return TST_RetCodeOK ;" ) ;

               Texto TxtFonteAntes = FragTxt ;
            Fim ; /* ParaTodos */
         Senao
         Fim ; /* Se */

      /* Gerar a estrutura do interpretador de comandos de teste */

         EsvaziaTexto( Comnds ) ;

         RelacFil     = [ Relacao Decomp ] ;
         ContaGerado  = 0 ;

         /* Gerar todos os blocos de teste de funcoes publicas */

            ParaTodos ListaFuncs Faz

            /* Controlar a geracao do bloco de teste de funcao */

               ObjFunc   = Corrente ;
               NomeFunc  = [ Nome ] ;
               NomeBloco = ConcatSeq( "Test: " , NomeFunc ) ;
               ContaGerado = ContaGerado + 1 ;

               TemFuncao = Falso ;

               ComObjeto ObjFunc Faz
                  Se Existe( [ Relacao Blocos ] )
                  Entao
                     ParaTodos Blocos Faz
                        Se Existe( [ Texto TxtBlcCabecDecl ] )
                        Entao
                           FragTxt   = [ Texto TxtBlcCabecDecl ] ;
                           TemFuncao = Verdadeiro ;
                        Senao
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                  Senao
                  Fim ; /* Se */
               Fim ; /* ComObjeto */

               Se NAO ExisteObj( ObjetoNome( DicBlocoPrograma , NomeBloco ))
                  E TemFuncao Ent„o

               /* Gerar bloco de teste de funcao */

                  NovoObj = CriaNome( DicBlocoPrograma , NomeBloco ) ;

                  ComObjeto NovoObj Faz

                  /* Inserir bloco teste funcao ordenadamente na lista de filhos */

                     NaoAchou  = Verdadeiro ;
                     InxInsert = 1 ;
                     TamInsert = TamTexto( RelacFil ) ;
                     Enquanto InxInsert < TamInsert Faz
                        Se LinhaTexto( RelacFil , InxInsert ) > NomeBloco
                        Entao
                           SaiRepeticao ;
                        Senao
                        Fim ; /* Se */
                        InxInsert = InxInsert + 1 ;
                     Fim ; /* Enquanto */
                     Se NaoAchou
                     Entao
                        InsereTexto( RelacFil , 1000 , NomeBloco ) ;
                     Senao
                        InsereTexto( RelacFil , InxInsert - 1 , NomeBloco ) ;
                     Fim ; /* Se */

                  /* Gerar relacao chama funcao */

                     EsvaziaTexto( Relac ) ;
                     InsereTexto( Relac , 1000 , NomeFunc ) ;
                     InsereTexto( Relac , 1000 ,
                               ConcatSeq( idModuloTeste , " $V Verify object vector index" )) ;
                     Relacao Chama = Relac ;

                  /* Gerar nome do comando de teste de funcao */

                     NomeComnd = LinhaTexto( FragTxt , 1 ) ;
                     FimNome   = Indice( NomeComnd , "(" , 1 , 1000 ) ;
                     NomeComnd = SubSeq( NomeComnd , 1 , FimNome - 1 ) ;

                     FimNome   = Indice( NomeComnd , "*" , 1 , 1000 ) ;
                     Se FimNome > 0
                     Entao
                        NomeComnd = SubSeq( NomeComnd , FimNome + 2 , 1000 ) ;
                     Senao
                        FimNome   = Indice( NomeComnd , " " , 1 , 1000 ) ;
                        NomeComnd = SubSeq( NomeComnd , FimNome + 1 , 1000 ) ;
                     Fim ; /* Se */

                     FimNome   = Indice( NomeComnd , "~" , 1 , 1000 ) ;
                     Se FimNome > 0
                     Entao
                        NomeComnd = SubSeq( NomeComnd , FimNome + 1 , 1000 ) ;
                        NomeComnd = ConcatSeq( "Delete" , NomeComnd ) ;
                     Senao
                     Fim ; /* Se */

                     NomeComnd = ConcatSeq( NomeComnd , ConcatSeq( "_" ,
                               ConvFormato( ContaGerado , "0123456789" , 3 ))) ;

                     NomeComnd = ConcatSeq( NomeComnd , "_CMD" ) ;

                  /* Gerar seletor do comando de teste de funcao */

                     EsvaziaTexto( FragTxt ) ;
                     InsereTexto( FragTxt , 0 , NomeComnd ) ;
                     Texto TxtAssertEnt = FragTxt ;

                     EsvaziaTexto( FragTxt ) ;
                     InsereTexto( FragTxt , 100 , ConcatSeq( "else if ( strcmp( Command , " ,
                               ConcatSeq( NomeComnd , " ) == 0 )" ))) ;
                     Texto TxtCondAtiv = FragTxt ;

                  /* Gerar codigo de interpretacao do comando de teste de funcao */

                     EsvaziaTexto( FragTxt ) ;

                     ComObjeto ObjFunc Faz
                        ParaTodos Blocos Faz
                           FragTxt   = [ Texto TxtBlcCabecDecl ] ;
                           Prototipo = FragTxt ;
                        Fim ; /* ParaTodos */
                     Fim ; /* ComObjeto */

                     InsereTexto( FragTxt ,    0 , "/***** Function" ) ;
                     InsereTexto( FragTxt , 1000 , "*****/" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     InsereTexto( FragTxt , 1000 , "#if 0" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     /* Gerar a proposta de codigo de interpretacao */

                        InsereTexto( FragTxt , 1000 , "int  inxObj   = -1 ;" ) ;
                        InsereTexto( FragTxt , 1000 , "int  expValue = -1 ;" ) ;
                        InsereTexto( FragTxt , 1000 , "int  sizValue = -1 ;" ) ;
                        InsereTexto( FragTxt , 1000 , "char Value[ TAL_dimBuffer ] ;" ) ;
                        InsereTexto( FragTxt , 1000 , "" ) ;
                        InsereTexto( FragTxt , 1000 , "int  numRead  = TST_pReader->ReadCommandLine( \"iis\" ," ) ;
                        InsereTexto( FragTxt , 1000 , "          &inxObj , &expValue , &sizValue , Value ) ;" ) ;
                        InsereTexto( FragTxt , 1000 , "" ) ;

                        InsereTexto( FragTxt , 1000 , "if ( ( numRead != 3 )"  ) ;
                        InsereTexto( FragTxt , 1000 , "  || !VerifyInxElem( inxObj  , YES ))" ) ;
                        InsereTexto( FragTxt , 1000 , "{" ) ;
                        InsereTexto( FragTxt , 1000 , "   return TST_RetCodeParmError ;" ) ;
                        InsereTexto( FragTxt , 1000 , "} /* if */" ) ;
                        InsereTexto( FragTxt , 1000 , "" ) ;

                        InsereTexto( FragTxt , 1000 , "return Compare( vtObj[ inxObj ]->" ) ;
                        ConcatTexto( FragTxt , Prototipo ) ;
                        InsereTexto( FragTxt , 1000 , "          , expValue , \"Error message.\" ) ;" ) ;

                     InsereTexto( FragTxt , 1000 , "" ) ;
                     InsereTexto( FragTxt , 1000 , "#endif" ) ;
                     InsereTexto( FragTxt , 1000 , "return TST_RetCodeNotImplemented ;" ) ;

                     Texto TxtFonteAntes = FragTxt ;
                  Fim ;

               Sen„o

               /* Registrar que nao gera o bloco de funcao */
               Fim ;
            Fim ;

         /* Generate exported and public variable list */

            ParaTodos ListaVars Faz

            /* Controlar a geracao do bloco de teste de dado */

               ObjFunc     = Corrente ;
               NomeFunc    = [ Nome ] ;
               NomeBloco   = ConcatSeq( "Test var: " , NomeFunc ) ;
               ContaGerado = ContaGerado + 1 ;

               FragTxt     = [ Texto TxtDclDado ] ;

               Se NAO ExisteObj( ObjetoNome( DicBlocoPrograma , NomeBloco )) Ent„o

               /* Gerar bloco de teste de dado */


                  NovoObj = CriaNome( DicBlocoPrograma , NomeBloco ) ;

                  ComObjeto NovoObj Faz

                  /* Inserir bloco teste variavel ordenadamente na lista de filhos */

                     NaoAchou  = Verdadeiro ;
                     InxInsert = 1 ;
                     TamInsert = TamTexto( RelacFil ) ;
                     Enquanto InxInsert < TamInsert Faz
                        Se LinhaTexto( RelacFil , InxInsert ) > NomeBloco
                        Entao
                           SaiRepeticao ;
                        Senao
                        Fim ; /* Se */
                        InxInsert = InxInsert + 1 ;
                     Fim ; /* Enquanto */
                     Se NaoAchou
                     Entao
                        InsereTexto( RelacFil , 1000 , NomeBloco ) ;
                     Senao
                        InsereTexto( RelacFil , InxInsert - 1 , NomeBloco ) ;
                     Fim ; /* Se */

                  /* Gerar nome do comando de teste de dado */

                     NomeComnd = LinhaTexto( FragTxt , 1 ) ;

                     FimNome   = Indice( NomeComnd , ";" , 1 , 1000 ) ;
                     Se FimNome > 1
                     Entao
                        NomeComnd = SubSeq( NomeComnd , 1 , FimNome - 1 ) ;
                     Senao
                     Fim ; /* Se */

                     FimNome   = Indice( NomeComnd , "=" , 1 , 1000 ) ;
                     Se FimNome > 1
                     Entao
                        NomeComnd = SubSeq( NomeComnd , 1 , FimNome - 1 ) ;
                     Senao
                     Fim ; /* Se */

                     FimNome   = Indice( NomeComnd , "[" , 1 , 1000 ) ;
                     Se FimNome > 1
                     Entao
                        NomeComnd = SubSeq( NomeComnd , 1 , FimNome - 1 ) ;
                     Senao
                     Fim ; /* Se */

                     NomeComnd = ConcatSeq( NomeComnd , ConcatSeq( "_" ,
                               ConvFormato( ContaGerado , "0123456789" , 3 ))) ;

                  /* Gerar seletor do comando de teste de dado */

                     EsvaziaTexto( FragTxt ) ;
                     InsereTexto( FragTxt , 0 , NomeComnd ) ;
                     Texto TxtAssertEnt = FragTxt ;

                     EsvaziaTexto( FragTxt ) ;
                     InsereTexto( FragTxt , 100 , ConcatSeq( "else if ( strcmp( Command , " ,
                               ConcatSeq( NomeComnd , " ) == 0 )" ))) ;
                     Texto TxtCondAtiv = FragTxt ;

                  /* Gerar codigo de interpretacao do comando de teste de dado */

                     EsvaziaTexto( FragTxt ) ;
                     ComObjeto ObjFunc Faz
                        FragTxt    = [ Texto TxtDclDado ] ;
                        Prototipo  = FragTxt ;
                     Fim ; /* ComObjeto */

                     InsereTexto( FragTxt ,    0 , "/***** Variable" ) ;
                     InsereTexto( FragTxt , 1000 , "*****/" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     InsereTexto( FragTxt , 1000 , "#if 0" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     InsereTexto( FragTxt , 1000 , "int  inxObj   = -1 ;" ) ;
                     InsereTexto( FragTxt , 1000 , "int  expValue = -1 ;" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;
                     InsereTexto( FragTxt , 1000 , "int numRead = TST_pReader->ReadCommandLine( \"ii\" ," ) ;
                     InsereTexto( FragTxt , 1000 , "          &inxObj , &expValue ) ;" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     InsereTexto( FragTxt , 1000 , "if ( ( numRead != 2                )"  ) ;
                     InsereTexto( FragTxt , 1000 , "  || !VerifyInxElem( inxObj  , YES ))" ) ;
                     InsereTexto( FragTxt , 1000 , "{" ) ;
                     InsereTexto( FragTxt , 1000 , "   return TST_RetCodeParmError ;" ) ;
                     InsereTexto( FragTxt , 1000 , "} /* if */" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     InsereTexto( FragTxt , 1000 , "return Compare( vtObj[ inxObj ]->" ) ;
                     ConcatTexto( FragTxt , Prototipo ) ;
                     InsereTexto( FragTxt , 1000 , ", expValue , \"Incorrect value.\"" ) ;
                     InsereTexto( FragTxt , 1000 , "" ) ;

                     InsereTexto( FragTxt , 1000 , "#endif" ) ;
                     InsereTexto( FragTxt , 1000 , "return TST_RetCodeNotImplemented ;" ) ;

                     Texto TxtFonteAntes = FragTxt ;
                  Fim ;

               Sen„o

               /* Registrar que nao gera o bloco de dado */
               Fim ;
            Fim ;

         Relacao Decomp = RelacFil ;
   FimFrm

/**************************************************************************
**** Fim programa: CPPTRN Transformar módulo C++
**************************************************************************/

