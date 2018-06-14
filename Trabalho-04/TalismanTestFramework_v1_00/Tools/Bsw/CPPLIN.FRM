/**************************************************************************
*
**** Programa de formul†rios: CPPLIN Linearizar m¢dulos C++
*
**** Nome do arquivo gerado:  CPPLIN
*
*Nome l¢gico da base: Programas de formul†rio de apoio Ö programaáÑo C++
*Nome do arquivo:     Z:\TALISMAN\TOOLS\BSW\CPPFRM.BSW
*
*   Projeto TALISMAN
*
*VersÑo corrente da base
*  VersÑo: 1    ModificaáÑo: 0    AlteraáÑo:      Data liberaáÑo: 
*
*  Autorizou liberaáÑo     
*
*Hist¢rico da base
*   Vers Modf Altr  Autor    Data     Observaáîes
*     1    avs    03-jul-2000  Inicio do desenvolvimento, copiado de cppfrm
*
*Alteraáîes de emergància realizadas e ainda nÑo passadas a limpo
*
*Alteraáîes e correáîes realizadas
*
****************************************************************************
*
* Formul†rios externos (selecion†veis)
*
*  CPPLIN Linearizar mÛdulo de defi    : "Linearizar mÛdulo de definiáÑo"
*  CPPLIN Linearizar mensagens         : "Linearizar \"strings\""
*  CPPLIN Linearizar m¢dulo            : "Linearizar m¢dulo"
*  CPPLIN Linearizar definiáÑo de c    : "Linearizar definiáÑo de classe"
*  CPPLIN Linearizar implementacao     : "Linearizar implementacao com contadores"
*  CPPLIN Linearizar nomes contador    : "Linearizar nomes de contadores"
*  CPPLIN Linearizar definicao cont    : "Linearizar definicao com contadores"
*
****************************************************************************
*
* Formul†rios linearizados (tornados dispon°veis)
*
*  CPPLIN Exibir condicionalmente t    : "Exibir Texto"( Inteiro   IdTexto ,
*                                                        SeqÅància ValTit )
*  CPPLIN Exibir condicionalmente t    : "Exibir Texto Cod"( Inteiro   IdTexto ,
*                                                            SeqÅància ValTit  ,
*                                                            Sequencia ValCod   )
*  CPPLIN Gerar cabeáalho da base      : "Cabeáalho base"
*  CPPLIN Gerar cabecalho de secao     : "Gerar cabecalho de secao"( Sequencia cabecalho )
*  CPPLIN Gerar cabeáalho do m¢dulo    : "Gerar cabeáalhos"( SeqÅància TipoCabec )
*  CPPLIN Gerar c¢digo de membros c    : "Gerar Membros"( Inteiro   TipoAcesso,
*                                                         Sequencia TitTipoAcesso )
*  CPPLIN Gerar corpo de tipo          : "Gerar corpo de tipo"
*  CPPLIN Gerar dados do bloco         : "Gerar dados bloco"
*  CPPLIN Gerar linhas de mensagens    : "Gerar linhas de mensagens"( Inteiro TxtMensagem )
*  CPPLIN Gerar mensagens de bloco     : "Gerar mensagens do bloco"
*  CPPLIN Gerar Nome do Arquivo de     : "GerarNomeArqDefin"
*  CPPLIN Gerar Nome do Arquivo de     : "GerarNomeArqImple"
*  CPPLIN Gerar Nomes para controle    : "Gerar Nomes para Controle de Escopo"
*  CPPLIN Gerar texto c¢digo de pac    : "Gerar texto c¢digo de pacote"
*  CPPLIN Linearizar implementacao     : "Linearizar implementacao com contadores"
*  CPPLIN Linearizar definicao cont    : "Linearizar definicao com contadores"
*  CPPLIN Linearizar nomes contador    : "Linearizar nomes de contadores"
*  CPPLIN Gerar nome de contadores     : "Gerar nome contadores"
*  CPPLIN Gerar chamada de contador    : "Gerar chamada de contador"
*  CPPLIN Linearizar bloco             : "Linear bloco"
*  CPPLIN Linearizar bloco por comp    : "Linearizar bloco"
*  CPPLIN Linearizar Classe            : "Linearizar Classe"
*  CPPLIN Linearizar dado              : "Linear dado"( inteiro Visibilidade )
*  CPPLIN Linearizar dado simples      : "Linear dado simples"( L¢gico EhMembro )
*  CPPLIN Linearizar dado por compl    : "Linearizar dado"
*  CPPLIN Linearizar definiáÑo de c    : "Linearizar definiáÑo de classe"
*  CPPLIN Linearizar especificaÁ„o     : "Linearizar especificacao de pacote"
*  CPPLIN Linearizar filhos do bloc    : "Linearizar Filhos"
*  CPPLIN Linearizar implemetaáÑo d    : "Linearizar ImplementaáÑo de Classe"
*  CPPLIN Linearizar membros est†ti    : "Linearizar membros estaticos"
*  CPPLIN Linearizar mensagens         : "Linearizar \"strings\""
*  CPPLIN Linearizar m¢dulo            : "Linearizar m¢dulo"
*  CPPLIN Gerar declaraÁıes de dado    : "GerarDadoBloco"
*  CPPLIN Obter lista de dados memb    : "Obter lista dados membro"( Fila FilaDadosMembro )
*  CPPLIN Linearizar mÛdulo de defi    : "Linearizar mÛdulo de definiáÑo"
*  CPPLIN Linearizar pacote            : "Linearizar pacote"
*  CPPLIN Gerar codigo para trace      : "Gerar codigo de trace"
*  CPPLIN Linearizar prot¢tipo         : "Linearizar prototipo"( Sequencia ModoLineariza )
*  CPPLIN Linearizar tipo              : "Linearizar tipo"( inteiro Visibilidade )
*  CPPLIN Testar se bloco tem dados    : "TestarSeBlocoTemDados"
*  CPPLIN Verificar se tem comando     : "Inicia com seq"( Inteiro   IdTxt ,
*                                                          SeqÅància Seq )
*
***************************************************************************/

/***** Formul†rio global *****/

   InicGlobal


         /* Estrutura de dados CPP  DeclaraáÑo das constantes padronizadas */

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

            /* Estrutura de dados Constantes para transiáîes */

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

            /* Estrutura de dados Constantes para m†quina de estado convencional */

               Constante      AliasNomeEstado = 11 ;   /* igual em DFD */

               Constante      TxtStringFluxo  =  9 ;
               Constante      TxtMsgFluxo     = 11 ;

               Constante      TxtDecisaoFluxo = 21 ;   /* igual em DFD */
               Constante      TxtAcaoSempre   = 21 ;   /* igual em DFD */
               Constante      TxtAcaoFluxo    = 22 ;   /* igual em DFD */
               Constante      TxtAcaoErro     = 22 ;   /* igual em DFD */
               Constante      TxtAcaoEntra    = 23 ;   /* igual em DFD */
               Constante      TxtAcaoSai      = 24 ;   /* igual em DFD */

            /* Estrutura de dados Declaraáîes para gerar lista LIMBO */

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
               "////////////////////////////////////////////////////////////////////////////" ;

               Constante      BARRA_Secao     =
               "//==========================================================================" ;

               Constante      BARRA_SEP       =
                  "-------------------------------------------------------------------------" ;

            /* Estrutura de dados Variaveis */

               /* Estrutura de dados Variaveis de trabalho do linearizador CPP */

                  Logico         Espec ;
                  Logico         TemSeq ;
                  L¢gico         BlocoTemDados ;
                  Logico         TemTexto ;
                  Logico         GerandoFuncoesPublicas ;
                  Logico         GeraContadores ;

                  Inteiro        ContaMsg ;
                  Inteiro        NumId ;

                  SeqÅància      NomeArqImple ;
                  SeqÅencia      NomeArqDefin ;
                  SeqÅància      NomeEstado ;

                  SeqÅància      NomeCtrl ;
                  SeqÅància      NomeCtrlProp ;
                  SeqÅància      NomeCtrlClass ;

                  SeqÅància      S_Class ;
      FimDecl

      /* Corpo de CPPLIN Linearizar m¢dulos C++ */

         S_Class      = "" ;
         TemTexto     = Falso ;
         NomeCtrlProp = "??? " ;
         NumId        = 999 ;
         GerandoFuncoesPublicas = Verdadeiro ;
         ContaMsg     = 0 ;
         GeraContadores = falso ;
   FimFrm

/***** Formul†rios do programa *****/

