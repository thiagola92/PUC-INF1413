/**************************************************************************
*
**** Programa de formul rios: DFDLIN Linearizar m quina de estados
*
**** Nome do arquivo gerado:  CPPFDLIN
*
*Nome l¢gico da base: Programas de formul rio de apoio … programa‡„o C++
*Nome do arquivo:     C:\TALISMAN\TOOLS\BSW\CPPFRM.BSW
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
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  DFDLIN Linearizar processo dicio    : "Linearizar processo"
*  ME Linearizar diagrama              : "Linearizar diagrama"
*  ME Gerar c¢digo da transi‡„o        : "Gerar c¢digo da transi‡„o"( Objeto    Liga‡„o ,
*                                                                     Objeto    Origem  ,
*                                                                     Objeto    RotuloCorr )
*  ME Gerar c¢digo de sele‡„o para     : "Gerar sele‡„o pr¢ximo estado"
*  ME Linearizar processo m quina d    : "Linearizar processo m quina de estado"
*  ME Gerar c¢digo de estado corres    : "ME Gerar c¢digo da instƒncia"
*  ME Gerar c¢digo de processo de m    : "Gerar c¢digo de processo de m quina"
*  CPPLIN Linearizar filhos do bloc    : "Linearizar Filhos"
*  CPPLIN Linearizar dado simples      : "Linear dado simples"( L¢gico EhMembro )
*  ME Gerar enum dos estados de uma    : "Gerar declara‡”es da m quina"
*  CPPLIN Testar se bloco tem dados    : "TestarSeBlocoTemDados"
*  CPPLIN Verificar se tem comando     : "Inicia com seq"( Inteiro   IdTxt ,
*                                                          Seqˆncia Seq )
*  CPPLIN Gerar corpo de tipo          : "Gerar corpo de tipo"
*  CPPLIN Linearizar dado              : "Linear dado"( inteiro Visibilidade )
*  CPPLIN Linearizar bloco             : "Linear bloco"
*  CPPLIN Gerar dados do bloco         : "Gerar dados bloco"
*  DFDLIN Linearizar agente            : "Linearizar agente"
*
***************************************************************************/

