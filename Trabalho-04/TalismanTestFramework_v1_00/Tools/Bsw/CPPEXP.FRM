/**************************************************************************
*
**** Programa de formul†rios: CPPEXP Exportar m¢dulos C++
*
**** Nome do arquivo gerado:  CPPEXP
*
*Nome l¢gico da base: Programas de formul†rio de apoio Ö programaáÑo C++
*Nome do arquivo:     H:\TALISMAN\TOOLS\BSW\CPPFRM.BSW
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
*  CPPEXP Exportar todos blocos        : "Exportar todos blocos"
*  CPPEXP Exportar todos controles     : "Exportar todos controles"
*  CPPEXP Exportar todos dados         : "Exportar todos dados"
*  CPPEXP Exportar todos tipos         : "Exportar todos tipos"
*  CPPEXP Exportar todos pacotes       : "Exportar todos pacotes"
*  CPPEXP Exportar todas classes       : "Exportar todas classes"
*  CPPEXP Exportar todos m¢dulos       : "Exportar todos m¢dulos"
*  CPPEXP Exportar tudo                : "Exportar tudo"
*  CPPEXP Exportar c¢digo de pacote    : "Exportar c¢digo de pacote"
*  CPPEXP Exportar c¢digo de tipo      : "Exportar c¢digo de tipo"
*  CPPEXP Exportar c¢digo de classe    : "Exportar c¢digo de classe"
*  CPPEXP Exportar codigo de modulo    : "Exportar codigo de modulo"
*  CPPEXP Exportar modificado codig    : "Exportar codigo de modulo modificado"
*
****************************************************************************
*
* Formul†rios linearizados (tornados dispon°veis)
*
*  CPPEXP Montar nome de dicion†rio    : "Montar nome de dicion†rio"
*  CPPEXP Monta lista blocos           : "Monta lista blocos"
*  CPPEXP Monta lista dados declara    : "Monta lista dados declarados"
*  CPPEXP Monta lista dados            : "Monta lista dados"
*  CPPEXP Gerar identificador          : "Gerar identificador"
*  CPPEXP Gerar nome                   : "Gerar nome"
*  CPPEXP Gerar aliases                : "Gerar aliases"( Inteiro NumIni ,
*                                                         Inteiro NumFim )
*  CPPEXP Gerar textos                 : "Gerar textos"( Inteiro NumIni ,
*                                                        Inteiro NumFim )
*  CPPEXP Gerar relaáÑo                : "Gerar relaáÑo"( Inteiro NumRel )
*  CPPEXP Gerar todos nomes            : "Gerar todos nomes"( Dicionario IdDic )
*  CPPEXP Gerar atributos de um blo    : "Gerar atributos de um bloco"
*  CPPEXP Gerar atributos de um con    : "Gerar atributos de um controle"
*  CPPEXP Gerar atributos de um dad    : "Gerar atributos de um dado"
*  CPPEXP Gerar atributos de um tip    : "Gerar atributos de um tipo"
*  CPPEXP Gerar atributos de um pac    : "Gerar atributos de um pacote"
*  CPPEXP Gerar atributos de uma cl    : "Gerar atributos de uma classe"
*  CPPEXP Gerar atributos de um m¢d    : "Gerar atributos de um m¢dulo"
*  CPPEXP Gerar atributos de todos     : "Gerar atributos de todos os blocos"
*  CPPEXP Gerar atributos de todos     : "Gerar atributos de todos os controles"
*  CPPEXP Gerar atributos de todos     : "Gerar atributos de todos os dados"
*  CPPEXP Gerar atributos de todos     : "Gerar atributos de todos os tipos"
*  CPPEXP Gerar atributos de todos     : "Gerar atributos de todos os pacotes"
*  CPPEXP Gerar atributos de todas     : "Gerar atributos de todas as classes"
*  CPPEXP Gerar atributos de todos     : "Gerar atributos de todos os m¢dulos"
*  CPPEXP Gerar c¢digo de corpo de     : "Gerar c¢digo de corpo de pacote"
*  CPPEXP Gerar c¢digo de corpo de     : "Gerar c¢digo de corpo de tipo"
*  CPPEXP Gerar c¢digo de corpo de     : "Gerar c¢digo de corpo de classe"
*  CPPEXP Exportar bloco               : "Exportar bloco"
*  CPPEXP Exportar controle            : "Exportar controle"
*  CPPEXP Exportar dado                : "Exportar dado"
*  CPPEXP Exportar tipo                : "Exportar tipo"
*  CPPEXP Exportar pacote              : "Exportar pacote"
*  CPPEXP Exportar m¢dulo              : "Exportar m¢dulo"
*  CPPEXP Exportar classe              : "Exportar classe"
*  CPPEXP Exportar todos blocos        : "Exportar todos blocos"
*  CPPEXP Exportar todos controles     : "Exportar todos controles"
*  CPPEXP Exportar todos dados         : "Exportar todos dados"
*  CPPEXP Exportar todos tipos         : "Exportar todos tipos"
*  CPPEXP Exportar todos pacotes       : "Exportar todos pacotes"
*  CPPEXP Exportar todos m¢dulos       : "Exportar todos m¢dulos"
*  CPPEXP Exportar todas classes       : "Exportar todas classes"
*  CPPEXP Exportar tudo                : "Exportar tudo"
*  CPPEXP Exportar c¢digo de pacote    : "Exportar c¢digo de pacote"
*  CPPEXP Exportar codigo de modulo    : "Exportar codigo de modulo"
*  CPPEXP Exportar modificado codig    : "Exportar codigo de modulo modificado"
*  CPPEXP Exportar c¢digo de tipo      : "Exportar c¢digo de tipo"
*  CPPEXP Exportar c¢digo de classe    : "Exportar c¢digo de classe"
*  CPPEXP Efetuar exportar c¢digo d    : "Efetuar exportar c¢digo de m¢dulo"
*
***************************************************************************/