/***** Formul†rio: CPPLIN Exibir condicionalmente texto *****/

   InicFrm "Exibir Texto"( Inteiro   IdTexto ,
                           SeqÅància ValTit )

   /* Corpo de CPP Exibir condicionalmente texto */

      Se Existe( [ Texto IdTexto ] )
      Entao
         TemTexto = Verdadeiro ;
         Titulo "" ;
         Titulo ValTit ;
         Texto IdTexto ;
      Senao
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Exibir condicionalmente texto com cÛdigo *****/

   InicFrm "Exibir Texto Cod"( Inteiro   IdTexto ,
                               SeqÅància ValTit  ,
                               Sequencia ValCod   )

   /* Corpo de CPPLIN Exibir condicionalmente texto com cÛdigo */

      Se Existe( [ Texto IdTexto ] )
      Entao

         Endenta 0 ;
         Se TemTexto
         Entao
            TextoEsq "// " ;
            Titulo "" ;
            Titulo Valcod ;
         /*   NaoAvLin ;   */
         /*   Titulo " " ; */
            NaoAvLin ;
            Titulo ValTit ;
         Senao
         Fim ; /* Se */

         TemTexto = Verdadeiro ;
         TextoEsq "//    " ;
         Texto IdTexto ;
         TextoEsq "// " ;
      Senao
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar cabeáalho da base *****/

   InicFrm "Cabeáalho base"
      /* Dado do bloco Corpo de CPP Gerar cabeáalho da base */

         Constante AliasBasProjeto      = 30 ;
         Constante AliasBasVersaoCorr   = 31 ;
         Constante AliasBasProprietario = 32 ;
         Constante AliasBasDataCorr     = 34 ;
         Constante AliasBasResponsavel  = 35 ;

         Constante TxtBasHistoriaAlt    = 31 ;
         Constante TxtBasSolAlt         = 32 ;
         Constante TxtBasAltEmergnc     = 34 ;
         Constante TxtBasAltFeitas      = 35 ;
         Constante TxtBasAutores        = 36 ;

         Constante TxtBasDocumentation    = 41 ;
         Constante TxtBasBibliography     = 42 ;
         Constante TxtBasAcknowledgements = 43 ;

         Objeto OrigemBase ;

      FimDecl

   /* Corpo de CPP Gerar cabeáalho da base */

      OrigemBase = ObjetoBase( Corrente ) ;

      Se ExisteObj( OrigemBase ) EntÑo

      /* Linearizar dados existentes da base */

         ComObjeto OrigemBase Faz

         /* Linearizar pre‚mbulo da base */

            Titulo "Repository name:      " ;
            NaoAvLin ;
            Nome ;
            Titulo "Repository file name: " ;
            NaoAvLin ;
            Titulo NomeArqObj( Corrente ) ;
            Frm "Exibir Texto"( TxtDescr ,
                                "Software base description" ) ;

            T°tulo "" ;
            Titulo "Owning organization:    " ;
            NaoAvLin ;
            Alias AliasBasProprietario ;

            Titulo "Project:                " ;
            NaoAvLin ;
            Alias AliasBasProjeto ;

            Titulo "List of authors" ;
            Titulo "   Id      Name" ;
            Texto TxtBasAutores ;

         /* Linearizar controle de alteraáîes da base */

            T°tulo "" ;
            T°tulo "Software base change control" ;
            AvMrgEsq 3 ;
               Titulo "   Version  Date         Authors      Description " ;
               Texto TxtBasHistoriaAlt ;
               Frm "Exibir Texto Cod"( TxtBasSolAlt ,
                                   "List of pending problems", "" ) ;
               Frm "Exibir Texto Cod"( TxtBasAltFeitas ,
                                   "List of solved problems", "" ) ;
            AvMrgEsq -3 ;

         /* Linearizar informaÁ„o complementar da base */

            Se   Existe( [ Texto TxtBasDocumentation    ] )
              OU Existe( [ Texto TxtBasBibliography     ] )
              OU Existe( [ Texto TxtBasAcknowledgements ] )
            Entao
               Frm "Exibir Texto Cod"( TxtBasDocumentation ,
                                   "Reference to documentation", "" ) ;
               Frm "Exibir Texto Cod"( TxtBasBibliography ,
                                   "Bibliography", "" ) ;
               Frm "Exibir Texto Cod"( TxtBasAcknowledgements ,
                                   "Acknowledgements", "" ) ;
            Senao
            Fim ; /* Se */
         Fim ;

      SenÑo

      /* Indicar que nao existem dados */

         Titulo "" ;
         Titulo "Missing software base identification data" ;
         Titulo "" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar cabecalho de secao *****/

   InicFrm "Gerar cabecalho de secao"( Sequencia cabecalho )

   /* Corpo de CPPLIN Gerar cabecalho de secao */

      Titulo "" ;
      Titulo BARRA_SECAO ;
      Titulo "//----- " ;
      NaoAvLin ;
      Titulo Cabecalho ;
      NaoAvLin ;
      Titulo " -----" ;
      Titulo BARRA_SECAO ;
      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar cabeáalho do m¢dulo *****/

   InicFrm "Gerar cabeáalhos"( SeqÅància TipoCabec )

   /* Corpo de CPP Gerar cabeáalho do m¢dulo */

      /* Gerar in°cio do cabeáalho */

         MrgEsq 0 ;
         Titulo BARRA_COMENT ;
         Endenta 3 ;
         TextoEsq "//" ;

      /* Gerar identificaáÑo do m¢dulo */

         Espec = Falso ;
         Titulo "" ;

         /* Gerar nome do m¢dulo de implementaáÑo */

            Se TipoCabec == "CPP"
            Entao
               Titulo "Implementation module: " ;
               NaoAvLin ;
               Nome ;

               Frm "GerarNomeArqImple" ;

               Titulo "" ;
               Titulo "Generated file:        " ;
               NaoAvLin ;
               Titulo NomeArqImple ;
            Senao
            Fim ;

         /* Gerar nome do m¢dulo de definiáÑo */

            Se TipoCabec == "D"
            Entao
               MrgEsq 3 ;
               Titulo "Definition module: " ;
               NaoAvLin ;
               Nome ;

               Se "" == [ Alias AliasModExtenDefin ]
               EntÑo
                  NomeArqDefin = "no definition module" ;
               Senao
                  Frm "GerarNomeArqDefin" ;
               Fim ;

               Titulo "" ;
               Titulo "Generated file:    " ;
               NaoAvLin ;
               Titulo NomeArqDefin ;
            Senao
            Fim ;

         Titulo "" ;

      /* Gerar cabeáalho da base */

         Titulo "Module identification letters: " ;
         NaoAvLin ;
         Alias AliasModLetrasId ;

         Titulo "Module identification number:  " ;
         NaoAvLin ;
         Alias AliasModNumeroId ;
         Titulo "" ;

         Frm "Cabeáalho base" ;

      /* Gerar textos de especificaÌc„o */

         /* Gerar especificaÁ„o do m¢dulo de implementaáÑo */

            Se TipoCabec == "CPP"
            Entao
               Se    Existe( [ Texto TxtModInterfImpl       ] )
                  OU Existe( [ Texto TxtModAmbImpl          ] )
                  OU Existe( [ Texto TxtModDataStructImplem ] )
                  OU Existe( [ Texto TxtModRequisImpl       ] )
                  OU Existe( [ Texto TxtModHipotImpl        ] )
                  OU Existe( [ Texto TxtRestrImpl           ] )
                  OU Existe( [ Texto TxtModQualityControl   ] )
               Entao
                  Titulo BARRA_SEP ;
                  T°tulo "Implementation module specification complement" ;

                     Frm "Exibir Texto Cod"( TxtModInterfImpl ,
                                             "User interface implementation", "" ) ;
                     Frm "Exibir Texto Cod"( TxtModAmbImpl ,
                                             "Platform interface implementation", "" ) ;
                     Frm "Exibir Texto Cod"( TxtModDataStructImplem ,
                                             "Data structure implementation", "" ) ;
                     Frm "Exibir Texto Cod"( TxtModRequisImpl ,
                                             "Implementation Requirements", "" ) ;
                     Frm "Exibir Texto Cod"( TxtModQualityControl ,
                                             "Quality control requirements", "" ) ;
                     Frm "Exibir Texto Cod"( TxtModHipotImpl ,
                                             "Implementation assumptions", "" ) ;
                     Frm "Exibir Texto Cod"( TxtRestrImpl ,
                                             "Implementation restrictions", "" ) ;
               Senao
               Fim ; /* Se */
            Senao
            Fim ;

         /* Gerar especificaÁ„o do m¢dulo de definiáÑo */

            Se TipoCabec == "D"
            Entao
               Se    Existe( [ Texto TxtDescr               ] )
                  OU Existe( [ Texto TxtModMod              ] )
                  OU Existe( [ Texto TxtModAmb              ] )
                  OU Existe( [ Texto TxtModInterf           ] )
                  OU Existe( [ Texto TxtModDataStructInterface ] )
                  OU Existe( [ Texto TxtRequis              ] )
                  OU Existe( [ Texto TxtHipot               ] )
                  OU Existe( [ Texto TxtRestrProj           ] )
                  OU Existe( [ Texto TxtObserv              ] )
                  OU Existe( [ Texto TxtModRefBib           ] )
               Entao
                  Titulo BARRA_SEP ;
                  T°tulo "Specification" ;
                  Frm "Exibir Texto Cod"( TxtDescr ,
                                          "Module description", "" ) ;
                  Frm "Exibir Texto Cod"( TxtModMod ,
                          "Properties to be observed by client modules", "" ) ;
                  Frm "Exibir Texto Cod"( TxtModAmb ,
                          "Platform interface of this module", "" ) ;
                  Frm "Exibir Texto Cod"( TxtModInterf ,
                          "User interface of this module", "" ) ;
                  Frm "Exibir Texto Cod"( TxtModDataStructInterface ,
                                          "Data struture specification", "" ) ;
                  Frm "Exibir Texto Cod"( TxtRequis ,
                                          "Module requirements", "" ) ;
                  Frm "Exibir Texto Cod"( TxtHipot ,
                                          "Module assumptions" , "" ) ;
                  Frm "Exibir Texto Cod"( TxtRestrProj ,
                                          "Module restrictions", "" ) ;
                  Frm "Exibir Texto Cod"( TxtObserv ,
                                          "Observations", "" ) ;
                  Frm "Exibir Texto Cod"( TxtModRefBib ,
                                          "Bibliography", "" ) ;
               Senao
               Fim ;
            Senao
            Fim ;

         Titulo "" ;

      /* Gerar final do cabeáalho */

         MrgEsq 0 ;
         Endenta 0 ;
         TextoEsq "" ;
         Titulo BARRA_COMENT ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar c¢digo de membros compostos *****/

   InicFrm "Gerar Membros"( Inteiro   TipoAcesso,
                            Sequencia TitTipoAcesso )
      /* Dado do bloco Corpo de CPP Gerar c¢digo de membros compostos */

         inteiro GerouFuncao ;

      FimDecl

   /* Corpo de CPP Gerar c¢digo de membros compostos */

      GerouFuncao = 0 ;

      /* Gerar c¢digo de declaraáÑo das funáîes */

         ParaTodos Pacotes Faz

         /* Controlar visibilidade da funÁ„o */

            Se Existe( [ Alias TipoAcesso ] ) EntÑo

            /* Gerar cÛdigo de funÁ„o do tipo solicitado */

               GerouFuncao = GerouFuncao + 1 ;

               /* Gerar cabeÁalho de protÛtipo de mÈtodo */

                  Se    Existe( [ Alias AliasPublico     ] )
                     OU Existe( [ Alias AliasProtegido   ] )
                     OU Existe( [ Alias AliasVirtualPuro ] )
                     OU Existe( [ Alias AliasInline      ] )
                  Entao
                     Frm "Linearizar especificacao de pacote" ;
                  Senao
                     Titulo "" ;
                     MrgEsq 0 ;
                     Titulo "// " ;

                     Se Existe( [ Alias AliasVirtualPuro ] )
                     Entao
                        NaoAvLin ;
                        Titulo " Abstract" ;
                     Senao
                     Fim ; /* Se */
                     Se Existe( [ Alias AliasVirtual ] )
                     Entao
                        NaoAvLin ;
                        Titulo " Virtual" ;
                     Senao
                     Fim ; /* Se */
                     Se Existe( [ Alias AliasInline ] )
                     EntÑo
                        NaoAvLin ;
                        Titulo " Inline" ;
                     SenÑo
                     Fim ;

                     NaoAvLin ;
                     Titulo " Method: " ;
                     NaoAvLin ;
                     Nome ;
                  Fim ; /* Se */

               /* Gerar cÛdigo de funÁ„o visÌvel */

                  Se Existe( [ Alias AliasDebug ] )
                  EntÑo
                     Titulo "" ;
                     MrgEsq 0 ;
                     Titulo "#ifdef _DEBUG" ;
                  SenÑo
                  Fim ; /* Se */

                  Se Existe( [ Alias AliasInline ] ) EntÑo

                  /* Gerar cÛdigo protÛtipo do mÈtodo inline */

                     MrgEsq 3 ;
                     Titulo "" ;
                     Titulo TitTipoAcesso ;

                     MrgEsq 6 ;

                     Se Existe( [ Alias AliasStatic ] )
                     Entao
                        Titulo "static " ;
                        NaoAvLin ;
                     Senao
                     Fim ; /* Se */

                     Titulo "inline " ;

                     NaoAvLin ;

                     ParaTodos Blocos Faz
                        Se Existe( [ Texto TxtBlcCabecDef ] )
                        EntÑo
                           Texto TxtBlcCabecDef ;
                        SenÑo
                           Texto TxtBlcCabecDecl ;
                        Fim ;

                        Titulo "{" ;

                        Frm "Linear bloco" ;

                        Titulo "" ;

                        Titulo "} // End : " ;
                        NaoAvLin ;
                        Nome ;

                     Fim ; /* ParaTodos */

                  SenÑo

                  /* Gerar protÛtipo sem corpo */

                     /* Gerar declaraÁ„o do protÛtipo de mÈtodo */

                        MrgEsq 3 ;
                        Titulo "" ;
                        Titulo TitTipoAcesso ;
                        AvMrgEsq 3 ;

                        Se    Existe( [ Alias AliasStatic ] )
                        Entao
                           Titulo "static " ;
                           NaoAvLin ;
                        Senao
                        Fim ; /* Se */

                        Se    Existe( [ Alias AliasVirtualPuro ] )
                           OU Existe( [ Alias AliasVirtual     ] )
                        Entao
                           Titulo "virtual " ;
                           NaoAvLin ;
                        Senao
                        Fim ; /* Se */

                        ParaTodos Blocos Faz
                           Texto TxtBlcCabecDecl ;
                        Fim ;

                     /* Gerar cÛdigo protÛtipo do mÈtodo virtual puro */

                        NÑoAvLin ;
                        Se Existe( [ Alias AliasVirtualPuro ] )
                        Entao
                           Titulo " = 0 ;" ;
                        Senao
                           Titulo "  ;" ;
                        Fim ; /* Se */
                  Fim ;

                  Se Existe( [ Alias AliasDebug ] )
                  EntÑo
                     MrgEsq 0 ;
                     Titulo "" ;
                     Titulo "#endif" ;
                  SenÑo
                  Fim ; /* Se */

            SenÑo
            Fim ;
         Fim ;

         Se GerouFuncao != 0
         Entao

            Titulo "" ;
            MrgEsq 0 ;
            Titulo BARRA_COMENT ;

         Senao
         Fim ; /* Se */
   FimFrm

/***** Formul†rio: CPPLIN Gerar corpo de tipo *****/

   InicFrm "Gerar corpo de tipo"

   /* Corpo de CPP Gerar corpo de tipo */

      /* Linearizar tipo */

         Se Existe( [ RelaáÑo Decomp ] ) EntÑo

         /* xLinearizar Tipo Composto */

            Texto TxtDclCabec ;
            Titulo "{" ;
            Frm "Linear Dado"( 0 ) ;
            Titulo "" ;
            Titulo "} " ;

         SenÑo

         /* Linearizar Tipo Simples */

            Texto TxtDclCabec ;
            NaoAvLin ;

            /* Falso porque tipos nunca podem ter declaraáîes static */

            Frm "Linear dado simples"( Falso ) ;
         Fim ;

      /* Gerar fim de declaraáÑo de tipo */

         Se Existe( [ Texto TxtDclFim ] )
         EntÑo
            NaoAvLin ;
            Texto TxtDclFim ;
         SenÑo
         Fim ;

         NaoAvLin ;
         Titulo " ;" ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar dados do bloco *****/

   InicFrm "Gerar dados bloco"

   /* Corpo de CPP Gerar dados do bloco */

      /* Gerar declaraáÑo texto do bloco */

         Se Existe( [ Texto TxtBlcDados ] )
         Entao
            Titulo "" ;
            Texto TxtBlcDados ;
         SeNao
         Fim ;

      /* Gerar declaraáÑo estrutura de dados do bloco */

         Se Existe( [ RelaáÑo BlocosDeclaram ] ) Entao

            AvMrgEsq 3 ;
            S_Class = "" ;
            ParaTodos BlocosDeclaram Faz
               Frm "GerarDadoBloco" ;
            Fim ;
            AvMrgEsq -3 ;
         SeNao
         Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar linhas de mensagens *****/

   InicFrm "Gerar linhas de mensagens"( Inteiro TxtMensagem )
      /* Dado do bloco Corpo de Gerar linhas de mensagens */

         ListaTexto TextoTemp ;
         Inteiro    i ;
         Inteiro    j ;
         Inteiro    Origem ;
         Inteiro    TamTxt ;
         Inteiro    TamLinha ;
         Sequencia  LinhaTxt ;

      FimDecl

   /* Corpo de Gerar linhas de mensagens */

      Se Existe( [ Texto TxtMensagem ] )
      EntÑo
         Titulo "" ;
         Titulo "// " ;
         NaoAvLin ;
         Titulo NomeClasse( ClasseObj( Corrente )) ;
         NaoAvLin ;
         Titulo": " ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;

         Endenta 3 ;
         TextoEsq "// " ;
         Texto TxtMensagem ;
         Endenta -3 ;
         TextoEsq "" ;
         Titulo "" ;

         TextoTemp = [ Texto TxtMensagem ] ;
         TamTxt    = TamTexto( TextoTemp ) ;
         i = 1 ;
         Enquanto i <= TamTxt Faz
            LinhaTxt = LinhaTexto( TextoTemp , i ) ;
            TamLinha = TamSeq( LinhaTxt ) ;

            Se TamLinha > 4
            EntÑo

               ContaMsg = ContaMsg + 1 ;
               j = 1 ;
               Enquanto j <= TamLinha Faz
                  Se SubSeq( LinhaTxt , j , 1 ) != " "
                  EntÑo
                     Origem = j ;
                     SaiRepeticao ;
                  SenÑo
                  Fim ; /* Se */
                  j = j + 1 ;
               Fim ; /* Enquanto */

               Enquanto j <= TamLinha Faz
                  Se SubSeq( LinhaTxt , j , 1 ) == " "
                  EntÑo
                     SaiRepeticao ;
                  SenÑo
                  Fim ; /* Se */
                  j = j + 1 ;
               Fim ; /* Enquanto */

               Titulo "  " ;
               NaoAvLin ;
               TamCampo 25 ;
               Titulo SubSeq( LinhaTxt , Origem , j - Origem ) ;
               NaoAvLin ;

               TamCampo 6 ;
               Titulo  ContaMsg ;
               NaoAvLin ;

               Enquanto j <= TamLinha Faz
                  Se SubSeq( LinhaTxt , j , 1 ) != " "
                  EntÑo
                     Origem = j ;
                     SaiRepeticao ;
                  SenÑo
                  Fim ; /* Se */
                  j = j + 1 ;
               Fim ; /* Enquanto */

               Titulo SubSeq( LinhaTxt , Origem , TamLinha - Origem + 1 ) ;

            SenÑo
            Fim ; /* Se */

            i = i + 1 ;
         Fim ; /* Enquanto */

      SenÑo
      Fim ; /* Se */
   FimFrm