/***** Formul rio global *****/

   InicGlobal


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


               Constante      TxtDclClassePubl     = 10 ;
               Constante      TxtDclClasseProt     = 11 ;
               Constante      TxtDclClassePriv     = 12 ;

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

            /* Estrutura de dados Constantes para pacotes */

               Constante      AliasInline          = 10 ;
               Constante      AliasVirtualPuro     = 11 ;
               Constante      AliasDebug           = 12 ;
               Constante      AliasVirtual         = 13 ;

               Constante      TxtPactEntra           = 21 ;
               Constante      TxtPactExceptions      = 22 ;
               Constante      TxtPactSai             = 23 ;
               Constante TxtPactPrecondicao          = 24 ;
               Constante TxtPactPoscondicao          = 25 ;
               Constante TxtPactTiposDados           = 26 ;
               Constante TxtPactTiposDadosImportados = 27 ;
               Constante TxtPactMembros              = 28 ;

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

            /* Estrutura de dados Constantes para blocos programa */

               Constante      AliasDiag       = 11 ;
               Constante      AliasBlcDbg     = 12 ;
               Constante      AliasPrepara    = 13 ;
               Constante      AliasBlcNomeDebug  = 14 ;

               Constante      TxtBlcCabecDecl = 18 ;
               Constante      TxtBlcCabecDef  = 20 ;
               Constante      TxtBlcCabecMapa = 21 ;
               Constante      TxtBlcIniPac    = 25 ;
               Constante      TxtBlcFimPac    = 26 ;
               Constante      TxtBlcMensagem  = 27 ;
               Constante      TxtBlcAssertPac = 29 ;


               Constante      TxtAssertEnt    = 11 ;
               Constante      TxtBlcDados     = 19 ;
               Constante      TxtCondAtiv     = 14 ;
               Constante      TxtFonteAntes   = 16 ;
               Constante      TxtCondRepet    = 13 ;
               Constante      TxtCondSelec    = 15 ;
               Constante      TxtFonteApos    = 17 ;
               Constante      TxtAssertSai    = 12 ;
               Constante      TxtDebugAntes   = 28 ;

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

            /* Estrutura de dados Constantes para tipos de dados */

            /* Estrutura de dados Constantes para controles */

               Constante      TxtTipoControle = 11 ;
               Constante      TxtSignfCtrl    = 12 ;

            /* Estrutura de dados Constantes para transi‡”es */

               Constante      AliasMsgWnd          = 30 ;

               Constante      TxtTransC¢digoDecl   = 11 ;

               Constante      TxtTransC¢digoIni    = 16 ;
               Constante      TxtTransC¢digoMeio   = 22 ;
               Constante      TxtTransC¢digoFim    = 17 ;
               Constante      TxtTransFazNada      = 23 ;

               Constante      TxtTransAsEntra      = 29 ;
               Constante      TxtTransAsSai        = 30 ;

               Constante      TxtTransEntra        = 47 ;
               Constante      TxtTransIntfUsu      = 48 ;
               Constante      TxtTransSai          = 49 ;

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

               Constante      TxtDecisaoFluxo = 21 ;   /* igual em DFD */
               Constante      TxtAcaoFluxo    = 22 ;   /* igual em DFD */
               Constante      TxtMsgFluxo     = 11 ;
               Constante      TxtStringFluxo  =  9 ;
               Constante      TxtAcaoErro     = 22 ;   /* igual em DFD */

               Constante      TxtAcaoEntra    = 23 ;   /* igual em DFD */
               Constante      TxtAcaoSempre   = 21 ;   /* igual em DFD */
               Constante      TxtAcaoSai      = 24 ;   /* igual em DFD */

            /* Estrutura de dados Declara‡”es para gerar lista LIMBO */

               Constante      NomeLimbo       = "! Limbo" ;
               ListaTexto     TextoRelLimbo ;
               ListaTexto     TextoVazio ;
               Sequencia      Letras ;

         /* Estrutura de dados CPP  Dados do linearizador CPP */

            /* Estrutura de dados Constantes */

               Constante      EXT_DEF         = "HPP" ;
               Constante      EXT_IMPL        = "CPP" ;

               Constante      CTRL_PROP       = "OWN" ;
               Constante      CTRL_CLASS      = "CLASS" ;

               Constante      BARRA_COMENT    =
               "//////////////////////////////////////////////////////////////////////" ;

               Constante      BARRA_Secao     =
               "//=======================================================================" ;

            /* Estrutura de dados Variaveis */

               /* Estrutura de dados Variaveis de trabalho do linearizador CPP */

                  Logico         Espec ;
                  Logico         TemSeq ;
                  L¢gico         BlocoTemDados ;
                  Logico         TemTexto ;
                  Logico         GerandoFuncoesPublicas ;

                  Inteiro        ContaM quina ;

                  Seqˆncia      NomeArqImple ;
                  Seqencia      NomeArqDefin ;
                  Seqˆncia      NomeEstado ;

                  Seqˆncia      NomeCtrl ;
                  Seqˆncia      NomeCtrlProp ;
                  Seqˆncia      NomeCtrlClass ;

                  Seqˆncia      S_Class ;

               /* Estrutura de dados Dados para gera‡„o de m quina de estados a partir de classes e diagramas de transi‡„o de estados */

                  ConjuntoFila   ListaTrans   ;
                  ConjuntoFila   ListaEstados ;
                  ConjuntoFila   ListaObjOrg ;
                  ConjuntoFila   ListaObjDest ;
                  Inteiro        NumId ;
                  Inteiro        ContaMsg ;

               /* Estrutura de dados Dados para gera‡„o de fun‡”es transi‡„o */

                  L¢gico  PrimLigSai ;
                  Logico  TemProcDef ;
                  Objeto  ProcDef ;
      FimDecl
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: DFDLIN Linearizar processo dicion rio *****/

   InicFrm "Linearizar processo"
      /* Dado do bloco Corpo de Linearizar processo */

         Logico EhOrigem ;

      FimDecl

   /* Corpo de Linearizar processo */

      AvEsq   1 ;

      Se Existe( [ Relacao Blocos ] )
      Ent„o
         EhOrigem = VERDADEIRO ;
      Sen„o
         EhOrigem = FALSO ;
      Fim ; /* Se */

      Se EhOrigem Ent„o

      /* Efetuar a lineariza‡„o da m quina toda */

         Titulo "// M quina de estados" ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;

         Frm "Linearizar processo m quina de estado" ;

      Sen„o

      /* Efetuar a lineariza‡„o somente do processo */

         Titulo "// Estado" ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;

         ParaTodos InstsObjeto Faz
            Frm "ME Gerar c¢digo da instƒncia" ;
         Fim ; /* ComObjeto */
      Fim ;
   FimFrm

/***** Formul rio: ME Linearizar diagrama *****/

   InicFrm "Linearizar diagrama"

   /* Corpo de Linearizar diagrama */

      ParaTodos Processos Faz

      /* Gera coment rio inicial da m quina de estados */

         MrgEsq  3 ;
         AvEsq   1 ;
         Titulo "" ;
         Titulo "// State machine:" ;
         NaoAvlin ;
         Nome ;
         Titulo "" ;

         T¡tulo "   {" ;

      /* Gera c¢digo da m quina de estados */

         AvMrgEsq 3 ;
         Frm "Linearizar processo m quina de estado" ;
         AvMrgEsq -3 ;

      /* Gerar coment rio final da m quina de estados */

         Titulo "   } // End of state machine:" ;
         NaoAvLin ;
         Nome ;
      Fim ;
   FimFrm

