/**************************************************************************
*
**** Programa de formul rios: CPPEDT Editar m¢dulos C++
*
**** Nome do arquivo gerado:  CPPESP
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
*  CPPEDT Exibir todos laudos          : "Exibir todos laudos"
*  CPPEDT Editar lista de todos os     : "Editar todos \"strings\""
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  CPPEDT Exibir laudo                 : "Exibir texto laudo"
*  CPPEDT Criar/editar nome classe     : "Criar classe"
*  CPPEDT Criar/editar nome bloco      : "Criar bloco"
*  CPPEDT Criar/editar nome control    : "Criar controle"
*  CPPEDT Criar/editar nome dado       : "Criar dado"
*  CPPEDT Criar/editar nome tipo       : "Criar tipo"
*  CPPEDT Criar/editar nome pacote     : "Criar pacote"
*  CPPEDT Criar/editar nome m¢dulo     : "Criar m¢dulo"
*  CPPEDT Especificar classe           : "Editar classe"
*  CPPEDT Especificar bloco            : "Editar bloco"
*  CPPEDT Especificar controle         : "Editar controle"
*  CPPEDT Especificar dado             : "Editar dado"
*  CPPEDT Especificar tipo             : "Editar tipo"
*  CPPEDT Especificar pacote           : "Editar pacote"
*  CPPEDT Especificar m¢dulo           : "Editar m¢dulo"
*  CPPEDT Exibir todos laudos          : "Exibir todos laudos"
*  CPPEDT Exibir laudo com nome        : "Exibir laudo com nome"
*  CPPEDT Editar lista de todos os     : "Editar todos \"strings\""
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

/***** Formul rio: CPPEDT Exibir laudo *****/

   InicFrm "Exibir texto laudo"

   /* Corpo de CPP Exibir texto laudo */

      Se Existe( [ Texto TxtLaudo ] )
      Entao
         Titulo "" ;
         Titulo "List of problems found" ;
         TextoLaudo ;
      Senao
      Fim ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome classe *****/

   InicFrm "Criar classe"

   /* Corpo de CPP Criar/editar nome classe */

      Titulo "Class name:   " ;
      N„oAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome bloco *****/

   InicFrm "Criar bloco"

   /* Corpo de CPP Criar/editar nome bloco */

      T¡tulo "Program block name: " ;
      N„oAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome controle *****/

   InicFrm "Criar controle"

   /* Corpo de CPP Criar/editar nome controle */

      Titulo "Controls are not used" ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome dado *****/

   InicFrm "Criar dado"

   /* Corpo de CPP Criar/editar nome dado */

      Titulo "Attribute name: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome tipo *****/

   InicFrm "Criar tipo"

   /* Corpo de CPP Criar/editar nome tipo */

      Titulo "Data type name: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome pacote *****/

   InicFrm "Criar pacote"

   /* Corpo de CPP Criar/editar nome pacote */

      Titulo "Function name: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome m¢dulo *****/

   InicFrm "Criar m¢dulo"

   /* Corpo de CPP Criar/editar nome modulo */

      Titulo "Module name: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: CPPEDT Especificar classe *****/

   InicFrm "Editar classe"

   /* Corpo de CPP Especificar classe */

      Endenta 3 ;

      /* Obter nome da classe */

         Frm "Criar classe" ;

      /* Exibir laudo de valida‡„o da classe */

         Frm "Exibir texto laudo" ;

      /* Editar especifica‡„o da interface da classe */

         Titulo "Interface specification" ;
         AvMrgEsq 3 ;
            Titulo "Description" ;
            Texto TxtDescr ;
            Titulo "Class usage description" ;
            Texto TxtClasseUso ;
            Titulo "Assumptions" ;
            Texto TxtHipot ;
            Titulo "Requirements" ;
            Texto TxtRequis ;
            Titulo "Restrictions" ;
            Texto TxtRestrProj ;
            Titulo "Observations" ;
            Texto TxtObserv ;
            Titulo "Modules that contain this class" ;
            Rela‡„o M¢dulos ;
            Titulo "Is encapsulated in this module: " ;
            NaoAvLin ;
            TamCampo 3 ;
            Alias  AliasClasseEncapsulada ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o da implementação da classe */

         Titulo "Implementation specification" ;
         AvMrgEsq 3 ;
            Titulo "Implementation description" ;
            Texto TxtClasseImplDescr ;
            Titulo "Implementation assumptions" ;
            Texto TxtClasseImplHipot ;
            Titulo "Implementation requirements" ;
            Texto TxtClasseImplReq ;
            Titulo "Implementation restrictions" ;
            Texto TxtRestrImpl ;
            Titulo "Data structure implementation" ;
            Texto TxtClasseEstrtDados ;
         AvMrgEsq -3 ;

      /* Editar controle de altera‡”es da classe */

         T¡tulo "" ;
         T¡tulo "Change control" ;
         AvMrgEsq 3 ;
            T¡tulo "List of solved problems" ;
            Texto TxtClasseAltFeitas ;
         AvMrgEsq -3 ;

      /* Editar cabe‡alho da classe */

         Titulo "Code: Template definition" ;
         Texto TxtClasseTemplate ;
         Titulo "Code: Class heading" ;
         Texto TxtClasseCabec ;

      /* Editar composi‡„o da classe */

         Titulo "Composition of this class" ;
         AvMrgEsq 3 ;

         Titulo "Relation of the types defined within this class" ;
         Rela‡„o Tipos ;
         Titulo "Relation of the member attributes of this class" ;
         Rela‡„o Dados ;
         Titulo "Relation of the member functions of this class" ;
         Rela‡„o Pacotes ;

         AvMrgEsq -3 ;

      /* Código da classe */

         Titulo "Code fragments of the class" ;
         AvMrgEsq 3 ;

         Titulo "Code: Exported declarations previous to all other declarations" ;
         Texto TxtDclClasseIniExp ;

         Titulo "Code: Encapsulated global declarations previous to function definitions" ;
         Texto TxtDclClasseIniLoc ;

         Titulo "Code: public declarations" ;
         Texto TxtDclClassePubl ;
         Titulo "Code: protected declarations" ;
         Texto TxtDclClasseProt ;
         Titulo "Code: private declarations" ;
         Texto TxtDclClassePriv ;
         Titulo "Code: declarations to follow the class declaration" ;
         Texto TxtDclClasseApos ;

         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Especificar bloco *****/

   InicFrm "Editar bloco"

   /* Corpo de CPP Especifica‡„o bloco */

      Endenta 3 ;

      /* Tratar bloco raiz */

         Se Existe( [ Relacao Pacotes ] ) Ent„o

         /* Tratar bloco raiz de corpo de pacote */

            ParaTodos Pacotes Faz
               Frm "Editar pacote" ;
            Fim ;

         Sen„o

         /* Tratar bloco raiz de estrutura */

            Titulo "Nome do bloco " ;
            NaoAvLin ;
            Nome ;
         Fim ;

      /* Exibir laudo de bloco de programa */

         Frm "Exibir texto laudo" ;

      /* Editar por‡„o execut vel de bloco programa */

         /* Assertiva de entrada */

            MrgEsq 0 ;
            Se NAO Existe( [ Relacao Pacotes ] )
            Entao
               Titulo "Sould be traced:  " ;
               NaoAvLin ;
               Alias  AliasBlcNomeDebug ;
               Titulo "Code: additional trace code" ;
               Texto  TxtPactTraceIn ;
               Titulo "Pre-conditions of this block" ;
               Texto TxtAssertEnt ;
            Senao
               ParaTodos Pacotes Faz
                  Titulo "Pre-Conditions of this function" ;
                  Texto TxtPactPrecondicao  ;
               Fim ; /* ParaTodos */
            Fim ; /* Se */

         /* C¢digo do bloco programa */

            Titulo "Code fragments of this block" ;
            AvMrgEsq 3 ;
               Titulo "Is root of debugging structure: " ;
               NaoAvLin ;
               Alias  AliasBlcDbg ;
               Titulo "String list, format: idString Flags String-value";
               Texto TxtBlcMensagem ;
               Titulo "Code: declaration of variables" ;
               Texto TxtBlcDados ;
               Titulo "Relation of variables used" ;
               Rela‡„o BlocosDeclaram ;
               Titulo "Code: activation condition of this block" ;
               Texto TxtCondAtiv ;
               Titulo "Code: list of controled pointers" ;
               Texto TxtEnvelopePt ;
               Titulo "Code: tracing fragment previous to executable code" ;
               Texto TxtTransAntes ;
               Titulo "Code: debugging fragment previous to executable code" ;
               Texto TxtDebugAntes ;
               Titulo "Code: fragment previous to child block code" ;
               Texto TxtFonteAntes ;
               Titulo "Code: repetition condition of child blocks" ;
               Texto TxtCondRepet ;
               Titulo "Code: selection condition of child blocks" ;
               Texto TxtCondSelec ;
               T¡tulo "First child prepares control structure: " ;
               NaoAvlin ;
               Alias AliasPrepara ;
               Titulo "Child blocks" ;
               Rela‡„o Decomp ;
               Titulo "Code: fragment after child blocks" ;
               Texto TxtFonteApos ;
            AvMrgEsq -3 ;

         /* Assertiva de sa¡da */

            Se NAO Existe( [ Relacao Pacotes ] )
            Entao
               Titulo "Post-conditions of this block" ;
               Texto TxtAssertSai ;
            Senao
               ParaTodos Pacotes Faz
                  Titulo "Post-conditions of this function" ;
                  Texto TxtPactPoscondicao ;
               Fim ; /* ParaTodos */
            Fim ; /* Se */

            Titulo "Observations" ;
            Texto TxtObserv ;

      /* Editar referˆncias cruzadas */

         Titulo "Relations" ;
         AvMrgEsq 3 ;
         Titulo "Relation of functions called within this block" ;
         Rela‡„o Chama ;
         Titulo "Relation of functions that have this block as root" ;
         Rela‡„o Pacotes ;
         Titulo "Relation of parent blocks" ;
         Rela‡„o Comp ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Especificar controle *****/

   InicFrm "Editar controle"

   /* Corpo de CPP Especifica‡„o controle */

      Titulo "Controls are not used" ;
   FimFrm