/***** Formul†rio: CPPLIN Gerar mensagens de bloco *****/

   InicFrm "Gerar mensagens do bloco"
      /* Dado do bloco Gerar mensagens da m†quina */

         ConjuntoFila ListaFluxo ;

      FimDecl

   /* Corpo de CPP Gerar mensagens de bloco */

      /* Gerar mensagens do bloco */

         Frm "Gerar linhas de mensagens"( TxtBlcMensagem ) ;

      /* Gerar mensagens de poss°vel m†quina */

         Se Existe( [ RelaáÑo Processos ] ) EntÑo

         /* Gerar mensagens da m†quina */

            EsvaziaLista( ListaFluxo ) ;
            ParaTodos Processos Faz

               Se ExisteObj( FolhaFilho( Corrente ))
               EntÑo

                  ComObjeto FolhaFilho( Corrente ) Faz
                     ParaTodos InstFolha Faz

                        Se ClasseObj( ObjetoInst( Corrente )) == DicProcesso
                        EntÑo
                           ParaTodos LigsInstÉncia Faz
                              Se ExisteObj( RotuloLig( Corrente ))
                              EntÑo
                                 InsereObj( ListaFluxo ,
                                            ObjetoInst( RotuloLig( Corrente )));
                              SenÑo
                              Fim ; /* Se */
                           Fim ; /* ParaTodos */
                           ComObjeto ObjetoInst( Corrente ) Faz
                              Frm "Gerar linhas de mensagens"( TxtProcString ) ;
                           Fim ; /* ComObjeto */
                        SenÑo
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                  Fim ; /* ComObjeto */
               SenÑo
               Fim ; /* Se */
            Fim ; /* ParaTodos */

            ParaTodos ListaFluxo Faz
               Frm "Gerar linhas de mensagens"( TxtStringFluxo ) ;
            Fim ; /* ParaTodos */

         SenÑo
         Fim ;

      /* Navegar na estrutura */

         ParaTodos Decomp Faz
            Frm "Gerar mensagens do bloco" ;
         Fim ; /* ParaTodos */
   FimFrm

/***** Formul†rio: CPPLIN Gerar Nome do Arquivo de DefiniáÑo *****/

   InicFrm "GerarNomeArqDefin"

   /* Corpo de CPP Gerar Nome do Arquivo de DefiniáÑo */

      Se Existe( [Alias AliasModExtenDefin] ) EntÑo

      /* Gerar Def com extensÑo composta */

         NomeArqDefin = ConcatSeq( ConcatSeq( [ Alias AliasArquivo ] , "." ),
                                   [ Alias AliasModExtenDefin ] ) ;

      SenÑo

      /* Gerar Def com extensÑo default */

         NomeArqDefin = ConcatSeq( ConcatSeq( [ Alias AliasArquivo ] , "." ),
                                   EXT_DEF ) ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar Nome do Arquivo de ImplementaáÑo *****/

   InicFrm "GerarNomeArqImple"

   /* Corpo de CPP Gerar Nome do Arquivo de ImplementaáÑo */

      Se Existe( [Alias AliasModExtenImple] ) EntÑo

      /* Gerar Impl com ext composta */

         NomeArqImple = ConcatSeq( ConcatSeq( [ Alias AliasArquivo ] , "." ),
                                   [ Alias AliasModExtenImple ] ) ;

      SenÑo

      /* Gerar Impl com ext default */

         NomeArqImple = ConcatSeq( ConcatSeq( [ Alias AliasArquivo ] , "." ),
                                   EXT_IMPL ) ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar Nomes para controle de escopo *****/

   InicFrm "Gerar Nomes para Controle de Escopo"

   /* Corpo de CPP Gerar Nomes para controle de escopo */

      NomeCtrl      = ConcatSeq( "_", [ Alias AliasArquivo ] ) ;
      NomeCtrl      = ConcatSeq( NomeCtrl, "_" ) ;
      NomeCtrlProp  = ConcatSeq( NomeCtrl, CTRL_PROP  ) ;
      NomeCtrlClass = ConcatSeq( NomeCtrl, CTRL_CLASS ) ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar texto c¢digo de pacote *****/

   InicFrm "Gerar texto c¢digo de pacote"
      /* Dado do bloco Corpo de CPP Gerar texto c¢digo de pacote */

         Objeto ObjClasse ;

      FimDecl

   /* Corpo de CPP Gerar texto c¢digo de pacote */

      ParaTodos Classes Faz
         ObjClasse = Corrente ;
      Fim ; /* ParaTodos */

      ParaTodos Blocos Faz

      /* Gerar c¢digo de cabeáalho do corpo */

         AvMrgEsq 3 ;

         Titulo "" ;
         Se Existe( [ Texto TxtBlcIniPac ] ) EntÑo
            Texto TxtBlcIniPac ;
            Titulo "" ;
         SenÑo
         Fim ;

         Titulo S_Class ;
         NaoAvlin ;
         Titulo "" ;
         NaoAvLin ;
         Se Existe( [ Texto TxtBlcCabecDef ] )
         EntÑo
            Texto TxtBlcCabecDef ;
         SenÑo
            Texto TxtBlcCabecDecl ;
         Fim ;

         Titulo "{" ;

      /* Gerar c¢digo corpo do pacote */

         Frm "Linear bloco" ;

      /* Gerar c¢digo de tÇrmino do corpo */

         Titulo "" ;
         Titulo "} // End of function:" ;
         Se Existe( [ Relacao Pacotes ] )
         Entao
            ParaTodos Pacotes Faz
               NaoAvLin ;
               Titulo " " ;
               NaoAvLin ;
               Nome ;
            Fim ; /* ParaTodos */
         Senao
            Nome ;
         Fim ; /* Se */

         Se Existe( [ Texto TxtBlcFimPac ] ) EntÑo
            Titulo "" ;
            Texto TxtBlcFimPac ;
         SenÑo
         Fim ;

         AvMrgEsq -3 ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar implementacao contador *****/

   InicExterno "Linearizar implementacao com contadores"

   /* Corpo de CPPLIN Linearizar modulo contador */

      GeraContadores = verdadeiro ;

      Frm "Linearizar m¢dulo" ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar definicao contador *****/

   InicExterno "Linearizar definicao com contadores"

   /* Corpo de CPPLIN Linearizar definicao contador */

      GeraContadores = verdadeiro ;

      Frm "Linearizar mÛdulo de definiáÑo" ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar nomes contadores *****/

   InicExterno "Linearizar nomes de contadores"

   /* Corpo de CPPLIN Linearizar nomes de contadores */

      /* Gerar cabecalho arquivo de nomes */

         MrgEsq 0 ;
         Titulo BARRA_COMENT ;
         Endenta 3 ;
         TextoEsq "// " ;
         Titulo "" ;
         Titulo "Counter name file of module: " ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;

         Titulo "Generated file:              " ;
         NaoAvLin ;
         Alias AliasArquivo ;
         NaoAvLin ;
         TiTulo ".cnt" ;

         /* Linearizar dados existentes da base */
            
         ComObjeto ObjetoBase( Corrente )
         Faz
            
            Titulo "" ;
            Titulo "Repository file name:        " ;
            NaoAvLin ;
            Titulo NomeArqObj( Corrente ) ;

            T°tulo "" ;
            T°tulo "Ownership" ;
            AvMrgEsq 6 ;
               Titulo "Owning organization:      " ;
               NaoAvLin ;
               Alias AliasBasProprietario ;

               Titulo "Project:                  " ;
               NaoAvLin ;
               Alias AliasBasProjeto ;

            AvMrgEsq -6 ;
         Fim ; /* ComObjeto */
         Titulo "" ;

         MrgEsq 0 ;
         Endenta 0 ;
         TextoEsq "" ;
         Titulo BARRA_COMENT ;

         Titulo "" ;
         Titulo "// !!!!! Generated file. Do not edit. !!!!!" ;
         Titulo "" ;

      /* Linearizar nomes em classes */

         MrgEsq 0 ;
         Endenta 0 ;

         ParaTodos Classes Faz
            ParaTodos Pacotes Faz
               ParaTodos Blocos  Faz
                  Titulo "" ;
                  Frm "Gerar nome contadores" ;
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */

      /* Linearizar nomes em funcoes */

         ParaTodos Pacotes Faz
            ParaTodos Blocos  Faz
               Titulo "" ;
               Frm "Gerar nome contadores" ;
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */

      /* Gerar roda-pe arquivo de nomes */

         MrgEsq 0 ;
         Titulo "" ;
         Titulo "//** End of counter name file, module: " ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar nome de contadores de um pacote *****/

   InicFrm "Gerar nome contadores"
      /* Dado do bloco Corpo de Gerar nome de contadores de um pacote */

         sequencia str ;

      FimDecl

   /* Corpo de Gerar nome de contadores de um pacote */

      Se Existe( [ Relacao Pacotes ] )
      Entao
         ParaTodos Pacotes Faz
            Se Existe( [ Alias AliasVirtualPuro ] )
            Entao
               str = "!" ;
            Senao
               str = [ Nome ] ;
            Fim ; /* Se */
         Fim ; /* ParaTodos */
      Senao
         str = [ Nome ] ;
      Fim ; /* Se */

      Se subseq( str , 1 , 1 ) != "!"
      Entao
         Se Existe( [ Relacao Pacotes ] )
         Entao
            ParaTodos Pacotes Faz
               Nome ;
            Fim ; /* ParaTodos */
         Senao
            Nome ;
         Fim ; /* Se */
      Senao
      Fim ; /* Se */

      ParaTodos Decomp Faz
         Frm "Gerar nome contadores" ;
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul†rio: CPPLIN Gerar chamada de contador *****/

   InicFrm "Gerar chamada de contador"
      /* Dado do bloco Gerar contadores */

         Sequencia str ;
         Inteiro     i ;
         Inteiro     j ;

      FimDecl

   /* Gerar contadores */

      Se GeraContadores
      Entao
         Se Existe( [ Relacao Pacotes ] )
         Entao
            ParaTodos Pacotes Faz
               str = [ Nome ] ;
            Fim ; /* ParaTodos */
         Senao
            str = [ Nome ] ;
         Fim ; /* Se */
         Se subseq( str , 1 , 1 ) != "!"
         Entao
            i = Tamseq( str ) - 2 ;
            j = i - 10 ;
            Se j < 1
            Entao
               j = 1 ;
            Senao
            Fim ; /* Se */
            Enquanto i > j Faz
               Se subseq( str , i , 2 ) == "/:"
               Entao
                  str = subseq( str , 1 , i - 1 ) ;
                  sairepeticao ;
               Senao
               Fim ; /* Se */
               i = i - 1 ;
            Fim ; /* Enquanto */

            Titulo "" ;
            Titulo "   CNT_Count( \"" ;
            NaoAvLin ;
            Titulo str ;
            NaoAvLin ;
            Titulo "\" ) ;" ;
         Senao
         Fim ; /* Se */
      Senao
      Fim ; /* Se */
   FimFrm