/***** Formul rio: ME Gerar c¢digo da transi‡„o *****/

   InicFrm "Gerar c¢digo da transi‡„o"( Objeto    Liga‡„o ,
                                        Objeto    Origem  ,
                                        Objeto    RotuloCorr )
      /* Dado do bloco Corpo de Gerar c¢digo da transi‡„o */

         Objeto       Destino ;
         Seqˆncia    EstadoDestino ;

      FimDecl

   /* Corpo de Gerar c¢digo da transi‡„o */

      /* Obter o r¢tulo do estado destino */

         ComObjeto OutraPonta( Liga‡„o , Origem ) Faz
            ComObjeto ObjetoInst( Corrente ) Faz
               Destino = Corrente ;
               Se ClasseObj( Corrente ) == DicProcesso
               Entao
                  EstadoDestino = [ Alias AliasNomeEstado ] ;
               Senao
                  Se ClasseObj( Corrente ) == DicAgente
                  Entao
                     EstadoDestino = "MEST_FIM" ;
                  Senao
                     EstadoDestino = "" ;
                  Fim ;
               Fim ;
            Fim ;
         Fim ;

      /* Verificar se destino faz parte de processamento */

         Se EstadoDestino != "" Ent„o

         /* Tratar destino normal */

            /* Gerar atribui‡„o ao estado */

               Titulo "CurrentState =" ;
               NaoAvLin ;
               Titulo EstadoDestino ;
               NaoAvLin ;
               Titulo ";" ;
               ComObjeto Destino Faz
                  NaoAvLin ;
                  Titulo "//" ;
                  NaoAvLin ;
                  Nome ;
               Fim ;

            /* Gerar c¢digo da transi‡„o */

               Se ExisteObj( RotuloCorr )
               Entao
                  ComObjeto RotuloCorr  Faz
                     Se Existe( [ Texto TxtAcaoFluxo ] )
                     Entao
                        Texto TxtAcaoFluxo ;
                     Senao
                     Fim ;
                  Fim ; /* ComObjeto */
               Senao
               Fim ;

            /* Gerar mudan‡a de estado */

               ComObjeto Origem Faz
                  Se EstadoDestino != [ Alias AliasNomeEstado ]
                  Ent„o
                     Se Existe( [ Texto TxtAcaoSai ] )
                     Entao
                        Titulo "" ;
                        Texto TxtAcaoSai ;
                     Senao
                     Fim ;

                     ComObjeto Destino Faz
                        Se Existe( [ Texto TxtAcaoEntra ] )
                        Entao
                           Titulo "" ;
                           Texto TxtAcaoEntra ;
                        Senao
                        Fim ;
                     Fim ; /* ComObjeto */

                  Sen„o
                  Fim ; /* Se */
               Fim ; /* ComObjeto */

         Sen„o
         Fim ;
   FimFrm

/***** Formul rio: ME Gerar c¢digo de sele‡„o para as sa¡das de instƒncia *****/

   InicFrm "Gerar sele‡„o pr¢ximo estado"
      /* Dado do bloco Corpo de Gerar c¢digo de sele‡„o para as sa¡das da instƒncia */

         Objeto      Origem ;
         Objeto      Liga‡„o ;
         Fila        A‡„oDefault ;

      /* Dado do bloco Gerar c¢digo para a transi‡„o */

         L¢gico Gera ;
         Objeto RotuloCorr ;

      FimDecl

   /* Corpo de Gerar c¢digo de sele‡„o para as sa¡das da instƒncia */

      Origem     = Corrente ;

      /* Gerar c¢digo para a transi‡„o */

         EsvaziaLista( A‡„oDefault ) ;

         ParaTodos LigsSai Faz

         /* Determinar tipo de liga‡„o de sa¡da */

            Gera    = FALSO ;
            Ligacao = Corrente ;

            ComObjeto RotuloLig( Corrente ) Faz
               Se ExisteObj( Corrente )
               Entao
                  ComObjeto ObjetoInst( Corrente ) Faz
                     Se Existe( [ Texto TxtDecisaoFluxo ] )
                     Entao
                        RotuloCorr = Corrente ;
                        Gera       = VERDADEIRO ;
                     Senao
                        InsereObj( A‡„oDefault , Ligacao ) ;
                     Fim ;
                  Fim ;
               Senao
                  InsereObj( A‡„oDefault , Ligacao ) ;
               Fim ;
            Fim ;

         /* Gerar if de sele‡„o para transi‡„o com controle */

            Se Gera
            Ent„o
               Titulo "" ;
               Titulo "if (" ;
               NaoAvLin ;
               ComObjeto RotuloCorr Faz
                  Texto TxtDecisaoFluxo ;
               Fim ; /* ComObjeto */
               NaoAvLin ;
               Titulo ")" ;

               Titulo "{" ;
               AvMrgEsq 3 ;

               Frm "Gerar c¢digo da transi‡„o"(  Liga‡„o ,
                                                 Origem  ,
                                                 RotuloCorr ) ;
               Titulo "break ;" ;
               AvMrgEsq -3 ;
               Titulo "} // if" ;

            Sen„o
            Fim ; /* Se */
         Fim ;

      /* Gerar transi‡”es pendentes */

         Se Nao ListaVazia( A‡„oDefault )
         Ent„o
            Titulo "" ;
            ParaTodos A‡„oDefault Faz
               Ligacao = Corrente ;
               ComObjeto RotuloLig( Corrente ) Faz
                  ComObjeto ObjetoInst( Corrente ) Faz
                     Frm "Gerar c¢digo da transi‡„o"( Liga‡„o ,
                                                      Origem  ,
                                                      Corrente ) ;
                  Fim ;
               Fim ;
            Fim ;
         Senao
         Fim ;
   FimFrm

