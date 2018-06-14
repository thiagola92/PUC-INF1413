/**************************************************************************
*
**** Programa de formul rios: ERAEDT Especificar entidades e relacionamentos
*
**** Nome do arquivo gerado:  CPPERAED
*
*Nome l¢gico da base: Programas de formul rio de apoio … programa‡„o C++
*Nome do arquivo:     C:\TALISMAN\FERRAM\BSW\CPPFRM.BSW
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
*     1    0         avs    jul-2000  Inicio do desenvolvimento, copiado de cppfrm
*
*Altera‡”es de emergˆncia realizadas e ainda n„o passadas a limpo
*
*Altera‡”es e corre‡”es realizadas
*
****************************************************************************
*
* Formul rios externos (selecion veis)
*
*  Exibir todos laudos                 : "Exibir todos laudos"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  Criar Entidades                     : "Criar entidade"
*  Criar cardinalidade                 : "Criar cardinalidade"
*  Criar Relacionamentos               : "Criar relacionamento"
*  Criar entidades Liga‡„o             : "Criar entidade de ligacao"
*  Criar Categorias                    : "Criar categoria"
*  Criar Requisito n„o funcional       : "Criar requisito n„o funcional"
*  Criar compoSi‡„o                    : "Criar composicao"
*  Criar Banco de dados                : "Criar banco"
*  Criar arQuivos                      : "Criar Arquivo"
*  Criar esPa‡os                       : "Criar espaco"
*  Criar Indices                       : "Criar indice"
*  Criar Vistas                        : "Criar Vista"
*  Criar interFaces                    : "Criar interface"
*  Criar Janelas                       : "Criar janela"
*  Editar Entidades                    : "Editar entidade"
*  Editar dado de entidade             : "Editar dados simples"
*  CPPEDT Especificar tipo             : "Editar tipo"
*  CPPEDT Criar/editar nome tipo       : "Criar tipo"
*  CPPEDT Especificar dado             : "Editar dado"
*  CPPEDT Criar/editar nome dado       : "Criar dado"
*  CPPEDT Exibir laudo                 : "Exibir texto laudo"
*  Exibir liga‡”es do diagrama         : "Exibir liga‡”es"
*  Editar Relacionamentos              : "Editar relacionamento"
*  Editar entidades Liga‡„o            : "Editar entidade de ligacao"
*  Editar cardinalidade                : "Editar cardinalidade"
*  Editar Categorias                   : "Editar categoria"
*  Editar Requisito n„o funcional      : "Editar requisito n„o funcional"
*  Editar compoSi‡„o                   : "Editar composicao"
*  Editar Banco de dados               : "Editar banco"
*  Editar arQuivos                     : "Editar arquivo"
*  Editar esPa‡os                      : "Editar espaco"
*  Editar Indices                      : "Editar indice"
*  Editar Vistas                       : "Editar Vista"
*  Editar interFaces                   : "Editar interface"
*  Editar Janelas                      : "Editar janela"
*  Editar especifica‡„o do objeto      : "Editar especifica‡„o"
*  Exibir cardinalidades de relacio    : "Exibir Cardinalidade"( Objeto Origem , Objeto Ligacao )
*  Exibir laudo                        : "Exibir laudo"
*  Exibir todos laudos                 : "Exibir todos laudos"
*  Exibir laudo com nome               : "Exibir laudo com nome"
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

               Constante      AliasExtenDefin =  5 ;
               Constante      AliasExtenImple =  6 ;
               Constante      AliasLetrasId   =  7 ;
               Constante      AliasNumeroId   =  8 ;

               Constante      TxtModInterf    = 22 ;
               Constante      TxtModMod       = 23 ;
               Constante      TxtModAmb       = 24 ;
               Constante      TxtModDeclExp   = 18 ;
               Constante      TxtModIdentif   = 21 ;
               Constante      TxtModInclus    = 19 ;
               Constante      TxtModInclApos  = 26 ;
               Constante      TxtModDeclEncps = 20 ;
               Constante      TxtModDeclApos  = 25 ;

               Constante      TxtModRelFalhas = 32 ;
               Constante      TxtModSolAlt    = 33 ;
               Constante      TxtModAltEmergnc= 34 ;
               Constante      TxtModAltFeitas = 35 ;

            /* Estrutura de dados Constantes para classes */

               Constante      AliasClasseLocal     = 10 ;
               Constante      AliasClasseComp      = 11 ;
               Constante      AliasClasseVarEstado = 13 ;


               Constante      TxtDclClassePubl     = 10 ;
               Constante      TxtDclClasseProt     = 11 ;
               Constante      TxtDclClassePriv     = 12 ;

               Constante      TxtClasseCabec       = 18 ;
               Constante      TxtClasseNome        = 19 ;
               Constante      TxtClasseCabecMapa   = 22 ;
               Constante      TxtClasseMapaAdic    = 23 ;

               Constante      TxtDclClasseIniLoc   = 20 ;
               Constante      TxtDclClasseIniExp   = 21 ;

               Constante      TxtClasseRelFalhas   = 32 ;
               Constante      TxtClasseSolAlt      = 33 ;
               Constante      TxtClasseAltEmergnc  = 34 ;
               Constante      TxtClasseAltFeitas   = 35 ;

            /* Estrutura de dados Constantes para pacotes */

               Constante      AliasInline          = 10 ;
               Constante      AliasVirtualPuro     = 11 ;
               Constante      AliasDebug           = 12 ;

               Constante      TxtPactEntra         = 21 ;
               Constante      TxtPactIntfUsu       = 22 ;
               Constante      TxtPactSai           = 23 ;

               Constante      TxtPactGlobalEntra   = 31 ;
               Constante      TxtPactImportEntra   = 32 ;
               Constante      TxtPactArqEntra      = 33 ;
               Constante      TxtPactEstadoEntra   = 34 ;
               Constante      TxtPactEncapsEntra   = 35 ;
               Constante      TxtPactIntfUsuComd   = 36 ;
               Constante      TxtPactIntfUsuDados  = 37 ;
               Constante      TxtPactIntfUsuRelat  = 38 ;
               Constante      TxtPactIntfUsuMsg    = 39 ;
               Constante      TxtPactIntfUsuFBack  = 40 ;
               Constante      TxtPactParmSai       = 41 ;
               Constante      TxtPactGlobSai       = 42 ;
               Constante      TxtPactImportSai     = 43 ;
               Constante      TxtPactArqSai        = 44 ;
               Constante      TxtPactEstadoSai     = 45 ;
               Constante      TxtPactEncapsSai     = 46 ;

               Constante      TxtPactRelFalhas     = 27 ;
               Constante      TxtPactSolAlt        = 28 ;
               Constante      TxtPactAltEmergnc    = 29 ;
               Constante      TxtPactAltFeitas     = 30 ;

            /* Estrutura de dados Constantes para blocos programa */

               Constante      AliasDiag       = 11 ;
               Constante      AliasBlcDbg     = 12 ;
               Constante      AliasPrepara    = 13 ;

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

               Constante      AliasDadoExport = 11 ;

               Constante      TxtTipoDado     = 13 ;
               Constante      TxtDclMedida    = 14 ;
               Constante      TxtDclValido    = 15 ;
               Constante      TxtDclFim       = 16 ;
               Constante      TxtDclCabec     = 18 ;

               Constante      TxtDclAssert    = 21 ;
               Constante      TxtDclRepet     = 22 ;

               Constante      TxtDclDado      = 25 ;
               Constante      TxtDclInic      = 26 ;

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
      /* Dado do bloco Declara‡„o das constantes ¡ndices de ali s */



         Constante AliasInxDesc     =   5 ;
         Constante AliasPapel       =   5 ;

         Constante AliasTamTot      =  13 ;
         Constante AliasNomeCodigo  =  15 ;
         Constante AliasTamFrac     =  16 ;

         Constante AliasIntfEnt     = 100 ;
         Constante AliasIntfRelat   = 101 ;
         Constante AliasTipoInt     = 104 ;
         Constante AliasTipoLogico  = 106 ;
         Constante AliasTipoData    = 107 ;
         Constante AliasTipoChar    = 111 ;

      /* Dado do bloco Declara‡„o das constantes ¡ndice de texto */

         Constante TxtRestrIntegr   =  11 ;
         Constante TxtMedidaAtrib   =  14 ;
         Constante TxtValoresAtrib  =  15 ;
         Constante TxtCodValid      =  16 ;
         Constante TxtCodProc       =  17 ;

      /* Dado do bloco Listas para a linearizacao */

         Fila         ListaEntra   ;
         Fila         ListaSai     ;
         Fila         ListaSemDir  ;
         ConjuntoFila ListaDupla   ;

      FimDecl

      /* Corpo de Especificar entidades e relacionamentos */

         /* Declara‡„o das constantes ¡ndices de ali s */

         /* Declara‡„o das constantes ¡ndice de texto */

         /* Listas para a linearizacao */
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: Criar Entidades *****/

   InicFrm "Criar entidade"

   /* Corpo de Criar Entidades */

      Titulo "Nome da entidade: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla:            " ;
      NaoAvLin ;
      Alias AliasSigla ;
      Titulo "                  ÃÄÄÄÄÄÄÄÄÃÄÄÄÄÄÄÄÄ" ;
      Titulo "Identificador:    " ;
      NaoAvLin ;
      Alias AliasIdent ;
      Titulo "Nome de c¢digo:   " ;
      NaoAvLin ;
      Alias AliasNomeCodigo ;
   FimFrm