/***** Formul†rio: CPPLIN Linearizar bloco *****/

   InicFrm "Linear bloco"
      /* Dado do bloco Corpo de CPP Linearizar bloco */

         Logico BlocoComDados  ;
         Logico FuncaoComDados ;
         Logico IfComDados     ;

      FimDecl

   /* Corpo de CPP Linearizar bloco */

      /* Gerar cabeáalho do bloco */

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

      /* Determinar condiÁ„o para gerar dados do bloco */

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

      /* Gerar dados do bloco origem de corpo de funÁ„o */

         Se FuncaoComDados EntÑo
            Endenta 3 ;
            Frm "Gerar dados bloco" ;
            Endenta 0 ;
         SenÑo
         Fim ;

      /* Gerar c¢digo de assertivas de entrada */

         Se Existe( [ Texto TxtBlcAssertPac ] )
         EntÑo

            Frm "Gerar codigo de trace" ;

            Titulo "" ;
            Titulo "#ifdef _DEBUG" ;

            AvMrgEsq 3 ;
            Texto TxtBlcAssertPac ;
            AvMrgEsq -3 ;
            Titulo "#endif" ;
         SenÑo
         Fim ; /* Se */

      /* Gerar definicao string constante */

         Se Existe( [ Texto TxtBlcMensagem ] )
         Entao
            Titulo "" ;
            Endenta 3 ;
            TextoEsq "      //@String " ;
            Texto TxtBlcMensagem ;
            Endenta -3 ;
            TextoEsq "" ;
            Titulo "" ;

         Senao
         Fim ; /* Se */

      /* Gerar corpo do bloco */

         Se Existe( [ Alias AliasBlcDbg ] )
         EntÑo
            Titulo "#ifdef _DEBUG" ;
            Titulo "" ;
         SenÑo
         Fim ; /* Se */

         Se Existe( [ Texto TxtCondAtiv ] ) EntÑo

         /* Gerar filhos do bloco com condiáÑo de ativaáÑo */

            AvMrgEsq 3 ;

            /* Gerar condiáÑo de ativaáÑo do bloco */

               Titulo "" ;
               Texto TxtCondAtiv ;
               Titulo "{" ;

               Se Nao Existe( [ Texto TxtBlcAssertPac ] )
               EntÑo
                  Frm "Gerar codigo de trace" ;
               SenÑo
               Fim ; /* Se */

               Frm "Gerar chamada de contador" ;

            /* Linearizar dados do bloco com condiáÑo de ativaáÑo */

               Se IfComDados
               Entao
                  Endenta 3 ;
                  Frm "Gerar dados bloco" ;
                  Endenta 0 ;
               Senao
               Fim ;

            /* Linearizar filhos do bloco com condiáÑo de ativaáÑo */

               AvMrgEsq 3 ;

               Frm "Linearizar Filhos" ;

               AvMrgEsq -3 ;

            /* Gerar fim da condiáÑo de ativaáÑo */

               Titulo "" ;
               Titulo "} // end selection: " ;
               NaoAvLin ;
               Nome ;

            AvMrgEsq -3 ;

         SenÑo

         /* Linearizar filhos do bloco sem condiáÑo de ativaáÑo */

            Se Nao Existe( [ Texto TxtBlcAssertPac ] )
            EntÑo
               Frm "Gerar codigo de trace" ;
            SenÑo
            Fim ; /* Se */

            Frm "Gerar chamada de contador" ;

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
         EntÑo
            Titulo "" ;
            Titulo "#endif" ;
         SenÑo
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

/***** Formul†rio: CPPLIN Linearizar bloco por completo *****/

   InicFrm "Linearizar bloco"

   /* Corpo de CPP Linearizar pacote por completo */

      /* Linearizar bloco */

         Se Existe( [ RelaáÑo Pacotes ] ) EntÑo
            Paratodos Pacotes Faz
               Frm "Linearizar Pacote" ;
            Fim ;
         SenÑo
            Frm "Linear bloco" ;
         Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar Classe *****/

   InicFrm "Linearizar Classe"

   /* Corpo de CPP Linearizar Classe */

      Frm "Linearizar definiáÑo de classe" ;

      Titulo "" ;
      Titulo "//// Static class members ////" ;
      AvMrgEsq 3 ;
      ParaTodos Dados Faz
         Frm "Linearizar membros estaticos" ;
      Fim ;
      AvMrgEsq -3 ;

      Frm "Linearizar ImplementaáÑo de Classe" ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar dado *****/

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
         TemPai   = Existe( [ RelaáÑo Comp ] ) ;
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

            Se Existe( [ RelaáÑo Classes ] ) EntÑo
               EhMembro = Verdadeiro ;
            SenÑo
            Fim ;
         Fim ;

      /* Linearizar filhos */

         Se Existe( [ Relacao Decomp ] ) EntÑo

         /* Gerar estrutura de dados composta */

            ParaTodos Decomp Faz
               Frm "Linear Dado"( Visibilidade ) ;
            Fim ;

         SenÑo

         /* Gerar declaraáÑo dado simples */

            Se    ( Visibilidade == 0 )
               OU ( EhMembro
                    E Existe( [ Alias Visibilidade ] ))
            Entao

               Titulo "" ;
               Titulo "// " ;
               NaoAvLin ;
               Nome ;
               TemTexto = Falso ;
               TextoEsq "//    " ;

               Frm "Exibir Texto Cod"( TxtDescr , "" , "" ) ;
               Frm "Exibir Texto Cod"( TxtDclMedida ,
                                       "Intention or metric of this data item" ,
                                       "" ) ;
               Frm "Exibir Texto Cod"( TxtDclAssert ,
                                       "Validity condition of this data item" ,
                                       "" ) ;
               Frm "Exibir Texto Cod"( TxtDclValido ,
                                       "Verification condition" ,
                                       "" ) ;

               TextoEsq "" ;
               AvMrgEsq 3 ;
               Frm "Linear dado simples"( EhMembro ) ;

            Senao
            Fim ; /* Se */
         Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar dado simples *****/

   InicFrm "Linear dado simples"( L¢gico EhMembro )

   /* Corpo de CPP Linearizar dado simples */

      Titulo "" ;
      Frm "Inicia com seq"( TxtDclDado , "#" ) ;

      Se TemSeq EntÑo

      /* Gerar prÈprocessador */

         Texto TxtDclDado ;

      SenÑo

      /* Gerar dado n„o preprocessador */

         Se EhMembro EntÑo

         /* Gerar vari·vel membro */

            Se Existe( [ Alias AliasPublico ] )
            Entao
               Titulo "public:" ;
            SenÑo
            Fim ;
            Se Existe( [ Alias AliasProtegido ] )
            Entao
               Titulo "protected:" ;
            SenÑo
            Fim ;
            Se Existe( [ Alias AliasPrivado ] )
            Entao
               Titulo "private: " ;
            SenÑo
            Fim ;

            AvMrgEsq 3 ;
            Se Existe( [ Alias AliasDadoExport ] )
            Entao
               Titulo "static " ;
               NaoAvLin ;
            SenÑo
            Fim ;

            Texto TxtDclDado ;

            Se Existe( [ Texto TxtDclInic ] )
            EntÑo
               NaoAvLin ;
               Titulo " = " ;
               NaoAvLin ;
               Texto TxtDclInic ;
               NaoAvLin ;
               Titulo " ;" ;
            Senao
            Fim ;

            AvMrgEsq -3 ;

         SenÑo

         /* Gerar variavel nao membro */

            Frm "Inicia com seq"( TxtDclDado , "const" ) ;

            Se TemSeq EntÑo

            /* Gerar constante const */

               Texto TxtDclDado ;

               Se Existe( [ Texto TxtDclInic ] )
               EntÑo
                  NaoAvLin ;
                  Titulo " = " ;
                  NaoAvLin ;
                  Texto TxtDclInic ;
                  NaoAvLin ;
                  Titulo " ;" ;
               Senao
               Fim ;

            SenÑo

            /* Gerar vari·vel typedef */

               Frm "Inicia com seq"( TxtDclDado , "typedef" ) ;

               Se TemSeq EntÑo

               /* Gerar declaraÁ„o typedef */

                  Texto TxtDclDado ;

               SenÑo

               /* Gerar dado normal */

                  /* Gerar texto de declaraÁ„o do dado */

                     Se S_Class == "extern "
                     EntÑo
                        Titulo NomeCtrlClass ;
                        NaoAvLin ;
                        Titulo " " ;
                     SenÑo
                        Se S_Class != ""
                        Entao
                           T°tulo S_Class ;
                           NaoAvLin ;
                        Senao
                        Fim ; /* Se */
                     Fim ;

                     Texto TxtDclDado ;      /* declaraáao ou definiáÑo */

                  /* Gerar texto de inicializaÁ„o do dado */

                     Se Existe( [ Texto TxtDclInic ] )     /* possui inicializaáÑo   */
                     EntÑo
                        Se S_Class == "extern "
                        Entao
                           AvMrgEsq 3 ;
                           Titulo "#ifdef " ;              /* testa, ao compilar, */
                           NaoAvLin ;                      /* se est† fora do     */
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