/***** Formul†rio global *****/

   InicGlobal

         SeqÅància NomeDic ;

         Fila  ListaBlocos ;
         Fila  GeradosBlocos ;
         Fila  ListaDados ;
         Fila  GeradosDados ;

         Inteiro ModoExporta ;

         Constante EXP_INI_ALIAS = 0 ;
         Constante EXP_FIM_ALIAS = 40 ;

         Constante EXP_INI_TEXTO = 0 ;
         Constante EXP_FIM_TEXTO = 50 ;

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

            /* Estrutura de dados Constantes para controles */

               Constante      TxtTipoControle = 11 ;
               Constante      TxtSignfCtrl    = 12 ;

            /* Estrutura de dados Constantes para transiáîes */

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

            /* Estrutura de dados Constantes para m†quina de estado convencional */

               Constante      AliasNomeEstado = 11 ;   /* igual em DFD */

               Constante      TxtDecisaoFluxo = 21 ;   /* igual em DFD */
               Constante      TxtAcaoFluxo    = 22 ;   /* igual em DFD */
               Constante      TxtMsgFluxo     = 11 ;
               Constante      TxtStringFluxo  =  9 ;
               Constante      TxtAcaoErro     = 22 ;   /* igual em DFD */

               Constante      TxtAcaoEntra    = 23 ;   /* igual em DFD */
               Constante      TxtAcaoSempre   = 21 ;   /* igual em DFD */
               Constante      TxtAcaoSai      = 24 ;   /* igual em DFD */

            /* Estrutura de dados Declaraáîes para gerar lista LIMBO */

               Constante      NomeLimbo       = "! Limbo" ;
               ListaTexto     TextoRelLimbo ;
               ListaTexto     TextoVazio ;
               Sequencia      Letras ;
      FimDecl

      /* Exportar */

         ModoExporta    = 0 ;
   FimFrm

/***** Formul†rios do programa *****/

/***** Formul†rio: CPPEXP Montar nome de dicion†rio *****/

   InicFrm "Montar nome de dicion†rio"

   /* Corpo de CPP Montar nome de dicion†rio */

      NomeDic = ConcatSeq( "\"" , NomeClasse( ClasseObj( Corrente ))) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
   FimFrm