/***** Formul rio: Criar cardinalidade *****/

   InicFrm "Criar cardinalidade"

   /* Corpo de Criar cardinalidade */

      Titulo "Cardinalidade: " ;
      NaoAvLin ;
      Nome ;
      Titulo "               ÃÄÄÄ" ;
      Titulo "Descrição" ;
      Texto TxtDescr ;
   FimFrm

/***** Formul rio: Criar Relacionamentos *****/

   InicFrm "Criar relacionamento"

   /* Corpo de Criar Relacionamentos */

      Titulo "Nome do relacionamento: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla:                  " ;
      NaoAvLin ;
      Alias AliasSigla ;
      Titulo "                        ÃÄÄÄÄÄÄÄÄÃÄÄÄÄÄÄÄÄ" ;
      Titulo "Identificador:          " ;
      NaoAvLin ;
      Alias AliasIdent ;
      Titulo "Nome de c¢digo:   " ;
      NaoAvLin ;
      Alias AliasNomeCodigo ;
   FimFrm

/***** Formul rio: Criar entidades Liga‡„o *****/

   InicFrm "Criar entidade de ligacao"

   /* Corpo de Criar entidades Liga‡„o */

      Titulo "Nome da entidade de liga‡„o: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla:                       " ;
      NaoAvLin ;
      Alias AliasSigla ;
      Titulo "                             ÃÄÄÄÄÄÄÄÄÄÄÃÄÄÄÄÄÄÄÄÄÄ" ;
      Titulo "Identificador:               " ;
      NaoAvLin ;
      Alias AliasIdent ;
      Titulo "Nome de c¢digo:   " ;
      NaoAvLin ;
      Alias AliasNomeCodigo ;
   FimFrm

/***** Formul rio: Criar Categorias *****/

   InicFrm "Criar categoria"

   /* Corpo de Criar Categorias */

      Titulo "Nome da categoria: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla:             " ;
      NaoAvLin ;
      Alias AliasSigla ;
   FimFrm

/***** Formul rio: Criar Requisito n„o funcional *****/

   InicFrm "Criar requisito n„o funcional"

   /* Corpo de Criar Requisito n„o funcional */

      Titulo "Nome do requisito n„ao funcional: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla:                            " ;
      NaoAvLin ;
      Alias AliasSigla ;
   FimFrm