/***** Formul†rio: CPPLIN Linearizar dado por completo *****/

   InicFrm "Linearizar dado"

   /* Corpo de CPP Linearizar dado por completo */

      Se Existe( [ RelaáÑo Tipos ] ) EntÑo
         Paratodos Tipos Faz
            Frm "Linearizar Tipo"( 0 ) ;
         Fim ;
      SenÑo
         Se Existe( [ RelaáÑo Decomp ] ) EntÑo
            Frm "Linear Dado"( 0 ) ;
         SenÑo
            Frm "Linear dado simples"( Falso ) ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar definiáÑo de classe *****/

   InicExterno "Linearizar definiáÑo de classe"

   /* Corpo de CPP Linearizar definiáÑo de classe */

      /* Gerar inicio de classe completa */

         /* Gerar Cabeáalho da classe completa */

            MrgEsq 0 ;
            Titulo "" ;
            Titulo BARRA_COMENT ;
            Endenta  3 ;
            TextoEsq "// " ;
            Titulo "" ;
            MrgEsq 3 ;
            Titulo " Class: " ;
            NaoAvLin ;
            Nome ;

            Frm "Exibir Texto Cod"( TxtDescr ,
                                    "Description", "" ) ;
            Frm "Exibir Texto Cod"( TxtRequis ,
                                    "Requirements", "" ) ;
            Frm "Exibir Texto Cod"( TxtHipot ,
                                    "Description", "" ) ;
            Frm "Exibir Texto Cod"( TxtRestrProj ,
                                    "Description", "" ) ;
            Frm "Exibir Texto Cod"( TxtClasseUso ,
                                    "Description", "" ) ;

            MrgEsq 0 ;
            Titulo "" ;
            Endenta  0 ;
            TextoEsq  "" ;
            Titulo BARRA_COMENT ;

         /* Gerar C¢digo Cabeáalho da classe completa */

            Titulo "" ;
            MrgEsq 0 ;

            Se Existe( [ Texto TxtClasseTemplate ] )
            Entao
               Texto TxtClasseTemplate ;
               NaoAvLin ;
               Titulo " " ;
               NaoAvLin ;
            Senao
            Fim ; /* Se */

            Titulo "class " ;
            NaoAvLin ;
            Texto TxtClasseCabec ;
            Titulo "{" ;

            Se Existe( [ Texto TxtDclClasseIniExp ] ) EntÑo

               AvMrgEsq 3 ;
               Titulo "// Initial declarations " ;
               Texto TxtDclClasseIniExp ;
               AvMrgEsq -3 ;
               Titulo "" ;

            SenÑo
            Fim ;

      /* Gerar c¢digo interno da classe */

         /* Gerar C¢digo dos membros p£blicos */

            ParaTodos Tipos Faz
               Frm "Linearizar tipo"( AliasPublico ) ;
            Fim ;

            Frm "Gerar Membros"( AliasPublico, "public:" ) ;

            ParaTodos Dados Faz

               Frm "Linear dado"( AliasPublico ) ;

            Fim ;

            Se Existe( [ Texto TxtDclClassePubl ] )
            Entao
               Titulo "" ;
               Titulo "public: " ;
               MrgEsq 6 ;
               Texto  TxtDclClassePubl ;
            Senao
            Fim ; /* Se */

         /* Gerar C¢digo dos membros protegidos */

            ParaTodos Tipos Faz
               Frm "Linearizar tipo"( AliasProtegido ) ;
            Fim ;

            Frm "Gerar Membros"( AliasProtegido, "protected:" ) ;

            ParaTodos Dados Faz

               Frm "Linear dado"( AliasProtegido ) ;

            Fim ;

            Se Existe( [ Texto TxtDclClasseProt ] )
            Entao
               Titulo "" ;
               Titulo "protected: " ;
               MrgEsq 6 ;
               Texto  TxtDclClasseProt ;
            Senao
            Fim ; /* Se */

         /* Gerar C¢digo dos membros privados */

            ParaTodos Tipos Faz
               Frm "Linearizar tipo"( AliasPrivado ) ;
            Fim ;

            Frm "Gerar Membros"( AliasPrivado, "private:" ) ;

            ParaTodos Dados Faz

               Frm "Linear dado"( AliasPrivado ) ;

            Fim ;

            Se Existe( [ Texto TxtDclClassePriv ] )
            Entao
               Titulo "" ;
               Titulo "private: " ;
               MrgEsq 6 ;
               Texto  TxtDclClassePriv ;
            Senao
            Fim ; /* Se */

      /* Gerar c¢digo fim de classe completa */

         MrgEsq 0 ;
         Titulo "" ;
         Titulo "} ; // End of class declaration: " ;
         NaoAvLin ;
         Nome ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar especificaÁ„o do pacote *****/

   InicFrm "Linearizar especificacao de pacote"

   /* Corpo de CPPLIN Linearizar especificaÁ„o do pacote */

      /* Gerar inÌcio do cabeÁalho do pacote */

         Se Existe( [ Relacao Classes ] )
         Entao
            Titulo "" ;
            MrgEsq 0 ;
            Titulo BARRA_COMENT ;
            Endenta 3 ;
            TextoEsq "// " ;
            MrgEsq 3 ;
            Titulo "" ;
            Titulo "" ;

            Se Existe( [ Alias AliasVirtualPuro ] )
            Entao
               NaoAvLin ;
               Titulo " Abstract" ;
            Senao
            Fim ; /* Se */
            Se Existe( [ Alias AliasVirtual ] )
            Entao
               NaoAvLin ;
               Titulo " Virtual" ;
            Senao
            Fim ; /* Se */
            Se Existe( [ Alias AliasInline ] )
            EntÑo
               NaoAvLin ;
               Titulo " Inline" ;
            SenÑo
            Fim ;

            NaoAvLin ;
            Titulo " Method: " ;
         Senao
            MrgEsq 0 ;
            Titulo "" ;
            Titulo BARRA_COMENT ;
            Endenta 3 ;
            TextoEsq "// " ;
            Titulo "" ;
            MrgEsq 3 ;
            Titulo "" ;
            NaoAvLin ;
            Titulo " Function: " ;
         Fim ; /* Se */
         NaoAvLin ;
         Nome ;

      /* Gerar especificaÁ„o do pacote */

         Frm "Exibir Texto Cod"( TxtDescr ,
                                 "Description", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactAltFeitas ,
                                 "Changes made", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactEntra ,
                                 "Parameters", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactSai ,
                                 "Return value", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactMembros ,
                                 "Object member attributes used", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactExceptions ,
                                 "Returned exceptions", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactGlobalEntra ,
                                 "Own global variables used", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactImportEntra ,
                                 "Server module global variables used", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactArqEntra ,
                                 "Files used", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactEstadoEntra ,
                                 "States", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactPrecondicao ,
                                 "Pre conditions", "" ) ;
         Frm "Exibir Texto Cod"( TxtHipot ,
                                 "Assumptions", "" ) ;
         Frm "Exibir Texto Cod"( TxtPactPoscondicao ,
                                 "Post conditions", "" ) ;
         Frm "Exibir Texto Cod"( TxtRequis ,
                                 "Requirements", "" ) ;
         Frm "Exibir Texto Cod"( TxtRestrProj ,
                                 "Restrictions", "" ) ;
         Frm "Exibir Texto Cod"( TxtObserv ,
                                 "Observations", "" ) ;

      /* Gerar fim do cabecalho do pacote */

         MrgEsq  0 ;
         Titulo "" ;
         Endenta 0 ;
         TextoEsq "" ;
         Titulo BARRA_COMENT ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar filhos do bloco *****/

   InicFrm "Linearizar Filhos"
      /* Dado do bloco Corpo de CPP Linearizar filhos do bloco */

         Inteiro Prep ;
         Inteiro Conta ;

      /* Dado do bloco Gerar texto de envelope de ponteiros */

         ListaTexto DeclPonteiro ;
         ListaTexto NomeVariavel ;
         Sequencia  LinhaDeclPt  ;
         Inteiro    numLinhas ;
         Inteiro    ContaLinhas ;
         Inteiro    ContaBrancos ;
         Inteiro    InxInicio ;

      /* Dado do bloco Linearizar preÉmbulo do bloco */

         Logico Try ;
         Logico TemDo ;

      /* Dado do bloco Gerar cabeáalho de seleáÑo */

         ListaTexto TxtSelec ;
         Sequencia  Linha ;

      /* Dado do bloco Gerar tÇrmino de repetiáÑo */

         Inteiro Lin ;
         Inteiro Tam ;

      FimDecl

   /* Corpo de CPP Linearizar filhos do bloco */

      /* Gerar texto de envelope de ponteiros */

         Se Existe( [ Texto TxtEnvelopePt ] )
         Entao
            Titulo  "" ;
            Titulo  "struct PointerEnvelope" ;
            Titulo  "{" ;
            AvMrgEsq 3 ;

            DeclPonteiro = [ Texto TxtEnvelopePt ] ;
            numLinhas    = TamTexto( DeclPonteiro ) ;
            ContaLinhas  = 1 ;
            EsvaziaTexto( NomeVariavel ) ;

            Enquanto ContaLinhas <= numLinhas Faz
               LinhaDeclPt = LinhaTexto( DeclPonteiro , ContaLinhas ) ;
               Titulo LinhaDeclPt ;
               NaoAvLin ;
               Titulo " ;" ;

               InxInicio = Indice( LinhaDeclPt , "*" , 0 , 100 ) ;
               Se InxInicio > 0
               Entao
                  LinhaDeclPt = SubSeq( LinhaDeclPt , InxInicio + 1 , 100 ) ;
                  ContaBrancos = 1 ;
                  Enquanto Indice( LinhaDeclPt , " " , ContaBrancos ,
                            ContaBrancos + 1 ) > 0 Faz
                     ContaBrancos = ContaBrancos + 1 ;
                  Fim ; /* Enquanto */
                  Se ContaBrancos > 1
                  Entao
                     LinhaDeclPt = SubSeq( LinhaDeclPt , ContaBrancos , 100 ) ;
                  Senao
                  Fim ; /* Se */
               Senao
                  LinhaDeclPt = ConcatSeq( "ERROR missing \"*\" in: " ,
                            LinhaDeclPt ) ;
               Fim ; /* Se */
               InsereTexto( NomeVariavel , 100 , LinhaDeclPt ) ;

               ContaLinhas = ContaLinhas + 1 ;
            Fim ; /* Enquanto */

            Titulo  "" ;
            Titulo "PointerEnvelope( )" ;
            Titulo "{" ;
            AvMrgEsq 3 ;
            ContaLinhas  = 1 ;

            Enquanto ContaLinhas <= numLinhas Faz
               Titulo LinhaTexto( NomeVariavel , ContaLinhas ) ;
               NaoAvLin ;
               Titulo " = NULL ;" ;
               ContaLinhas = ContaLinhas + 1 ;
            Fim ; /* Enquanto */
            AvMrgEsq -3 ;
            Titulo "}" ;

            Titulo  "" ;
            AvMrgEsq -1 ;
            Titulo "~PointerEnvelope( )" ;
            AvMrgEsq  1 ;
            Titulo "{" ;
            AvMrgEsq 3 ;
            ContaLinhas  = 1 ;

            Enquanto ContaLinhas <= numLinhas Faz
               Titulo "delete " ;
               NaoAvLin ;
               Titulo LinhaTexto( NomeVariavel , ContaLinhas ) ;
               NaoAvLin ;
               Titulo " ;" ;
         /*
               Titulo LinhaTexto( NomeVariavel , ContaLinhas ) ;
               NaoAvLin ;
               Titulo " = NULL ;" ;
         */
               ContaLinhas = ContaLinhas + 1 ;
            Fim ; /* Enquanto */
            AvMrgEsq -3 ;
            Titulo "}" ;

            AvMrgEsq -3 ;
            Titulo "} envelope ; /* struct */" ;

         Senao
         Fim ; /* Se */

      /* Gerar texto fonte de depuraáÑo antes */

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

      /* Linearizar preparaáÑo para controles */

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

      /* Linearizar preÉmbulo do bloco */

         /* Gerar cabeáalho de repetiáÑo */

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

         /* Gerar cabeáalho de seleáÑo */

            Se Existe( [ Texto TxtCondSelec ] )
            Entao
               TxtSelec = [ Texto TxtCondSelec ] ;
               Linha    = LinhaTexto( TxtSelec , 1 ) ;
               Se Linha == "try"
               EntÑo
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

               SenÑo
                  Try = FALSO ;
                  Titulo "" ;
                  Texto TxtCondSelec ;
                  NaoAvLin ;
                  Titulo " {" ;
               Fim ; /* Se */
            SeNao
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

      /* Linearizar p¢s-Émbulo do bloco */

         /* Gerar tÇrmino de seleáÑo */

            Se Existe( [ Texto TxtCondSelec ] )
            Entao
               Se Try
               EntÑo
                  AvMrgEsq 3 ;
                  Titulo "// end try group: " ;
                  NaoAvLin ;
                  Nome ;
               SenÑo
                  Titulo "" ;
                  Titulo "} // end selection: " ;
                  NaoAvLin ;
                  Nome ;
               Fim ; /* Se */
            SeNao
            Fim ;

         /* Gerar tÇrmino de repetiáÑo */

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