/***** Formul rio: ME Linearizar processo m quina de estados *****/

   InicFrm "Linearizar processo m quina de estado"
      /* Dado do bloco Gerar todos os estados da m quina de estados */

         Objeto InstanciaCorr ;

      FimDecl

   /* Corpo de Linearizar processo m quina de estados */

      /* Gerar enum dos estados da m quina */

         ParaTodos Agentes Faz
            ParaTodos InstsObjeto Faz
               Frm "Gerar declara‡”es da m quina" ;
            Fim ;
         Fim ;

      /* Determinar estado inicial */

         Titulo "" ;
         T¡tulo "// Define initial state" ;
         Titulo "" ;
         AvMrgEsq 3 ;
         Titulo "CurrentState = STMACH_START ;" ;
         AvMrgEsq -3 ;

      /* Gerar in¡cio do controle da m quina de estados */

         T¡tulo "" ;
         T¡tulo "// State machine control" ;
         T¡tulo "" ;
         AvMrgEsq 3 ;
         Titulo "while ( CurrentState != STMACH_END )" ;
         Titulo "{" ;
         AvMrgEsq 3 ;

         Titulo "switch ( CurrentState )" ;
         Titulo "{" ;
         AvMrgEsq 3 ;

      /* Gerar sele‡„o a partir do indicador de in¡cio */

         ParaTodos Agentes Faz
            ParaTodos InstsObjeto Faz
               AvMrgEsq -3 ;
               Titulo "" ;
               Titulo "//" ;
               NaoAvLin ;
               Nome ;
               Titulo "" ;
               AvMrgEsq 3 ;

               Titulo "case STMACH_START :" ;
               AvMrgEsq 3 ;
                  Titulo "" ;
                  Titulo "CurrentState = STMACH_ERROR ;" ;
                  Frm "Gerar sele‡„o pr¢ximo estado" ;
                  T¡tulo "break ;" ;
               AvMrgEsq -3 ;
            Fim ;
         Fim ;

      /* Gerar todos os estados da m quina de estados */

         ComObjeto FolhaFilho( Corrente ) Faz
            ParaTodos InstFolha Faz
               InstanciaCorr = Corrente ;
               ComObjeto ObjetoInst( Corrente ) Faz
                  Se ClasseObj( Corrente ) == DicProcesso
                  Entao
                     ComObjeto InstanciaCorr Faz
                        Frm "ME Gerar c¢digo da instƒncia" ;
                     Fim ; /* ComObjeto */
                  Senao
                  Fim ;
               Fim ;
            Fim ;
         Fim ; /* ComObjeto */

      /* Gerar tratamento de erros da m quina de estados */

         Titulo "" ;
         AvMrgEsq -3 ;
         Titulo "// Handle erroneous state" ;
         AvMrgEsq 3 ;
         Titulo "" ;

         Titulo "default :" ;
         AvMrgEsq 3 ;
         T¡tulo "CurrentState = STMACH_END ;" ;
         Se Existe( [ Texto TxtAcaoErro ] )
         Entao
            Texto TxtAcaoErro ;
            T¡tulo "" ;
         Senao
         Fim ;
         Titulo "break ;" ;
         AvMrgEsq -3 ;

      /* Gerar final do controle da m quina de estados */

         AvMrgEsq -3 ;
         Titulo "" ;
         Titulo "} // switch" ;

         AvMrgEsq -3 ;
         Titulo "} // while" ;
   FimFrm

/***** Formul rio: ME Gerar c¢digo de estado correspondente a instƒncia *****/

   InicFrm "ME Gerar c¢digo da instƒncia"

   /* Corpo de Gerar c¢digo de estado correspondente a instƒncia */

      /* Gerar cabe‡alho do estado */

         AvMrgEsq -3 ;
         Titulo "" ;
         Titulo "//" ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;
         AvMrgEsq 3 ;

      /* Gerar o case de sele‡„o do estado */

         Titulo "case" ;
         NaoAvLin ;
         Alias AliasNomeEstado ;
         NaoAvLin ;
         Titulo ":" ;
         AvMrgEsq 3 ;

      /* Gerar corpo do estado */

         Frm "Gerar c¢digo de processo de m quina" ;

         Frm "Gerar sele‡„o pr¢ximo estado" ;

         T¡tulo "break ;" ;
   FimFrm

/***** Formul rio: ME Gerar c¢digo de processo de m quina de estados *****/

   InicFrm "Gerar c¢digo de processo de m quina"

   /* Corpo de Gerar c¢digo de processo de m quina de estados */

      /* Gerar estado default erro */

         T¡tulo "" ;
         T¡tulo "CurrentState = STMACH_ERROR ;" ;

      /* Gerar c¢digo definido no processo */

         Se Existe( [ Texto TxtAcaoSempre ] )
         Ent„o
            Titulo "" ;
            Texto TxtAcaoSempre ;
         Sen„o
         Fim ;
   FimFrm