/***** Formul rio: Criar compoSi‡„o *****/

   InicFrm "Criar composicao"

   /* Corpo de Criar compoSi‡„o */

      Titulo "Nome da composi‡„o: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla               " ;
      NaoAvLin ;
      Alias AliasSigla ;
      Titulo "                    ÃÄÄÄÄÄÄÄÄ" ;
   FimFrm

/***** Formul rio: Criar Banco de dados *****/

   InicFrm "Criar banco"

   /* Corpo de Criar Banco de dados */

      Titulo "Nome do banco de dados: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar arQuivos *****/

   InicFrm "Criar Arquivo"

   /* Corpo de Criar arQuivos */

      Titulo "Nome do arquivo: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Identificador:   " ;
      NaoAvLin ;
      Alias AliasIdent ;
   FimFrm

/***** Formul rio: Criar esPa‡os *****/

   InicFrm "Criar espaco"

   /* Corpo de Criar esPa‡os */

      Titulo "Nome do espa‡o: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Indices *****/

   InicFrm "Criar indice"

   /* Corpo de Criar Indices */

      Titulo "Nome do ¡ndice: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Identificador:  " ;
      NaoAvLin ;
      Alias AliasIdent ;
   FimFrm

/***** Formul rio: Criar Vistas *****/

   InicFrm "Criar Vista"

   /* Corpo de Criar Vistas */

      Titulo "Nome da Vista: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar interFaces *****/

   InicFrm "Criar interface"

   /* Corpo de Criar interFaces */

      Titulo "Nome da interface: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Identificador:     " ;
      Alias AliasIdent ;
   FimFrm