/***** Formul†rio: CPPLIN Linearizar implemetaáÑo de Classe *****/

   InicFrm "Linearizar ImplementaáÑo de Classe"
      /* Dado do bloco Corpo de CPP Linearizar ImplemetaáÑo de Classe */

         L¢gico Primeiro ;

      /* Dado do bloco Gerar definiÁ„o de pacotes separando-os por p˙blicos e privados */

         Fila ListaFuncoesPublicas ;
         Fila ListaFuncoesProtegidas ;
         Fila ListaFuncoesPrivadas ;

      FimDecl

   /* Corpo de CPP Linearizar ImplemetaáÑo de Classe */

      /* Gerar declaraáÑo inicial da classe */

         S_Class = "" ;

         Se Existe( [ Texto TxtDclClasseIniLoc ] ) EntÑo

            Titulo "" ;
            Titulo "//--- Starting declarations ---" ;
            AvMrgEsq 3 ;
            Texto TxtDclClasseIniLoc ;
            AvMrgEsq -3 ;

         SenÑo
         Fim ;

      /* Gerar definiÁ„o de pacotes separando-os por p˙blicos e privados */

         /* Criar as listas de mÈtodos por tipo de visibilidade */

            ParaTodos Pacotes Faz
               Se   NAO Existe( [ Alias AliasVirtualPuro ] )
                  E NAO Existe( [ Alias AliasInline      ] )
               EntÑo
                  Se Existe( [ Alias AliasPublico ] )
                  Entao
                     InsereObj( ListaFuncoesPublicas , Corrente ) ;
                  Senao
                     Se Existe( [ Alias AliasProtegido ] )
                     Entao
                        InsereObj( ListaFuncoesProtegidas , Corrente ) ;
                     Senao
                        InsereObj( ListaFuncoesPrivadas , Corrente ) ;
                     Fim ; /* Se */
                  Fim ; /* Se */
               SenÑo
               Fim ;
            Fim ;

         /* Gerar definiáÑo das funáîes */

            S_Class = "" ;

            Se NAO ListaVazia( ListaFuncoesPublicas )
            Entao
               Frm "Gerar cabecalho de secao"( "Public method implementations" ) ;
               Titulo "// Class: " ;
               NaoAvLin ;
               Nome ;
               ParaTodos ListaFuncoesPublicas Faz
                  Frm "Linearizar pacote" ;
               Fim ; /* ParaTodos */
            Senao
            Fim ; /* Se */

            Se NAO ListaVazia( ListaFuncoesProtegidas )
            Entao
               Frm "Gerar cabecalho de secao"( "Protected method implementations" ) ;
               Titulo "// Class: " ;
               NaoAvLin ;
               Nome ;
               ParaTodos ListaFuncoesProtegidas Faz
                  Frm "Linearizar pacote" ;
               Fim ; /* ParaTodos */
            Senao
            Fim ; /* Se */

            Se NAO ListaVazia( ListaFuncoesPrivadas )
            Entao
               Frm "Gerar cabecalho de secao"( "Private method implementations" ) ;
               Titulo "// Class: " ;
               NaoAvLin ;
               Nome ;
               ParaTodos ListaFuncoesPrivadas Faz
                  Frm "Linearizar pacote" ;
               Fim ; /* ParaTodos */
            Senao
            Fim ; /* Se */

      /* Gerar cabeáalho final da classe */

         Titulo "" ;
         Titulo "//--- End of class: " ;
         NaoAvLin ;
         Nome ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar membros est†ticos *****/

   InicFrm "Linearizar membros estaticos"

   /* Corpo de CPP Linearizar membros est†ticos */

      /* Linearizar filhos de membros est†ticos */

         Se Existe( [ Relacao Decomp ] ) EntÑo

         /* Linearizar estrutura composta de membros est†ticos */

            ParaTodos Decomp Faz
               Frm "Linearizar membros estaticos" ;
            Fim ;

         SenÑo

         /* Linearizar estrutura simples de membros est†ticos */

            Se Existe( [ Alias AliasDadoExport ] ) Entao

               Titulo "" ;
               Titulo "// Data item :" ;
               NÑoAvLin ;
               Nome ;
               AvMrgEsq 3 ;
               Titulo "" ;
               Titulo "static " ;
               NaoAvLin ;
               Texto TxtDclDado ;

               Se Existe( [ Texto TxtDclInic ] ) EntÑo
                  NaoAvLin ;
                  Titulo " = " ;
                  NaoAvLin ;
                  Texto TxtDclInic ;
                  NaoAvLin ;
                  Titulo " ;" ;
               SeNao
               Fim ;
               AvMrgEsq -3 ;
            SeNao
            Fim ;
         Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar mensagens *****/

   InicExterno "Linearizar \"strings\""

   /* Corpo de CPP Linearizar mensagens */

      /* Gerar cabeáalho do arquivo de mensagens */

         MrgEsq 0 ;
         Titulo BARRA_COMENT ;
         Endenta 3 ;
         TextoEsq "// " ;
         Titulo "" ;
         Titulo "Strings of module:      " ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;

         Titulo "Generated file:         " ;
         NaoAvLin ;
         Alias AliasArquivo ;
         NaoAvLin ;
         TiTulo ".str" ;

         Titulo "Identification letters: " ;
         NaoAvLin ;
         Alias AliasModLetrasId ;

         Titulo "Identification number:  " ;
         NaoAvLin ;
         Alias AliasModNumeroId ;

         Titulo "" ;

         /* Linearizar dados existentes da base */
            
         ComObjeto ObjetoBase( Corrente )
         Faz
            
            Titulo "Repository name:      " ;
            NaoAvLin ;
            Nome ;
            Titulo "Repository file name: " ;
            NaoAvLin ;
            Titulo NomeArqObj( Corrente ) ;

            T°tulo "" ;
            T°tulo "Ownership" ;
            AvMrgEsq 6 ;
               Titulo "Owning organization:    " ;
               NaoAvLin ;
               Alias AliasBasProprietario ;

               Titulo "Project:                " ;
               NaoAvLin ;
               Alias AliasBasProjeto ;

            AvMrgEsq -6 ;
         Fim ; /* ComObjeto */
         Titulo "" ;

         MrgEsq 0 ;
         Endenta 0 ;
         TextoEsq "" ;
         Titulo BARRA_COMENT ;

         Titulo "" ;
         Titulo "// !!!!! Generated file. Do not edit. !!!!!" ;
         Titulo "" ;

      /* Gerar todas as mensagens de pacotes do m¢dulo */

         Se Existe( [ Alias AliasModNumeroId ] )
         Entao
            NumId = [ Alias AliasModNumeroId ]  ;
         Senao
            NumId = 888 ;
         Fim ; /* Se */

         Titulo "   <Offset>  " ;
         NaoAvLin ;
         Titulo NumId ;

         ParaTodos Pacotes Faz
            Se NAO Existe( [ Relacao Classes ] )
            Entao
               ParaTodos Blocos Faz
                  Frm "Gerar mensagens do bloco" ;
               Fim ; /* ParaTodos */
            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */

      /* Gerar mensagens de todas as classes */

         ParaTodos Classes Faz

         /* Gerar mensagens de todos os pacotes */

            ParaTodos Pacotes Faz
               ParaTodos Blocos Faz
                  Frm "Gerar mensagens do bloco" ;
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */
               
         Fim ;

      /* Gerar tÇrmino de arquivo de mensagens */

         MrgEsq 0 ;
         Titulo "" ;
         Titulo "//** End of string file, module: " ;
         NaoAvLin ;
         Nome ;
         Titulo "" ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar m¢dulo *****/

   InicExterno "Linearizar m¢dulo"
      /* Dado do bloco Gerar declaraáîes internas do m¢dulo */

         Logico Primeiro ;

      /* Dado do bloco Gerar declaraáîes dos tipos internos */

         Fila TiposIntf ;

      /* Dado do bloco xGerar declaraáîes das estruturas de dados internas */

         Fila DadosIntf ;

      /* Dado do bloco Gerar inicializaÁıes de membros static */

         Fila FilaDadosMembro ;

      FimDecl

   /* Corpo de CPP Linearizar modulo */

      /* Iniciar nomes para controle de escopo p/ especificaáÑo */

         Frm "Gerar Nomes para Controle de Escopo" ;

      /* Gerar cabeáalho de m¢dulo de implementaáÑo */

         Frm "Gerar cabeáalhos"( "CPP" ) ;

      /* Gerar declaraáîes internas do m¢dulo */

         /* Gerar controle de debug */

            MrgEsq 0 ;

            Se Existe( [ Alias AliasModMFC ] )
            Entao
               Titulo "" ;
               Titulo "   #ifdef _DOS" ;
               Titulo "      #include  <afx.h>" ;
               Titulo "   #else" ;
               Titulo "      #include  <afxwin.h>" ;
               Titulo "      #define  new  DEBUG_NEW" ;
               Titulo "   #endif" ;
               Titulo "" ;
               Titulo "   #ifdef _DEBUG" ;
               Titulo "      #undef   THIS_FILE" ;
               Titulo "      static   char THIS_FILE[] = __FILE__ ; " ;
               Titulo "   #endif" ;
            Senao
            Fim ; /* Se */

         /* Gerar declaraáîes de includes */

            Se Existe( [ Texto TxtModInclus ] )
            Entao
               Titulo "" ;
               MrgEsq 3 ;
               Texto TxtModInclus ;
            SeNao
            Fim ;

         /* Gerar declaraáÑo do include pr¢prio */

            Se Existe( [ Relacao TiposInterface   ] ) OU
               Existe( [ Relacao DadosInterface   ] ) OU
               Existe( [ Relacao PacotesInterface ] ) OU
               Existe( [ Relacao Classes          ] ) OU
               Existe( [ Texto TxtModDeclExp      ] )
            Entao
               Se "" != [ Alias AliasModExtenDefin ]
               EntÑo

                  Titulo "" ;
                  MrgEsq 3 ;
                  Titulo "#define  " ;
                  NÑoAvLin ;
                  Titulo NomeCtrlProp ;
                  Titulo "#include \"" ;

                  Frm "GerarNomeArqDefin" ;

                  NaoAvLin ;
                  Titulo NomeArqDefin ;

                  NaoAvLin ;
                  Titulo "\"" ;

                  Titulo "#undef   " ;
                  NÑoAvLin ;
                  Titulo NomeCtrlProp ;
               SenÑo
               Fim ;
            Senao
            Fim ;

         /* Gerar declaraáîes de includes apos */

            Se Existe( [ Texto TxtModInclApos ] )
            Entao
               MrgEsq 0 ;
               Titulo "" ;
               MrgEsq 3 ;
               Texto TxtModInclApos ;
            SeNao
            Fim ;

         /* Gerar declaraáîes de comandos de teste */

            Se Existe( [ Texto TxtModComdTeste ] )
            Entao
               Frm "Gerar cabecalho de secao"( "Test command table" ) ;
               MrgEsq 3 ;
               Texto TxtModComdTeste ;
               MrgEsq 0 ;
            SeNao
            Fim ;

         /* Gerar Declaraáîes texto */

            MrgEsq 0 ;
            Primeiro = Verdadeiro ;

            Se Existe( [ Texto TxtModDeclEncps ] )
            Entao

               Frm "Gerar cabecalho de secao"( "Encapsulated data declarations" ) ;
               Primeiro = Falso ;
               MrgEsq 3 ;
               Texto TxtModDeclEncps ;
               MrgEsq 0 ;
            SeNao
            Fim ;

         /* Gerar declaraáîes dos tipos internos */

            S_Class = "" ;

            ParaTodos TiposInterface Faz
               InsereObj( TiposIntf , Corrente ) ;
            Fim ;

            Primeiro = Verdadeiro ;
            ParaTodos Tipos Faz
               Se   Nao PertenceObj( TiposIntf , Corrente )
                  E Nao Existe( [ Relacao Classes ] )
               Entao
                  Se Primeiro
                  Entao
                     MrgEsq 0 ;
                     Frm "Gerar cabecalho de secao"( "Encapsulated data types" ) ;
                     Primeiro = Falso ;
                  Senao
                  Fim ;
                  MrgEsq 3 ;
                  Frm "Linearizar tipo"( 0 ) ;
               SeNao
               Fim ;
            Fim ;

         /* Gerar declaracao de classe encapsulada */

            S_Class = "" ;

            MrgEsq 0 ;
            ParaTodos Classes Faz
               Se existe( [ Alias AliasClasseEncapsulada ] )
               EntÑo
                  Titulo "" ;
                  MrgEsq 0 ;
                  Frm "Gerar cabecalho de secao"( "Encapsulated class declaration" ) ;
                  Frm "Linearizar definiáÑo de classe" ;
                  Se Existe( [ Texto TxtDclClasseApos ] )
                  Entao
                    Titulo "" ;
                    Texto TxtDclClasseApos ;
                  Senao
                  Fim ; /* Se */
               SenÑo
               Fim ; /* Se */
            Fim ;

         /* xGerar declaraáîes das estruturas de dados internas */

            S_Class = "static " ;

            ParaTodos DadosInterface Faz
               InsereObj( DadosIntf , Corrente ) ;
            Fim ;

            Primeiro = Verdadeiro ;
            ParaTodos Dados Faz
               Se Nao PertenceObj( DadosIntf , Corrente )
               Entao
                  Se Primeiro
                  Entao
                     MrgEsq 0 ;
                     Frm "Gerar cabecalho de secao"( "Encapsulated data items" ) ;
                     Primeiro = Falso ;
                  Senao
                  Fim ;
                  MrgEsq 0 ;
                  Frm "Linear dado"( 0 ) ;
               SeNao
               Fim ;
            Fim ;

         /* Gerar inicializaÁıes de membros static */

            Primeiro = Verdadeiro ;
            ParaTodos Classes Faz

               EsvaziaLista( FilaDadosMembro ) ;
               ParaTodos Dados Faz

                  Frm "Obter lista dados membro"( FilaDadosMembro ) ;

                  ParaTodos FilaDadosMembro Faz
                     Se   Existe( [ Alias AliasDadoExport    ] )
                        E Existe( [ Texto TxtDclIniciaStatic ] )
                     Entao
                        Se Primeiro
                        Entao
                           MrgEsq 0 ;
                           Frm "Gerar cabecalho de secao"( "Static member initializations" ) ;
                           Primeiro = Falso ;
                        Senao
                           Titulo "" ;
                        Fim ;
                        MrgEsq 3 ;
                        Titulo "// " ;
                        NaoAvLin ;
                        Nome ;
                        Titulo "" ;
                        MrgEsq 6 ;
                        Texto TxtDclIniciaStatic ;
                        MrgEsq 0 ;
                     Senao
                     Fim ; /* Se */
                  Fim ; /* ParaTodos */
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */

         /* Gerar declaraáîes dos prot¢tipos */

            Primeiro = Verdadeiro ;
            ParaTodos Pacotes Faz
               Se   NAO Existe( [ Relacao Classes ] )
                  E NAO Existe( [ Relacao InterfaceModulo ] )
               Entao
                  Se Primeiro
                  Entao
                     MrgEsq 0 ;
                     Frm "Gerar cabecalho de secao"( "Encapsulated function prototypes" ) ;
                     Primeiro = Falso ;
                  Senao
                  Fim ;
                  MrgEsq 3 ;
                  Frm "Linearizar prot¢tipo"( "L" ) ;
               Senao
               Fim ;
            Fim ;

      /* Gerar c¢digo do m¢dulo */

         /* Gerar implementaáÑo das classes do M¢dulo */

            Se Nao Existe( [ Alias AliasMsgWnd  ] )
            EntÑo
               ParaTodos Classes Faz
                  MrgEsq 0 ;

                  Titulo "" ;
                  Frm "Gerar cabecalho de secao"( "Class implementation" ) ;

                  Titulo BARRA_COMENT ;
                  Endenta 3 ;
                  TextoEsq "// " ;
                  Titulo "" ;
                  Titulo "Implementation of class: " ;
                  NaoAvLin ;
                  Nome ;
                  Frm "Exibir Texto Cod"( TxtClasseImplDescr ,
                                          "Implementation description" ,
                                          "" ) ;
                  Frm "Exibir Texto Cod"( TxtClasseImplReq ,
                                          "Implementation requirements" ,
                                          "" ) ;
                  Frm "Exibir Texto Cod"( TxtClasseImplHipot ,
                                          "Implementation assumptions" ,
                                          "" ) ;
                  Frm "Exibir Texto Cod"( TxtRestrImpl ,
                                          "Implementation restrictions" ,
                                          "" ) ;
                  Frm "Exibir Texto Cod"( TxtClasseEstrtDados ,
                                          "Data structure implementation" ,
                                          "" ) ;

                  Frm "Exibir Texto Cod"( TxtClasseAltFeitas ,
                                          "Change history" ,
                                          "" ) ;

                  TextoEsq "" ;
                  Endenta 0 ;
                  Titulo BARRA_COMENT ;

                  Frm "Linearizar ImplementaáÑo de Classe" ;
               Fim ;
            SenÑo
            Fim ; /* Se */

         /* Gerar pacotes do m¢dulo */

            Primeiro = Verdadeiro ;

            ParaTodos PacotesInterface Faz
               Se NAO Existe( [ Relacao Classes ] )
               Entao
                  Se Primeiro
                  Entao
                     MrgEsq 0 ;
                     Titulo "" ;
                     Frm "Gerar cabecalho de secao"(
                             "Exported global functions" )  ;
                     Primeiro = Falso ;
                  Senao
                  Fim ; /* Se */
                  S_Class = "" ;
                  Frm "Linearizar Pacote" ;
               Senao
               Fim ; /* Se */
            Fim ;

            Primeiro = Verdadeiro ;
            ParaTodos Pacotes Faz
               Se   NAO Existe( [ Relacao Classes ] )
                  E NAO Existe( [ Relacao InterfaceModulo ] )
               Entao
                  Se Primeiro
                  Entao
                     MrgEsq 0 ;
                     Titulo "" ;
                     Frm "Gerar cabecalho de secao"(
                              "Encapsulated global functions" ) ;
                     Primeiro = Falso ;
                  Senao
                  Fim ; /* Se */

                  S_Class = "static " ;

                  Frm "Linearizar Pacote" ;
               Senao
               Fim ; /* Se */
            Fim ;

      /* Gerar tÇrmino do m¢dulo */

         MrgEsq 0 ;
         Titulo "" ;
         Titulo "////// End of implementation module: " ;
         NaoAvLin ;
         Nome ;
         NaoAvLin ;
         Titulo " ////" ;
         Titulo "" ;
         Titulo "" ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar declaraÁıes de dados em blocos *****/

   InicFrm "GerarDadoBloco"

   /* Corpo de CPPLIN Gerar declaraÁıes de dados em blocos */

      Se Existe( [ Relacao Decomp ] )
      Entao
         ParaTodos Decomp Faz
            Frm "GerarDadoBloco" ;
         Fim ; /* ParaTodos */
      Senao

         Titulo "" ;
         Titulo "// " ;
         AvMrgEsq 3 ;
         NaoAvLin ;
         Nome ;
         TemTexto = Falso ;
         TextoEsq "      // " ;

         Frm "Exibir Texto Cod"( TxtDescr , "Description" , "" ) ;
         Frm "Exibir Texto Cod"( TxtDclMedida ,
                                 "Intention or metric of this data item" ,
                                 "" ) ;
         Frm "Exibir Texto Cod"( TxtDclAssert ,
                                 "Validity condition of this data item" ,
                                 "" ) ;
         Frm "Exibir Texto Cod"( TxtDclValido ,
                                 "Description" ,
                                 "" ) ;

         Se TemTexto
         Entao
            Titulo "" ;
            Titulo BARRA_COMENT ;
         Senao
         Fim ; /* Se */
         TextoEsq "" ;

         Frm "Linear dado simples"( FALSO ) ;

      Fim ; /* Se */
   FimFrm