/***** Formul rio: CPPEDT Especificar dado *****/

   InicFrm "Editar dado"
      /* Dado do bloco Tratar bloco de dados simples */

         L¢gico EhMembro ; /* indica se ‚ mebro de uma classe */

      /* Dado do bloco Identificar se dado pertence a alguma classe */

         Objeto DadoCorr ;
         L¢gico TemPai ;

      FimDecl

   /* Corpo de CPP Especifica‡„o dado */

      Endenta 3 ;

      /* Tratar bloco raiz de corpo de tipo */

         Se Existe( [ Rela‡„o Tipos ] )
         Entao
            Titulo "Data type root" ;
            Titulo "" ;
            AvMrgEsq 3 ;
            ParaTodos Tipos Faz
               Frm "Editar tipo" ;
            Fim ;
         Senao
         Fim ;

         Titulo "" ;

      /* Obter nome da estrutura de dados */

         MrgEsq 0 ;
         Frm "Criar dado" ;

      /* Exibir laudo de estrutura de dados */

         Frm "Exibir texto laudo" ;

      /* Diferenciar dado simples de dado corpo de tipo */

         Se Existe( [ Relacao Decomp ] ) Ent„o

         /* Editar especifica‡„o da estrutura de dados */

            Titulo "Data aggregation specification" ;
            AvMrgEsq 3 ;
               Titulo "Data aggregation description" ;
               Texto TxtDescr ;
               Titulo "Data aggregation requirements" ;
               Texto TxtRequis ;
               Titulo "Data aggregation assumptions" ;
               Texto TxtHipot ;
               Titulo "Aggregation validity conditions" ;
               Texto TxtDclAssert ;
               Titulo "Relation of child data blocks" ;
               Relacao Decomp ;
               Titulo "Observations" ;
               Texto TxtObserv ;
            AvMrgEsq -3 ;

         Sen„o

         /* Tratar bloco de dados simples */

            /* Identificar se dado pertence a alguma classe */

               DadoCorr = Corrente ;
               TemPai = Existe( [ Rela‡„o Comp ] ) ;
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

                  Se Existe( [ Rela‡„o Classes ] )
                  Ent„o
                     EhMembro = Verdadeiro ;
                  Sen„o
                  Fim ;
               Fim ;

            /* Editar visibilidade do block de dados */

               Se EhMembro
               Ent„o

                  Titulo "Visibility of this data item" ;
                  AvMrgEsq 3 ;
                     Titulo "   Private: " ;
                     N„oAvLin ;
                     TamCampo 3 ;
                     Alias AliasPrivado ;

                     N„oAvLin ;
                     Titulo "   Protected: " ;
                     N„oAvLin ;
                     TamCampo 3 ;
                     Alias AliasProtegido ;

                     N„oAvLin ;
                     Titulo "   Public: " ;
                     N„oAvLin ;
                     TamCampo 3 ;
                     Alias AliasPublico ;

                     Titulo "Is static: " ;
                     N„oAvLin ;
                     TamCampo 3 ;
                     Alias AliasDadoExport ;
                     NaoAvLin ;
                     Titulo  " initialization: " ;
                     NaoAvlin ;
                     Texto TxtDclIniciaStatic ;
                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* C¢digo de declara‡„o dos dados */

               Titulo "Declaration fragments of this data item" ;
               AvMrgEsq 3 ;
                  Titulo "Code: data item declaration" ;
                  Texto TxtDclDado ;
                  Titulo "Code: inicialization declaration (affects last declaration)" ;
                  Texto TxtDclInic ;
                  Titulo "Relation of required data types" ;
                  Rela‡„o Chama ;
               AvMrgEsq -3 ;

            /* Editar especifica‡„o de dado elementar */

               Titulo "Data item specification" ;
               AvMrgEsq 3 ;
                  Titulo "Description of this data item" ;
                  Texto TxtDescr ;
                  Titulo "Intention or metric of this data item" ;
                  Texto TxtDclMedida ;
                  Titulo "Validity condition of this data item" ;
                  Texto TxtDclAssert ;
                  Titulo "Description of this enumeration item" ;
                  Texto TxtDclValido ;
               AvMrgEsq -3 ;
         Fim ;

      /* Editar rela‡”es de navega‡„o do bloco estrutura de dados */

         Titulo "Relations" ;
         AvMrgEsq 3 ;
            Titulo "Relation of modules that encapsulate this data block" ;
            Rela‡„o Modulos ;
            Titulo "Relation of modules that export this data block" ;
            Rela‡„o InterfaceModulo ;
            Titulo "Relation of classes of which this data block is a member" ;
            Rela‡„o Classes ;
            Titulo "Relation of data types that use this data block" ;
            Rela‡„o Tipos ;
            Titulo "Relation of program blocks that declare this data block" ;
            Rela‡„o DeclaradosEm ;
            Titulo "Relation of parent data blocks" ;
            Rela‡„o Comp ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Especificar tipo *****/

   InicFrm "Editar tipo"

   /* Corpo de CPP Especifica‡„o tipo */

      /* Obter nome do tipo */

         Frm "Criar Tipo" ;
         Endenta 3 ;

      /* Exibir laudo do tipo de dados */

         Frm "Exibir texto laudo" ;

      /* Editar filhos de tipo limbo */

         Se NomeLimbo == [ Nome ]
         Ent„o
            Titulo "Child data types" ;
            Relacao Decomp ;
         Sen„o
         Fim ; /* Se */

      /* Editar especifica‡„o do tipo */

         Titulo "Data type specification" ;
         AvMrgEsq 3 ;
            Titulo "Description" ;
            Texto TxtDescr ;
            Titulo "Data type requirements" ;
            Texto TxtRequis ;
            Titulo "Data type assumptions" ;
            Texto TxtHipot ;
            Titulo "Data type restrictions" ;
            Texto TxtRestrProj ;
            Titulo "Observations" ;
            Texto TxtObserv ;
         AvMrgEsq -3 ;

      /* Editar tipo de acesso para tipos */

         Se Existe( [ Rela‡„o Classes ] )
         Ent„o

            Titulo "Visibility of this data type" ;
            AvMrgEsq 3 ;
               Titulo "   Private: " ;
               N„oAvLin ;
               Alias AliasPrivado ;

               N„oAvLin ;
               Titulo "   Protected: " ;
               N„oAvLin ;
               Alias AliasProtegido ;

               N„oAvLin ;
               Titulo "   Public: " ;
               N„oAvLin ;
               Alias AliasPublico ;
            AvMrgEsq -3 ;

         Sen„o
         Fim ;

      /* Editar cabe‡alho do tipo */

         Titulo "Data type composition" ;
         AvMrgEsq 3 ;
         ParaTodos Dados Faz
            Titulo "Data declarations that precede the data type declaration" ;
            Texto  TxtDclDadoAntes ;
            Titulo "Data type declaration header" ;
            Texto TxtDclCabec ;
            Titulo "Data type declaration complement (required by C)" ;
            Texto TxtDclFim ;
            Titulo "Public header (required by encapsulated types)" ;
            Texto TxtDclTipoExportado ;
            Titulo "Data declarations that follow the data type declaration" ;
            Texto  TxtDclDadoApos ;
         Fim ;
         AvMrgEsq -3 ;

      /* Editar navega‡„o do tipo para outros objetos */

         Titulo "Relations of this data type" ;
         AvMrgEsq 3 ;
            Titulo "Relation of classes that declare this data type" ;
            Rela‡„o Classes ;
            Titulo "Relation of modules that export this data type" ;
            Rela‡„o InterfaceModulo ;
            Titulo "Relation of modules that use this data type" ;
            Rela‡„o Modulos ;
            Titulo "Relation of data blocks that refer to this data type" ;
            Rela‡„o Chamado ;
            Titulo "Relation of root data blocks" ;
            Rela‡„o Dados ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Especificar pacote *****/

   InicFrm "Editar pacote"

   /* Corpo de CPP Especifica‡„o pacote */

      Endenta 3 ;

      /* Obter nome do pacote */

         Frm "Criar pacote" ;
         Endenta 3 ;

      /* Exibir laudo de valida‡„o de pacote */

         Frm "Exibir texto laudo" ;

         ParaTodos Blocos Faz
            Titulo "Sould be traced:  " ;
            NaoAvLin ;
            Alias  AliasBlcNomeDebug ;
            Titulo "Sould trace call stack:  " ;
            NaoAvLin ;
            Alias  AliasBlcCallStack ;
            Titulo "Code: add code to trace start" ;
            Texto  TxtPactTraceIn ;
         Fim ; /* ParaTodos */

      /* Editar lista de composi‡„o de pacote limbo */

         Se NomeLimbo == [ Nome ]
         Ent„o
            Titulo "Child functions" ;
            Relacao Decomp ;
         Sen„o
         Fim ; /* Se */

      /* Editar modo de protecao de acesso para pacotes */

         Titulo "This function is debugging instrumentation: " ;
         NaoAvLin ;
         TamCampo 3 ;
         Alias AliasDebug ;
         Titulo "This function is declaration only: " ;
         NaoAvLin ;
         Alias  AliasBlcOnlyDecl ;

         Se    Existe( [ Rela‡„o Classes   ] )
            OU Existe( [ Relacao Entidades ] )
         Ent„o

            Titulo "" ;
            Titulo "Properties of this method" ;
            AvMrgEsq 3 ;
               Titulo "Visibility  Public:      " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasPublico ;
               N„oAvLin ;
               Titulo "  Protected:  " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasProtegido ;
               N„oAvLin ;
               Titulo "  Private:     " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasPrivado ;

               Titulo "Is virtual:     " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasVirtual ;
               N„oAvLin ;
               Titulo "  Is abstract: " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasVirtualPuro ;
               N„oAvLin ;
               Titulo "  Is static: " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasStatic ;

               Titulo "Is inline:      " ;
               N„oAvLin ;
               TamCampo 3 ;
               Alias AliasInline ;

            AvMrgEsq -3 ;
         Sen„o
         Fim ; /* Se */

      /* Editar cabeçalho do pacote */

         Titulo "" ;
         Titulo "Function body" ;
         Se Nao Existe( [ Relacao Blocos ] )
         Entao
            NaoAvLin ;
            Titulo " is empty. Insert body root block name" ;
            Relacao Blocos ;
         Senao
         Fim ; /* Se */

         AvMrgEsq 3 ;

         Se Existe( [ Rela‡„o Classes ] )
         Ent„o
            ParaTodos Classes Faz
               Titulo "   Belongs to class: " ;
               NaoAvLin ;
               Nome ;
               Titulo "   Codename        : " ;
               NaoAvLin ;
               Se Existe( [ Texto txtClasseTemplate ] )
               Entao
                  Texto txtClasseTemplate ;
                  NaoAvLin ;
                  Titulo " " ;
                  NaoAvLin ;
               Senao
               Fim ; /* Se */
               Texto TxtClasseCabec ;
            Fim ; /* ParaTodos */
         Sen„o
         Fim ; /* Se */

         ParaTodos Blocos Faz
            Titulo "Function body root name: " ;
            NaoAvLin ;
            Nome ;
            Titulo "Code: declarations that precede the function definition" ;
            Texto TxtBlcIniPac ;
            Titulo "Code: function prototype" ;
            Texto TxtBlcCabecDecl ;
            Titulo "Code: function header (prototype is default)" ;
            Texto TxtBlcCabecDef ;
            Titulo "Code: entry assertion" ;
            Texto TxtBlcAssertPac ;
            Titulo "Code: declarations that succeede the function definition" ;
            Texto TxtBlcFimPac ;
         Fim ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o do pacote */

         Titulo "Function / method specification" ;
         AvMrgEsq 3 ;
            Titulo "Description" ;
            Texto TxtDescr ;
            Titulo "Log details" ;
            Texto TxtPactLogDetails ;
            Titulo "Preconditions of this function" ;
            Texto TxtPactPrecondicao ;
            Titulo "Requirements" ;
            Texto TxtRequis ;
            Titulo "Postconditions of this function" ;
            Texto TxtPactPoscondicao ;
            Titulo "Assumptions" ;
            Texto TxtHipot ;
            Titulo "Restrictions" ;
            Texto TxtRestrProj ;
            Titulo "Observations" ;
            Texto TxtObserv ;

         AvMrgEsq -3 ;

      /* Editar controle de alterções do pacote */

         Titulo "Change control" ;
         AvMrgEsq 3 ;
            T¡tulo "List of solved problems" ;
            Texto TxtPactAltFeitas ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o da interface do pacote */

         Titulo "Program interface specification" ;
         AvMrgEsq 3 ;
            T¡tulo "Parameters" ;
            Texto TxtPactEntra ;
            T¡tulo "Return value" ;
            Texto TxtPactSai ;
            Titulo "Member elements used" ;
            Texto TxtPactMembros ;
            Titulo "Generated exceptions" ;
            Texto TxtPactExceptions ;
            T¡tulo "Global variables exported by this module" ;
            Texto TxtPactGlobalEntra ;
            T¡tulo "Global variables exported by server modules" ;
            Texto TxtPactImportEntra ;
            T¡tulo "Files used" ;
            Texto TxtPactArqEntra ;
            T¡tulo "States" ;
            Texto TxtPactEstadoEntra ;
            T¡tulo "Global variables encapsulated in this module" ;
            Texto TxtPactEncapsEntra ;
            Titulo "Data types of this module" ;
            Texto TxtPactTiposDados ;
            Titulo "Data types imported from other server modules" ;
            Texto TxtPactTiposDadosImportados ;
         AvMrgEsq -3 ;

      /* Editar interface com usuário do programa que usa o pacote */

         Titulo "User interface specification" ;
         AvMrgEsq 3 ;
            Titulo "Interface description" ;
            Texto TxtPactInterfaceUsuario ;
            Titulo "Interface requirements" ;
            Texto TxtPactInterfaceRequisitos ;
            Titulo "Interface assumptions" ;
            Texto TxtPactInterfaceHipoteses ;
            Titulo "Interface restrictions" ;
            Texto TxtPactInterfaceRestricoes ;
         AvMrgEsq -3 ;

      /* Editar rela‡”es do pacote com outros objetos */

         Titulo "Relations" ;
         AvMrgEsq 3 ;
            Titulo "Modules that contain this function" ;
            Rela‡„o Modulos ;
            Titulo "Modules that export this function" ;
            Rela‡„o InterfaceModulo ;
            Titulo "Classes that contain this method" ;
            Rela‡„o Classes ;
            Titulo "Entities that contain this method" ;
            Rela‡„o Entidades ;

            Titulo "Program blocks that call this function" ;
            Rela‡„o Chamado ;
            Titulo "This function overloads or redefines" ;
            Relacao SobreCarrega ;
            Titulo "Functions that overload or redefine this function" ;
            Relacao SobrecarregadaPor ;
            Titulo "Overloading and redefinition (functions in other repositories)" ;
            Texto TxtPactSobreCarga ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Especificar m¢dulo *****/

   InicFrm "Editar m¢dulo"

   /* Corpo de CPP Especifica‡„o modulo */

      /* Obter nome do m¢dulo */

         Endenta 3 ;
         Titulo "Module name: " ;
         NaoAvLin ;
         Nome ;

      /* Exibir laudo de valida‡„o do m¢dulo */

         Frm "Exibir texto laudo" ;

      /* Editar filhos de modulo limbo */

         Se NomeLimbo == [ Nome ]
         Ent„o
            Titulo "List of child modules" ;
            Relacao Decomp ;
         Sen„o
         Fim ; /* Se */

      /* Editar identifica‡„o externa do m¢dulo */

         T¡tulo "" ;
         T¡tulo "Source code generation control" ;
         AvMrgEsq 3 ;
            Titulo "" ;
            Titulo "Generated source file name:                 " ;
            NaoAvLin ;
            Alias AliasArquivo ;

            Titulo "Implementation module file extension name:  " ;
            NaoAvLin ;
            Alias AliasModExtenImple ;

            Titulo "Definition module file extension name:      " ;
            NaoAvLin ;
            Alias AliasModExtenDefin ;

            Titulo "Module identification letters:              " ;
            NaoAvLin ;
            Alias AliasModLetrasId ;

            Titulo "Module identification number:               " ;
            NaoAvLin ;
            Alias AliasModNumeroId ;

            Titulo "" ;

            Titulo "Module uses MFC: " ;
            NaoAvLin ;
            Alias AliasModMFC ;

         AvMrgEsq -3 ;

      /* Editar controle de altera‡”es do módulo */

         T¡tulo "" ;
         T¡tulo "Changes made to this module" ;
         Texto TxtModAltFeitas ;

      /* Editar especifica‡„o exportada do m¢dulo */

         T¡tulo "";
         T¡tulo "Module specification" ;
         AvMrgEsq 3 ;
            Titulo "Description" ;
            Texto TxtDescr ;
            Titulo "Properties to be observed by client modules" ;
            Texto TxtModMod ;
            Titulo "User interface with this module" ;
            Texto TxtModInterf ;
            Titulo "Interfaces with server modules and platform" ;
            Texto TxtModAmb ;
            Titulo "Data strutures, interface specification" ;
            Texto TxtModDataStructInterface ;
            Titulo "Requirements" ;
            Texto TxtRequis ;
            Titulo "Assumptions" ;
            Texto TxtHipot ;
            Titulo "Restrictions" ;
            Texto TxtRestrProj ;
            Titulo "Observations" ;
            Texto TxtObserv ;
            Titulo "Bibliography" ;
            Texto TxtModRefBib ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o encapsulada do m¢dulo */

         T¡tulo "";
         T¡tulo "Module implementation specification" ;
         AvMrgEsq 3 ;
            Titulo "Implementation of user interface with this module" ;
            Texto TxtModInterfImpl ;
            Titulo "Implementation of interfaces with server modules and platform" ;
            Texto TxtModAmbImpl ;
            Titulo "Implementation specification of Data strutures" ;
            Texto TxtModDataStructImplem ;
            Titulo "Implementation requirements" ;
            Texto TxtModRequisImpl ;
            Titulo "Implementation assumptions" ;
            Texto TxtModHipotImpl ;
            Titulo "Implementation restrictions" ;
            Texto TxtRestrImpl ;
            Titulo "Quality control requirements, methods, tools and data" ;
            Texto TxtModQualityControl ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o de interface do m¢dulo */

         Titulo "Definition module composition" ;
         AvMrgEsq 3 ;
         Titulo "Code: Exported declarations that precede linearized data strutures" ;
         Texto TxtModDeclExp ;
         Titulo "Relation of exported data types" ;
         Rela‡„o TiposInterface ;
         Titulo "Relation of exported data strutures" ;
         Rela‡„o DadosInterface ;
         Titulo "Exported declarations that follow linearized data strutures" ;
         Texto   TxtModDeclApos ;
         Titulo "Relation of exported functions" ;
         Rela‡„o PacotesInterface ;
         Titulo "Code: Exported declarations at the end of the definition module" ;
         Texto   TxtModDeclExpFim ;
         AvMrgEsq -3 ;

      /* Editar especifica‡”es de constitui‡„o do m¢dulo */

         Titulo "Implementation module composition" ;
         AvMrgEsq 3 ;
         Titulo "Required header and definition files, prior to own definition file" ;
         Texto TxtModInclus ;
         Titulo "Required header and definition files that follow the own definition file" ;
         Texto TxtModInclApos ;

         Titulo "Test command declarations" ;
         Texto TxtModComdTeste ;

         Titulo "Encapsulated data declarations, prior to linearized data structures" ;
         Texto TxtModDeclEncps ;
         Titulo "Relation of encapsulated data types" ;
         Rela‡„o Tipos ;
         Titulo "Relation of encapsulated data strutures" ;
         Rela‡„o Dados ;
         Titulo "Relation of all classes belonging to this module" ;
         Rela‡„o Classes ;
         AvMrgEsq 3 ;
         Se Existe( [ Relacao Classes ] )
         Entao
            Titulo "Relation of all methods belonging to classes" ;
            ParaTodos Classes Faz
               Titulo "Class: " ;
               NaoAvLin ;
               Nome ;
               Relacao Pacotes ;
            Fim ; /* ParaTodos */
         Senao
         Fim ; /* Se */
         AvMrgEsq -3 ;
         Titulo "Relation of all functions compiled by this module" ;
         Rela‡„o Pacotes ;
         Titulo "Relation of modules that are tested by current one" ;
         Relacao EhDependente ;
         Titulo "Relation of modules that test current one" ;
         Relacao Depende ;

         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Exibir todos laudos *****/

   InicExterno "Exibir todos laudos"

   /* Corpo de CPP Exibir todos laudos */

      Endenta 3 ;

      Titulo "" ;
      Titulo "----- Laudos de m¢dulos" ;
      ParaTodos Dicionario DicModulo Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de classes" ;
      ParaTodos Dicionario DicClasses Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de pacotes" ;
      ParaTodos Dicionario DicPacotePrograma Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de blocos" ;
      ParaTodos Dicionario DicBlocoPrograma Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de tipos de dados" ;
      ParaTodos Dicionario DicTipoDados Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de blocos de dados" ;
      ParaTodos Dicionario DicDado Faz
         Frm "Exibir laudo com nome" ;
      Fim ;
   FimFrm