/***** Formul rio: Criar Janelas *****/

   InicFrm "Criar janela"

   /* Corpo de Criar Janelas */

      Titulo "Nome da janela: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Editar Entidades *****/

   InicFrm "Editar entidade"

   /* Corpo de Editar Entidades */

      /* Editar cabe‡alho de entidade */

         Endenta 3 ;
         Frm "Criar entidade" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o de entidade */

         Frm "Editar especifica‡„o" ;
         Titulo "Restri‡”es de integridade da entidade" ;
         Texto TxtRestrIntegr ;

      /* Atributos da entidade */

         Titulo "Atributos definidos na entidade" ;
         AvMrgEsq 3 ;
         Rela‡„o Dados ;
         AvMrgEsq -3 ;

      /* Exibir propriedades de relacionamentos */

         Titulo "Relacionamentos definidos no diagrama" ;
         AvMrgEsq 3 ;
         Frm "Exibir liga‡”es" ;
         AvMrgEsq -3 ;

      /* Relacionamentos com classes */

         Titulo "Relacionamentos com outras classes de objetos" ;
         AvMrgEsq 3 ;
         Titulo "Classes a que corresponde" ;
         Rela‡„o Classes ;
         Titulo "MÉetodos" ;
         ParaTodos Classes Faz
            Titulo "Da classe " ;
            NaoAvLin ;
            Nome ;
            AvMrgEsq 3 ;
              Relacao Pacotes ;
            AvMrgEsq -3 ;
         Fim ; /* ParaTodos */
         AvMrgEsq -3 ;

      /* Editar dados simples */

         ParaTodos Dados Faz
            Frm "Editar dados simples" ;
         Fim ; /* ParaTodos */
         ParaTodos Classes Faz
            ParaTodos Dados Faz
               Frm "Editar dados simples" ;
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: Editar dado de entidade *****/

   InicFrm "Editar dados simples"
      /* Dado do bloco #Tratar bloco de dados simples */

         L¢gico EhMembro ; /* indica se ‚ mebro de uma classe */

      /* Dado do bloco #Identificar se dado pertence a alguma classe */

         Objeto DadoCorr ;
         L¢gico TemPai ;

      FimDecl

   /* Editar dado de entidade */

      /* #Obter nome da estrutura de dados */

         Frm "Criar dado" ;
         Endenta 3 ;

      /* #Tratar bloco de dados simples */

         /* #Identificar se dado pertence a alguma classe */

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

               Se Existe( [ Rela‡„o Classes ] ) Ent„o
                  EhMembro = Verdadeiro ;
               Sen„o
               Fim ;
            Fim ;

         /* #C¢digo de declara‡„o dos dados */

            Titulo "C¢digo de declara‡„o do bloco estrutura de dados" ;
            AvMrgEsq 3 ;
            Titulo "Texto de declaração" ;
            Texto TxtDclDado ;
            Titulo "Texto de inicializa‡„o" ;
            Texto TxtDclInic ;
            AvMrgEsq -3 ;

         /* #Editar se dado ‚ est tico ou n„o */

            Se EhMembro Ent„o

               AvMrgEsq 3 ;
               Titulo "Marque se dado ‚ est tico : " ;
               N„oAvLin ;
               Alias AliasDadoExport ;
               AvMrgEsq -3 ;

            Sen„o
            Fim ;

         /* #Editar tipo de acesso para blocos estrutura */

            Se   Existe( [ Rela‡„o Classes   ] )
              Ou Existe( [ Relacao Entidades ] )
            Ent„o

               AvMrgEsq 3 ;
               Titulo "Selecione a visibilidade do dado" ;
               AvMrgEsq 3 ;
               Titulo "P£blico   :" ;
               N„oAvLin ;
               Alias AliasPublico ;
               Titulo "Protegido :" ;
               N„oAvLin ;
               Alias AliasProtegido ;
               Titulo "Privado   :" ;
               N„oAvLin ;
               Alias AliasPrivado ;
               AvMrgEsq -6 ;

            Sen„o
            Fim ;
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
            Titulo "Tipos filho" ;
            Relacao Decomp ;
         Sen„o
         Fim ; /* Se */

      /* Editar especifica‡„o do tipo */

         Titulo "Especifica‡„o do tipo" ;
         AvMrgEsq 3 ;
         Titulo "Descri‡„o do tipo" ;
         Texto TxtDescr ;
         Titulo "Requisitos do tipo, condi‡”es de armazenamento asseguradas" ;
         Texto TxtRequis ;
         Titulo "Hip¢teses do tipo, condi‡”es de armazenamento assumidas" ;
         Texto TxtHipot ;
         Titulo "Observa‡”es" ;
         Texto TxtObserv ;
         AvMrgEsq -3 ;

      /* Editar cabe‡alho do tipo */

         Titulo "Estruturas de dados corpo do tipo" ;
         AvMrgEsq 3 ;
         ParaTodos Dados Faz
            Titulo "Estrutura de dados raiz: " ;
            NaoAvLin ;
            Nome ;
            Titulo "Cabe‡alho da declara‡„o" ;
            Texto TxtDclCabec ;
            Titulo "Complemento da declara‡„o" ;
            Texto TxtDclFim ;
         Fim ;
         AvMrgEsq -3 ;

      /* Editar tipo de acesso para tipos */

         Se Existe( [ Rela‡„o Classes ] ) Ent„o

            Titulo "Visibilidade do tipo" ;
            AvMrgEsq 3 ;
            Titulo "P£blico   :" ;
            N„oAvLin ;
            Alias AliasPublico ;
            Titulo "Protegido :" ;
            N„oAvLin ;
            Alias AliasProtegido ;
            Titulo "Privado   :" ;
            N„oAvLin ;
            Alias AliasPrivado ;
            AvMrgEsq -3 ;
            Titulo "" ;

         Sen„o
         Fim ;

      /* Editar navega‡„o do tipo para outros objetos */

         Titulo "Relacionamentos do tipo de dados" ;
         AvMrgEsq 3 ;
         Titulo "Rela‡„o das classes nas quais o tipo ‚ membro" ;
         Rela‡„o Classes ;
         Titulo "Rela‡„o dos m¢dulos nos quais este tipo ‚ interface" ;
         Rela‡„o InterfaceModulo ;
         Titulo "Rela‡„o dos m¢dulos que utilizam este tipo" ;
         Rela‡„o Modulos ;
         Titulo "Rela‡„o das estrututras de dados que referenciam o tipo" ;
         Rela‡„o Chamado ;
         Titulo "Rela‡„o das estruturas de dado corpo do tipo" ;
         Rela‡„o Dados ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome tipo *****/

   InicFrm "Criar tipo"

   /* Corpo de CPP Criar/editar nome tipo */

      Titulo "Nome do tipo de dados: " ;
      NaoAvLin ;
      Nome ;
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

      /* Obter nome da estrutura de dados */

         Frm "Criar dado" ;
         Endenta 3 ;

      /* Exibir laudo de estrutura de dados */

         Frm "Exibir texto laudo" ;

      /* Diferenciar dado simples de dado corpo de tipo */

         Se Existe( [ Rela‡„o Tipos ] ) Ent„o

         /* Tratar bloco raiz de corpo de tipo */

            ParaTodos Tipos Faz
               Frm "Editar tipo" ;
            Fim ;

            Titulo "Rela‡„o de blocos estrutura de dados filho" ;
            Rela‡„o Decomp ;

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

                  Se Existe( [ Rela‡„o Classes ] ) Ent„o
                     EhMembro = Verdadeiro ;
                  Sen„o
                  Fim ;
               Fim ;

            /* C¢digo de declara‡„o dos dados */

               Titulo "C¢digo de declara‡„o do bloco estrutura de dados" ;
               AvMrgEsq 3 ;
               Titulo "Texto de declara‡”es de dados elementares" ;
               Texto TxtDclDado ;
               Titulo "Texto de inicializa‡„o do £ltimo dado elementar" ;
               Texto TxtDclInic ;
               Titulo "Rela‡„o dos tipos declaradores dos dados elementares" ;
               Rela‡„o Chama ;
               Titulo "Rela‡„o de blocos estrutura de dados filho" ;
               Rela‡„o Decomp ;
               AvMrgEsq -3 ;

            /* Editar se dado ‚ est tico ou n„o */

               Se EhMembro Ent„o

                  AvMrgEsq 3 ;
                  Titulo "Dado ‚ est tico : " ;
                  N„oAvLin ;
                  Alias AliasDadoExport ;
                  Titulo "" ;
                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Editar tipo de acesso para blocos estrutura */

               Se Existe( [ Rela‡„o Classes ] ) Ent„o

                  AvMrgEsq 3 ;
                  Titulo "Visibilidade do dado" ;
                  AvMrgEsq 3 ;
                  Titulo "P£blico   :" ;
                  N„oAvLin ;
                  Alias AliasPublico ;
                  Titulo "Protegido :" ;
                  N„oAvLin ;
                  Alias AliasProtegido ;
                  Titulo "Privado   :" ;
                  N„oAvLin ;
                  Alias AliasPrivado ;
                  AvMrgEsq -6 ;

               Sen„o
               Fim ;
         Fim ;

      /* Editar especifica‡„o da estrutura de dados */

         Titulo "Especifica‡„o da estrutura de dados" ;
         AvMrgEsq 3 ;
         Titulo "Descri‡„o da estrutura de dados" ;
         Texto TxtDescr ;
         Titulo "Requisitos da estrutura de dados" ;
         Texto TxtRequis ;
         Titulo "Hip¢teses da estrutura de dados" ;
         Texto TxtHipot ;
         Titulo "Observa‡”es" ;
         Texto TxtObserv ;
         AvMrgEsq -3 ;

      /* Verificar se dado ‚ composto ou elementar */

         Se Existe( [ Rela‡„o Decomp ] ) Ent„o

         /* Editar especifica‡„o de dado composto */

            Titulo "Dado composto" ;
            AvMrgEsq 3 ;
            Titulo "Assertiva estrutural" ;
            Texto TxtDclAssert ;
            AvMrgEsq -3 ;

         Sen„o

         /* Editar especifica‡„o de dado elementar */

            Titulo "Dado elementar" ;
            AvMrgEsq 3 ;
            Titulo "Medida (tipo essencial) do dado elementar" ;
            Texto TxtDclMedida ;
            Titulo "Valores v lidos para dado elementar, se enumera‡„o" ;
            Texto TxtDclValido ;
            Titulo "Assertiva estrutural, processo de valida‡„o do dado elementar" ;
            Texto TxtDclAssert ;
            AvMrgEsq -3 ;
         Fim ;

      /* Editar rela‡”es de navega‡„o do bloco estrutura de dados */

         Titulo "Relacionamentos da estrutura de dados" ;
         AvMrgEsq 3 ;
         Titulo "Rela‡„o dos m¢dulos nos quais este bloco estrutura ‚ interno" ;
         Rela‡„o Modulos ;
         Titulo "Rela‡„o dos m¢dulos nos quais este bloco estrutura ‚ interface" ;
         Rela‡„o InterfaceModulo ;
         Titulo "Rela‡„o das classes nas quais o dado ‚ membro" ;
         Rela‡„o Classes ;
         Titulo "Rela‡„o dos tipos dos quais este bloco estrutura ‚ corpo" ;
         Rela‡„o Tipos ;
         Titulo "Rela‡„o dos blocos programa que declaram" ;
         Rela‡„o DeclaradosEm ;
         Titulo "Rela‡„o dos blocos pai" ;
         Rela‡„o Comp ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPEDT Criar/editar nome dado *****/

   InicFrm "Criar dado"

   /* Corpo de CPP Criar/editar nome dado */

      Titulo "Nome do bloco estrutura de dado: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Sigla                          : " ;
      NaoAvLin ;
      Alias AliasSigla ;
   FimFrm