/***** Formul rio: CPPLIN Linearizar filhos do bloco *****/

   InicFrm "Linearizar Filhos"
      /* Dado do bloco Corpo de CPP Linearizar filhos do bloco */

         Inteiro Prep ;
         Inteiro Conta ;

      /* Dado do bloco Linearizar preƒmbulo do bloco */

         Logico Try ;
         Logico TemDo ;

      /* Dado do bloco Gerar cabe‡alho de sele‡„o */

         ListaTexto TxtSelec ;
         Sequencia  Linha ;

      /* Dado do bloco Gerar t‚rmino de repeti‡„o */

         Inteiro Lin ;
         Inteiro Tam ;

      FimDecl

   /* Corpo de CPP Linearizar filhos do bloco */

      /* Gerar texto fonte de depura‡„o antes */

         Se Existe( [ Texto TxtDebugAntes ] )
         Entao
            Titulo "" ;
            Titulo "#ifdef _DEBUG" ;
            AvMrgEsq 3 ;
            Texto TxtDebugAntes ;
            AvMrgEsq -3 ;
            Titulo "#endif" ;
         SeNao
         Fim ;

      /* Gerar texto fonte antes */

         Se Existe( [ Texto TxtFonteAntes ] )
         Entao
            Titulo "" ;
            Texto TxtFonteAntes ;
         SeNao
         Fim ;

      /* Linearizar prepara‡„o para controles */

         Se Existe( [ Alias AliasPrepara ] )
         Entao
           Prep  = 1 ;
           Conta = 0 ;
           ParaTodos Decomp Faz
              Se Conta >= Prep
              Entao
                 SaiRepeticao ;
              Senao
              Fim ;
              Frm "Linear bloco" ;
              Conta = Conta + 1 ;
           Fim ;

         Senao
           Prep = 0 ;
         Fim ;

      /* Linearizar preƒmbulo do bloco */

         /* Gerar cabe‡alho de repeti‡„o */

            TemDo = falso ;
            Se Existe( [ Texto TxtCondRepet ] )
            Entao
               TxtSelec = [ Texto TxtCondRepet ] ;
               Linha    = LinhaTexto( TxtSelec , 1 ) ;
               Se SubSeq( Linha , 1 , 2 ) == "do"
               Entao
                 TemDo = Verdadeiro ;
                 Titulo "" ;
                 Titulo "do" ;
                 Titulo "{" ;
               Senao
                 Titulo "" ;
                 Texto TxtCondRepet ;
                 NaoAvLin ;
                 Titulo " {" ;
               Fim ; /* Se */
            SeNao
            Fim ;

         /* Gerar cabe‡alho de sele‡„o */

            Se Existe( [ Texto TxtCondSelec ] )
            Entao
               TxtSelec = [ Texto TxtCondSelec ] ;
               Linha    = LinhaTexto( TxtSelec , 1 ) ;
               Se Linha == "try"
               Ent„o
                  Try = VERDADEIRO ;
                  Titulo "" ;
                  Titulo "try" ;
                  Titulo "{" ;

                  Prep  = 1 ;
                  Conta = 0 ;
                  ParaTodos Decomp Faz
                     Se Conta >= Prep
                     Entao
                        SaiRepeticao ;
                     Senao
                     Fim ;
                     Frm "Linear bloco" ;
                     Conta = Conta + 1 ;
                  Fim ;
                  Titulo "}  // end try block: " ;
                  NaoAvLin ;
                  Nome ;
                  AvMrgEsq -3 ;

               Sen„o
                  Try = FALSO ;
                  Titulo "" ;
                  Texto TxtCondSelec ;
                  NaoAvLin ;
                  Titulo " {" ;
               Fim ; /* Se */
            SeNao
            Fim ;

      /* Linearizar diagrama de m quina de estados */

         Se Existe( [ Rela‡„o Processos ] )
         Entao
            Frm "Linearizar diagrama" ;
         Senao
         Fim ;

      /* Linearizar lista de filhos */

         Conta = 0 ;
         ParaTodos Decomp Faz
            Se Conta >= Prep
            Entao
               Frm "Linear bloco" ;
            Senao
            Fim ;
            Conta = Conta + 1 ;
         Fim ;

      /* Linearizar p¢s-ƒmbulo do bloco */

         /* Gerar t‚rmino de sele‡„o */

            Se Existe( [ Texto TxtCondSelec ] )
            Entao
               Se Try
               Ent„o
                  AvMrgEsq 3 ;
                  Titulo "// end try group: " ;
                  NaoAvLin ;
                  Nome ;
               Sen„o
                  Titulo "" ;
                  Titulo "} // end selection: " ;
                  NaoAvLin ;
                  Nome ;
               Fim ; /* Se */
            SeNao
            Fim ;

         /* Gerar t‚rmino de repeti‡„o */

            Se Existe( [ Texto TxtCondRepet ] )
            Entao
               Se TemDo
               Entao
                  TxtSelec = [ Texto TxtCondRepet ] ;
                  Linha    = LinhaTexto( TxtSelec , 1 ) ;
                  Titulo "" ;
                  Titulo "} while " ;
                  NaoAvLin ;
                  Titulo SubSeq( Linha , 3 , 1000 ) ;
                  Lin = 2 ;
                  Tam = TamTexto( TxtSelec ) ;
                  AvMrgEsq 6 ;
                  Enquanto Lin <= Tam Faz
                     Titulo LinhaTexto( TxtSelec , Lin ) ;
                     Lin = Lin + 1 ;
                  Fim ; /* Enquanto */
                  AvMrgEsq -6 ;
                  NaoAvLin ;
                  Titulo " ; // end repetition: " ;
                  NaoAvLin ;
                  Nome ;
               Senao
                  Titulo "" ;
                  Titulo "} // end repetition: " ;
                  NaoAvLin ;
                  Nome ;
               Fim ; /* Se */
            SeNao
            Fim ;

      /* Linearizar texto ap¢s */

         Se Existe( [ Texto TxtFonteApos ] )
         Entao
            Titulo "" ;
            Texto TxtFonteApos ;
         SeNao
         Fim ;
   FimFrm

