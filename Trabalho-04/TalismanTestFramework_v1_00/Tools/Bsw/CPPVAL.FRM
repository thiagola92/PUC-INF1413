/**************************************************************************
*
**** Programa de formul rios: CPPVAL Validar m¢dulos C++
*
**** Nome do arquivo gerado:  CPPVAL
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
*  CPPVAL Validar tudo                 : "Validar tudo"
*  CPPVAL Limpar tudo                  : "Limpar tudo"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  CPPVAL Validar um bloco             : "Validar um bloco"
*  CPPVAL Corrigir evolu‡„o de vers    : "Corrigir vers„o 1.1"
*  CPPVAL Limpar tudo                  : "Limpar tudo"
*  CPPVAL Validar classes              : "Validar classe"
*  CPPVAL Validar visibilidade na c    : "Validar visibilidade"
*  CPPVAL Validar m¢dulo               : "Validar m¢dulo"
*  CPPVAL Validar pacote               : "Validar pacote"
*  CPPVAL Validar bloco                : "Validar bloco"
*  CPPVAL Validar dados                : "Validar Dado"
*  CPPVAL Validar visibilidade de d    : "Validar membro de classe"
*  CPPVAL Validar tipo de dados        : "Validar Tipo"
*  CPPVAL Validar tudo                 : "Validar tudo"
*  CPPVAL Validar texto inexistente    : "Verificar inexistencia"( Inteiro Tipo, Inteiro Id )
*  CPPVAL Registrar pertinˆncia … e    : "Registrar pertinencia a limbo"
*  CPPVAL Validar lista blocos vazi    : "Validar rela‡„o blocos vazia"
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

      /* Corpo de CPPVAL Validar m¢dulos C++ */

         /* Inicializa */

            InsereTexto( TextoRelLimbo , 1 , NomeLimbo ) ;
            EsvaziaTexto( TextoVazio ) ;
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: CPPVAL Validar um bloco *****/

   InicFrm "Validar um bloco"
      /* Dado do bloco Validar controles de sele‡„o do bloco */

         Inteiro InxOrg ;
         Inteiro ContaOrg ;

      /* Dado do bloco Validar bloco pertencente … estrutura */

         Inteiro ContaPert ;
         Inteiro ContaLimbo ;

      /* Dado do bloco Validar textos inexistentes em bloco */

         Inteiro Id ;

      FimDecl

   /* Corpo de Validar um bloco */

      Se NomeLimbo != [ Nome ] Ent„o

      /* Validar bloco normal */

         /* Validar textos do bloco */

            Se   Nao Existe( [ Texto   TxtDebugAntes ] )
               E Nao Existe( [ Texto   TxtFonteAntes ] )
               E Nao Existe( [ Texto   TxtFonteApos  ] )
            Entao
               Se Nao Existe( [ Relacao Decomp    ] ) E
                  NAO Existe( [ Relacao Processos ] )
               Ent„o
                  Se Existe( [ Relacao Pacotes ] )
                  Entao
                     ParaTodos Pacotes Faz
                        Se NAO Existe( [ Alias AliasVirtualPuro ] )
                        Entao
                           Titulo "Falta c¢digo no bloco folha" ;
                           Se Existe( [ Relacao Chama ] )
                           Ent„o
                              Titulo "Bloco sem c¢digo chama pacote" ;
                           Sen„o
                           Fim ; /* Se */
                        Senao
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                  Senao
                     Titulo "Falta c¢digo no bloco folha" ;
                     Se Existe( [ Relacao Chama ] )
                     Ent„o
                        Titulo "Bloco sem c¢digo chama pacote" ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* Se */
               Senao
               Fim ;

               Se Existe(     [ Texto TxtCondAtiv ] ) e
                  NAO Existe( [ Relacao Decomp    ] )
               Ent„o
                  Titulo "Bloco sem c¢digo possui controle de ativa‡„o" ;
               Senao
               Fim ;

               Se Existe( [ Texto TxtBlcMensagem ] )
               Ent„o
                  Titulo "Bloco sem c¢digo define strings" ;
               Sen„o
               Fim ; /* Se */

            SeNao
            Fim ;

         /* Validar controles de repeti‡„o do bloco */

            Se Existe( [ Texto TxtCondRepet ] )
            Entao
               Se Nao Existe( [ Relacao Decomp ] )
               Ent„o
                  Titulo "Faltam filhos de bloco controle de repeti‡„o" ;
               Sen„o
                  Se Existe( [ Alias AliasPrepara ] )
                  Ent„o
                     Se Tamrel( [ Relacao Decomp ] ) < 2
                     Ent„o
                        Titulo "Bloco de controle de repeti‡„o possui somente filho de prepara‡„o " ;
                     Sen„o
                     Fim ; /* Se */
                  Sen„o
                  Fim ; /* Se */
               Fim ; /* Se */
            SeNao
            Fim ;

            Se Existe( [ Alias AliasPrepara ] )
            Entao
               Se   NAO Existe( [ Texto TxtCondRepet ] )
                  E NAO Existe( [ Texto TxtCondSelec ] )
               Entao
                  Titulo "Bloco so pode marcar \"Prepara\" caso seja repetição ou seleção" ;
               Senao
               Fim ; /* Se */
            Senao
            Fim ; /* Se */

         /* Validar controles de sele‡„o do bloco */

            Se Existe( [ Texto TxtCondSelec ] )
            Entao
               Se Nao Existe( [ Relacao Decomp ] )
               Ent„o
                  Titulo "Faltam filhos de bloco controle de sele‡„o" ;
               Sen„o
                  Se Existe( [ Alias AliasPrepara ] )
                  Ent„o
                     InxOrg = 2 ;
                     Se Tamrel( [ Relacao Decomp ] ) < 2
                     Ent„o
                        Titulo "Bloco de controle de sele‡„o possui somente filho de prepara‡„o " ;
                     Sen„o
                     Fim ; /* Se */
                  Sen„o
                     InxOrg = 1 ;
                  Fim ; /* Se */

                  ContaOrg = 1 ;
                  ParaTodos Decomp Faz
                     Se Nao Existe( [ Texto TxtCondAtiv ] )
                     Entao
                        Se ContaOrg >= InxOrg
                        Ent„o
                           Titulo "Falta condi‡„o de sele‡„o no bloco filho" ;
                           AvMrgEsq 3 ;
                           Nome ;
                           AvMrgEsq -3 ;
                        Sen„o
                        Fim ; /* Se */
                     Senao
                     Fim ;
                     ContaOrg = ContaOrg + 1 ;
                  Fim ;
               Fim ; /* Se */
            SeNao
            Fim ;

         /* Ver se bloco j  pertence ao limbo */

            Frm "Registrar pertinencia a limbo" ;

         /* Validar bloco pertencente … estrutura */

            ContaPert = 0 ;

            Se Existe( [ Relacao Comp      ] )
            Entao
               ContaLimbo = 0 ;
               ParaTodos Comp Faz
                  Se NomeLimbo == [ Nome ]
                  Ent„o
                     ContaLimbo = ContaLimbo + 1 ;
                  Sen„o
                  Fim ; /* Se */
               Fim ; /* ParaTodos */
               Se ContaLimbo == 0
               Ent„o
                  ContaPert = ContaPert + 1 ;
               Sen„o
               Fim ; /* Se */
            Senao
            Fim ;

            Se Existe( [ Relacao Pacotes   ] )
            Entao
               Se Existe( [ Relacao Comp ] )
               Ent„o
                  Titulo "Bloco n„o pode ser filho de outro bloco e raiz de pacote" ;
               Sen„o
               Fim ; /* Se */
               ContaPert = ContaPert + 1 ;
            Senao
            Fim ;

            Se ContaPert == 0
            Entao
               Titulo "Bloco n„o pertence … estrutura" ;
               Relacao Comp = TextoRelLimbo ;
            Senao
            Fim ;

         /* Validar bloco raiz ilegal */

            Se Existe( [ Relacao Modulos ] )
            Entao
               Titulo "Modulo n„o pode ter corpo" ;
               Relacao Modulos = TextoVazio ;
               Relacao Comp    = TextoRelLimbo ;
            Senao
            Fim ;

            Se Existe( [ Relacao Classes ] )
            Entao
               Titulo "Classe n„o pode ter corpo" ;
               Relacao Classes = TextoVazio ;
               Relacao Comp    = TextoRelLimbo ;
            Senao
            Fim ;

         /* Validar textos inexistentes em bloco */

            Id = 2 ;
            Enquanto Id < 11 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */
            Id = 16 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 5 ;
            Enquanto Id < 11 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Frm "Verificar inexistencia"( 4, 22 ) ;
            Frm "Verificar inexistencia"( 4, 23 ) ;
            Frm "Verificar inexistencia"( 4, 24 ) ;

            Id = 33 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Se NAO Existe( [ Relacao Pacotes ] )
            Entao
               Frm "Verificar inexistencia"( 4, TxtBlcCabecDecl ) ;
               Frm "Verificar inexistencia"( 4, TxtBlcCabecDef  ) ;
               Frm "Verificar inexistencia"( 4, TxtBlcCabecMapa ) ;
               Frm "Verificar inexistencia"( 4, TxtBlcIniPac    ) ;
               Frm "Verificar inexistencia"( 4, TxtBlcFimPac    ) ;
            Senao
            Fim ; /* Se */

      Sen„o

      /* Indicar existˆncia de limbo */

         Titulo "Existe bloco Limbo" ;
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Corrigir evolu‡„o de vers„o *****/

   InicFrm "Corrigir vers„o 1.1"
      /* Dado do bloco Corpo de Corrigir evolu‡„o de vers„o */

         ListaTexto TextoTemp ;

      FimDecl

   /* Corpo de Corrigir evolu‡„o de vers„o */

      Se Existe( [ Texto TxtObjt ] )
      Entao
         TextoTemp = [ Texto TxtObjt ] ;
         ConcatTexto( TextoTemp , [ Texto TxtDescr ] ) ;
         Texto TxtDescr = TextoTemp ;
         Texto TxtObjt  = TextoVazio ;
      Senao
      Fim ;

      Se Existe( [ Texto TxtRestrProj ] )
      Entao
         TextoTemp          = [ Texto TxtObserv ] ;
         ConcatTexto( TextoTemp , [ Texto TxtRestrProj ] ) ;
         Texto TxtObserv    = TextoTemp ;
         Texto TxtRestrProj = TextoVazio ;
      Senao
      Fim ;

      Se Existe( [ Texto TxtRestrImpl ] )
      Entao
         TextoTemp          = [ Texto TxtObserv ] ;
         ConcatTexto( TextoTemp , [ Texto TxtRestrImpl ] ) ;
         Texto TxtObserv    = TextoTemp ;
         Texto TxtRestrImpl = TextoVazio ;
      Senao
      Fim ;

      Se Existe( [ Texto TxtReqProt ] )
      Entao
         TextoTemp          = [ Texto TxtObserv ] ;
         ConcatTexto( TextoTemp , [ Texto TxtReqProt ] ) ;
         Texto TxtObserv    = TextoTemp ;
         Texto TxtReqProt   = TextoVazio ;
      Senao
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Limpar tudo *****/

   InicExterno "Limpar tudo"

   /* Corpo de CPPVAL Limpar tudo */

      /* Limpar todos os limbos */

         ComObjeto ObjetoNome( DicModulo , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

         ComObjeto ObjetoNome( DicClasses , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

         ComObjeto ObjetoNome( DicPacotePrograma , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

         ComObjeto ObjetoNome( DicBlocoPrograma , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

         ComObjeto ObjetoNome( DicTipoDados , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

         ComObjeto ObjetoNome( DicDado , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

      /* Limpar todos os laudos */

         ParaTodos Dicionario DicModulo Faz
            GeraLaudo Novo ;
         Fim ;

         ParaTodos Dicionario DicClasses Faz
            GeraLaudo Novo ;
         Fim ;

         ParaTodos Dicionario DicPacotePrograma Faz
            GeraLaudo Novo ;
         Fim ;

         ParaTodos Dicionario DicBlocoPrograma Faz
            GeraLaudo Novo ;
         Fim ;

         ParaTodos Dicionario DicTipoDados Faz
            GeraLaudo Novo ;
         Fim ;

         ParaTodos Dicionario DicDado Faz
            GeraLaudo Novo ;
         Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar classes *****/

   InicFrm "Validar classe"
      /* Dado do bloco Validar textos inexistentes da classe */

         Inteiro Id ;

      FimDecl

   /* Corpo de Validar classes */

      Se NomeLimbo != [ Nome ] Ent„o

      /* Validar classe normal */

         /* Validar cabe‡alho da classe */

            Se Nao Existe( [ Texto TxtDescr    ] ) E
               Nao Existe( [ Alias AliasMsgWnd ] )
            Entao
               Titulo "Classe n„o possui descri‡„o" ;
            Senao
            Fim ;

            Se Nao Existe( [ Texto TxtClasseCabec ] ) E
               Nao Existe( [ Alias AliasMsgWnd ] )
            Entao
               Titulo "Classe n„o possui declara‡„o cabe‡alho" ;
            Senao
            Fim ;

         /* Validar c¢digo da classe */

            Se   Nao Existe( [ Rela‡„o Pacotes    ] )
               E Nao Existe( [ Alias AliasMsgWnd  ] )
            Entao
               Titulo "Classe n„o possui pacote" ;
            Senao
            Fim ;

         /* Validar bloco corpo da classe */

            Se Existe( [ Relacao Blocos ] )
            Entao
               Titulo "Classe n„o pode ter corpo" ;
               Relacao Blocos = TextoVazio ;
            Senao
            Fim ;

         /* Ver se classe j  pertence ao limbo */

            Frm "Registrar pertinencia a limbo" ;

         /* Validar vincula‡„o da classe da classe */

            Se Nao Existe( [ Relacao modulos   ] ) E
               Nao Existe( [ Alias AliasMsgWnd ] )
            Entao
               Titulo "Classe n„o ‚ linearizada" ;
               Se Nao Existe( [ Relacao comp ] )
               Ent„o
                  Relacao Comp = TextoRelLimbo ;
               Sen„o
               Fim ; /* Se */
            Senao
            Fim ;

         /* Validar textos inexistentes da classe */

            Id = 2 ;
            Enquanto Id < 12 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */
            Id = 13 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 6 ;
            Enquanto Id < 10 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 13 ;
            Enquanto Id < 18 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 31 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Frm "Verificar inexistencia"( 4, 19 ) ;

      Sen„o

      /* Registrar classe limbo */

         Titulo "Existe classe limbo" ;
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar visibilidade na classe *****/

   InicFrm "Validar visibilidade"

   /* Corpo de Validar visibilidade */

      Se Existe( [ Rela‡„o Classes ] )
      Ent„o
         Frm "Validar membro de classe" ;
      Sen„o
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar m¢dulo *****/

   InicFrm "Validar m¢dulo"
      /* Dado do bloco Corpo de Validar m¢dulo */

         Inteiro Id ;

      /* Dado do bloco Validar base */

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

         Constante AliasVersao      = 31 ;
         Constante AliasModif       = 32 ;
         Constante AliasAlt         = 33 ;
         Constante AliasData        = 34 ;
         Constante AliasAutorz      = 35 ;

         Constante TxtNomeProjeto   = 30 ;
         Constante TxtHistorico     = 31 ;
         Constante TxtRelFalhas     = 32 ;
         Constante TxtSolAlt        = 33 ;
         Constante TxtAltEmergnc    = 34 ;
         Constante TxtAltFeitas     = 35 ;
         Constante TxtAutores       = 36 ;
         Constante TxtDirAutor      = 37 ;

         Objeto Origembase ;

      FimDecl

   /* Corpo de Validar m¢dulo */

      /* Validar base */

         OrigemBase = ObjetoBase( Corrente ) ;

         Se ExisteObj( OrigemBase ) Ent„o

         /* Validar descri‡„o da base de software */

            ComObjeto OrigemBase Faz

            /* Validar nome da base */

               Se NAO Existe( [ Alias AliasBasProjeto ] )
               Ent„o
                  Titulo "Falta o nome do projeto" ;
               Sen„o
               Fim ; /* Se */

               Se NAO Existe( [ Alias AliasBasProprietario ] )
               Ent„o
                  Titulo "Falta a o nome do proprietário da base de software" ;
               Sen„o
               Fim ; /* Se */

               Se NAO Existe( [ Alias AliasBasResponsavel ] )
               Ent„o
                  Titulo "Falta a o nome do responsável corrente pela base de software" ;
               Sen„o
               Fim ; /* Se */

               Se NAO Existe( [ Texto TxtAutores ] )
               Ent„o
                  Titulo "Falta a lista de autores da base de software" ;
               Sen„o
               Fim ; /* Se */

               Se NAO Existe( [ Alias AliasBasVersaoCorr ] )
               Ent„o
                  Titulo "Falta a identifica‡„o da vers„o corrente da base" ;
               Sen„o
               Fim ; /* Se */

               Se NAO Existe( [ Texto TxtBasHistoriaAlt ] )
               Ent„o
                  Titulo "Falta o histórico de evolu‡„o da base" ;
               Sen„o
               Fim ; /* Se */

            /* Validar textos inexistentes da base */

               Id = 2 ;
               Enquanto Id < 30 Faz
                  Frm "Verificar inexistencia"( 1, Id ) ;
                  Id = Id + 1 ;
               Fim ; /* Enquanto */
               Frm "Verificar inexistencia"( 1, 33 ) ;
               Id = 36 ;
               Enquanto Id < 50 Faz
                  Frm "Verificar inexistencia"( 1, Id ) ;
                  Id = Id + 1 ;
               Fim ; /* Enquanto */

               Id = 36 ;
               Enquanto Id < 50 Faz
                  Frm "Verificar inexistencia"( 1, Id ) ;
                  Id = Id + 1 ;
               Fim ; /* Enquanto */

               Id = 8 ;
               Enquanto Id < 31 Faz
                  Frm "Verificar inexistencia"( 4, Id ) ;
                  Id = Id + 1 ;
               Fim ; /* Enquanto */
               Id = 37 ;
               Enquanto Id < 41 Faz
                  Frm "Verificar inexistencia"( 4, Id ) ;
                  Id = Id + 1 ;
               Fim ; /* Enquanto */
               Id = 44 ;
               Enquanto Id < 50 Faz
                  Frm "Verificar inexistencia"( 4, Id ) ;
                  Id = Id + 1 ;
               Fim ; /* Enquanto */

               Frm "Verificar inexistencia"( 4, 5 ) ;
               Frm "Verificar inexistencia"( 4, 6 ) ;
               Frm "Verificar inexistencia"( 4, 7 ) ;
            Fim ;

         Sen„o

         /* Base n„o est  definida */

            Titulo "Identifica‡„o da base de software n„o est  definida" ;
         Fim ;

      /* Validar cabe‡alho do m¢dulo */

         Se Nao Existe( [ Texto TxtDescr ] )
         Entao
            Titulo "Módulo n„o possui descri‡„o" ;
         Senao
         Fim ;

         Se Nao Existe( [ Alias AliasArquivo ] )
         Entao
            Titulo "M¢dulo n„o define o arquivo de lineariza‡„o" ;
         Senao
         Fim ;

         Se Nao Existe( [ Alias AliasModExtenDefin ] )
         Entao
            Titulo "M¢dulo n„o define a extens„o do m¢dulo de defini‡„o" ;
         Senao
         Fim ;

         Se Nao Existe( [ Alias AliasModExtenImple ] )
         Entao
            Titulo "M¢dulo n„o define a extens„o do m¢dulo de implementa‡„o" ;
         Senao
         Fim ;

         Se Nao Existe( [ Alias AliasModLetrasId ] )
         Entao
            Titulo "M¢dulo n„o define letras identificadoras de nomes externos" ;
         Senao
         Fim ;

         Se Nao Existe( [ Alias AliasModNumeroId ] )
         Entao
            Titulo "M¢dulo n„o define n£mero identificador" ;
         Senao
         Fim ;

      /* Validar c¢digo do m¢dulo */

         Se Nao Existe( [ Rela‡„o Classes ] )
         Ent„o
            Se Nao Existe( [ Rela‡„o PacotesInterface ] )
            Entao
               Titulo "M¢dulo n„o exporta pacote" ;
            Senao
            Fim ;
         Sen„o
         Fim ; /* Se */

      /* Validar bloco corpo de m¢dulo */

         Se Existe( [ Relacao Blocos ] )
         Entao
            Titulo "Modulo n„o pode ter corpo" ;
            Relacao Blocos = TextoVazio ;
         Senao
         Fim ;

      /* Validar textos inexistentes do módulo */

         Id = 2 ;
         Enquanto Id < 4 Faz
            Frm "Verificar inexistencia"( 1, Id ) ;
            Id = Id + 1 ;
         Fim ; /* Enquanto */
         Id = 10 ;
         Enquanto Id < 50 Faz
            Frm "Verificar inexistencia"( 1, Id ) ;
            Id = Id + 1 ;
         Fim ; /* Enquanto */

         Id = 5 ;
         Enquanto Id < 17 Faz
            Frm "Verificar inexistencia"( 4, Id ) ;
            Id = Id + 1 ;
         Fim ; /* Enquanto */
         Id = 34 ;
         Enquanto Id < 41 Faz
            Frm "Verificar inexistencia"( 4, Id ) ;
            Id = Id + 1 ;
         Fim ; /* Enquanto */
         Id = 44 ;
         Enquanto Id < 50 Faz
            Frm "Verificar inexistencia"( 4, Id ) ;
            Id = Id + 1 ;
         Fim ; /* Enquanto */
   FimFrm

/***** Formul rio: CPPVAL Validar pacote *****/

   InicFrm "Validar pacote"
      /* Dado do bloco Validar rela‡”es estruturais do pacote */

         Inteiro ContaBloco ;
         Inteiro TamTextoTotal ;

      /* Dado do bloco Validar mapa de mensagem do pacote */

         Objeto PacoteCorr ;

      /* Dado do bloco Validar textos inexistentes da funcao */

         Inteiro Id ;

      FimDecl

   /* Corpo de Validar pacote */

      Se NomeLimbo != [ Nome ] Ent„o

      /* Validar pacote normal */

         /* Validar rela‡”es estruturais do pacote */

            Se Nao Existe( [ Relacao InterfaceModulo ] ) E
               Nao Existe( [ Relacao Classes         ] ) E
               Nao Existe( [ Relacao Fluxos          ] ) E
               Nao Existe( [ Relacao Chamado         ] )
            Entao
               Titulo "Função não é ativada" ;
               Relacao Comp = TextoRelLimbo ;
            Senao
            Fim ;

            Se   Nao Existe( [ Relacao Modulos         ] )
               E Nao Existe( [ Relacao InterfaceModulo ] )
               E Nao Existe( [ Relacao Classes         ] )
            Entao
               Titulo "Função não ‚ linearizada" ;
               Relacao Comp = TextoRelLimbo ;
            Senao
            Fim ;

            ContaBloco    = 0 ;
            TamTextoTotal = 0 ;
            ParaTodos Blocos Faz
               ContaBloco = ContaBloco + 1 ;
               TamTextoTotal = TamTextoTotal + TamTexto( [ Texto TxtFonteAntes ] ) ;
               Se Existe( [ Relacao Decomp ] )
               Entao
                  TamTextoTotal = 100 ;
               Senao
               Fim ; /* Se */
            Fim ; /* ParaTodos */

            Se ContaBloco != 1
            Entao
               Titulo "Função deve possuir exatamente um bloco raiz de corpo" ;
            Senao
            Fim ;

         /* Validar especifica‡„o do pacote */

            Se TamTextoTotal > 5
            Entao

               Se Nao Existe( [ Texto TxtDescr  ] )
               Entao
                  Titulo "Função n„o possui descri‡„o" ;
               Senao
               Fim ;

               Se Nao Existe( [ Texto TxtPactEntra         ] ) E
                  Nao Existe( [ Texto TxtPactInterfaceUsuario ] ) E
                  Nao Existe( [ Texto TxtPactGlobalEntra   ] ) E
                  Nao Existe( [ Texto TxtPactImportEntra   ] ) E
                  Nao Existe( [ Texto TxtPactArqEntra      ] ) E
                  Nao Existe( [ Texto TxtPactEstadoEntra   ] ) E
                  Nao Existe( [ Texto TxtPactEncapsEntra   ] )
               Entao
                  Titulo "Função n„o possui especifica‡„o de entrada ou saída" ;
               Senao
               Fim ;

            Senao
            Fim ; /* Se */

         /* Ver se pacote j  pertence ao limbo */

            Frm "Registrar pertinencia a limbo" ;

         /* Validar declara‡„o de cabe‡alho do pacote */

            ParaTodos Blocos Faz
               Se NAO Existe( [ Texto TxtBlcCabecDecl ] )
               Entao
                  Titulo "Função não possui declaração de protótipo" ;
               Senao
               Fim ;
            Fim ;

         /* Validar pacote pertencente a classe */

            Se Existe( [ Relacao Classes ] )
            Ent„o
               Se NAO Existe( [ Alias AliasInline ] )
               Entao
                  ParaTodos Blocos Faz
                     Se Nao Existe( [ Texto TxtBlcCabecDef ] )
                     Entao
                        Titulo "Função membro de classe n„o possui declara‡„o de cabeçalho" ;
                     Senao
                     Fim ;
                  Fim ; /* ParaTodos */
               Senao
               Fim ; /* Se */

               Frm "Validar visibilidade" ;
            Sen„o
            Fim ; /* Se */

         /* Validar mapa de mensagem do pacote */

            PacoteCorr = Corrente ;
            ParaTodos Blocos Faz
               Se Existe( [ Texto TxtBlcCabecMapa ] )
               Ent„o
                  ComObjeto PacoteCorr Faz
                     Se NAO Existe( [ Rela‡„o Classes ] )
                     Ent„o
                        Titulo "Função somente pode ter mapa se pertencer a alguma classe" ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Sen„o
               Fim ; /* Se */
            Fim ; /* ParaTodos */

         /* Validar textos inexistentes da funcao */

            Id = 2 ;
            Enquanto Id < 10 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */
            Id = 16 ;
            Enquanto Id < 20 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 23 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 5 ;
            Enquanto Id < 21 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Id = 41 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

      Sen„o

      /* Registrar existencia de pacote limbo */

         Titulo "Existe pacote limbo" ;
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar bloco *****/

   InicFrm "Validar bloco"

   /* Corpo de CPPVAL Validar bloco */

      Se Existe( [ Relacao Pacotes ] )
      Entao
         ParaTodos Pacotes Faz
            GeraLaudo Novo ;
            Frm "Validar Pacote" ;
         Fim ; /* ParaTodos */
      Senao
      Fim ; /* Se */

      GeraLaudo Novo ;
      Frm "Validar um bloco" ;
   FimFrm

/***** Formul rio: CPPVAL Validar dados *****/

   InicFrm "Validar Dado"
      /* Dado do bloco Validar rela‡”es da estrutura de dados */

         Inteiro ContaPert ;
         Inteiro ContaLimbo ;

      /* Dado do bloco Validar dados pertencentes a classe */

         Objeto DadoCorr ;
         Logico TemPai ;

      /* Dado do bloco Validar textos inexistentes em dados */

         Inteiro Id ;

      FimDecl

   /* Corpo de Validar estrutura de dados */

      Se NomeLimbo != [ Nome ] Ent„o

      /* Validar dado normal */

         /* Validar textos da estrutura de dados */

            Se Nao Existe( [ Relacao Decomp   ] ) e
               Nao Existe( [ Texto TxtDclDado ] )
            Entao
               Titulo "Falta c¢digo declarativo na estrutura de dados" ;
            SeNao
            Fim ;

         /* Ver se bloco de dados j  pertence ao limbo */

            Frm "Registrar pertinencia a limbo" ;

         /* Validar rela‡”es da estrutura de dados */

            ContaPert = 0 ;
            Se Existe( [ Relacao Comp      ] )
            Entao
               ContaLimbo = 0 ;
               ParaTodos Comp Faz
                  Se NomeLimbo == [ Nome ]
                  Ent„o
                     ContaLimbo = ContaLimbo + 1 ;
                  Sen„o
                  Fim ; /* Se */
               Fim ; /* ParaTodos */
               Se ContaLimbo == 0
               Ent„o
                  ContaPert = ContaPert + 1 ;
               Sen„o
               Fim ; /* Se */
            Senao
            Fim ;

            Se Nao Existe( [ Relacao Tipos           ] ) E
               Nao Existe( [ Relacao Classes         ] ) E
               Nao Existe( [ Relacao Modulos         ] ) E
               Nao Existe( [ Relacao InterfaceModulo ] ) E
               Nao Existe( [ Relacao DeclaradosEm    ] )
            Entao
            Senao
               ContaPert = ContaPert + 1 ;
            Fim ;

            Se ContaPert == 0
            Ent„o
               Titulo "Bloco n„o pertence a estrutura" ;
               Relacao Comp = TextoRelLimbo ;
            Sen„o
            Fim ; /* Se */

         /* Validar dados pertencentes a classe */

            Se Existe( [ Alias AliasDadoExport ] )
            Ent„o
               DadoCorr = Corrente ;
               TemPai   = Existe( [ Rela‡„o Comp ] ) ;
               Enquanto TemPai Faz
                  ComObjeto DadoCorr Faz
                     TemPai = Falso ;
                     ParaTodos Comp Faz
                        TemPai   = Verdadeiro ;
                        DadoCorr = Corrente ;
                        SaiRepeti‡„o ;
                     Fim ;
                  Fim ;
               Fim ;
               ComObjeto DadoCorr Faz
                  Se Nao Existe( [ Rela‡„o Classes ] )
                  Ent„o
                     Titulo "Dado pode ser est tico somente se pertencer a alguma classe"  ;
                  Sen„o
                  Fim ;
               Fim ;
            Sen„o
            Fim ;

            Frm "Validar visibilidade" ;

         /* Validar textos inexistentes em dados */

            Id = 2 ;
            Enquanto Id < 11 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */
            Id = 15 ;
            Enquanto Id < 19 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */
            Id = 23 ;
            Enquanto Id < 19 Faz
               Frm "Verificar inexistencia"( 1, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Frm "Verificar inexistencia"( 1, 12 ) ;
            Frm "Verificar inexistencia"( 1, 13 ) ;

            Id = 2 ;
            Enquanto Id < 12 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */
            Id = 29 ;
            Enquanto Id < 50 Faz
               Frm "Verificar inexistencia"( 4, Id ) ;
               Id = Id + 1 ;
            Fim ; /* Enquanto */

            Frm "Verificar inexistencia"( 4, 19 ) ;
            Frm "Verificar inexistencia"( 4, 20 ) ;
            Frm "Verificar inexistencia"( 4, 24 ) ;

      Sen„o

      /* Registrar existencia de dado limbo */

         Titulo "Existe estrutura de dados limbo" ;
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar visibilidade de dados que efetivamente pertencem a alguma classe *****/

   InicFrm "Validar membro de classe"
      /* Dado do bloco Corpo de Validar visibilidade de dados que efetivamente pertencem a alguma classe */

         inteiro ContaVis ;

      FimDecl

   /* Corpo de Validar visibilidade de dados que efetivamente pertencem a alguma classe */

      Se Existe( [ Relacao decomp ] )
      Entao
         ParaTodos Decomp Faz
            frm "Validar membro de classe" ;
         Fim ; /* ParaTodos */
      Senao
         ContaVis = 0 ;
         Se Existe( [ Alias AliasPublico   ] )
         Ent„o
            ContaVis = ContaVis + 1 ;
         Sen„o
         Fim ;
         Se Existe( [ Alias AliasProtegido ] )
         Ent„o
            ContaVis = ContaVis + 1 ;
         Sen„o
         Fim ;
         Se Existe( [ Alias AliasPrivado   ] )
         Ent„o
            ContaVis = ContaVis + 1 ;
         Sen„o
         Fim ;
         Se ContaVis != 1
         Ent„o
            Titulo "Membro deve ter exatamente uma defini‡„o de visibilidade" ;
         Sen„o
         Fim ;

         ContaVis = 0 ;
         Se Existe( [ Alias AliasVirtual ] )
         Ent„o
            ContaVis = ContaVis + 1 ;
         Sen„o
         Fim ;
         Se Existe( [ Alias AliasVirtualPuro ] )
         Ent„o
            ContaVis = ContaVis + 1 ;
         Sen„o
         Fim ;
         Se Existe( [ Alias AliasInline ] )
         Ent„o
            ContaVis = ContaVis + 1 ;
         Sen„o
         Fim ;
         Se ContaVis > 1
         Ent„o
            Titulo "Membro não pode ser simultaneamente virtual, abstrato ou inline" ;
         Sen„o
         Fim ;
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPVAL Validar tipo de dados *****/

   InicFrm "Validar Tipo"
      /* Dado do bloco Validar rela‡”es estruturais do tipo */

         Inteiro ContaCorpo ;

      FimDecl

   /* Corpo de Validar tipo de dados */

      Se NomeLimbo != [ Nome ] Ent„o

      /* Validar tipo normal */

         /* Validar especifica‡„o do tipo */

            Se Nao Existe( [ Texto TxtDescr  ] )
            Entao
               Titulo "Tipo n„o possui descri‡„o" ;
            Senao
            Fim ;

         /* Ver se tipo j  pertence ao limbo */

            Frm "Registrar pertinencia a limbo" ;

         /* Validar rela‡”es estruturais do tipo */

            Se   Nao Existe( [ Relacao Modulos         ] )
               E Nao Existe( [ Relacao InterfaceModulo ] )
               E Nao Existe( [ Relacao Classes         ] )
               E Nao Existe( [ Relacao Chamado         ] )
            Entao
               Titulo "Tipo n„o ‚ usado para declarar vari vel" ;
               Relacao Comp = TextoRelLimbo ;
            Senao
            Fim ;

            Se   Nao Existe( [ Relacao Modulos ]         )
               E Nao Existe( [ Relacao Classes ]         )
               E Nao Existe( [ Rela‡„o InterfaceModulo ] )
            Entao
               Titulo "Tipo n„o ‚ linearizado" ;
               Relacao Comp = TextoRelLimbo ;
            Senao
            Fim ;

            ContaCorpo = 0 ;
            ParaTodos Dados Faz
               ContaCorpo = ContaCorpo + 1 ;
            Fim ; /* ParaTodos */

            Se Nao Existe( [ Relacao Dados ] )
            Entao
               Titulo "Tipo deve ter exatamente um bloco estrutura de dados raiz do corpo" ;
            Senao
            Fim ;

         /* Validar cabe‡alho do tipo */

            ParaTodos Dados Faz
               Se Nao Existe( [ Texto TxtDclCabec ] )
               Entao
                  Titulo "Tipo n„o possui cabe‡alho" ;
               Senao
               Fim ;
            Fim ;

         /* Validar visibilidade do tipo */

            Frm "Validar visibilidade" ;

      Sen„o

      /* Registrar tipo limbo */

         Titulo "Existe tipo limbo" ;
      Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar tudo *****/

   InicExterno "Validar tudo"

   /* Corpo deValidar tudo */

      /* Validar todos os m¢dulos */

         Endenta 3 ;
         ParaTodos Dicionario DicModulo Faz
            GeraLaudo Novo ;
            Frm "Validar Modulo" ;
         Fim ;

      /* Validar todas as classes */

         ParaTodos Dicionario DicClasses Faz
            GeraLaudo Novo ;
            Frm "Validar Classe" ;
         Fim ;

      /* Validar todos os pacotes */

         ParaTodos Dicionario DicPacotePrograma Faz
            GeraLaudo Novo ;
            Frm "Validar Pacote" ;
         Fim ;

      /* Validar todos os blocos */

         ParaTodos Dicionario DicBlocoPrograma Faz
            GeraLaudo Novo ;
            Frm "Validar um Bloco" ;
         Fim ;

      /* Validar todos os tipos */

         ParaTodos Dicionario DicTipoDados Faz
            GeraLaudo Novo ;
            Frm "Validar Tipo" ;
         Fim ;

      /* Validar todos os dados */

         ParaTodos Dicionario DicDado Faz
            GeraLaudo Novo ;
            Frm "Validar Dado" ;
         Fim ;
   FimFrm

/***** Formul rio: CPPVAL Validar texto inexistente *****/

   InicFrm "Verificar inexistencia"( Inteiro Tipo, Inteiro Id )
      /* Dado do bloco Corpo de Validar texto inexistente */

         ListaTexto Txt ;

      FimDecl

   /* Corpo de Validar texto inexistente */

      Se Tipo == 1
      Entao
         Se Existe( [ Alias Id ] )
         Entao
            Titulo "Existe o alias: " ;
            NaoAvLin ;
            Titulo Id ;
            Alias Id ;
            Alias Id = "" ;
         Senao
         Fim ; /* Se */
      Senao
         Se Existe( [ Texto Id ] )
         Entao
            Titulo "Existe o texto: " ;
            NaoAvLin ;
            Titulo Id ;
            Texto Id ;
            ConcatTexto(  Txt , [ Texto TxtObserv ] ) ;
            InsereTexto(  Txt , 32000 , ""   ) ;
            InsereTexto(  Txt , 32000 , "-----------------------------" ) ;
            ConcatTexto(  Txt , [ Texto Id ] ) ;
            Texto TxtObserv = Txt ;
            EsvaziaTexto( Txt ) ;
            Texto Id = Txt ;
         Senao
         Fim ; /* Se */
      Fim ; /* Se */
   FimFrm

/***** Formul rio: CPPVAL Registrar pertinˆncia … estrutura limbo *****/

   InicFrm "Registrar pertinencia a limbo"

   /* Corpo de CPPVAL Registrar pertinˆncia … estrutura limbo */

      ParaTodos Comp Faz
         Se NomeLimbo == [ Nome ]
         Ent„o
            T¡tulo "Objeto pertence ao limbo" ;
            SaiRepeti‡„o ;
         Sen„o
         Fim ; /* Se */
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: CPPVAL Validar lista blocos vazia *****/

   InicFrm "Validar rela‡„o blocos vazia"

   /* Corpo de CPPVAL Validar lista blocos vazia */

      Se Existe( [ Rela‡„o Blocos ] )
      Ent„o
         T¡tulo "Objeto n„o pode ser relacionado com blocos" ;
         Rela‡„o blocos ;
         ParaTodos Blocos Faz
            Se NAO Existe( [ Relacao Comp ] )
            Ent„o
               Relacao Comp = TextoRelLimbo ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ParaTodos */
         Relacao blocos = TextoVazio ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/**************************************************************************
**** Fim programa: CPPVAL Validar m¢dulos C++
**************************************************************************/