/***** Formul rio: CPPEDT Exibir laudo *****/

   InicFrm "Exibir texto laudo"

   /* Corpo de CPP Exibir texto laudo */

      Se Existe( [ Texto TxtLaudo ] )
      Entao
         Titulo "Laudo de valida‡„o" ;
         TextoLaudo ;
      Senao
      Fim ;
   FimFrm

/***** Formul rio: Exibir liga‡”es do diagrama *****/

   InicFrm "Exibir liga‡”es"
      /* Dado do bloco Corpo de Exibir liga‡”es do diagrama */

         Objeto Origem ;

      FimDecl

   /* Corpo de Exibir liga‡”es do diagrama */

      Esvazialista( ListaEntra )  ;
      EsvaziaLista( ListaSai ) ;
      EsvaziaLista( ListaSemDir ) ;
      EsvaziaLista( ListaDupla ) ;

      ParaTodos InstsObjeto Faz

      /* Monta as listas de ligações */

         Origem = Corrente ;
         ParaTodos LigsInstancia Faz
            Se ModoLig( Corrente ) == 0
            Entao
               InsereObj( ListaSemDir , Corrente ) ;
            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */

         ParaTodos LigsSai  Faz
            Se ModoLig( Corrente ) != 3
            Entao
               InsereObj( ListaSai , Corrente ) ;
            Senao
               InsereObj( ListaDupla , Corrente ) ;
            Fim ; /* Se */
         Fim ; /* ParaTodos */
         ParaTodos LigsEntra  Faz
            Se ModoLig( Corrente ) != 3
            Entao
               InsereObj( ListaEntra , Corrente ) ;
            Senao
            Fim ; /* Se */
         Fim ; /* ParaTodos */

      /* Tratar ligações sem direção */

         Se Nao ListaVazia( ListaSemDir )
         Entao
            Titulo "Ligação sem direção na entidade" ;
            ParaTodos ListaSemDir Faz
               ComObjeto OutraPonta( Corrente, Origem ) Faz
                  Nome ;
               Fim ; /* ComObjeto */
            Fim ; /* ParaTodos */
         Senao
         Fim ; /* Se */

      /* Tratar ligações saindo */

         Se Nao ListaVazia( ListaSai )
         Entao
            Titulo "Entidades referenciadas" ;
            ParaTodos ListaSai Faz
               ComObjeto OutraPonta( Corrente, Origem ) Faz
                  Nome ;
               Fim ; /* ComObjeto */
               Se ExisteObj( RotuloLig( Corrente ))
               Entao
                  ComObjeto RotuloLig( Corrente ) Faz
                     NaoAvLin ;
                     Titulo " modo " ;
                     NaoAvLin ;
                     Nome ;
                     Se Existe( [ Texto TxtDescr ] )
                     Entao
                        AvMrgEsq 6 ;
                        Texto TxtDescr ;
                        AvMrgEsq -6 ;
                     Senao
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Senao
               Fim ; /* Se */
            Fim ; /* ParaTodos */
         Senao
         Fim ; /* Se */

      /* Tratar ligações entrando */

         Se Nao ListaVazia( ListaEntra )
         Entao
            Titulo "É referenciado pelas entidades" ;
            ParaTodos ListaEntra Faz
               ComObjeto OutraPonta( Corrente, Origem ) Faz
                  Nome ;
               Fim ; /* ComObjeto */
               Se ExisteObj( RotuloLig( Corrente ))
               Entao
                  ComObjeto RotuloLig( Corrente ) Faz
                     NaoAvLin ;
                     Titulo " modo " ;
                     NaoAvLin ;
                     Nome ;
                     Se Existe( [ Texto TxtDescr ] )
                     Entao
                        AvMrgEsq 6 ;
                        Texto TxtDescr ;
                        AvMrgEsq -6 ;
                     Senao
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Senao
               Fim ; /* Se */
            Fim ; /* ParaTodos */
         Senao
         Fim ; /* Se */

      /* Tratar ligações duplas */

         Se Nao ListaVazia( ListaDupla )
         Entao
            Titulo "Referencia dupla" ;
            ParaTodos ListaDupla Faz
               ComObjeto OutraPonta( Corrente, Origem ) Faz
                  Nome ;
               Fim ; /* ComObjeto */
               Se ExisteObj( RotuloLig( Corrente ))
               Entao
                  ComObjeto RotuloLig( Corrente ) Faz
                     NaoAvLin ;
                     Titulo " modo " ;
                     NaoAvLin ;
                     Nome ;
                     Se Existe( [ Texto TxtDescr ] )
                     Entao
                        AvMrgEsq 6 ;
                        Texto TxtDescr ;
                        AvMrgEsq -6 ;
                     Senao
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Senao
               Fim ; /* Se */
            Fim ; /* ParaTodos */
         Senao
         Fim ; /* Se */
      Fim ;
   FimFrm