/***** Formul rio: CPPLIN Linearizar dado simples *****/

   InicFrm "Linear dado simples"( L¢gico EhMembro )

   /* Corpo de CPP Linearizar dado simples */

      Titulo "" ;
      Frm "Inicia com seq"( TxtDclDado , "#" ) ;

      Se TemSeq Ent„o

      /* Gerar préprocessador */

         Texto TxtDclDado ;

      Sen„o

      /* Gerar dado não preprocessador */

         Se EhMembro Ent„o

         /* Gerar variável membro */

            Se Existe( [ Alias AliasPublico ] )
            Entao
               Titulo "public:" ;
            Sen„o
            Fim ;
            Se Existe( [ Alias AliasProtegido ] )
            Entao
               Titulo "protected:" ;
            Sen„o
            Fim ;
            Se Existe( [ Alias AliasPrivado ] )
            Entao
               Titulo "private: " ;
            Sen„o
            Fim ;

            AvMrgEsq 3 ;
            Se Existe( [ Alias AliasDadoExport ] )
            Entao
               Titulo "static " ;
               NaoAvLin ;
            Sen„o
            Fim ;

            Texto TxtDclDado ;

            Se Existe( [ Texto TxtDclInic ] )
            Ent„o
               NaoAvLin ;
               Titulo " = " ;
               NaoAvLin ;
               Texto TxtDclInic ;
               NaoAvLin ;
               Titulo " ;" ;
            Senao
            Fim ;

            AvMrgEsq -3 ;

         Sen„o

         /* Gerar variavel nao membro */

            Frm "Inicia com seq"( TxtDclDado , "const" ) ;

            Se TemSeq Ent„o

            /* Gerar constante const */

               Texto TxtDclDado ;

               Se Existe( [ Texto TxtDclInic ] )
               Ent„o
                  NaoAvLin ;
                  Titulo " = " ;
                  NaoAvLin ;
                  Texto TxtDclInic ;
                  NaoAvLin ;
                  Titulo " ;" ;
               Senao
               Fim ;

            Sen„o

            /* Gerar variável typedef */

               Frm "Inicia com seq"( TxtDclDado , "typedef" ) ;

               Se TemSeq Ent„o

               /* Gerar declaração typedef */

                  Texto TxtDclDado ;

               Sen„o

               /* Gerar dado normal */

                  /* Gerar texto de declaração do dado */

                     Se S_Class == "extern "
                     Ent„o
                        Titulo NomeCtrlClass ;
                        NaoAvLin ;
                        Titulo " " ;
                     Sen„o
                        T¡tulo S_Class ;
                        Se S_Class != ""
                        Entao
                           NaoAvLin ;
                        Senao
                        Fim ; /* Se */
                     Fim ;

                     Texto TxtDclDado ;      /* declara‡ao ou defini‡„o */

                  /* Gerar texto de inicialização do dado */

                     Se Existe( [ Texto TxtDclInic ] )     /* possui inicializa‡„o   */
                     Ent„o
                        Se S_Class == "extern "
                        Entao
                           AvMrgEsq 3 ;
                           Titulo "#ifdef " ;              /* testa, ao compilar, */
                           NaoAvLin ;                      /* se est  fora do     */
                           Titulo NomeCtrlProp ;           /* m¢dulo pr¢prio      */
                           Titulo " = " ;
                           NaoAvLin ;
                           Texto TxtDclInic ;
                           NaoAvLin ;
                           Titulo " ;" ;
                           Titulo "#else" ;
                           Titulo " ;" ;
                           Titulo "#endif" ;
                           AvMrgEsq -3 ;
                        Senao
                           Titulo " = " ;
                           NaoAvLin ;
                           Texto TxtDclInic ;
                           NaoAvLin ;
                           Titulo " ;" ;
                        Fim ; /* Se */
                     Senao
                     Fim ;
               Fim ;
            Fim ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul rio: ME Gerar enum dos estados de uma m quina *****/

   InicFrm "Gerar declara‡”es da m quina"

   /* Corpo de ME Gerar enum dos estados de uma m quina */

      /* Gerar in¡cio da declara‡„o do enum */

         Titulo "" ;
         T¡tulo "// Control variables" ;
         AvMrgEsq 3 ;
         Titulo "" ;
         Titulo "enum" ;
         Titulo "{" ;
         AvMrgEsq 3 ;

      /* Gerar os nomes de estados na folha corrente */

         ComObjeto FolhaInst( Corrente ) Faz
            ParaTodos InstFolha Faz
               ComObjeto ObjetoInst( Corrente ) Faz
                  Se ClasseObj( Corrente ) == DicProcesso
                  Entao
                     Se Existe( [ Alias AliasNomeEstado ] )
                     Entao
                        TamCampo 16 ;
                        Alias AliasNomeEstado ;
                        NaoAvLin ;
                        Titulo "," ;
                     Senao
                        Nome ;
                     Fim ;
                  Senao
                  Fim ;
               Fim ;
            Fim ;
         Fim ;

      /* Gerar nomes padronizados */

         TamCampo 16 ;
         Titulo "STMACH_START" ;
         NaoAvLin ;
         Titulo "," ;

         TamCampo 16 ;
         Titulo "STMACH_END" ;
         NaoAvLin ;
         Titulo "," ;

         TamCampo 16 ;
         Titulo "STMACH_ERROR" ;

      /* Gerar t‚rmino da declara‡„o */

         AvMrgEsq -3 ;
         Titulo "" ;
         Titulo "}  CurrentState ;" ;
   FimFrm

/***** Formul rio: CPPLIN Testar se bloco tem dados *****/

   InicFrm "TestarSeBlocoTemDados"

   /* Corpo de CPP Testar se bloco tem dados */

      Se    Existe( [ Texto TxtBlcDados      ] )
         OU Existe( [ Rela‡„o BlocosDeclaram ] ) Ent„o

         BlocoTemDados = Verdadeiro ;

      Sen„o

         BlocoTemDados = Falso ;

      Fim ;
   FimFrm