/***** Formul rio: CPPEDT Exibir laudo com nome *****/

   InicFrm "Exibir laudo com nome"

   /* Corpo de CPP  Texto laudo com nome */

      Endenta 6 ;
      Se Existe( [ Texto TxtLaudo ] )
      Entao
         Titulo "" ;
         Titulo NomeClasse( ClasseObj( Corrente )) ;
         NaoAvLin ;
         Titulo " : " ;
         NaoAvLin ;
         Nome ;
         Texto Txtlaudo ;
      Senao
      Fim ;
   FimFrm

/***** Formul rio: CPPEDT Editar lista de todos os strings *****/

   InicExterno "Editar todos \"strings\""

   /* Corpo de CPPEDT Editar lista de todos os strings */

      ParaTodos Dicionario DicBlocoPrograma Faz
         Se Existe( [ Texto TxtBlcMensagem ] )
         Ent„o
            Titulo "" ;
            Titulo "Bloco: " ;
            NaoAvLin ;
            Nome ;
            Titulo "" ;
            Texto TxtBlcMensagem ;
         Sen„o
         Fim ; /* Se */
      Fim ; /* ParaTodos */
   FimFrm

/**************************************************************************
**** Fim programa: CPPEDT Editar m¢dulos C++
**************************************************************************/