/***** Formul rio: Editar Relacionamentos *****/

   InicFrm "Editar relacionamento"
      /* Dado do bloco Editar defini‡„o de relacionamento */

         Objeto ObjOrg ;

      FimDecl

   /* Corpo de Editar Relacionamentos */

      /* Editar cabe‡alho de relacionamento */

         Endenta 3 ;
         Frm "Criar relacionamento" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o do relacionamento */

         Frm "Editar especifica‡„o" ;
         Titulo "Restri‡”es de integridade do relacionamento" ;
         Texto TxtRestrIntegr ;

      /* Editar defini‡„o de relacionamento */

         Titulo "Chaves estrangeiras" ;
         AvMrgEsq 3 ;

         ParaTodos InstsObjeto Faz
            ObjOrg = Corrente ;
            ParaTodos LigsInstancia Faz
               FrmElem RotuloLig( Corrente )
                       "Exibir Cardinalidade"( ObjOrg , Corrente ) ;
            Fim ;
         Fim ;
         AvMrgEsq -3 ;

         Titulo "Atributos do relacionamento" ;
         Rela‡„o Dados ;
         Titulo "Dep¢sitos de dados associados ao relacionamento" ;
         Rela‡„o Depositos ;
         Titulo "Processos associados ao relacionamento" ;
         Rela‡„o Processos ;
         Titulo "Indices de acesso direto nos quais est„o as chaves do relacionamento" ;
         Rela‡„o Indices ;
         Titulo "Visoes a que pertence o relacionamento" ;
         Rela‡„o Visoes ;
         Titulo "Espa‡o de dados em que reside o relacionamento" ;
         Rela‡„o Espacos ;

      /* Editar defini‡„o dos atributos do relacionamento */

         /* Frm "Editar defini‡„o dos atributos da entidade" ; */
   FimFrm

/***** Formul rio: Editar entidades Liga‡„o *****/

   InicFrm "Editar entidade de ligacao"

   /* Corpo de Editar entidades Liga‡„o */

      /* Editar cabe‡alho de entidade de liga‡„o */

         Endenta 3 ;
         Frm "Criar entidade de ligacao" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o de entidade de liga‡„o */

         Frm "Editar especifica‡„o" ;

      /* Editar atributos da entidade de liga‡„o */

         Titulo "Chaves determinantes" ;
         Rela‡„o ChavesDet ;
         Titulo "Chaves estrangeiras" ;
         ParaTodos InstsObjeto Faz
            ParaTodos InstsLigadas Faz
               ParaTodos ChavesDetEntid Faz
                  Nome ;
               Fim ;
            Fim ;
         Fim ;
         Titulo "Atributos" ;
         Rela‡„o Dados ;

      /* Editar rela‡”es da entidade de liga‡„o com outra */

         Titulo "Entidades de liga‡„o das quais ‚ categoria" ;
         Rela‡„o EhCategoria ;
         Titulo "Entidades de liga‡„o que como categoria" ;
         Rela‡„o TemCategoria ;
         Titulo "Entidades de liga‡„o em que se decomp”e" ;
         Rela‡„o Decomp ;
         Titulo "Entidades de liga‡„o que comp”e" ;
         Rela‡„o Comp ;
         Titulo "Dep¢sitos de dados associados com a entidade de liga‡„o" ;
         Rela‡„o Depositos ;
   FimFrm

/***** Formul rio: Editar cardinalidade *****/

   InicFrm "Editar cardinalidade"

   /* Corpo de Editar cardinalidade */

      /* Editar cabe‡alho de cardinalidade */

         Frm "Criar cardinalidade" ;
   FimFrm

/***** Formul rio: Editar Categorias *****/

   InicFrm "Editar categoria"
      /* Dado do bloco Exibir lista de categoriza‡„o */

         Fila   ObjRaiz ;
         Fila   ObjHerda ;
         Objeto ObjCateg ;

      FimDecl

   /* Corpo de Editar Categorias */

      /* Editar cabe‡alho de categoria */

         Endenta 3 ;
         Frm "Criar categoria" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o de categoria */

         Titulo "Descri‡„o informal" ;
         Texto  TxtDescr ;

      /* Exibir lista de categoriza‡„o */

         EsvaziaLista( ObjRaiz ) ;
         EsvaziaLista( ObjHerda ) ;
         ParaTodos InstsObjeto Faz
            ObjCateg = Corrente ;
            ParaTodos LigsEntra Faz
               ComObjeto OutraPonta( Corrente , ObjCateg ) Faz
                  InsereObj( ObjHerda , Corrente ) ;
               Fim ;
            Fim ;
            ParaTodos LigsSai Faz
               ComObjeto OutraPonta( Corrente , ObjCateg ) Faz
                  InsereObj( ObjRaiz , Corrente ) ;
               Fim ;
            Fim ;
         Fim ;
         Se ListaVazia( ObjHerda )
         Entao
            Titulo "!! N„o define quem herda !!" ;
         Senao
            Titulo "As entidades" ;
            ParaTodos ObjHerda Faz
               Nome ;
            Fim ;
         Fim ;
         Se ListaVazia( ObjRaiz )
         Entao
            Titulo "!! N„o define de quem herda !!" ;
         Senao
            Titulo "herdam de" ;
            ParaTodos ObjRaiz Faz
               Nome ;
            Fim ;
         Fim ;
   FimFrm