/***** Formul rio: CPPLIN Verificar se tem comando de preprocessador *****/

   InicFrm "Inicia com seq"( Inteiro   IdTxt ,
                             Seqˆncia Seq )
      /* Dado do bloco Corpo de CPP Verificar se texto começa com determinado string */

         ListaTexto Txt ;
         Inteiro    TamTxt ;
         Sequencia  LinTxt ;
         Inteiro    InxSeq ;
         Inteiro    i ;
         Inteiro    j ;
         Logico     Continua ;

      FimDecl

   /* Corpo de CPP Verificar se texto começa com determinado string */

      TemSeq   = Falso ;
      Txt      = [ Texto IdTxt ] ;
      TamTxt   = TamTexto( Txt ) ;
      i        = 1 ;
      Continua = Verdadeiro ;
      Enquanto ( i <= TamTxt ) E Continua Faz

         LinTxt = LinhaTexto( Txt , i ) ;
         InxSeq = Indice( LinTxt , Seq , 1 , TamSeq( LinTxt )) ;
         Se InxSeq > 0 Entao

            j = 1 ;
            Enquanto ( j < InxSeq ) E Continua faz

               Se Subseq( LinTxt , j , 1 ) != " "
               Entao
                  Continua = Falso ;
                  TemSeq   = Falso ;
               Senao
               Fim ;
               j = j + 1 ;
            fim ;
            TemSeq   = Verdadeiro ;
            Continua = Falso ;

         Senao

            Se TamSeq( LinTxt ) > 0 Entao
               Continua = Falso ;
            Senao
            Fim ;
         Fim ;
         i = i + 1 ;
      Fim ;
   FimFrm

/***** Formul rio: CPPLIN Gerar corpo de tipo *****/

   InicFrm "Gerar corpo de tipo"

   /* Corpo de CPP Gerar corpo de tipo */

      /* Linearizar tipo */

         Se Existe( [ Rela‡„o Decomp ] ) Ent„o

         /* xLinearizar Tipo Composto */

            Texto TxtDclCabec ;
            Titulo "{" ;
            Frm "Linear Dado"( 0 ) ;
            Titulo "" ;
            Titulo "} " ;

         Sen„o

         /* Linearizar Tipo Simples */

            Texto TxtDclCabec ;
            NaoAvLin ;
            /* Falso porque tipos nunca podem ter declara‡”es static */
            Frm "Linear dado simples"( Falso ) ;
         Fim ;

      /* Gerar fim de declara‡„o de tipo */

         Se Existe( [ Texto TxtDclFim ] )
         Ent„o
            NaoAvLin ;
            Texto TxtDclFim ;
         Sen„o
         Fim ;

         NaoAvLin ;
         Titulo " ;" ;
   FimFrm

/***** Formul rio: CPPLIN Linearizar dado *****/

   InicFrm "Linear dado"( inteiro Visibilidade )
      /* Dado do bloco Corpo de CPP Linearizar dado */

         L¢gico EhMembro ;

      /* Dado do bloco Identificar se dado pertence a alguma classe ao linearizar */

         Objeto DadoCorr ;
         L¢gico TemPai ;

      FimDecl

   /* Corpo de CPP Linearizar dado */

      /* Identificar se dado pertence a alguma classe ao linearizar */

         DadoCorr = Corrente ;
         TemPai   = Existe( [ Rela‡„o Comp ] ) ;
         EhMembro = Falso ;

         Enquanto TemPai Faz

            ComObjeto DadoCorr Faz

               TemPai = Falso ;
               ParaTodos Comp Faz
                  TemPai   = Verdadeiro ;
                  DadoCorr = Corrente ;
               Fim ;
            Fim ;
         Fim ;

         ComObjeto DadoCorr Faz

            Se Existe( [ Rela‡„o Classes ] ) Ent„o
               EhMembro = Verdadeiro ;
            Sen„o
            Fim ;
         Fim ;

      /* Linearizar filhos */

         Se Existe( [ Relacao Decomp ] ) Ent„o

         /* Gerar estrutura de dados composta */

            ParaTodos Decomp Faz
               Frm "Linear Dado"( Visibilidade ) ;
            Fim ;

         Sen„o

         /* Gerar declara‡„o dado simples */

            Se    ( Visibilidade == 0 )
               OU ( EhMembro
                    E Existe( [ Alias Visibilidade ] ))
            Entao

               Titulo "" ;
               Titulo "// $DC " ;
               NaoAvLin ;
               Nome ;
               TemTexto = Falso ;
               TextoEsq "   // " ;

               Frm "Exibir Texto Cod"( TxtDescr , "Description" , "$ED" ) ;
               Frm "Exibir Texto Cod"( TxtDclMedida ,
                                       "Intention or metric of this data item" ,
                                       "$ED" ) ;
               Frm "Exibir Texto Cod"( TxtDclAssert ,
                                       "Validity condition of this data item" ,
                                       "$DV" ) ;
               Frm "Exibir Texto Cod"( TxtDclValido ,
                                       "Description" ,
                                       "$TEV" ) ;

               Se TemTexto
               Entao
                  Titulo "" ;
                  Titulo "$. ////////////////////////////////////////////////////" ;
               Senao
               Fim ; /* Se */

               AvMrgEsq 3 ;
               TextoEsq "" ;
               Frm "Linear dado simples"( EhMembro ) ;

            Senao
            Fim ; /* Se */
         Fim ;
   FimFrm