/***** Formul†rio: CPPLIN Obter lista de dados membro *****/

   InicFrm "Obter lista dados membro"( Fila FilaDadosMembro )

   /* Corpo de CPPLIN Obter lista de dados membro */

      InsereObj( FilaDadosMembro , Corrente ) ;
      ParaTodos Decomp Faz
         Frm "Obter lista dados membro"( FilaDadosMembro ) ;
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul†rio: CPPLIN Linearizar mÛdulo de definiáÑo *****/

   InicExterno "Linearizar mÛdulo de definiáÑo"
      /* Dado do bloco Gerar dicion·rio funÁıes p˙blicas de classes */

         Inteiro ContaProtegido ;

      /* Dado do bloco Gerar declaraáîes interface do m¢dulo */

         Logico Primeiro ;

      /* Dado do bloco Gerar declaraÁıes de tipos encapsulados que exportam nomes */

         Fila TiposIntf ;

      /* Dado do bloco Gerar declaraáîes das classes */

         ListaTexto CabecalhoClasse ;
         Sequencia  LinhaCabecalho ;
         Inteiro    InxLinha ;
         Inteiro    InxColon ;

      FimDecl

   /* Corpo de CPP Linearizar definiáÑo de m¢dulo */

      /* Iniciar nomes para controle de escopo p/ definiáÑo */

         Frm "Gerar Nomes para Controle de Escopo" ;

      /* Gerar controle de inclus„o m˙ltipla */

         Titulo "#ifndef " ;
         NÑoAvLin ;
         Titulo NomeCtrl ;

         Titulo "   #define " ;
         NÑoAvLin ;
         Titulo NomeCtrl ;

         Titulo "" ;

      /* Gerar cabeáalho de definiáÑo do m¢dulo */

         Frm "Gerar cabeáalhos"( "D" ) ;

      /* Gerar dicionario de classes e funÁıes */

         MrgEsq 0 ;
         Endenta 3 ;
         TextoEsq "// " ;

         /* Gerar dicion·rio funÁıes p˙blicas de classes */

            ContaProtegido = 0 ;

            Se Existe( [ Relacao Classes ] )
            Entao
               ParaTodos Classes Faz
                  Se nao existe( [ Alias AliasClasseEncapsulada ] )
                  EntÑo
                     Titulo "" ;
                     Titulo BARRA_SEP ;
                     Titulo "Public methods of class " ;
                     NaoAvLin ;
                     Texto TxtClasseCabec ;
                     AvMrgEsq 3 ;
                     ParaTodos Pacotes Faz
                        Se Existe( [ Alias AliasProtegido ] )
                        Entao
                           ContaProtegido = ContaProtegido + 1 ;
                        Senao
                        Fim ; /* Se */
                        Se Existe( [ Alias AliasPublico ] )
                        EntÑo
                           Titulo "" ;
                           Se Existe( [ Alias AliasStatic ] )
                           Entao
                              Titulo "static " ;
                              NaoAvLin ;
                           Senao
                           Fim ; /* Se */
                           Se Existe( [ Alias AliasVirtual ] )
                           Entao
                              Titulo "virtual " ;
                              NaoAvLin ;
                           Senao
                           Fim ; /* Se */
                           Se Existe( [ Alias AliasInline ] )
                           Entao
                              Titulo "inline " ;
                              NaoAvLin ;
                           Senao
                           Fim ; /* Se */
                           ParaTodos Blocos Faz
                              Texto TxtBlcCabecDecl ;
                           Fim ; /* ParaTodos */
                        Senao
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                     AvMrgEsq -3 ;
                  SenÑo
                  Fim ; /* Se */
               Fim ;
               Titulo "" ;
            Senao
            Fim ; /* Se */

         /* Gerar dicion·rio de classes */

            Se ContaProtegido > 0
            Entao
               ParaTodos Classes Faz
                  Se nao existe( [ Alias AliasClasseEncapsulada ] )
                  EntÑo
                     Titulo "" ;
                     Titulo BARRA_SEP ;
                     Titulo "Protected methods of class " ;
                     NaoAvLin ;
                     Texto TxtClasseCabec ;
                     AvMrgEsq 3 ;
                     ParaTodos Pacotes Faz
                        Se Existe( [ Alias AliasProtegido ] )
                        Entao
                           Titulo "" ;
                           Se Existe( [ Alias AliasStatic ] )
                           Entao
                              Titulo "static " ;
                              NaoAvLin ;
                           Senao
                           Fim ; /* Se */
                           Se Existe( [ Alias AliasVirtual ] )
                           Entao
                              Titulo "virtual " ;
                              NaoAvLin ;
                           Senao
                           Fim ; /* Se */
                           Se Existe( [ Alias AliasInline ] )
                           Entao
                              Titulo "inline " ;
                              NaoAvLin ;
                           Senao
                           Fim ; /* Se */
                           ParaTodos Blocos Faz
                              Texto TxtBlcCabecDecl ;
                           Fim ; /* ParaTodos */
                        Senao
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                     AvMrgEsq -3 ;
                  SenÑo
                  Fim ; /* Se */
               Fim ;
               Titulo "" ;
            Senao
            Fim ; /* Se */

         /* Gerar dicion·rio de funÁıes independentes */

            Se Existe( [ Relacao PacotesInterface ] )
            Entao
               Titulo "" ;
               Titulo BARRA_SEP ;
               Titulo "Exported global functions" ;
               ParaTodos PacotesInterface Faz
                  Se   NAO Existe( [ Relacao Classes ] )
                  EntÑo
                     ParaTodos Blocos Faz
                        Titulo "" ;
                        Texto TxtBlcCabecDecl ;
                     Fim ; /* ParaTodos */
                  SenÑo
                  Fim ;
               Fim ;
            Senao
            Fim ; /* Se */

         Titulo "" ;
         MrgEsq 0 ;
         Endenta 0 ;
         TextoEsq "" ;
         Titulo BARRA_COMENT ;

      /* Gerar lista de cÛdigos mensagens de erro */


         Primeiro = Verdadeiro ;

         ParaTodos Classes Faz
            ParaTodos Pacotes Faz
               Se Existe( [ Texto TxtPactLogDetails ] )
               Entao
                  Se Primeiro
                  Entao
                     Titulo "" ;
                     MrgEsq 0 ;
                     Titulo BARRA_COMENT ;
                     Endenta 3 ;
                     TextoEsq "//" ;
                     Titulo " Error log message codes of the module" ;
                     Primeiro = falso ;
                  Senao
                  Fim ; /* Se */
                  Titulo "" ;
                  Titulo " Method " ;
                  NaoAvLin ;
                  Nome ;
                  Frm "Exibir Texto Cod"( TxtPactLogDetails ,
                                          "Error log codes", "" ) ;
               Senao
               Fim ; /* Se */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */

         ParaTodos Pacotes Faz
            Se Existe( [ Texto TxtPactLogDetails ] )
               E NAO Existe( [ Relacao Classes ]   )
            Entao
               Se Primeiro
               Entao
                  Titulo "" ;
                  MrgEsq 0 ;
                  Titulo BARRA_COMENT ;
                  Endenta 3 ;
                  TextoEsq "//" ;
                  Titulo " Error log message codes of the module" ;
                  Primeiro = falso ;
               Senao
               Fim ; /* Se */
               Titulo "" ;
               Titulo " Function " ;
               NaoAvLin ;
               Nome ;
               Frm "Exibir Texto Cod"( TxtPactLogDetails ,
                                       "Error log codes", "" ) ;
            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */
         Se NAO Primeiro
         Entao
            Titulo "" ;
            MrgEsq 0 ;
            Endenta 0 ;
            TextoEsq "" ;
            Titulo BARRA_COMENT ;
         Senao
         Fim ; /* Se */

      /* Gerar controle de escopo do include */

      /* Gerar declaraáîes interface do m¢dulo */

         /* Gerar declaraáîes interface texto */

            MrgEsq 0 ;
            Se Existe( [ Texto TxtModDeclExp ] )
            Entao
               Frm "Gerar cabecalho de secao"( "Required includes" ) ;
               MrgEsq 3 ;
               Texto TxtModDeclExp ;
            SeNao
            Fim ;

         /* Gerar declaraáîes dos tipos interface */

            S_Class = "" ;

            MrgEsq 0 ;
            Primeiro = Verdadeiro ;
            ParaTodos TiposInterface Faz
               Se NAO Existe( [ Relacao Classes ] )
               Entao
                  Se Primeiro
                  Entao
                     Frm "Gerar cabecalho de secao"( "Exported data types" ) ;
                     Primeiro = Falso ;
                  Senao
                  Fim ;
                  MrgEsq 3 ;
                  Frm "Linearizar tipo"( 0 ) ;
               Senao
               Fim ; /* Se */
            Fim ;

         /* Gerar declaraÁıes de tipos encapsulados que exportam nomes */

            ParaTodos TiposInterface Faz
               Se NAO Existe( [ Relacao Classes ] )
               Entao
                  InsereObj( TiposIntf , Corrente ) ;
               Senao
               Fim ; /* Se */
            Fim ;

            MrgEsq 0 ;
            Primeiro = Verdadeiro ;
            ParaTodos Tipos Faz
               Se   NAO PertenceObj( TiposIntf , Corrente )
               Entao
                  ParaTodos Dados Faz
                     Se Existe( [ Texto TxtDclTipoExportado ] )
                     Entao
                        Se Primeiro
                        Entao
                           Frm "Gerar cabecalho de secao"( "Exported encapsulated type headers" ) ;
                           Primeiro = Falso ;
                        Senao
                        Fim ;

                        Titulo "" ;
                        MrgEsq 0 ;
                        Titulo BARRA_COMENT ;
                        Endenta 3 ;
                        TextoEsq "//" ;
                        Titulo "" ;
                        Titulo "Encapsulated type: " ;
                        NaoAvLin ;
                        Nome ;
                        TextoEsq "" ;
                        Titulo "" ;
                        Texto TxtDclTipoExportado ;
                        Endenta 0 ;

                     Senao
                     Fim ; /* Se */

                  Fim ; /* ParaTodos */
               Senao
               Fim ; /* Se */

            Fim ;

         /* xGerar declaraáîes das estruturas de dados interface */

            S_Class = "extern " ;

            MrgEsq 0 ;
            Primeiro = Verdadeiro ;
            ParaTodos DadosInterface Faz
               Se Primeiro
               Entao
                  Frm "Gerar cabecalho de secao"( "Exported data items" ) ;
                  Primeiro = Falso ;
               Senao
               Fim ;
               MrgEsq 3 ;
               Frm "Linear dado"( 0 ) ;
            Fim ;

         /* Gerar declaraáîes interface texto posicionadas ap¢s */

            MrgEsq 0 ;
            Se Existe( [ Texto TxtModDeclApos ] )
            Entao
               Frm "Gerar cabecalho de secao"( "Exported declarations" ) ;
               MrgEsq 3 ;
               Texto TxtModDeclApos ;
            SeNao
            Fim ;
            MrgEsq 0 ;

         /* Gerar declaraáîes das classes */

            S_Class = "" ;
            Primeiro = verdadeiro ;

            MrgEsq 0 ;
            ParaTodos Classes Faz
               Se nao existe( [ Alias AliasClasseEncapsulada ] )
               EntÑo
                  Titulo "" ;
                  MrgEsq 0 ;
                  Frm "Gerar cabecalho de secao"( "Class declaration" ) ;
                  Frm "Linearizar definiáÑo de classe" ;
                  Se Existe( [ Texto TxtDclClasseApos ] )
                  Entao
                    Titulo "" ;
                    Texto TxtDclClasseApos ;
                  Senao
                  Fim ; /* Se */
               SenÑo
                  MrgEsq 0 ;
                  Se Primeiro
                  Entao
                     Frm "Gerar cabecalho de secao"( "Encapsulated classes" ) ;
                  Senao
                  Fim ; /* Se */
                  Primeiro = falso ;
                  MrgEsq 3 ;
                  CabecalhoClasse = [ Texto TxtClasseCabec ] ;
                  InxLinha = 1 ;
                  Titulo "class " ;
                  NaoAvLin ;
                  Enquanto InxLinha <= TamTexto( CabecalhoClasse ) Faz
                     LinhaCabecalho = LinhaTexto( CabecalhoClasse , InxLinha ) ;
                     InxLinha = InxLinha + 1 ;
                     InxColon = Indice( LinhaCabecalho , ":" , 0 , 500 ) ;
                     Se InxColon > 0
                     Entao
                        Titulo SubSeq( LinhaCabecalho , 0 , InxColon - 1 ) ;
                        SaiRepeticao ;
                     Senao
                        Titulo LinhaCabecalho ;
                     Fim ; /* Se */
                  Fim ; /* Enquanto */
                  NaoAvLin ;
                  Titulo ";" ;
               Fim ; /* Se */
            Fim ;

         /* Gerar declaraáîes dos prot¢tipos interface */

            S_Class = "" ;

            MrgEsq 0 ;
            Primeiro = Verdadeiro ;
            ParaTodos PacotesInterface Faz
               Se Primeiro
               Entao
                  Titulo "" ;
                  Frm "Gerar cabecalho de secao"( "Exported global functions" ) ;
                  Primeiro = Falso ;
               SeNao
               Fim ;
               Frm "Linearizar prot¢tipo"( "D" ) ;
            Fim ;

         /* Gerar cÛdigo final do mÛdulo de definiÁ„o */

            MrgEsq 0 ;
            Se Existe( [ Texto TxtModDeclExpFim ] )
            Entao
               Frm "Gerar cabecalho de secao"( "Trailing exported declarations" ) ;
               Texto TxtModDeclExpFim ;
            SeNao
            Fim ;

      /* Gerar controle de tÇrmino do m¢dulo definiáÑo */

         MrgEsq 0 ;
         Titulo "" ;
         Titulo "#undef " ;
         NÑoAvLin ;
         Titulo NomeCtrlClass ;

      /* Gerar tÈrmino de controle de inclus„o m˙ltipla */

         MrgEsq 0 ;
         Titulo "" ;
         Titulo "#endif " ;

      /* Gerar linha terminal */

         Titulo "" ;
         Titulo "////// End of definition module: " ;
         NaoAvLin ;
         Nome ;
         NaoAvLin ;
         Titulo " ////" ;
         Titulo "" ;
         Titulo "" ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar pacote *****/

   InicFrm "Linearizar pacote"

   /* Corpo de CPP Linearizar pacote */

      Se Existe( [ Alias AliasBlcOnlyDecl ] ) EntÑo

      /* N„o gera o pacote */

      SenÑo

      /* Controlar geraÁ„o do pacote */

         /* Gerar cabeáalho do pacote */

            TemTexto = Falso ;
            MrgEsq 0 ;
            Se   S_Class == ""
               E NAO Existe( [ Alias AliasPrivado ] )
            Entao
               Titulo "" ;
               Titulo BARRA_COMENT ;
               Endenta 3 ;
               TextoEsq "// " ;
               Titulo "" ;
               Se Existe( [ Alias AliasDebug ] )
               EntÑo
                  Titulo "Instrumentation " ;
               SenÑo
                  Titulo "" ;
               Fim ; /* Se */
               NaoAvLin ;
               Se Existe( [ Relacao classes ] )
               EntÑo
                  Titulo "Method: " ;
               SenÑo
                  Titulo "Function: " ;
               Fim ; /* Se */
               NaoAvLin ;
               Nome ;

               Frm "Exibir Texto Cod"( TxtPactAltFeitas , "Changes made" ,
                                       "" ) ;
               Se TemTexto
               Entao
                  Titulo "" ;
                  Titulo BARRA_COMENT ;
               Senao
               Fim ; /* Se */

               Endenta 0 ;
               TextoEsq "" ;

            Senao
               Frm "Linearizar especificacao de pacote" ;
            Fim ; /* Se */
            MrgEsq 0 ;

         /* Gerar texto do pacote */

            Se Existe( [ Alias AliasDebug ] )
            EntÑo
               Titulo "" ;
               Titulo "#ifdef _DEBUG" ;
               Frm "Gerar texto c¢digo de pacote" ;
               Titulo "" ;
               Titulo "#endif" ;
            SenÑo
               Frm "Gerar texto c¢digo de pacote" ;
            Fim ; /* Se */
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Gerar codigo para trace *****/

   InicFrm "Gerar codigo de trace"

   /* Corpo de CPPLIN Gerar codigo para trace */

      Se Existe( [ Alias AliasBlcNomeDebug ] )
      EntÑo
         Titulo "" ;
         Titulo "#ifdef _TRACE" ;

            Se Existe( [ Alias AliasBlcCallStack ] )
            Entao

               AvMrgEsq 3 ;
               Titulo "struct tpCallTrace" ;
               Titulo "{" ;
               AvMrgEsq 3 ;

                  Titulo "tpCallTrace( )" ;
                  Titulo "{" ;
                  AvMrgEsq 3 ;
                     Titulo "TRC_TraceCall( \"" ;
                     NaoAvLin ;
                     ParaTodos Pacotes Faz
                        Nome ;
                        SaiRepeticao ;
                     Fim ; /* ParaTodos */
                     NaoAvLin ;
                     Titulo "\" , __LINE__ , __FILE__ ) ;" ;
                  AvMrgEsq -3 ;
                  Titulo "} /* end constructor */" ;
                  Titulo "" ;

                  Titulo "~tpCallTrace( )" ;
                  Titulo "{" ;
                  AvMrgEsq 3 ;
                     Titulo "TRC_TraceReturn( \"" ;
                     NaoAvLin ;
                     ParaTodos Pacotes Faz
                        Nome ;
                        SaiRepeticao ;
                     Fim ; /* ParaTodos */
                     NaoAvLin ;
                     Titulo "\" , __LINE__ , __FILE__ ) ;" ;
                  AvMrgEsq -3 ;
                  Titulo "} /* end destructor */" ;
               AvMrgEsq -3 ;
               Titulo "} TraceCallReturn ; /* end tpCallTrace */" ;
               AvMrgEsq -3 ;

            Senao
               Titulo "   TRC_TraceString( \"" ;
               NaoAvLin ;
               Se Existe( [ Relacao Pacotes ] )
               Entao
                  ParaTodos Pacotes Faz
                     Nome ;
                     SaiRepeticao ;
                  Fim ; /* ParaTodos */
               Senao
                  Nome ;
               Fim ; /* Se */
               NaoAvLin ;
               Titulo "\" , __LINE__ , __FILE__ ) ;" ;

            Fim ; /* se */

            Se Existe( [ Texto TxtPactTraceIn ] )
            Entao
               Titulo "" ;
               AvMrgEsq 3 ;
               Titulo "if ( TRC_IsTraceOn( ))" ;
               Titulo "{" ;
               AvMrgEsq  3 ;
               Texto TxtPactTraceIn ;
               AvMrgEsq -3 ;
               Titulo "} /* if */" ;
               AvMrgEsq -3 ;
            Senao
            Fim ; /* Se */


            Se Existe( [ Texto TxtTransAntes ] )
            Entao
               AvMrgEsq 3 ;
               Titulo "" ;
               Titulo "if ( TRC_IsTraceOn( ))" ;
               Titulo "{" ;
                  AvMrgEsq 3 ;
                  Texto TxtTransAntes ;
                  AvMrgEsq -3 ;
               Titulo "}" ;
               AvMrgEsq -3 ;
            Senao
            Fim ; /* Se */
         Titulo "#endif" ;
      SenÑo
      Fim ; /* Se */
   FimFrm