/***** Formul rio: Editar Requisito n„o funcional *****/

   InicFrm "Editar requisito n„o funcional"

   /* Corpo de Editar Requisito n„o funcional */

      /* Editar cabe‡alho de req. n„o funcional */

         Endenta 3 ;
         Frm "Criar requisito n„o funcional" ;
         Frm "Exibir laudo" ;

      /* Editar espec de req n„o funcional */

         Frm "Editar especifica‡„o" ;
   FimFrm

/***** Formul rio: Editar compoSi‡„o *****/

   InicFrm "Editar composicao"
      /* Dado do bloco Exibir lista de composi‡„o */

         Fila   ObjRaiz ;
         Fila   ObjHerda ;
         Objeto ObjCateg ;

      FimDecl

   /* Corpo de Editar compoSi‡„o */

      /* Editar cabe‡alho composi‡„o */

         Endenta 3 ;
         Frm "Criar composi‡„o" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o de composi‡„o */

         Titulo "Descri‡„o informal" ;
         Texto TxtDescr ;

      /* Exibir lista de composi‡„o */

         EsvaziaLista( ObjRaiz ) ;
         EsvaziaLista( ObjHerda ) ;
         ParaTodos InstsObjeto Faz
            ObjCateg = Corrente ;
            ParaTodos LigsEntra Faz
               ComObjeto OutraPonta( Corrente , ObjCateg ) Faz
                  InsereObj( ObjHerda , Corrente ) ;
               Fim ;
            Fim ;
            ParaTodos LigsSai Faz
               ComObjeto OutraPonta( Corrente , ObjCateg ) Faz
                  InsereObj( ObjRaiz , Corrente ) ;
               Fim ;
            Fim ;
         Fim ;
         Se ListaVazia( ObjHerda )
         Entao
            Titulo "!! N„o define quem comp”e !!" ;
         Senao
            Titulo "Os elementos" ;
            ParaTodos ObjHerda Faz
               Nome ;
            Fim ;
         Fim ;
         Se ListaVazia( ObjRaiz )
         Entao
            Titulo "!! N„o define de quem ‚ componente !!" ;
         Senao
            Titulo "comp”em" ;
            ParaTodos ObjRaiz Faz
               Nome ;
            Fim ;
         Fim ;
   FimFrm

/***** Formul rio: Editar Banco de dados *****/

   InicFrm "Editar banco"

   /* Corpo de Editar Banco de dados */

      /* Editar cabe‡alho do banco de dados */

         Endenta 3 ;
         Frm "Criar banco" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o do banco de dados */

         Frm "Editar especifica‡„o" ;

      /* Editar espa‡os do banco de dados */

         Titulo "Espa‡os tornados dispon¡veis pelo banco de dados" ;
         Rela‡„o Espa‡os ;
   FimFrm

/***** Formul rio: Editar arQuivos *****/

   InicFrm "Editar arquivo"

   /* Corpo de Editar arQuivos */

      /* Editar nome do arquivo */

         Endenta 3 ;
         Frm "Criar arquivo" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o do arquivo */

         Frm "Editar especifica‡„o" ;
   FimFrm

/***** Formul rio: Editar esPa‡os *****/

   InicFrm "Editar espaco"

   /* Corpo de Editar esPa‡os */

      /* Editar cabe‡alho de espa‡o */

         Endenta 3 ;
         Frm "Criar espaco" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o de espa‡o */

         Frm "Editar especifica‡„o" ;

      /* Editar propriedades do espa‡o */

         Titulo "Banco de dado que tornam dispon¡veis o espa‡o" ;
         Rela‡„o Bancos ;
         Titulo "Entidades que figuram no espa‡o" ;
         Rela‡„o Entidades ;
         Titulo "Relacionamentos que figuram no espa‡o" ;
         Rela‡„o Relacionamentos ;
   FimFrm

/***** Formul rio: Editar Indices *****/

   InicFrm "Editar indice"

   /* Corpo de Editar Indices */

      /* Editar cabe‡alho de ¡ndice */

         Endenta 3 ;
         Frm "Criar ¡ndice" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o do ¡ndice */

         Frm "Editar especifica‡„o" ;

      /* Editar defini‡„o do ¡ndice */

         Titulo "Indice descendente : ( " ;
         NaoAvLin ;
         Alias AliasInxDesc ;
         NaoAvLin ;
         Titulo " )" ;

         Titulo "Entidade indexada pelo ¡ndice" ;
         Rela‡„o Entidades ;
         Titulo "Entidade liga‡„o indexada pelo ¡ndice" ;
         Rela‡„o EntidLigacao ;
         Titulo "Relacionamento indexado pelo ¡ndice" ;
         Rela‡„o Relacionamentos ;
         Titulo "Campos de dados associados" ;
         Rela‡„o Dados ;
   FimFrm

/***** Formul rio: Editar Vistas *****/

   InicFrm "Editar Vista"

   /* Corpo de Editar Vistas */

      /* Editar cabe‡alho da vista */

         Endenta 3 ;
         Frm "Criar vista" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o da vista */

         Frm "Editar especifica‡„o" ;

      /* Editar defini‡„o da vista */

         Titulo "Entidade contidas na vis„o" ;
         Rela‡„o Entidades ;
         Titulo "Relacionamento contidos na vis„o" ;
         Rela‡„o Relacionamentos ;
         Titulo "Campos de dados contidos na vis„o" ;
         Rela‡„o Dados ;
   FimFrm

/***** Formul rio: Editar interFaces *****/

   InicFrm "Editar interface"

   /* Corpo de Editar interFaces */

      /* Editar cabe‡alho de interface */

         Endenta 3 ;
         Frm "Criar interface" ;
         Frm "Exibir laudo" ;

      /* Editar natureza da interface */

         Titulo "Tipo de interface: Entrada " ;
         NaoAvLin ;
         TamCampo 2 ;
         Alias AliasIntfEnt ;
         NaoAvLin ;
         Titulo "Relat¢rio " ;
         NaoAvLin ;
         TamCampo 2 ;
         Alias AliasIntfRelat ;

      /* Editar especifica‡„o da interface */

         Frm "Editar especifica‡„o" ;

      /* Editar defini‡„o da interface */

         Titulo "Interfaces externas das quais ‚ componente" ;
         Rela‡„o Comp ;
         Titulo "Interfaces externas em que se decomp”e" ;
         Rela‡„o Decomp ;
         Titulo "Janelas em que se decomp”e" ;
         Rela‡„o Janelas ;
   FimFrm