/***** Formul rio: CPPLIN Linearizar bloco *****/

   InicFrm "Linear bloco"
      /* Dado do bloco Corpo de CPP Linearizar bloco */

         Logico BlocoComDados  ;
         Logico FuncaoComDados ;
         Logico IfComDados     ;

      FimDecl

   /* Corpo de CPP Linearizar bloco */

      /* Gerar cabe‡alho do bloco */

         Se Existe( [ Relacao Comp ] )
         Entao
            Titulo "" ;
            Titulo "// " ;
            NaoAvLin ;
            Nome ;
         Senao
         Fim ; /* Se */

         Se Existe( [ Texto TxtObserv ] )
         Entao
            Endenta  3 ;
            TextoEsq "      // " ;

            Titulo "OBS: " ;
            NaoAvLin ;
            Texto TxtObserv ;
            Endenta 0 ;
            TextoEsq "" ;
         Senao
         Fim ; /* Se */

         Se Existe( [ Texto TxtAssertEnt ] )
         Entao
            Endenta  3 ;
            TextoEsq "      // " ;

            Titulo "AE: " ;
            Naoavlin ;
            Texto TxtAssertEnt ;
            Endenta 0 ;
            TextoEsq "" ;
         Senao
         Fim ; /* Se */

      /* Determinar condição para gerar dados do bloco */

         BlocoComDados  = Falso ;
         FuncaoComDados = Falso ;
         IfComDados     = Falso ;

         Frm "TestarSeBlocoTemDados" ;

         Se BlocoTemDados
         Entao
            Se Existe( [ Relacao Pacotes ] )
            Entao
               FuncaoComDados = Verdadeiro ;
            Senao
               Se  Existe( [ Texto TxtCondAtiv ] )
               Entao
                  IfComDados    = Verdadeiro ;
               Senao
                  BlocoComDados = Verdadeiro ;
               Fim ; /* Se */
            Fim ; /* Se */
         Senao
         Fim ;

      /* Gerar dados do bloco origem de corpo de função */

         Se FuncaoComDados Ent„o
            Endenta 3 ;
            Frm "Gerar dados bloco" ;
            Endenta 0 ;
         Sen„o
         Fim ;

      /* Gerar c¢digo de assertivas de entrada */

         Se Existe( [ Texto TxtBlcAssertPac ] )
         Ent„o
            Titulo "" ;
            Titulo "// Input data validation" ;
            Titulo "" ;
            Titulo "#ifdef _DEBUG" ;

            AvMrgEsq 3 ;
            Texto TxtBlcAssertPac ;
            AvMrgEsq -3 ;
            Titulo "#endif" ;
         Sen„o
         Fim ; /* Se */

      /* Gerar corpo do bloco */

         Se Existe( [ Alias AliasBlcDbg ] )
         Ent„o
            Titulo "#ifdef _DEBUG" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */

         Se Existe( [ Texto TxtCondAtiv ] ) Ent„o

         /* Gerar filhos do bloco com condi‡„o de ativa‡„o */

            AvMrgEsq 3 ;

            /* Gerar condi‡„o de ativa‡„o do bloco */

               Titulo "" ;
               Texto TxtCondAtiv ;
               Titulo "{" ;

            /* Linearizar dados do bloco com condi‡„o de ativa‡„o */

               Se IfComDados
               Entao
                  Endenta 3 ;
                  Frm "Gerar dados bloco" ;
                  Endenta 0 ;
               Senao
               Fim ;

            /* Linearizar filhos do bloco com condi‡„o de ativa‡„o */

               AvMrgEsq 3 ;

               Frm "Linearizar Filhos" ;

               AvMrgEsq -3 ;

            /* Gerar fim da condi‡„o de ativa‡„o */

               Titulo "" ;
               Titulo "} // end selection: " ;
               NaoAvLin ;
               Nome ;

            AvMrgEsq -3 ;

         Sen„o

         /* Linearizar filhos do bloco sem condi‡„o de ativa‡„o */

            Se BlocoComDados
            Entao
               Frm "Gerar dados bloco" ;
            Senao
            Fim ;

            AvMrgEsq 3 ;
            Frm "Linearizar Filhos" ;
            AvMrgEsq -3 ;
         Fim ;

         AvMrgEsq -3 ;

         Se Existe( [ Alias AliasBlcDbg ] )
         Ent„o
            Titulo "" ;
            Titulo "#endif" ;
         Sen„o
         Fim ; /* Se */

      /* Gerar Fim do bloco */

         Se Existe( [ Texto TxtAssertSai ] )
         Entao
            Titulo "// AS " ;
            Naoavlin ;
            Endenta  3 ;
            TextoEsq "      // " ;
            Texto TxtAssertSai ;
            Endenta 0 ;
            TextoEsq "" ;
         Senao
         Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPLIN Gerar dados do bloco *****/

   InicFrm "Gerar dados bloco"

   /* Corpo de CPP Gerar dados do bloco */

      /* Gerar declara‡„o texto do bloco */

         Se Existe( [ Texto TxtBlcDados ] )
         Entao
            Titulo "" ;
            Texto TxtBlcDados ;
         SeNao
         Fim ;

      /* Gerar declara‡„o estrutura de dados do bloco */

         Se Existe( [ Rela‡„o BlocosDeclaram ] ) Entao

            AvMrgEsq 3 ;
            S_Class = "" ;
            ParaTodos BlocosDeclaram Faz
               Frm "GerarDadoBloco" ;
            Fim ;
            AvMrgEsq -3 ;
         SeNao
         Fim ;
   FimFrm

/***** Formul rio: DFDLIN Linearizar agente *****/

   InicFrm "Linearizar agente"

   /* Corpo de DFDLIN Linearizar agente */

      Titulo "// Indicador de " ;
      NaoAvLin ;
      Nome ;
      Titulo "" ;
      ParaTodos Processos Faz
         Frm "Linearizar processo" ;
      Fim ; /* ParaTodos */
   FimFrm

/**************************************************************************
**** Fim programa: DFDLIN Linearizar m quina de estados
**************************************************************************/