/***** Formul†rio: CPPLIN Linearizar prot¢tipo *****/

   InicFrm "Linearizar prototipo"( Sequencia ModoLineariza )

   /* Corpo de CPP Linearizar prot¢tipo */

      AvMrgEsq 3 ;

      /* Linearizar especificaÁ„o de protÛtipo de pacote exportado */

         Se  ModoLineariza == "D"
         Entao
            Frm "Linearizar especificacao de pacote" ;
         Senao
         Fim ; /* Se */

      /* Linearizar declaraÁ„o do protÛtipo */

         Se Existe( [  Alias AliasDebug ] )
         Entao
            Titulo "" ;
            Titulo "#ifdef _DEBUG " ;
            AvMrgEsq 3 ;
         Senao
         Fim ; /* Se */

         ParaTodos Blocos Faz

         /* Linerizar bloco raiz de pacote */

            Titulo " " ;
            Titulo S_Class ;
            NaoAvLin ;
            Se Existe( [ Texto TxtBlcCabecDecl ] )
            EntÑo
               Texto TxtBlcCabecDecl ;
            Senao
               Texto TxtBlcCabecDef ;
            Fim ; /* se */
            NaoAvLin ;
            Titulo " ;" ;
         Fim ;

         Se Existe( [  Alias AliasDebug ] )
         Entao
            AvMrgEsq -3 ;
            Titulo "" ;
            Titulo "#endif " ;
         Senao
         Fim ; /* Se */

      AvMrgEsq -3 ;
   FimFrm

/***** Formul†rio: CPPLIN Linearizar tipo *****/

   InicFrm "Linearizar tipo"( inteiro Visibilidade )
      /* Dado do bloco Corpo de CPP Linearizar tipo */

         Logico Gera ;

      FimDecl

   /* Corpo de CPP Linearizar tipo */

      Gera = Falso ;
      Se Visibilidade == 0
      Entao
         Gera = Verdadeiro ;
      Senao
         Se Existe( [ Alias Visibilidade ] )
         Entao
            Gera = Verdadeiro ;
         Senao
         Fim ; /* Se */
      Fim ; /* Se */

      Se Gera EntÑo

      /* Controlar visibilidade de tipo */

         /* Gerar cabeáalho do tipo */

            MrgEsq 0 ;
            Titulo "" ;
            Titulo BARRA_COMENT ;
            Endenta 3 ;
            TextoEsq "// " ;
            Titulo "" ;
            MrgEsq 3 ;
            Titulo " Data type: " ;
            NaoAvLin ;
            Nome ;
            Frm "Exibir Texto Cod"( TxtDescr ,
                                    "Description", "" ) ;
            Frm "Exibir Texto Cod"( TxtRequis ,
                                    "Data type requirements", "" ) ;
            Frm "Exibir Texto Cod"( TxtHipot ,
                                    "Data type assumptions", "" ) ;
            Frm "Exibir Texto Cod"( TxtRestrProj ,
                                    "Implementation restrictions", "" ) ;
            Frm "Exibir Texto Cod"( TxtObserv ,
                                    "Observations", "" ) ;

            Titulo "" ;
            MrgEsq 0 ;
            Endenta 0 ;
            TextoEsq "" ;
            Titulo BARRA_COMENT ;

         /* Gerar corpo de todos os dado do tipo */

            ParaTodos Dados Faz

            /* Gerar dados requeridos pelo tipo */

               Se Existe( [ Texto TxtDclDadoAntes ] )
               Entao
                  Titulo "" ;
                  Titulo "// Required declarations" ;
                  AvMrgEsq 3 ;
                  Texto TxtDclDadoAntes ;
                  AvMrgEsq - 3 ;
                  Titulo "" ;
                  Titulo "// Type declaration" ;

               Senao
               Fim ; /* Se */

            /* Gerar declaraÁ„o de visibilidade do tipo */

               Titulo "" ;
               MrgEsq 3 ;

               Se Visibilidade == AliasPublico
               Entao
                  Titulo "public:" ;
                  AvMrgEsq 3 ;
               Senao
                  Se Visibilidade == AliasProtegido
                  Entao
                     Titulo "protected:" ;
                     AvMrgEsq 3 ;
                  Senao
                     Se Visibilidade == AliasPrivado
                     Entao
                        Titulo "private:" ;
                        AvMrgEsq 3 ;
                     Senao
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ; /* Se */

            /* Gerar declaraáÑo do corpo */

               Frm "Gerar corpo de tipo" ;

            /* Gerar dados apÛs o tipo */

               MrgEsq 0 ;
               Se Existe( [ Texto TxtDclDadoApos ] )
               Entao
                  Titulo "" ;
                  Titulo "// Dependent declarations" ;
                  Titulo "" ;
                  AvMrgEsq 3 ;
                  Texto TxtDclDadoApos ;
                  AvMrgEsq - 3 ;

               Senao
               Fim ; /* Se */
               Titulo "" ;
            Fim ;

      SenÑo
      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Testar se bloco tem dados *****/

   InicFrm "TestarSeBlocoTemDados"

   /* Corpo de CPP Testar se bloco tem dados */

      Se    Existe( [ Texto TxtBlcDados      ] )
         OU Existe( [ RelaáÑo BlocosDeclaram ] ) EntÑo

         BlocoTemDados = Verdadeiro ;

      SenÑo

         BlocoTemDados = Falso ;

      Fim ;
   FimFrm

/***** Formul†rio: CPPLIN Verificar se tem comando de preprocessador *****/

   InicFrm "Inicia com seq"( Inteiro   IdTxt ,
                             SeqÅància Seq )
      /* Dado do bloco Corpo de CPP Verificar se texto comeÁa com determinado string */

         ListaTexto Txt ;
         Inteiro    TamTxt ;
         Sequencia  LinTxt ;
         Inteiro    InxSeq ;
         Inteiro    i ;
         Inteiro    j ;
         Logico     Continua ;

      FimDecl

   /* Corpo de CPP Verificar se texto comeÁa com determinado string */

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

/**************************************************************************
**** Fim programa: CPPLIN Linearizar m¢dulos C++
**************************************************************************/