/***** Formul†rio: CPPEXP Monta lista blocos *****/

   InicFrm "Monta lista blocos"

   /* Corpo de CPP Monta lista blocos */

      Se PertenceObj( GeradosBlocos , Corrente ) <= 0
      Entao
         InsereObj( ListaBlocos , Corrente ) ;
         InsereObj( GeradosBlocos , Corrente ) ;
         Frm "Gerar nome" ;
         ParaTodos Decomp Faz
            Frm "Monta lista blocos" ;
         Fim ;
      Senao
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Monta lista dados declarados *****/

   InicFrm "Monta lista dados declarados"

   /* Corpo de CPP Monta lista dados declarados */

      ParaTodos ListaBlocos Faz
         ParaTodos BlocosDeclaram Faz
            Frm "Monta lista dados" ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Monta lista dados *****/

   InicFrm "Monta lista dados"

   /* Corpo de CPP Monta lista dados */

      Se PertenceObj( GeradosDados , Corrente ) <= 0
      Entao
         InsereObj( ListaDados , Corrente ) ;
         InsereObj( GeradosDados , Corrente ) ;
         Frm "Gerar nome" ;
         ParaTodos Decomp Faz
            Frm "Monta lista dados" ;
         Fim ;
      Senao
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar identificador *****/

   InicFrm "Gerar identificador"

   /* Corpo de CPP Gerar identificador */

      Titulo "DA " ;
      NaoAvLin ;
      Titulo NomeDic ;
      NaoAvLin ;
      Titulo " \"" ;
      Se ModoExporta == 1
      Entao
         NaoAvLin ;
         Titulo "@" ;
      Senao
      Fim ; /* Se */
      NaoAvLin ;
      Nome     ;
      NaoAvLin ;
      Titulo "\"" ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar nome *****/

   InicFrm "Gerar nome"

   /* Corpo de CPP Gerar nome */

      Frm "Gerar identificador" ;
      NaoAvLin ;
      Titulo " Nome" ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar aliases *****/

   InicFrm "Gerar aliases"( Inteiro NumIni ,
                            Inteiro NumFim )
      /* Dado do bloco Corpo de CPP Gerar aliases */

         Inteiro Contador ;

      FimDecl

   /* Corpo de CPP Gerar aliases */

      Contador = NumIni ;
      Enquanto Contador <= NumFim faz
         Se Existe( [ Alias Contador ] )
         Entao
            Frm "Gerar identificador" ;
            NÑoAvLin ;
            T°tulo " Ali†s " ;
            NÑoAvLin ;
            T°tulo Contador ;
            Ali†s  Contador ;
         SeNao
         Fim ;
         Contador = Contador + 1 ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar textos *****/

   InicFrm "Gerar textos"( Inteiro NumIni ,
                           Inteiro NumFim )
      /* Dado do bloco Corpo de CPP Gerar textos */

         Inteiro Contador ;

      FimDecl

   /* Corpo de CPP Gerar textos */

      Contador = NumIni ;
      Enquanto Contador <= NumFim faz
         Se Existe( [ Texto Contador ] )
         Entao
            Frm "Gerar identificador" ;
            NÑoAvLin ;
            T°tulo " Texto " ;
            NÑoAvLin ;
            T°tulo Contador ;
            Texto  Contador ;
            T°tulo "#@#" ;
         SeNao
         Fim ;
         Contador = Contador + 1 ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar relaáÑo *****/

   InicFrm "Gerar relaáÑo"( Inteiro NumRel )
      /* Dado do bloco Corpo de CPP Gerar relaáÑo */

         ListaTexto Relac ;
         Inteiro i ;

      FimDecl

   /* Corpo de CPP Gerar relaáÑo */

      Se Existe( [ RelaáÑo NumRel ] )
      EntÑo
         Frm "Gerar identificador" ;
         NÑoAvLin ;
         T°tulo " RelaáÑo " ;
         NÑoAvLin ;
         T°tulo NumRel ;
         Se ModoExporta == 1
         Entao
            Relac = [ RelaáÑo NumRel ] ;
            i = 1 ;
            Enquanto i <= TamTexto( Relac ) Faz
               Titulo "@" ;
               NaoAvLin ;
               Titulo LinhaTexto( Relac , i ) ;
               i = i + 1 ;
            Fim ; /* Enquanto */
         Senao
            Relacao Numrel ;
         Fim ; /* Se */
         T°tulo "#@#" ;
      SeNÑo
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar todos nomes *****/

   InicFrm "Gerar todos nomes"( Dicionario IdDic )

   /* Corpo de CPP Gerar todos nomes */

      NomeDic = ConcatSeq( "\"" , NomeClasse( IdDic )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos IdDic Faz
         Frm "Gerar nome" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de um bloco *****/

   InicFrm "Gerar atributos de um bloco"

   /* Corpo de CPP Gerar atributos de um bloco */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Processos ) ;
      Frm "Gerar relaáÑo"( Dados ) ;
      Frm "Gerar relaáÑo"( Dep¢sitos ) ;
      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( Entidades ) ;
      Frm "Gerar relaáÑo"( Relacionamentos ) ;
      Frm "Gerar relaáÑo"( Controles ) ;
      Frm "Gerar relaáÑo"( GeraControles ) ;
      Frm "Gerar relaáÑo"( Chama ) ;
      Frm "Gerar relaáÑo"( EntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( Tipos ) ;
      Frm "Gerar relaáÑo"( Palavras ) ;
      Frm "Gerar relaáÑo"( Par†grafos ) ;
      Frm "Gerar relaáÑo"( Arquivos ) ;
      Frm "Gerar relaáÑo"( ValidaDep¢sitos ) ;
      Frm "Gerar relaáÑo"( ValidaTipo ) ;
      Frm "Gerar relaáÑo"( ValidaDados ) ;
      Frm "Gerar relaáÑo"( ValidaEntidades ) ;
      Frm "Gerar relaáÑo"( ValidaRelacionamentos ) ;
      Frm "Gerar relaáÑo"( ValidaEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( ValidaArquivos ) ;
      Frm "Gerar relaáÑo"( GeraDep¢sitos ) ;
      Frm "Gerar relaáÑo"( GeraTipos ) ;
      Frm "Gerar relaáÑo"( GeraDados ) ;
      Frm "Gerar relaáÑo"( GeraEntidades ) ;
      Frm "Gerar relaáÑo"( GeraRelacionamentos ) ;
      Frm "Gerar relaáÑo"( GeraEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( GeraArquivos ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de um controle *****/

   InicFrm "Gerar atributos de um controle"

   /* Corpo de CPP Gerar atributos de um controle */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Processos ) ;
      Frm "Gerar relaáÑo"( Fluxos ) ;
      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( Blocos ) ;
      Frm "Gerar relaáÑo"( BlocosGeram ) ;
      Frm "Gerar relaáÑo"( Pacotes ) ;
      Frm "Gerar relaáÑo"( Palavras ) ;
      Frm "Gerar relaáÑo"( Par†grafos ) ;
      Frm "Gerar relaáÑo"( PacotesGeram ) ;
      Frm "Gerar relaáÑo"( ProcessosGeram ) ;
      Frm "Gerar relaáÑo"( FluxosGeram ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de um dado *****/

   InicFrm "Gerar atributos de um dado"

   /* Corpo de CPP Gerar atributos de um dado */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Processos ) ;
      Frm "Gerar relaáÑo"( Dep¢sitos ) ;
      Frm "Gerar relaáÑo"( Interfaces ) ;
      Frm "Gerar relaáÑo"( Fluxos ) ;
      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( Entidades ) ;
      Frm "Gerar relaáÑo"( Relacionamentos ) ;
      Frm "Gerar relaáÑo"( Blocos ) ;
      Frm "Gerar relaáÑo"( DeclaradosEm ) ;
      Frm "Gerar relaáÑo"( BlocosGeram ) ;
      Frm "Gerar relaáÑo"( Chama ) ;
      Frm "Gerar relaáÑo"( ChavesDetDep¢sito ) ;
      Frm "Gerar relaáÑo"( ChavesDetEntid ) ;
      Frm "Gerar relaáÑo"( ChavesDetRelac ) ;
      Frm "Gerar relaáÑo"( DependFunc ) ;
      Frm "Gerar relaáÑo"( EhDependFunc ) ;
      Frm "Gerar relaáÑo"( Indices ) ;
      Frm "Gerar relaáÑo"( Visîes ) ;
      Frm "Gerar relaáÑo"( ChavesEstEntid ) ;
      Frm "Gerar relaáÑo"( EntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( ChavesDetEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( Pacotes ) ;
      Frm "Gerar relaáÑo"( Janelas ) ;
      Frm "Gerar relaáÑo"( Palavras ) ;
      Frm "Gerar relaáÑo"( Par†grafos ) ;
      Frm "Gerar relaáÑo"( ChavesSecEntid ) ;
      Frm "Gerar relaáÑo"( Estados ) ;
      Frm "Gerar relaáÑo"( ChavesSecEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( ChavesSecDep¢sito ) ;
      Frm "Gerar relaáÑo"( ChavesSecRelac ) ;
      Frm "Gerar relaáÑo"( Arquivos ) ;
      Frm "Gerar relaáÑo"( M¢dulosValidam ) ;
      Frm "Gerar relaáÑo"( PacotesValidam ) ;
      Frm "Gerar relaáÑo"( BlocosValidam ) ;
      Frm "Gerar relaáÑo"( ProcessosValidam ) ;
      Frm "Gerar relaáÑo"( M¢dulosGeram ) ;
      Frm "Gerar relaáÑo"( PacotesGeram ) ;
      Frm "Gerar relaáÑo"( ProcessosGeram ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de um tipo *****/

   InicFrm "Gerar atributos de um tipo"

   /* Corpo de CPP Gerar atributos de um tipo */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Processos ) ;
      Frm "Gerar relaáÑo"( Dados ) ;
      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( BlocosGeram ) ;
      Frm "Gerar relaáÑo"( Pacotes ) ;
      Frm "Gerar relaáÑo"( Palavras ) ;
      Frm "Gerar relaáÑo"( Par†grafos ) ;
      Frm "Gerar relaáÑo"( M¢dulosValidam ) ;
      Frm "Gerar relaáÑo"( PacotesValidam ) ;
      Frm "Gerar relaáÑo"( BlocosValidam ) ;
      Frm "Gerar relaáÑo"( ProcessosValidam ) ;
      Frm "Gerar relaáÑo"( M¢dulosGeram ) ;
      Frm "Gerar relaáÑo"( PacotesGeram ) ;
      Frm "Gerar relaáÑo"( ProcessosGeram ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de um pacote *****/

   InicFrm "Gerar atributos de um pacote"

   /* Corpo de CPP Gerar atributos de um pacote */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Processos ) ;
      Frm "Gerar relaáÑo"( Dep¢sitos ) ;
      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( Entidades ) ;
      Frm "Gerar relaáÑo"( Relacionamentos ) ;
      Frm "Gerar relaáÑo"( Blocos ) ;
      Frm "Gerar relaáÑo"( Controles ) ;
      Frm "Gerar relaáÑo"( GeraControles ) ;
      Frm "Gerar relaáÑo"( EntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( Palavras ) ;
      Frm "Gerar relaáÑo"( Par†grafos ) ;
      Frm "Gerar relaáÑo"( Arquivos ) ;
      Frm "Gerar relaáÑo"( ValidaDep¢sitos ) ;
      Frm "Gerar relaáÑo"( ValidaTipo ) ;
      Frm "Gerar relaáÑo"( ValidaDados ) ;
      Frm "Gerar relaáÑo"( ValidaEntidades ) ;
      Frm "Gerar relaáÑo"( ValidaRelacionamentos ) ;
      Frm "Gerar relaáÑo"( ValidaEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( ValidaArquivos ) ;
      Frm "Gerar relaáÑo"( GeraDep¢sitos ) ;
      Frm "Gerar relaáÑo"( GeraTipos ) ;
      Frm "Gerar relaáÑo"( GeraDados ) ;
      Frm "Gerar relaáÑo"( GeraEntidades ) ;
      Frm "Gerar relaáÑo"( GeraRelacionamentos ) ;
      Frm "Gerar relaáÑo"( GeraEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( GeraArquivos ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de uma classe *****/

   InicFrm "Gerar atributos de uma classe"

   /* Corpo de CPP Gerar atributos de uma classe */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( Dados ) ;
      Frm "Gerar relaáÑo"( Pacotes ) ;
      Frm "Gerar relaáÑo"( Tipos ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de um m¢dulo *****/

   InicFrm "Gerar atributos de um m¢dulo"

   /* Corpo de CPP Gerar atributos de um m¢dulo */

      Frm "Gerar aliases"( EXP_INI_ALIAS, EXP_FIM_ALIAS ) ;
      Frm "Gerar textos"(  EXP_INI_TEXTO, EXP_FIM_TEXTO ) ;

      Frm "Gerar relaáÑo"( Dep¢sitos ) ;
      Frm "Gerar relaáÑo"( Dados ) ;
      Frm "Gerar relaáÑo"( Decomp ) ;
      Frm "Gerar relaáÑo"( Entidades ) ;
      Frm "Gerar relaáÑo"( Relacionamentos ) ;
      Frm "Gerar relaáÑo"( Blocos ) ;
      Frm "Gerar relaáÑo"( EntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( Pacotes ) ;
      Frm "Gerar relaáÑo"( PacotesInterface ) ;
      Frm "Gerar relaáÑo"( DadosInterface ) ;
      Frm "Gerar relaáÑo"( Tipos ) ;
      Frm "Gerar relaáÑo"( TiposInterface ) ;
      Frm "Gerar relaáÑo"( Palavras ) ;
      Frm "Gerar relaáÑo"( Par†grafos ) ;
      Frm "Gerar relaáÑo"( Arquivos ) ;
      Frm "Gerar relaáÑo"( ValidaDep¢sitos ) ;
      Frm "Gerar relaáÑo"( ValidaTipo ) ;
      Frm "Gerar relaáÑo"( ValidaDados ) ;
      Frm "Gerar relaáÑo"( ValidaEntidades ) ;
      Frm "Gerar relaáÑo"( ValidaRelacionamentos ) ;
      Frm "Gerar relaáÑo"( ValidaEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( ValidaArquivos ) ;
      Frm "Gerar relaáÑo"( GeraDep¢sitos ) ;
      Frm "Gerar relaáÑo"( GeraTipos ) ;
      Frm "Gerar relaáÑo"( GeraDados ) ;
      Frm "Gerar relaáÑo"( GeraEntidades ) ;
      Frm "Gerar relaáÑo"( GeraRelacionamentos ) ;
      Frm "Gerar relaáÑo"( GeraEntidLigaáÑo ) ;
      Frm "Gerar relaáÑo"( GeraArquivos ) ;
      Frm "Gerar relaáÑo"( Classes ) ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todos os blocos *****/

   InicFrm "Gerar atributos de todos os blocos"

   /* Corpo de CPP Gerar todos atributos de blocos */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicBlocoPrograma )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicBlocoPrograma Faz
         Frm "Gerar atributos de um bloco" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todos os controles *****/

   InicFrm "Gerar atributos de todos os controles"

   /* Corpo de CPP Gerar atributos de todos os controles */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicControle )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicControle Faz
         Frm "Gerar atributos de um controle" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todos os dados *****/

   InicFrm "Gerar atributos de todos os dados"

   /* Corpo de CPP Gerar atributos de todos os dados */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicDado Faz
         Frm "Gerar atributos de um dado" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todos os tipos *****/

   InicFrm "Gerar atributos de todos os tipos"

   /* Corpo de CPP Gerar atributos de todos os tipos */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicTipoDados )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicTipoDados Faz
         Frm "Gerar atributos de um tipo" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todos os pacotes *****/

   InicFrm "Gerar atributos de todos os pacotes"

   /* Corpo de CPP Gerar atributos de todos os pacotes */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicPacotePrograma )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicPacotePrograma Faz
         Frm "Gerar atributos de um pacote" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todas as classes *****/

   InicFrm "Gerar atributos de todas as classes"

   /* Corpo de CPP Gerar atributos de todas as classes */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicClasses )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicClasses Faz
         Frm "Gerar atributos de uma classe" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar atributos de todos os m¢dulos *****/

   InicFrm "Gerar atributos de todos os m¢dulos"

   /* Corpo de CPP Gerar atributos de todos os m¢dulos */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicM¢dulo )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      ParaTodos Dicionario DicM¢dulo Faz
         Frm "Gerar atributos de um m¢dulo" ;
      Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar c¢digo de corpo de pacote *****/

   InicFrm "Gerar c¢digo de corpo de pacote"

   /* Corpo de CPP Gerar c¢digo de corpo de pacote */

      /* Gerar nomes dos blocos a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicBlocoPrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         EsvaziaLista( ListaBlocos ) ;
         ParaTodos Blocos Faz
            Frm "Monta lista blocos" ;
         Fim ;

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         EsvaziaLista( ListaDados ) ;
         ParaTodos Blocos Faz
            Frm "Monta lista dados declarados" ;
         Fim ;

      /* Gerar atributos c¢digo do pacote */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicPacotePrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         Frm "Gerar atributos de um pacote" ;

      /* Gerar atributos dos dados do pacote */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos ListaDados Faz
            Frm "Gerar atributos de um dado" ;
         Fim ;

      /* Gerar atributos dos blocos do pacote */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicBlocoPrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos ListaBlocos Faz
            Frm "Gerar atributos de um bloco" ;
         Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar c¢digo de corpo de tipo *****/

   InicFrm "Gerar c¢digo de corpo de tipo"

   /* Corpo de CPP Gerar c¢digo de corpo de tipo */

      /* Gerar nomes dos dados a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         EsvaziaLista( ListaDados ) ;
         ParaTodos Dados Faz
            Frm "Monta lista dados" ;
         Fim ;

      /* Gerar atributos c¢digo do tipo */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicTipoDados )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         Frm "Gerar atributos de um tipo" ;

      /* Gerar atributos dos dados do tipo */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos ListaDados Faz
            Frm "Gerar atributos de um dado" ;
         Fim ;
   FimFrm

/***** Formul†rio: CPPEXP Gerar c¢digo de corpo de classe *****/

   InicFrm "Gerar c¢digo de corpo de classe"

   /* Corpo de CPP Gerar c¢digo de corpo de classe */

      /* Gerar nomes dos tipos da classe a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicTipoDados )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         ParaTodos Tipos Faz
            Frm "Gerar nome" ;
         Fim ;

      /* Gerar nomes dos pacotes da classe a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicPacotePrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         ParaTodos Pacotes Faz
            Frm "Gerar nome" ;
         Fim ;

      /* Gerar nomes dos dados da classe a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         EsvaziaLista( ListaDados ) ;
         ParaTodos Dados Faz
            Frm "Monta lista dados" ;
         Fim ;

      /* Gerar os atributos da classe a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicClasses )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         Frm "Gerar atributos de uma classe" ;

      /* Gerar as declaraáîes da classe */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos ListaDados Faz
            Frm "Gerar atributos de um dado" ;
         Fim ;

      /* Gerar os tipos da classe */

         ParaTodos Tipos Faz
            Frm "Gerar c¢digo de corpo de tipo" ;
         Fim ;

      /* Gerar os pacotes da classe */

         ParaTodos Pacotes Faz
            Frm "Gerar c¢digo de corpo de pacote" ;
         Fim ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar bloco *****/

   InicFrm "Exportar bloco"

   /* Corpo de CPP Exportar bloco */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de um bloco" ;
      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar controle *****/

   InicFrm "Exportar controle"

   /* Corpo de CPP Exportar controle */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de um controle" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar dado *****/

   InicFrm "Exportar dado"

   /* Corpo de CPP Exportar dado */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de um dado" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar tipo *****/

   InicFrm "Exportar tipo"

   /* Corpo de CPP Exportar tipo */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de um tipo" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar pacote *****/

   InicFrm "Exportar pacote"

   /* Corpo de CPP Exportar pacote */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de um pacote" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar m¢dulo *****/

   InicFrm "Exportar m¢dulo"

   /* Corpo de CPP Exportar m¢dulo */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de um m¢dulo" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar classe *****/

   InicFrm "Exportar classe"

   /* Corpo de CPP Exportar classe */

      Frm "Montar nome de dicion†rio" ;

      Frm "Gerar nome" ;
      Frm "Gerar atributos de uma classe" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todos blocos *****/

   InicExterno "Exportar todos blocos"

   /* Corpo de CPP Exportar todos blocos */

      Frm "Gerar todos nomes"( DicBlocoPrograma ) ;
      Frm "Gerar atributos de todos os blocos" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todos controles *****/

   InicExterno "Exportar todos controles"

   /* Corpo de CPP Exportar todos controles */

      Frm "Gerar todos nomes"( DicControle ) ;
      Frm "Gerar atributos de todos os controles" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todos dados *****/

   InicExterno "Exportar todos dados"

   /* Corpo de CPP Exportar todos dados */

      Frm "Gerar todos nomes"( DicDado ) ;
      Frm "Gerar atributos de todos os dados" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todos tipos *****/

   InicExterno "Exportar todos tipos"

   /* Corpo de CPP Exportar todos tipos */

      Frm "Gerar todos nomes"( DicTipoDados ) ;
      Frm "Gerar atributos de todos os tipos" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todos pacotes *****/

   InicExterno "Exportar todos pacotes"

   /* Corpo de CPP Exportar todos pacotes */

      Frm "Gerar todos nomes"( DicPacotePrograma ) ;
      Frm "Gerar atributos de todos os pacotes" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todos m¢dulos *****/

   InicExterno "Exportar todos m¢dulos"

   /* Corpo de CPP Exportar todos m¢dulos */

      Frm "Gerar todos nomes"( DicModulo ) ;
      Frm "Gerar atributos de todos os m¢dulos" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar todas classes *****/

   InicExterno "Exportar todas classes"

   /* Corpo de CPP Exportar todas classes */

      Frm "Gerar todos nomes"( DicClasses ) ;
      Frm "Gerar atributos de todas as classes" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar tudo *****/

   InicExterno "Exportar tudo"

   /* Corpo de CPP Exportar tudo */

      ModoExporta = 0 ;

      Frm "Gerar todos nomes"( DicModulo ) ;
      Frm "Gerar todos nomes"( DicClasses ) ;
      Frm "Gerar todos nomes"( DicTipoDados ) ;
      Frm "Gerar todos nomes"( DicPacotePrograma ) ;
      Frm "Gerar todos nomes"( DicDado ) ;
      Frm "Gerar todos nomes"( DicBlocoPrograma ) ;
      Frm "Gerar todos nomes"( DicControle ) ;

      Frm "Gerar atributos de todos os m¢dulos" ;
      Frm "Gerar atributos de todas as classes" ;
      Frm "Gerar atributos de todos os tipos" ;
      Frm "Gerar atributos de todos os pacotes" ;
      Frm "Gerar atributos de todos os dados" ;
      Frm "Gerar atributos de todos os blocos" ;
      Frm "Gerar atributos de todos os controles" ;

      Titulo "" ;
      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar c¢digo de pacote *****/

   InicExterno "Exportar c¢digo de pacote"

   /* Corpo de CPP Exportar c¢digo de pacote */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicPacotePrograma )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      Frm "Gerar nome" ;
      Frm "Gerar c¢digo de corpo de pacote" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar codigo de modulo *****/

   InicExterno "Exportar codigo de modulo"

   /* Corpo de CPPEXP Exportar codigo de modulo */

      ModoExporta = 0 ;
      Frm "Efetuar exportar c¢digo de m¢dulo" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar modificado codigo de modulo *****/

   InicExterno "Exportar codigo de modulo modificado"

   /* Corpo de CPPEXP Exportar modificado codigo de modulo */

      ModoExporta = 1 ;
      Frm "Efetuar exportar c¢digo de m¢dulo" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar c¢digo de tipo *****/

   InicExterno "Exportar c¢digo de tipo"

   /* Corpo de CPP Exportar c¢digo de tipo */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicTipoDados )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      Frm "Gerar nome" ;
      Frm "Gerar c¢digo de corpo de tipo" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Exportar c¢digo de classe *****/

   InicExterno "Exportar c¢digo de classe"

   /* Corpo de CPP Exportar c¢digo de classe */

      NomeDic = ConcatSeq( "\"" , NomeClasse( DicClasses )) ;
      NomeDic = ConcatSeq( NomeDic , "\"" ) ;
      Frm "Gerar nome" ;
      Frm "Gerar c¢digo de corpo de classe" ;

      Titulo "" ;
   FimFrm

/***** Formul†rio: CPPEXP Efetuar exportar c¢digo de m¢dulo *****/

   InicFrm "Efetuar exportar c¢digo de m¢dulo"

   /* Corpo de CPP Exportar c¢digo de m¢dulo */

      /* Gerar nome do m¢dulo a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicM¢dulo )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         Frm "Gerar nome" ;

      /* Gerar nomes dos tipos a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicTipoDados )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         ParaTodos Tipos Faz
            Frm "Gerar nome" ;
         Fim ;

      /* Gerar nomes dos pacotes a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicPacotePrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         ParaTodos Pacotes Faz
            Frm "Gerar nome" ;
         Fim ;

      /* Gerar nomes das classes a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicClasses ) ) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;
         ParaTodos Classes Faz
            Frm "Gerar nome" ;
         Fim ;

      /* Gerar nomes dos dados do m¢dulo a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         EsvaziaLista( ListaDados ) ;
         ParaTodos DadosInterface Faz
            Frm "Monta lista dados" ;
         Fim ;

         ParaTodos Dados Faz
            Frm "Monta lista dados" ;
         Fim ;

      /* Gerar nomes dos blocos do m¢dulo a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicBlocoPrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         EsvaziaLista( ListaBlocos ) ;
         ParaTodos Blocos Faz
            Frm "Monta lista blocos" ;
         Fim ;

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos Blocos Faz
            Frm "Monta lista dados declarados" ;
         Fim ;

      /* Gerar os atributos do m¢dulo a exportar */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicM¢dulo )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         Frm "Gerar atributos de um m¢dulo" ;

      /* Gerar as declaraáîes do m¢dulo */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicDado )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos ListaDados Faz
            Frm "Gerar atributos de um dado" ;
         Fim ;

      /* Gerar o corpo do m¢dulo */

         NomeDic = ConcatSeq( "\"" , NomeClasse( DicBlocoPrograma )) ;
         NomeDic = ConcatSeq( NomeDic , "\"" ) ;

         ParaTodos ListaBlocos Faz
            Frm "Gerar atributos de um bloco" ;
         Fim ;

      /* Gerar os tipos do m¢dulo */

         ParaTodos Tipos Faz
            Frm "Gerar c¢digo de corpo de tipo" ;
         Fim ;

      /* Gerar os pacotes do m¢dulo */

         ParaTodos Pacotes Faz
            Frm "Gerar c¢digo de corpo de pacote" ;
         Fim ;

      /* Gerar classes do m¢ulo */

         ParaTodos Classes Faz
            Frm "Gerar c¢digo de corpo de classe" ;
         Fim ;

      Titulo "" ;
      Titulo "" ;
   FimFrm

/**************************************************************************
**** Fim programa: CPPEXP Exportar m¢dulos C++
**************************************************************************/