/***** Formul rio: Editar Janelas *****/

   InicFrm "Editar janela"

   /* Corpo de Editar Janelas */

      /* Editar cabe‡alho da janela */

         Frm "Criar janela" ;
         Titulo "" ;

      /* Editar defini‡„o da janela */

         Titulo "Interfaces a que pertence" ;
         Rela‡„o Interfaces ;
         Titulo "Entidade visualizadas na janela" ;
         Rela‡„o Entidades ;
         Titulo "Entidade liga‡„o visualizadas na janela" ;
         Rela‡„o EntidLigacao ;
         Titulo "Relacionamentos visualizados na janela" ;
         Rela‡„o Relacionamentos ;
         Titulo "Dados visualizados na janela" ;
         Rela‡„o Dados ;
   FimFrm

/***** Formul rio: Editar especifica‡„o do objeto *****/

   InicFrm "Editar especifica‡„o"

   /* Corpo de Editar especifica‡„o do objeto */

      /* Editar descri‡„o */

         /*
         T¡tulo "Especifica‡„o essencial" ;
         AvMrgEsq 3 ;
         */

         T¡tulo "Descri‡„o" ;
         Texto  TxtDescr ;

      /* Editar requisitos */

         /*
         T¡tulo "Objetivos" ;
         Texto  TxtObjt     ;
         T¡tulo "Requisitos" ;
         Texto  TxtRequis   ;
         T¡tulo "Hip¢teses" ;
         Texto  TxtHip¢t    ;
         */

      /* Editar restri‡”es */

         /*
         T¡tulo "Restri‡”es de projeto" ;
         Texto  TxtRestrProj ;
         T¡tulo "Restri‡”es devidos … implementa‡„o" ;
         Texto  TxtRestrImpl ;
         */

      /* Editar observa‡”es */

         /*
         T¡tulo "Observa‡”es" ;
         Texto  TxtObserv     ;
         */
   FimFrm

/***** Formul rio: Exibir cardinalidades de relacionamentos *****/

   InicFrm "Exibir Cardinalidade"( Objeto Origem , Objeto Ligacao )

   /* Corpo de Exibir cardinalidades de relacionamentos */

      Se ExisteObj( Corrente )
      Entao
         Titulo "Com cardinalidade " ;
         NaoAvLin ;
         Nome ;
      Senao
         Titulo "!! Sem cardinalidade !! " ;
      Fim ;

      ComObjeto OutraPonta( Ligacao , Origem ) Faz
         NaoAvLin ;
         Titulo " relaciona a " ;
         NaoAvLin ;
         Nome ;
      Fim ;

      Se ExisteObj( Corrente )
      Entao
         Se Existe( [ Alias AliasPapel ] )
         Entao
            Titulo "Papel ‚: " ;
            NaoAvLin ;
            Alias AliasPapel ;
         SeNao
         Fim ;
      Senao
      Fim ;
   FimFrm

/***** Formul rio: Exibir laudo *****/

   InicFrm "Exibir laudo"

   /* Corpo de Exibir laudo */

      Endenta 3 ;
      Se Existe( [ Texto 255 ] )
      Entao
         Titulo "" ;
         Titulo "Laudo de valida‡„o" ;
         TextoLaudo ;
         Titulo "" ;
      SeNao
      Fim ;
   FimFrm

/***** Formul rio: Exibir todos laudos *****/

   InicExterno "Exibir todos laudos"

   /* Corpo de Exibir todos laudos */

      Endenta 3 ;

      Titulo "" ;
      Titulo "----- Laudos de entidades" ;
      ParaTodos Dicion rio DicEntidade Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de relacionamentos" ;
      ParaTodos Dicion rio DicRelacionamento Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de entidades de liga‡„o" ;
      ParaTodos Dicion rio DicEntidadeLiga‡„o Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de atributos (dados)" ;
      ParaTodos Dicion rio DicDado Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de categorias" ;
      ParaTodos Dicion rio DicCategoria Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de composi‡”es" ;
      ParaTodos Dicion rio DicComposi‡„o Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de requisitos n„o funcionais" ;
      ParaTodos Dicion rio DicReqN„oFunc Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de bancos de dados" ;
      ParaTodos Dicion rio DicBancoDados Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de arquivos" ;
      ParaTodos Dicion rio DicArquivo Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de espa‡os" ;
      ParaTodos Dicion rio DicEspa‡oDados Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de indices" ;
      ParaTodos Dicion rio DicIndiceAcesso Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de vistas" ;
      ParaTodos Dicion rio DicVista Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de interfaces" ;
      ParaTodos Dicion rio DicInterfExterna Faz
         Frm "Exibir laudo com nome" ;
      Fim ;

      Titulo "" ;
      Titulo "----- Laudos de janelas" ;
      ParaTodos Dicion rio DicJanela Faz
         Frm "Exibir laudo com nome" ;
      Fim ;
   FimFrm

/***** Formul rio: Exibir laudo com nome *****/

   InicFrm "Exibir laudo com nome"

   /* Corpo de Exibir laudo com nome */

      Endenta 6 ;
      Se Existe( [ Texto TxtLaudo ] )
      Entao
         Titulo "" ;
         Titulo NomeClasse( ClasseObj( Corrente )) ;
         NaoAvLin ;
         Titulo " : " ;
         NaoAvLin ;
         Nome ;
         TextoLaudo ;
      Senao
      Fim ;
   FimFrm

/**************************************************************************
**** Fim programa: ERAEDT Especificar entidades e relacionamentos
**************************************************************************/

