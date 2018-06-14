/**************************************************************************
*
**** Programa de formul rios: Totem documentation
*
**** Nome do arquivo gerado:  TTDOCLIN
*
*Nome l¢gico da base: Entity relationship model editor for TALISMAN bases
*Nome do arquivo:     C:\TOTEM\FERRAMS\FORMS\TTDOCFRM.BSW
*
*   TOTEM
*
*Vers„o corrente da base
*  Vers„o: 1    Modifica‡„o:      Altera‡„o:      Data libera‡„o: 
*
*  Autorizou libera‡„o     
*
*Hist¢rico da base
*   Vers Modf Altr  Autor    Data     Observa‡”es
*     1              avs   01/nov/93  Beginning of development
*
*Altera‡”es de emergˆncia realizadas e ainda n„o passadas a limpo
*
*Altera‡”es e corre‡”es realizadas
*
****************************************************************************
*
* Formul rios externos (selecion veis)
*
*  Display all key data structures     : "Display all key data structures"
*  Display entities                    : "Display all entitities"
*  Display relationships               : "Display all relationships"
*  Display list entries                : "Display all list entries"
*  Display all                         : "Display all"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  Display all key data structures     : "Display all key data structures"
*  Gerar lista de heran‡a              : "Gerar lista de heran‡a"( Objeto ObjOrg )
*  Display a key data structure        : "Display key data structure"( Inteiro TipoSec )
*  Display entities                    : "Display all entitities"
*  Editar Entidades                    : "Editar entidade"
*  Obter lista de entidades herdeir    : "Obter lista entidades herdeiras"
*  Extrair a lista de entidades atr    : "Obter lista entidades atributo"
*  Determinar tipo de rela‡„o          : "Determinar tipo rela‡„o"
*  Criar Entidades                     : "Criar entidade"
*  Exibir texto                        : "Exibir texto"( Sequencia ValTexto ,
*                                                        Inteiro   IdTexto )
*  Exibir rela‡„o                      : "Exibir rela‡„o"( Sequencia ValRelac ,
*                                                          Inteiro   IdRelac   )
*  Obter nome da chave da entidade     : "Obter nome chave entidade"
*  Exibir estrutura de chave           : "Exibir estrutura chave" ( Sequencia NomeChave )
*  Procurar entidade chave             : "Procurar entidade chave"
*  Editar especifica‡„o do objeto      : "Editar especifica‡„o"
*  Editar atributos da entidade        : "Editar atributos entidade"
*  Exibir entidade atributo de defi    : "Exibir estrutura de dados de entidade"
*  Exibir chaves estrangeiras          : "Exibir chaves estrangeiras"
*  Exibir entidade de liga‡„o          : "Exibir entidade liga‡„o"
*  Exibir estrutura de dados           : "Exibir estrutura de dados"
*  Exibir referencia rela‡„o absorv    : "Exibir referencia rela‡„o absorvida"( Inteiro InxObj1 ,
*                                                                               Inteiro InxObj2 ,
*                                                                               Inteiro InxChave )
*  Exibir campo de estrutura de dad    : "Exibir campo relacionamento"( Inteiro InxObj )
*  Exibir todas as rela‡”es com cha    : "Exibir rela‡”es de entidade"( Logico MostraAbsorvido )
*  Exibir referencia relacao chave     : "Exibir referencia relacao chave"( Inteiro InxObj1 ,
*                                                                           Inteiro InxObj2 ,
*                                                                           Inteiro InxChave )
*  Editar atributos com chave pr¢pr    : "Editar atributos com chave pr¢pria"
*  Exibir estrutura de dados de ent    : "Exibir estrutura dados atributo"
*  Determinar o tipo de atributo       : "Determinar o tipo de atributo"
*  Exibir entidades atributo decomp    : "Exibir atributos decompostos"
*  Editar campos de um atributo        : "Editar campos de um atributo"
*  Display relationships               : "Display all relationships"
*  Editar Relacionamentos              : "Editar relacionamento"
*  Criar Relacionamentos               : "Criar relacionamento"
*  Exibir uma instƒncia de rela‡„o     : "Exibir Instƒncia Rela‡„o"( Inteiro TipoRelac )
*  Exibir cardinalidade espec¡fica     : "Exibir cardinalidade"( Objeto InstLig ,
*                                                                Objeto InstDest )
*  Gerar tabelas de rela‡”es de rel    : "Gerar rela‡”es m£ltiplas"( Fila       DadosRelac ,
*                                                                    Inteiro    TipoRelac  )
*  Display list entries                : "Display all list entries"
*  Editar entidades Liga‡„o            : "Editar entidade de ligacao"
*  Criar entidades Liga‡„o             : "Criar entidade de ligacao"
*  Display all                         : "Display all"
*
***************************************************************************/

/***** Formul rio global *****/

   InicGlobal


         /* Estrutura de dados Declara‡„o das constantes ¡ndices de ali s */

            Constante AliasTipoChar    = 111 ;
            Constante AliasTipoInt     = 104 ;
            Constante AliasTipoData    = 107 ;
            Constante AliasTipoLogico  = 106 ;
            Constante AliasNomeDest    = 103 ;

            Constante AliasTamTot      =  13 ;
            Constante AliasTamFrac     =  15 ;

            Constante AliasInxDesc     =   5 ;

            Constante AliasIntfEnt     = 100 ;
            Constante AliasIntfRelat   = 101 ;

            Constante AliasPapel       =   5 ;
            Constante AliasKeyForm     =  41 ;
            Constante AliasDefine      =  32 ;

            Constante AliasIsKnowledge  = 200 ;
            Constante AliasIsRepository = 201 ;

         /* Estrutura de dados Declara‡„o das constantes ¡ndice de texto */

            Constante TxtRestrIntegr   =  11 ;
            Constante TxtMedidaAtrib   =  14 ;
            Constante TxtValoresAtrib  =  15 ;
            Constante TxtCodValid      =  16 ;
            Constante TxtCodProc       =  17 ;
            Constante TxtFormEntry     =  18 ;
            Constante TxtIntegridAtrib =  19 ;
            Constante TxtDeclAtrib     =  20 ;
            Constante TxtExistAtrib    =  21 ;

         /* Estrutura de dados Declara‡„o de constantes valor */

            Constante Etc     = "..." ;
            Constante Pref    = "***" ;
            Constante Separ   = "" ;
            Constante AttrInx = "AttrInx" ;
            Constante CrdAtr  = "Atr" ;
            Constante CrdAtr1 = "Atr 1" ;
            Constante CrdAtrn = "Atr n" ;
            Constante CrdAtrd = "Atr d" ;
            Constante CrdAtrv = "v"     ;
            Constante CrdVirt = "virt" ;
            Constante CrdList = "List" ;

         /* Estrutura de dados Valores retornados de formul rios fun‡„o */

            Objeto     ObjDefin ;
            Objeto     ObjInicial ;
            Objeto     ObjOrgHerda ;
            Fila       Processados ;
            Fila       ListaEntidade ;
            Fila       ListaAtributo ;
            Sequencia  ChaveEntidade ;
            Sequencia  ChaveGer ;
            Inteiro    TipoRelacao ;
            Inteiro    TipoAtrib ;
            Logico     TemDeclar ;

            Fila       ListaEnt ;
            Fila       ListaLig ;
            ListaTexto ListaChaves ;
      FimDecl
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: Display all key data structures *****/

   InicExterno "Display all key data structures"
      /* Dado do bloco Corpo de Display all key data structures */

         Inteiro     TipoSec ;

      FimDecl

   /* Corpo de Display all key data structures */

      TipoSec = 1 ;

      Enquanto TipoSec < 9 Faz

      /* Exibir titulo */

         Se TipoSec == 1
         Ent„o
            Titulo "" ;
            Titulo "Repository object access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 2
         Ent„o
            Titulo "" ;
            Titulo "Repository attribute access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 3
         Ent„o
            Titulo "" ;
            Titulo "Repository relationship attribute access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 4
         Ent„o
            Titulo "" ;
            Titulo "Repository relation entry access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 5
         Ent„o
            Titulo "" ;
            Titulo "Knowledge base object access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 6
         Ent„o
            Titulo "" ;
            Titulo "Knowledge base attribute access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 7
         Ent„o
            Titulo "" ;
            Titulo "Knowledge base relationship attribute access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 8
         Ent„o
            Titulo "" ;
            Titulo "Knowledge base relation entry access keys" ;
            Titulo "" ;
         Sen„o
         Fim ; /* Se */

      /* Display all object access keys */

         AvMrgEsq 3 ;

         ParaTodos Dicionario DicDado Faz

         /* Display */

            Se   ( TipoSec < 5 )
               E Existe( [ Alias AliasIsRepository ] )
            Ent„o
               Frm "Display key data structure"( TipoSec ) ;
            Sen„o
            Fim ; /* Se */

            Se   ( TipoSec >= 5 )
               E Existe( [ Alias AliasIsKnowledge ] )
            Ent„o
               Frm "Display key data structure"( TipoSec - 4 ) ;
            Sen„o
            Fim ; /* Se */
         Fim ;

         TipoSec = TipoSec + 1 ;
         AvMrgEsq -3 ;
      Fim ;
   FimFrm

/***** Formul rio: Gerar lista de heran‡a *****/

   InicFrm "Gerar lista de heran‡a"( Objeto ObjOrg )
      /* Dado do bloco Corpo de Gerar lista de heran‡a */

         Objeto NovaOrigem ;
         Objeto InstOrigemHerda ;

      FimDecl

   /* Corpo de Gerar lista de heran‡a */

      ComObjeto ObjOrg Faz
         ParaTodos InstsObjeto Faz
            InstOrigemHerda = Corrente ;
            ParaTodos LigsSai Faz
               ComObjeto OutraPonta( Corrente , InstOrigemHerda ) Faz
                  Se ClasseObj( Corrente ) == DicCategoria
                  Entao
                     NovaOrigem = Corrente ;
                     ParaTodos LigsSai Faz
                        ComObjeto ObjetoInst( OutraPonta( Corrente ,
                                    NovaOrigem )) Faz
                           Se   NAO Existe( [ Relacao EntidFortes ] )
                              E NAO PertenceObj( Processados , Corrente )
                           Entao
                              Titulo "Inherits from: " ;
                              NaoAvLin ;
                              Nome ;
                              InsereObj( Processados , Corrente ) ;
                              Frm "Gerar lista de heran‡a"( Corrente ) ;
                           Senao
                           Fim ;
                        Fim ;
                     Fim ;
                  Senao
                  Fim ;
               Fim ;
            Fim ;
         Fim ;
      Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: Display a key data structure *****/

   InicFrm "Display key data structure"( Inteiro TipoSec )
      /* Dado do bloco Body of Display a key data structure */

         Logico      Exibe ;
         Sequencia   Chave ;
         Sequencia   Prefixo ;
         Sequencia   Sufixo ;

      FimDecl

   /* Body of Display a key data structure */

      /* Verify whether data structure is a key data structure */

         Exibe   = Falso ;
         Prefixo = "... , " ;
         Sufixo  = " , ..." ;
         Se Existe( [ Relacao Relacionamentos ] )
         Ent„o
            Se TipoSec == 3
            Ent„o
               Titulo "" ;
               Titulo "Relationship table access key: " ;
               Sufixo = "" ;
               Exibe  = Verdadeiro ;
            Sen„o
            Fim ; /* Se */
         Sen„o
            Se   Existe( [ Relacao ChavesDetEntid ] )
            Ent„o
               ParaTodos ChavesDetEntid Faz
                  Se   Existe( [ Relacao EntidFortes ] )
                  Ent„o
                     Se TipoSec == 2
                     Ent„o
                        Titulo "" ;
                        Titulo "Entity attribute access key: " ;
                        Sufixo  = "" ;
                        Exibe = Verdadeiro ;
                     Sen„o
                     Fim ; /* Se */
                  Sen„o
                     Se TipoSec == 1
                     Ent„o
                        Titulo "" ;
                        Titulo "Entity access key : " ;
                        Prefixo = "" ;
                        Exibe = Verdadeiro ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* Se */
                  SaiRepeticao ;
               Fim ; /* ParaTodos */
            Sen„o
            Fim ; /* Se */
            Se   Existe( [ Relacao ChavesDetEntidLigacao ] )
            Ent„o
               Se TipoSec == 4
               Ent„o
                  Titulo "" ;
                  Titulo "Relation entry access key: " ;
                  Exibe = Verdadeiro ;
                  Prefixo = "" ;
                  Sufixo  = "" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
         Fim ; /* Se */

      /* Display a given key data structure */

         Se   Exibe
         Ent„o
            Chave = [ Alias AliasKeyForm ] ;
            Se SubSeq( Chave , 1 , 2 ) == "@ "
            Ent„o
               Prefixo = "" ;
               Sufixo  = "" ;
            Sen„o
            Fim ; /* Se */

            NaoAvLin ;
            Nome ;

            Titulo "Key: < " ;
            NaoAvLin ;

            Titulo Prefixo ;
            NaoAvLin ;

            Alias AliasKeyForm ;
            Se   Indice( Chave , "," , 1 , 50 ) <= 0
               E TamSeq( Prefixo ) > 0
            Ent„o
               NaoAvLin ;
               Titulo " , " ;
               NaoAvLin ;
               Titulo AttrInx ;
            Sen„o
            Fim ; /* Se */

            NaoAvLin ;
            Titulo Sufixo ;

            NaoAvLin ;
            Titulo " >" ;

            AvMrgEsq 6 ;
            Texto TxtDescr ;
            AvMrgEsq -6 ;

         Sen„o
         Fim ; /* Se */
   FimFrm

/***** Formul rio: Display entities *****/

   InicExterno "Display all entitities"
      /* Dado do bloco Corpo de Display entity */

         Inteiro     TipoSec ;

      FimDecl

   /* Corpo de Display entity */

      TipoSec = 1 ;

      Enquanto TipoSec < 3 Faz

      /* Display entity title */

         Se TipoSec == 1
         Ent„o
          Titulo "" ;
          Titulo "*****************************************************" ;
          Titulo "" ;
          Titulo "Repository object entities" ;
          Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 2
         Ent„o
          Titulo "" ;
          Titulo "*****************************************************" ;
          Titulo "" ;
          Titulo "Knowledge base object entities" ;
          Titulo "" ;
         Sen„o
         Fim ; /* Se */

      /* Display entity element */

         ParaTodos Dicionario DicEntidade Faz
          
            Se   ( TipoSec == 1 )
               E Existe( [ Alias AliasIsRepository ] )
            Ent„o
               Se NAO Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Frm "Editar entidade" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
          
            Se   ( TipoSec == 2 )
               E Existe( [ Alias AliasIsKnowledge ] )
            Ent„o
               Se NAO Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Frm "Editar entidade" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
          
         Fim ;

         TipoSec = TipoSec + 1 ;
      Fim ;
   FimFrm

/***** Formul rio: Editar Entidades *****/

   InicFrm "Editar entidade"

   /* Corpo de Editar Entidades */

      EsvaziaLista( Processados   ) ;
      EsvaziaLista( ListaAtributo ) ;

      /* Editar cabe‡alho de entidade */

         Endenta 6 ;

         Frm "Criar entidade" ;

         Texto  TxtDescr ;

      /* Editar chaves da entidade */

         ChaveEntidade = Etc ;
         ChaveGer      = Etc ;
         ObjDefin      = Corrente ;

         Se NAO Existe( [ Relacao EntidFortes ] )
         Ent„o
            Frm "Obter nome chave entidade" ;

            ChaveEntidade = "" ;

            AvMrgEsq 3 ;
            ParaTodos ChavesDet Faz
               Se NAO Existe( [ Relacao Relacionamentos ] )
               Ent„o
                  Frm "Exibir estrutura chave"( "" ) ;
               Sen„o
               Fim ; /* Se */
            Fim ;
            AvMrgEsq -3 ;

            ChaveEntidade = ChaveGer ;
         Sen„o
         Fim ; /* Se */

      /* Relacionamentos para base de conhecimento */

         Frm "Exibir rela‡ao"( "Knowledge base entity describing this repository entity" ,
                               DefinidoEm ) ;
         Frm "Exibir relacao"( "Repository entity described by this knowledge base entity" ,
                               DefineEntidade ) ;
         Frm "Exibir relacao"( "Repository relationship described by this knowledge base entity" ,
                               DefineRelacionamento ) ;

      /* Editar especifica‡„o de entidade */

         Frm "Editar especifica‡„o" ;

      /* Editar atributos da estrutura de heran‡a desta entidade */

         Frm "Editar atributos entidade" ;
   FimFrm

/***** Formul rio: Obter lista de entidades herdeiras *****/

   InicFrm "Obter lista entidades herdeiras"
      /* Dado do bloco Corpo de Obter lista de entidades herdeiras */

         Objeto InstOrigem ;
         Objeto NovaOrigem ;

      FimDecl

   /* Corpo de Obter lista de entidades herdeiras */

      Se NAO PertenceObj( Processados , Corrente )
      Ent„o
         ObjOrgHerda = Corrente ;
         InsereObj( ListaEntidade , Corrente ) ;
         InsereObj( Processados   , Corrente ) ;
         Frm "Obter lista entidades atributo" ;

         Se NAO Existe( [ Rela‡„o ChavesDet ] )
         Ent„o
            ParaTodos InstsObjeto Faz
               InstOrigem = Corrente ;
               ParaTodos LigsSai Faz
                  ComObjeto OutraPonta( Corrente , InstOrigem ) Faz
                     Se ClasseObj( Corrente ) == DicCategoria
                     Entao
                        NovaOrigem = Corrente ;
                        ParaTodos LigsSai Faz
                           ComObjeto ObjetoInst( OutraPonta( Corrente ,
                                       NovaOrigem )) Faz
                              Frm "Obter lista entidades herdeiras" ;
                           Fim ;
                        Fim ;
                     Senao
                     Fim ;
                  Fim ;
               Fim ;
            Fim ;
         Sen„o
         Fim ; /* Se */
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Extrair a lista de entidades atributo do diagrama *****/

   InicFrm "Obter lista entidades atributo"
      /* Dado do bloco Corpo de Extrair a lista de entidades atributo do diagrama */

         Objeto    LigCorr ;
         Objeto    ObjAtributo ;
         Objeto    InstOrigem ;
         Sequencia NomeRot ;

      FimDecl

   /* Corpo de Extrair a lista de entidades atributo do diagrama */

      ParaTodos InstsObjeto Faz
         InstOrigem = Corrente ;
         ParaTodos LigsSai Faz
            LigCorr = Corrente ;
            ComObjeto OutraPonta( Corrente , InstOrigem ) Faz
               Se ClasseObj( Corrente ) == DicEntidade
               Entao
                  ObjAtributo = ObjetoInst( Corrente ) ;
                  ComObjeto RotuloLig( LigCorr ) Faz
                     Se ExisteObj( Corrente )
                     Entao
                        ComObjeto ObjetoInst( Corrente ) Faz
                           NomeRot = [ Nome ] ;
                           Se SubSeq( NomeRot , 1 , 3 ) == CrdAtr
                           Entao
                              ComObjeto ObjAtributo Faz
                                 Se NAO PertenceObj( Processados ,
                                                     Corrente )
                                 Ent„o
                                    InsereObj( ListaAtributo , Corrente ) ;
                                    InsereObj( Processados , Corrente ) ;
                                 Sen„o
                                 Fim ; /* Se */
                              Fim ; /* ComObjeto */
                           Senao
                           Fim ;
                        Fim ;
                     Senao
                        Titulo ">>> Missing cardinality near" ;
                        ComObjeto ObjAtributo Faz
                           Nome ;
                        Fim ; /* ComObjeto */
                     Fim;
                  Fim ;
               Senao
               Fim ;
            Fim ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul rio: Determinar tipo de rela‡„o *****/

   InicFrm "Determinar tipo rela‡„o"
      /* Dado do bloco Corpo de Determinar tipo de rela‡„o */

         Inteiro     Conta      ;
         Inteiro     ContaEntra ;
         Inteiro     ContaSai   ;
         Inteiro     ContaSem   ;
         Inteiro     ContaVirt  ;
         Inteiro     ContaRec   ;
         Objeto      ObjetoRec  ;

      /* Dado do bloco Obter a contagem de liga‡”es */

         Objeto      ObjCorr ;
         Objeto      ObjetoRot ;
         Sequencia   NomeRot ;

      FimDecl

   /* Corpo de Determinar tipo de rela‡„o */

      /* Obter a contagem de liga‡”es */

         ContaEntra = 0 ;
         ContaSai   = 0 ;
         ContaSem   = 0 ;
         Conta      = 0 ;
         ContaRec   = 0 ;
         ContaVirt  = 0 ;
         ObjetoRot  = Corrente ;
         ObjetoRec  = Corrente ;

         ParaTodos InstsObjeto Faz
            ObjCorr = Corrente ;
            ParaTodos LigsInstancia Faz
               Conta    = Conta    + 1 ;
               Se Liga‡„oEntra( Corrente , ObjCorr )
               Entao
                  ContaEntra  = ContaEntra + 1 ;
               Senao
                  Se Liga‡„oSai( Corrente , ObjCorr )
                  Entao
                     ContaSai  = ContaSai + 1 ;
                     ObjetoRot = RotuloLig( Corrente ) ;

                     Se ExisteObj( ObjetoRot )
                     Ent„o
                        ComObjeto ObjetoRot Faz
                           NomeRot = [ Nome ] ;
                           Se NomeRot == CrdVirt
                           Ent„o
                              ContaVirt = 1 ;
                           Sen„o
                           Fim ; /* Se */
                        Fim ; /* ComObjeto */

                     Sen„o
                     Fim ; /* Se */
                  Senao
                     ContaSem = ContaSem + 1 ;
                     Se ObjetosIguais( ObjetoRec ,
                                       OutraPonta( Corrente , ObjCorr ))
                     Ent„o
                        ContaRec  = ContaRec + 1 ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ;
               Fim ;
            Fim ;
         Fim ;

      /* Determinar o tipo da liga‡„o */

         TipoRelacao = 0 ;

         Se   ( ContaSem == 2 )
            E ( Conta    == 2 )
         Entao
            Se ContaRec == 0
            Ent„o
               TipoRelacao = 1 ;
            Sen„o
               TipoRelacao = 4 ;
            Fim ; /* Se */
         Senao
            Se   ( ContaSem == 2 )
               E ( ContaSai == 1 )
               E ( Conta    == 3 )
            Entao
               Se ContaVirt == 0
               Ent„o
                  TipoRelacao = 2 ;
               Sen„o
                  TipoRelacao = 5 ;
               Fim ; /* Se */
            Senao
               Se   ( ContaEntra == 1 )
                  E ( ContaSai   == 2 )
                  E ( Conta      == 3 )
               Entao
                  TipoRelacao = 3 ;
               Senao
               Fim ;
            Fim ;
         Fim ;
   FimFrm

/***** Formul rio: Criar Entidades *****/

   InicFrm "Criar entidade"

   /* Corpo de Criar Entidades */

      Titulo "" ;
      Titulo "-------------------------------------------------------" ;
      Titulo "" ;
      Titulo "Entity: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Exibir texto *****/

   InicFrm "Exibir texto"( Sequencia ValTexto ,
                           Inteiro   IdTexto )

   /* Corpo de Exibir texto */

      Se Existe( [ Texto IdTexto ] )
      Ent„o
         Titulo ValTexto ;
         Texto IdTexto ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Exibir rela‡„o *****/

   InicFrm "Exibir rela‡„o"( Sequencia ValRelac ,
                             Inteiro   IdRelac   )

   /* Corpo de Exibir rela‡„o */

      Se Existe( [ Rela‡„o IdRelac ] )
      Ent„o
         Titulo  ValRelac ;
         Rela‡„o IdRelac ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Obter nome da chave da entidade *****/

   InicFrm "Obter nome chave entidade"

   /* Corpo de Obter nome da chave da entidade */

      Frm "Procurar entidade chave" ;

      ChaveGer = Etc ;

      ComObjeto ObjDefin Faz
         Se Existe( [ Relacao ChavesDet ] )
         Ent„o
            ChaveGer = "" ;
            ParaTodos ChavesDet Faz
               Se NAO Existe( [ Relacao Relacionamentos ] )
               Ent„o
                  ChaveGer = ConcatSeq( ChaveGer , [ Alias AliasKeyForm ] ) ;
                  ChaveGer = ConcatSeq( ChaveGer , " "      ) ;
               Sen„o
               Fim ; /* Se */
            Fim ; /* ParaTodos */
         Sen„o
         Fim ; /* Se */
      Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: Exibir estrutura de chave *****/

   InicFrm "Exibir estrutura chave" ( Sequencia NomeChave )
      /* Dado do bloco Corpo de Exibir estrutura de chave */

         Sequencia Chave ;

      FimDecl

   /* Corpo de Exibir estrutura de chave */

      Titulo "" ;
      Titulo "Access key: " ;
      NaoAvLin ;
      Titulo "< " ;

      Chave = [ Alias AliasKeyForm ] ;
      Se SubSeq( Chave , 1 , 2 ) == "@ "
      Ent„o

         NaoAvLin ;
         Alias AliasKeyForm ;

      Sen„o

         NaoAvLin ;
         Titulo ChaveEntidade ;
         Se TamSeq( ChaveEntidade ) != 0
         Ent„o
            NaoAvLin ;
            Titulo ", " ;
         Sen„o
         Fim ; /* Se */

         NaoAvLin ;
         Alias AliasKeyForm ;

         Se TamSeq( NomeChave ) != 0
         Ent„o
            NaoAvLin ;
            Titulo " , " ;
            NaoAvLin ;
            Titulo NomeChave ;
         Sen„o
         Fim ; /* Se */

      Fim ; /* Se */

      NaoAvLin ;
      Titulo " >" ;

      Se Existe( [ Texto TxtDescr ] )
      Ent„o
         AvMrgEsq 6 ;
         Texto TxtDescr ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Procurar entidade chave *****/

   InicFrm "Procurar entidade chave"
      /* Dado do bloco Corpo de Procurar entidade chave */

         Inteiro ContaChave ;

      /* Dado do bloco Navegar sobre a lista de heran‡a */

         Objeto InstOrigem ;
         Objeto InstCateg ;

      FimDecl

   /* Corpo de Procurar entidade chave */

      ContaChave = 0 ;
      ParaTodos ChavesDet Faz
         Se NAO Existe( [ Relacao Relacionamentos ] )
         Ent„o
            ContaChave = ContaChave + 1 ;
         Sen„o
         Fim ; /* Se */
      Fim ; /* ParaTodos */

      Se ContaChave >= 1 Ent„o

      /* Compor a chave a partir do objeto corrente */

         ObjDefin = Corrente ;

      Sen„o

      /* Navegar sobre a lista de heran‡a */

         ParaTodos InstsObjeto Faz
            InstOrigem = Corrente ;
            ParaTodos LigsSai Faz
               ComObjeto OutraPonta( Corrente , InstOrigem ) Faz
                  Se ClasseObj( Corrente ) == DicCategoria
                  Entao
                     InstCateg = Corrente ;
                     ParaTodos LigsSai Faz
                        FrmElem ObjetoInst( OutraPonta( Corrente,InstCateg ))
                             "Procurar entidade chave" ;
                     Fim ;
                  Senao
                  Fim ;
               Fim ;
            Fim ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul rio: Editar especifica‡„o do objeto *****/

   InicFrm "Editar especifica‡„o"

   /* Corpo de Editar especifica‡„o do objeto */

      /* Restri‡”es de integridade */

         Frm "Exibir texto"( "Specific integrity constraints" ,
                             TxtRestrIntegr ) ;

      /* Editar observa‡”es */

         Frm "Exibir texto"( "Observations" ,
                             TxtObserv     ) ;
   FimFrm

/***** Formul rio: Editar atributos da entidade *****/

   InicFrm "Editar atributos entidade"
      /* Dado do bloco Gerar listas de lineariza‡„o */

         Objeto    ObjDeclar ;

      /* Dado do bloco Obter objeto defini‡„o de atributos absorvidos */

         Sequencia NomeRot ;
         Objeto    InstCorr ;
         Objeto    LigCorr ;
         Objeto    ObjDecl ;

      FimDecl

   /* Editar atributos da entidade */

      /* Gerar listas de lineariza‡„o */

         EsvaziaLista( ListaEntidade ) ;
         EsvaziaLista( ListaAtributo ) ;

         TemDeclar   = FALSO ;
         ObjDeclar   = ObjDefin ;

         ObjOrgHerda = Corrente ;

         Se NAO Existe( [ Rela‡„o EntidFortes ] ) Ent„o

         /* Gerar listas de entidades */

            /* Gerar cabe‡alho */

               MrgEsq 4 ;

            /* Obter objeto defini‡„o de atributos absorvidos */

               ComObjeto ObjDefin Faz
                  ParaTodos InstsObjeto Faz
                     InstCorr = Corrente ;
                     ParaTodos LigsSai Faz
                        LigCorr = Corrente ;
                        ComObjeto ObjetoInst( OutraPonta( Corrente , InstCorr )) Faz
                           Se ClasseObj( Corrente ) == DicEntidade
                           Ent„o
                              ObjDecl = Corrente ;
                              ComObjeto RotuloLig( LigCorr ) Faz
                                 Se ExisteObj( Corrente )
                                 Ent„o
                                    ComObjeto ObjetoInst( Corrente ) Faz
                                       NomeRot = [ Nome ] ;
                                       Se NomeRot == CrdAtrd
                                       Ent„o
                                          TemDeclar = Verdadeiro ;
                                          ObjDeclar = ObjDecl ;
                                       Sen„o
                                       Fim ; /* Se */
                                    Fim ; /* ComObjeto */
                                 Sen„o
                                    Titulo ">>> Missing cardinality near" ;
                                    ComObjeto ObjDecl Faz
                                       Nome ;
                                    Fim ; /* ComObjeto */
                                 Fim ; /* Se */
                              Fim ; /* ComObjeto */
                           Sen„o
                           Fim ; /* Se */
                        Fim ; /* ComObjeto */
                     Fim ; /* ParaTodos */
                  Fim ; /* ParaTodos */
               Fim ; /* ComObjeto */

            /* Obter lista de ancestrais de herdeiros */

               Se TemDeclar
               Ent„o
                  Se PertenceObj( Processados , ObjDeclar )
                  Ent„o
                     TemDeclar = FALSO ;
                  Sen„o
                     InsereObj( Processados , ObjDeclar ) ;
                  Fim ; /* Se */
               Sen„o
               Fim ; /* Se */

               Frm "Obter lista entidades herdeiras" ;

         Sen„o

         /* Gerar listas de atributos */

            MrgEsq 4 ;

            InsereObj( ListaAtributo , Corrente ) ;
            InsereObj( Processados   , Corrente ) ;

            AvMrgEsq 3 ;
         Fim ;

      /* Gerar a lista de estruturas de dados internas */

         Se TemDeclar
         Ent„o
            ComObjeto ObjDeclar Faz
               Titulo "" ;
               Titulo "Descriptor attribute entity: " ;
               NaoAvLin ;
               Nome ;

               Frm "Exibir estrutura de dados de entidade" ;

            Fim ; /* ComObjeto */
         Sen„o
         Fim ; /* Se */

         AvMrgEsq -3 ;

      /* Editar todos atributos com chave pr¢pria */

         AvMrgEsq 3 ;
         Frm "Editar atributos com chave pr¢pria" ;
         AvMrgEsq -3 ;

      /* Editar todas as entidades de que esta entidade herda */

         Titulo "" ;
         Frm "Gerar lista de heran‡a"( ObjOrgHerda ) ;
   FimFrm

/***** Formul rio: Exibir entidade atributo de defini‡„o *****/

   InicFrm "Exibir estrutura de dados de entidade"

   /* Corpo de Exibir entidade atributo de defini‡„o */

      /* Gerar a chave da estrutura de dados da entidade */

         ParaTodos ChavesDet Faz
            Frm "Exibir estrutura chave"( Separ ) ;
         Fim ;

         AvMrgEsq 3 ;

      /* Exibir todos todas as chaves extrangeiras */

         ParaTodos ListaEntidade Faz
            Frm "Exibir chaves estrangeiras" ;
         Fim ; /* ParaTodos */

         Frm "Exibir chaves estrangeiras" ;

      /* Exibir todas as rela‡”es absorvidas em entidades herdadas */

         Frm "Exibir rela‡”es de entidade"( VERDADEIRO ) ;

      /* Exibir todos os atributos do corpo */

         ParaTodos Dados Faz
            Frm "Exibir estrutura de dados" ;
         Fim ;
   FimFrm

/***** Formul rio: Exibir chaves estrangeiras *****/

   InicFrm "Exibir chaves estrangeiras"
      /* Dado do bloco Corpo de Exibir chaves estrangeiras */

         Objeto    InstOrigem ;
         Objeto    ObjAtributo ;
         Objeto    LigCorr ;
         Sequencia NomeRot ;
         Logico    Primeiro ;

      FimDecl

   /* Corpo de Exibir chaves estrangeiras */

      Primeiro = VERDADEIRO ;
      ParaTodos InstsObjeto Faz
         InstOrigem = Corrente ;
         ParaTodos LigsSai Faz
            LigCorr = Corrente ;
            ComObjeto ObjetoInst( OutraPonta( Corrente , InstOrigem )) Faz

      Se ClasseObj( Corrente ) == DicEntidade Ent„o

      /* Exibir chave estrangeira de entidade */


         ObjAtributo = Corrente ;
         ComObjeto RotuloLig( LigCorr ) Faz
            Se ExisteObj( Corrente )
            Entao
               ComObjeto ObjetoInst( Corrente ) Faz
                  NomeRot = [ Nome ] ;
                  Se SubSeq( NomeRot , 1 , 3 ) != CrdAtr
                  Entao

                     EsvaziaLista( ListaEnt ) ;
                     EsvaziaLista( ListaLig ) ;
                     EsvaziaTexto( ListaChaves ) ;

                     InsereObj( ListaEnt , InstOrigem ) ;
                     InsereObj( ListaLig , LigCorr    ) ;
                     ComObjeto ObjetoInst( InstOrigem ) Faz
                         Frm "Obter nome chave entidade" ;
                         InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                     Fim ;

                     InsereObj( ListaEnt ,
                                OutraPonta( LigCorr , InstOrigem )) ;
                     ComObjeto ObjetoInst( OutraPonta( LigCorr ,
                                                       InstOrigem )) Faz
                         Frm "Obter nome chave entidade" ;
                         InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                     Fim ;
                     InsereObj( ListaLig , LigCorr    ) ;

                     Titulo "" ;
                     Frm "Exibir referencia rela‡„o absorvida"( 2 , 10 , 1 ) ;

                  Senao
                  Fim ;
               Fim ;
            Senao
               Titulo ">>> Missing cardinality" ;
            Fim;
         Fim ;

      Sen„o

      /* Exibir chave estrangeira de entidade de rela‡„o */

         Se ClasseObj( Corrente ) == DicEntidadeLiga‡„o
         Ent„o
            ObjAtributo = Corrente ;
            ComObjeto RotuloLig( LigCorr ) Faz
               Se ExisteObj( Corrente )
               Entao
                  ComObjeto ObjetoInst( Corrente ) Faz
                     NomeRot = [ Nome ] ;
                     Se SubSeq( NomeRot , 1 , 3 ) != CrdList
                     Entao
                        ComObjeto ObjAtributo Faz
                           AvMrgEsq 3 ;
                           Titulo "" ;
                           Titulo "List entry: " ;
                           NaoAvLin ;
                           Nome ;
                           Texto TxtDescr ;
                           Frm "Exibir entidade liga‡„o" ;
                           AvMrgEsq -3 ;
                        Fim ; /* ComObjeto */
                     Senao
                     Fim ;
                  Fim ;
               Senao
                  Titulo ">>> Cardinality must be \"List\"" ;
               Fim;
            Fim ;
         Sen„o
         Fim ; /* Se */
      Fim ;

            Fim ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul rio: Exibir entidade de liga‡„o *****/

   InicFrm "Exibir entidade liga‡„o"
      /* Dado do bloco Exibir chaves extrangeiras da entidade de liga‡„o */

         Objeto    InstOrigem ;
         Objeto    InstDestino ;
         Objeto    LigCorr ;

      FimDecl

   /* Corpo de Exibir entidade de liga‡„o */

      /* Exibir estruturas da entidade de liga‡„o */

         Titulo "" ;
         Titulo "List entry composition" ;
         ParaTodos Dados Faz
            Frm "Exibir estrutura de dados" ;
         Fim ;

      /* Exibir chaves extrangeiras da entidade de liga‡„o */

         ParaTodos InstsObjeto Faz
            InstOrigem = Corrente ;
            ParaTodos LigsSai Faz
               LigCorr = Corrente ;
               ComObjeto ObjetoInst( OutraPonta( Corrente , InstOrigem )) Faz
                  InstDestino = Corrente ;
                  ComObjeto RotuloLig( LigCorr ) Faz
                     Se ExisteObj( Corrente )
                     Entao

                        EsvaziaLista( ListaEnt ) ;
                        EsvaziaLista( ListaLig ) ;
                        EsvaziaTexto( ListaChaves ) ;

                        InsereObj( ListaEnt , InstOrigem ) ;
                        InsereObj( ListaLig , LigCorr    ) ;
                        ComObjeto ObjetoInst( InstDestino ) Faz
                            Frm "Obter nome chave entidade" ;
                            InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                        Fim ;

                        Frm "Exibir campo relacionamento"( 1 ) ;

                     Senao
                        Titulo ">>> Missing cardinality" ;
                     Fim;
                  Fim ;
               Fim ;
            Fim ;
         Fim ;
   FimFrm

/***** Formul rio: Exibir estrutura de dados *****/

   InicFrm "Exibir estrutura de dados"

   /* Corpo de Exibir estrutura de dados */

      /* Exibir especificacao raiz da estrutura de  dados */

         Titulo "" ;
         Titulo "Data structure: " ;
         NaoAvLin ;
         Nome ;

         AvMrgEsq 3 ;
         Frm "Editar campos de um atributo" ;
         AvMrgEsq -3 ;

      /* Exibir campos da estrutura de dados */

         AvMrgEsq 3 ;
         Se Existe( [ Rela‡„o Decomp ] )
         Entao
            ParaTodos Decomp Faz
               AvMrgEsq  3 ;
               Titulo "Data structure field: " ;
               NaoAvLin ;
               Nome ;
               AvMrgEsq 3 ;
               Frm "Editar campos de um atributo" ;
               AvMrgEsq -6 ;
            Fim ;
         Senao
         Fim ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: Exibir referencia rela‡„o absorvida *****/

   InicFrm "Exibir referencia rela‡„o absorvida"( Inteiro InxObj1 ,
                                                  Inteiro InxObj2 ,
                                                  Inteiro InxChave )

   /* Corpo de Exibir referencia rela‡„o absorvida */

      Titulo "Relationship is absorbed" ;
      Frm "Exibir campo relacionamento"( InxObj1 ) ;

      Se InxObj2 < 5
      Ent„o
         Frm "Exibir campo relacionamento"( InxObj2 ) ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Exibir campo de estrutura de dados de relacionamento *****/

   InicFrm "Exibir campo relacionamento"( Inteiro InxObj )
      /* Dado do bloco Corpo de Exibir campo de estrutura de dados de relacionamento */

         Objeto ObjNome ;
         Logico TemNome ;

      FimDecl

   /* Corpo de Exibir campo de estrutura de dados de relacionamento */

      ObjNome = ObjetoLista( ListaEnt , InxObj ) ;
      TemNome = FALSO ;

      ComObjeto RotuloLig( ObjetoLista( ListaLig , InxObj )) Faz
         Se ExisteObj( Corrente )
         Entao
            Se Existe( [ Alias AliasNomeDest ] )
            Ent„o
               ObjNome = Corrente ;
               TemNome = VERDADEIRO ;
            Sen„o
            Fim ; /* Se */
         Senao
         Fim ;
      Fim ; /* ComObjeto */

      AvMrgEsq 3 ;
      Titulo "Field: " ;
      ComObjeto ObjNome Faz
         NaoAvLin ;
         Se TemNome
         Ent„o
            Alias AliasNomeDest ;
         Sen„o
            Nome ;
         Fim ; /* Se */
      Fim ; /* ComObjeto */

      AvMrgEsq 3 ;
      Titulo "Key type: " ;
      NaoAvLin ;
      Titulo LinhaTexto( ListaChaves , InxObj ) ;
   FimFrm

/***** Formul rio: Exibir todas as rela‡”es com chaves pr¢prias em entidades herdadas *****/

   InicFrm "Exibir rela‡”es de entidade"( Logico MostraAbsorvido )
      /* Dado do bloco Corpo de Exibir todas as rela‡”es com chaves pr¢prias em entidades herdadas */

         Objeto      InstOrigem ;
         Fila        ListaRelac ;
         Fila        ListaRelRec ;
         Fila        ListaDadoRec ;

      /* Dado do bloco Processar todas as rela‡”es desta entidade */

         Objeto      ObjRelac ;
         Objeto      InstCorr ;
         Objeto      DadoCorr ;
         Objeto      DadoAcha ;
         Objeto      ObjBase ;
         Inteiro     Conta ;

      /* Dado do bloco Selecionar modo de exibir chave de rela‡„o 1 */

         Objeto      InstRelac ;
         Objeto      InstLig ;
         Inteiro     Mostra ;

      /* Dado do bloco Exibir rela‡„o valor */

         Sequencia NomeRot ;

      /* Dado do bloco Processar todos os relacionamentos recursivos */

         Inteiro ContaRec ;

      FimDecl

   /* Corpo de Exibir todas as rela‡”es com chaves pr¢prias em entidades herdadas */

      ParaTodos ListaEntidade Faz

      /* Obter a lista de rela‡”es da entidade corrente */

         EsvaziaLista( ListaRelac ) ;

         ParaTodos InstsObjeto Faz
            InstOrigem = Corrente ;
            ParaTodos LigsInstancia Faz
               ComObjeto ObjetoInst( OutraPonta( Corrente , InstOrigem )) Faz
                  Se ClasseObj( Corrente ) == DicRelacionamento
                  Entao
                     InsereObj( ListaRelac , Corrente ) ;
                  Senao
                  Fim ;
               Fim ;
            Fim ;
         Fim ;

      /* Processar todas as rela‡”es desta entidade */

         ObjBase  = Corrente ;

         ParaTodos ListaRelac Faz

         /* Determinar se compartilha dado */

            ObjRelac = Corrente ;
            Conta    = 0 ;

            ParaTodos Dados Faz
               DadoCorr = Corrente ;
               ComObjeto ObjBase Faz
                  ParaTodos ChavesDet Faz
                     Se ObjetosIguais( DadoCorr , Corrente )
                     Ent„o
                        Conta    = Conta + 1 ;
                        DadoAcha = Corrente ;
                        SaiRepeticao ;
                     Sen„o
                     Fim ;
                  Fim;
               Fim ;
            Fim;

            Se  ( Conta != 0 )
              E NAO MostraAbsorvido
            Ent„o
              Mostra = 2 ;
            Sen„o
               Se  ( Conta == 0 )
                 E MostraAbsorvido
               Ent„o
                  Mostra = 1 ;
               Sen„o
                  Mostra = 0 ;
               Fim ; /* Se */
            Fim ; /* Se */

         /* Exibir todas as rela‡”es da entidade corrente e que s„o absorvidas */

            Se  Mostra != 0
            Ent„o

            /* Exibir t¡tulo do conjunto de rela‡”es */

               Titulo "" ;
               Titulo "Relationship: " ;
               NaoAvLin ;
               Nome ;

            /* Selecionar modo de exibir chave de rela‡„o 1 */

               Frm "Determinar tipo rela‡„o" ;

               EsvaziaLista( ListaEnt ) ;
               EsvaziaLista( ListaLig ) ;
               EsvaziaTexto( ListaChaves ) ;

               Se TipoRela‡„o == 1 Ent„o

               /* Exibir rela‡„o comum */

                  Titulo "Simple relationship" ;

                  ParaTodos InstsObjeto Faz
                     InstRelac = Corrente ;
                     ParaTodos LigsInstancia Faz
                        InstLig = Corrente ;
                        ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                           InsereObj( ListaEnt , Corrente ) ;
                           InsereObj( ListaLig , InstLig  ) ;
                           Frm "Obter nome chave entidade" ;
                           InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                        Fim ;
                     Fim ; /* ParaTodos */
                  Fim ; /* ParaTodos */

                  AvMrgEsq 3 ;
                  Se ObjetosIguais( ObjetoLista( ListaEnt , 1 ) , ObjBase )
                  Ent„o
                     Se Mostra == 1
                     Ent„o
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 10 , 1 ) ;
                     Sen„o
                        FrmElem DadoAcha
                            "Exibir referencia relacao chave"(     2 , 10 , 1 ) ;
                     Fim ; /* Se */
                  Sen„o
                     Se Mostra == 1
                     Ent„o
                        Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 1 ) ;
                     Sen„o
                        FrmElem DadoAcha
                            "Exibir referencia relacao chave"(     1 , 10 , 2 ) ;
                     Fim ; /* Se */
                  Fim ; /* Se */
                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar modo de exibir chave de rela‡„o 2 */

               Se TipoRela‡„o == 2 Ent„o

               /* Exibir rela‡„o valor */

                  Titulo "Normal value relationship" ;

                  ParaTodos InstsObjeto Faz
                     InstRelac = Corrente ;
                     ParaTodos LigsSai Faz
                        InstLig = Corrente ;
                        ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                           InsereObj( ListaEnt , Corrente ) ;
                           InsereObj( ListaLig , InstLig  ) ;
                           Frm "Obter nome chave entidade" ;
                           InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                        Fim ;
                     Fim ; /* ParaTodos */

                     ParaTodos LigsInstancia Faz
                        Se NAO Liga‡„oSai( Corrente , InstRelac )
                        Ent„o
                           InstLig = Corrente ;
                           ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                              InsereObj( ListaEnt , Corrente ) ;
                              InsereObj( ListaLig , InstLig  ) ;
                              Frm "Obter nome chave entidade" ;
                              InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                           Fim ;
                        Sen„o
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                  Fim ; /* ParaTodos */

                  AvMrgEsq 3 ;
                  Se ObjetosIguais( ObjetoLista( ListaEnt , 1 ) , ObjBase )
                  Ent„o
                     Se Mostra == 1
                     Ent„o
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 3 , 1 ) ;
                     Sen„o
                        FrmElem DadoAcha
                            "Exibir referencia relacao chave"(     2 , 3 , 1 ) ;
                     Fim ; /* Se */
                  Sen„o
                     Se ObjetosIguais( ObjetoLista( ListaEnt , 2 ) , ObjBase )
                     Ent„o
                        Se Mostra == 1
                        Ent„o
                           Frm "Exibir referencia rela‡„o absorvida"( 3 , 1 , 2 ) ;
                        Sen„o
                           FrmElem DadoAcha
                               "Exibir referencia relacao chave"(     3 , 1 , 2 ) ;
                        Fim ; /* Se */
                     Sen„o
                        Se Mostra == 1
                        Ent„o
                           Frm "Exibir referencia rela‡„o absorvida"( 2 , 1 , 3 ) ;
                        Sen„o
                           FrmElem DadoAcha
                               "Exibir referencia relacao chave"(     2 , 1 , 3 ) ;
                        Fim ; /* Se */
                     Fim ; /* Se */
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar modo de exibir chave de rela‡„o 3 */

               Se TipoRela‡„o == 3 Ent„o

               /* Exibir rela‡„o ternaria */

                  Titulo "Ternary relationship" ;

                  ParaTodos InstsObjeto Faz
                     InstRelac = Corrente ;
                     ParaTodos LigsEntra Faz
                        InstLig = Corrente ;
                        ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                           InsereObj( ListaEnt , Corrente ) ;
                           InsereObj( ListaLig , InstLig  ) ;
                           Frm "Obter nome chave entidade" ;
                           InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                        Fim ;
                     Fim ; /* ParaTodos */

                     ParaTodos LigsSai Faz
                        InstLig = Corrente ;
                        ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                           InsereObj( ListaEnt , Corrente ) ;
                           InsereObj( ListaLig , InstLig  ) ;
                           Frm "Obter nome chave entidade" ;
                           InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                        Fim ;
                     Fim ; /* ParaTodos */
                  Fim ; /* ParaTodos */

                  AvMrgEsq 3 ;
                  Se ObjetosIguais( ObjetoLista( ListaEnt , 1 ) , ObjBase )
                  Ent„o
                     Se Mostra == 1
                     Ent„o
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 3 , 1 ) ;
                     Sen„o
                        FrmElem DadoAcha
                            "Exibir referencia relacao chave"(     2 , 3 , 1 ) ;
                     Fim ; /* Se */
                  Sen„o
                     Se ObjetosIguais( ObjetoLista( ListaEnt , 2 ) , ObjBase )
                     Ent„o
                        Se Mostra == 1
                        Ent„o
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 2 ) ;
                        Sen„o
                           FrmElem DadoAcha
                               "Exibir referencia relacao chave"(     1 , 10 , 2 ) ;
                        Fim ; /* Se */
                     Sen„o
                        Se Mostra == 1
                        Ent„o
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 3 ) ;
                        Sen„o
                           FrmElem DadoAcha
                               "Exibir referencia relacao chave"(     1 , 10 , 3 ) ;
                        Fim ; /* Se */
                     Fim ; /* Se */
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar modo de exibir chave de rela‡„o 4 */

               Se TipoRela‡„o == 4 Ent„o

               /* Registrar rela‡„o recursiva */

                  Se NAO PertenceObj( ListaRelRec , Corrente )
                  Ent„o
                     InsereObj( ListaRelRec  , Corrente ) ;
                     Titulo "relacao problema" ;
                     Nome ;
                     Nome ;
                  /*   InsereObj( ListaDadoRec , DadoAcha ) ; */
                  Sen„o
                  Fim ; /* Se */

               Sen„o
               Fim ;

            /* Selecionar modo de exibir chave de rela‡„o 5 */

               Se TipoRela‡„o == 5 Ent„o

               /* Exibir rela‡„o valor virtual */

                  Titulo "Virtual value relationship" ;

                  ParaTodos InstsObjeto Faz
                     InstRelac = Corrente ;
                     ParaTodos LigsSai Faz
                        InstLig = Corrente ;
                        ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                           InsereObj( ListaEnt , Corrente ) ;
                           InsereObj( ListaLig , InstLig  ) ;
                           Frm "Obter nome chave entidade" ;
                           InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                        Fim ;
                     Fim ; /* ParaTodos */

                     ParaTodos LigsInstancia Faz
                        Se NAO Liga‡„oSai( Corrente , InstRelac )
                        Ent„o
                           InstLig = Corrente ;
                           ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                              InsereObj( ListaEnt , Corrente ) ;
                              InsereObj( ListaLig , InstLig  ) ;
                              Frm "Obter nome chave entidade" ;
                              InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                           Fim ;
                        Sen„o
                        Fim ; /* Se */
                     Fim ; /* ParaTodos */
                  Fim ; /* ParaTodos */

                  AvMrgEsq 3 ;
                  Se ObjetosIguais( ObjetoLista( ListaEnt , 1 ) , ObjBase )
                  Ent„o
                  Sen„o
                     Se ObjetosIguais( ObjetoLista( ListaEnt , 2 ) , ObjBase )
                     Ent„o
                        Se Mostra == 1
                        Ent„o
                           Frm "Exibir referencia rela‡„o absorvida"( 3 , 1 , 2 ) ;
                        Sen„o
                           FrmElem DadoAcha
                               "Exibir referencia relacao chave"(     3 , 1 , 2 ) ;
                        Fim ; /* Se */
                     Sen„o
                        Se Mostra == 1
                        Ent„o
                           Frm "Exibir referencia rela‡„o absorvida"( 2 , 1 , 3 ) ;
                        Sen„o
                           FrmElem DadoAcha
                               "Exibir referencia relacao chave"(     2 , 1 , 3 ) ;
                        Fim ; /* Se */
                     Fim ; /* Se */
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            Sen„o
            Fim ;
         Fim ;

      /* Processar todos os relacionamentos recursivos */

         ContaRec = 1 ;

         ParaTodos ListaRelRec Faz

         /* Exibir rela‡„o recursiva */

            Titulo "Recursive relationship" ;

            ParaTodos InstsObjeto Faz
               InstRelac = Corrente ;
               ParaTodos LigsInstancia Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                     InsereObj( ListaEnt , Corrente ) ;
                     InsereObj( ListaLig , InstLig  ) ;
                     Frm "Obter nome chave entidade" ;
                     InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                  Fim ;
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */

            AvMrgEsq 3 ;
            Se ObjetosIguais( ObjetoLista( ListaEnt , 1 ) , ObjBase )
            Ent„o
                  FrmElem ObjetoLista( ListaDadoRec , ContaRec )
                      "Exibir referencia relacao chave"(     2 , 10 , 1 ) ;
            Sen„o
                  FrmElem ObjetoLista( ListaDadoRec , ContaRec )
                      "Exibir referencia relacao chave"(     1 , 10 , 2 ) ;
            Fim ; /* Se */
            AvMrgEsq -3 ;

            ContaRec = ContaRec + 1 ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul rio: Exibir referencia relacao chave *****/

   InicFrm "Exibir referencia relacao chave"( Inteiro InxObj1 ,
                                              Inteiro InxObj2 ,
                                              Inteiro InxChave )

   /* Corpo de Exibir referencia relacao chave */

      ChaveEntidade = LinhaTexto(  ListaChaves , InxChave ) ;

      Frm "Exibir estrutura chave"( Separ ) ;

      Frm "Exibir campo relacionamento"( InxObj1 ) ;
      Se InxObj2 < 5
      Ent„o
         Frm "Exibir campo relacionamento"( InxObj2 ) ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Editar atributos com chave pr¢pria *****/

   InicFrm "Editar atributos com chave pr¢pria"

   /* Corpo de Editar atributos com chave pr¢pria */

      /* Editar estruturas de dados com chave pr¢pria */

         ParaTodos ListaAtributo Faz

            Titulo "" ;
            Titulo "Attribute entity: " ;
            NaoAvLin ;
            Nome ;
            Texto TxtDescr ;

            Se Existe( [ Relacao ChavesDet ] )
            Ent„o
               Frm "Exibir estrutura dados atributo" ;
            Sen„o
            Fim ; /* Se */

         Fim ; /* ParaTodos */

      /* Editar todos os atributos decompostos */

         Frm "Exibir atributos decompostos" ;

      /* Editar todas as rela‡”es n„o absorvidas */

         Frm "Exibir rela‡”es de entidade"( FALSO ) ;
   FimFrm

/***** Formul rio: Exibir estrutura de dados de entidade atributo *****/

   InicFrm "Exibir estrutura dados atributo"
      /* Dado do bloco Corpo de Exibir estrutura de dados de entidade atributo */

         Sequencia ChaveInx ;

      FimDecl

   /* Corpo de Exibir estrutura de dados de entidade atributo */

      Frm "Determinar o tipo de atributo" ;

      Se TipoAtrib == 1
      Ent„o
         ChaveInx = AttrInx ;
      Sen„o
         ChaveInx = Separ ;
      Fim ; /* Se */

      ParaTodos ChavesDet Faz
         Frm "Exibir estrutura chave"( ChaveInx ) ;
      Fim ; /* ParaTodos */

      AvMrgEsq 3 ;
      Frm "Exibir chaves estrangeiras" ;

      ParaTodos Dados Faz
         Frm "Exibir estrutura de dados" ;
      Fim ; /* ParaTodos */
      AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: Determinar o tipo de atributo *****/

   InicFrm "Determinar o tipo de atributo"
      /* Dado do bloco Corpo de Determinar o tipo de entidade atributo */

         Sequencia NomeRot ;
         Objeto    InstCorr ;
         Objeto    LigCorr ;
         Objeto    ObjOrigem ;

      FimDecl

   /* Corpo de Determinar o tipo de entidade atributo */

      TipoAtrib = 0 ;
      ParaTodos InstsObjeto Faz
         InstCorr = Corrente ;
         ParaTodos LigsEntra Faz
            LigCorr = Corrente ;
            ComObjeto ObjetoInst( OutraPonta( Corrente , InstCorr )) Faz
               Se ClasseObj( Corrente ) == DicEntidade
               Ent„o
                  ObjOrigem = Corrente ;
                  ComObjeto RotuloLig( LigCorr ) Faz
                     Se ExisteObj( Corrente )
                     Ent„o
                        ComObjeto ObjetoInst( Corrente ) Faz
                           NomeRot = [ Nome ] ;
                           Se NomeRot == CrdAtrn
                           Ent„o
                              TipoAtrib = 1 ;
                           Sen„o
                              Se NomeRot == CrdAtrd
                              Ent„o
                                 TipoAtrib = 2 ;
                                 ObjDefin  = ObjOrigem ;
                              Sen„o
                              Fim ; /* Se */
                           Fim ; /* Se */
                        Fim ; /* ComObjeto */
                     Sen„o
                        Titulo ">>> Missing cardinality" ;
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Sen„o
                  Se ClasseObj( Corrente ) == DicComposicao
                  Ent„o
                     TipoAtrib = 1 ;
                  Sen„o
                  Fim ; /* Se */
               Fim ; /* Se */
            Fim ; /* ComObjeto */
         Fim ; /* ParaTodos */
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: Exibir entidades atributo decomposi‡„o *****/

   InicFrm "Exibir atributos decompostos"
      /* Dado do bloco Corpo de Exibir entidades atributo decomposi‡„o */

         Objeto InstOrigem ;
         Objeto NovaOrigem ;
         Objeto OrgDecomp ;
         Logico Primeiro ;

      FimDecl

   /* Corpo de Exibir entidades atributo decomposi‡„o */

      Primeiro  = Verdadeiro ;
      OrgDecomp = Corrente ;

      ParaTodos ListaAtributo Faz

      /* Exibir atributos decompostos de entidade especifica */

         ParaTodos InstsObjeto Faz
            InstOrigem = Corrente ;
            ParaTodos LigsSai Faz
               ComObjeto OutraPonta( Corrente , InstOrigem ) Faz
                  Se ClasseObj( Corrente ) == DicComposi‡„o
                  Entao
                     NovaOrigem = Corrente ;
                     ParaTodos LigsSai Faz
                        ComObjeto ObjetoInst( OutraPonta( Corrente ,
                                    NovaOrigem )) Faz
                           Titulo "" ;
                           Titulo "Component attribute entity: " ;
                           NaoAvLin ;
                           Nome ;
                           Frm "Exibir estrutura dados atributo" ;
                        Fim ;
                     Fim ;
                  Senao
                  Fim ;
               Fim ;
            Fim ;
         Fim ;
      Fim ;
   FimFrm

/***** Formul rio: Editar campos de um atributo *****/

   InicFrm "Editar campos de um atributo"

   /* Corpo de Editar campos de um atributo */

      Texto TxtDescr ;

      Frm "Exibir texto"( "Acceptable values" ,
                          TxtValoresAtrib ) ;
      Frm "Exibir texto"( "Integrity constraints" ,
                          TxtIntegridAtrib ) ;
      Frm "Exibir texto"( "Data declaration" ,
                          TxtDeclAtrib ) ;
   FimFrm

/***** Formul rio: Display relationships *****/

   InicExterno "Display all relationships"
      /* Dado do bloco Corpo de Display relationships */

         Inteiro     TipoSec ;

      FimDecl

   /* Corpo de Display relationships */

      TipoSec = 1 ;

      Enquanto TipoSec < 3 Faz

      /* Exibir titulo relacionamento */

         Se TipoSec == 1
         Ent„o
          Titulo "" ;
          Titulo "*****************************************************" ;
          Titulo "" ;
          Titulo "Repository relationships" ;
          Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 2
         Ent„o
          Titulo "" ;
          Titulo "*****************************************************" ;
          Titulo "" ;
          Titulo "Knowledge base relationships" ;
          Titulo "" ;
         Sen„o
         Fim ; /* Se */

      /* Efetuar exibicao relacionamento */

         ParaTodos Dicionario DicRelacionamento Faz
          
            Se   ( TipoSec == 1 )
               E Existe( [ Alias AliasIsRepository ] )
            Ent„o
               Se NAO Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Frm "Editar relacionamento" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
          
            Se   ( TipoSec == 2 )
               E Existe( [ Alias AliasIsKnowledge ] )
            Ent„o
               Se NAO Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Frm "Editar relacionamento" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
          
         Fim ;

         TipoSec = TipoSec + 1 ;
      Fim ;
   FimFrm

/***** Formul rio: Editar Relacionamentos *****/

   InicFrm "Editar relacionamento"
      /* Dado do bloco Exibir tabelas da rela‡„o */

         Objeto ObjOrg ;

      FimDecl

   /* Corpo de Editar Relacionamentos */

      /* Editar cabe‡alho de relacionamento */

         Endenta 3 ;
         Titulo "" ;
         Titulo "--------------------------------------------------" ;
         Frm "Criar relacionamento" ;

         Frm "Exibir texto"( "Definition of this relationship" ,
                             TxtDescr ) ;

      /* Editar especifica‡„o do relacionamento */

         Frm "Editar especifica‡„o" ;

      /* Exibir tabelas da rela‡„o */

         Titulo "" ;
         AvMrgEsq 3 ;

         ChaveEntidade = Etc ;

         ObjDefin = Corrente ;

         Frm "Determinar tipo rela‡„o" ;

         Se TipoRela‡„o == 1
         Ent„o
            Titulo "Normal relationship" ;
         Sen„o
            Se TipoRela‡„o == 2
            Ent„o
               Titulo "Value relationship" ;
            Sen„o
               Se TipoRela‡„o == 3
               Ent„o
                  Titulo "Ternary relationship" ;
               Sen„o
                  Se TipoRela‡„o == 4
                  Ent„o
                     Titulo "Recursive relationship" ;
                  Sen„o
                     Se TipoRela‡„o == 5
                     Ent„o
                        Titulo "Virtual value relationship" ;
                     Sen„o
                        Titulo ">>> Relationship of unknown type" ;
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ; /* Se */
            Fim ; /* Se */
         Fim ; /* Se */

         ParaTodos InstsObjeto Faz
            Frm "Exibir Instƒncia Rela‡„o"( TipoRelacao ) ;
         Fim ;
   FimFrm

/***** Formul rio: Criar Relacionamentos *****/

   InicFrm "Criar relacionamento"

   /* Corpo de Criar Relacionamentos */

      Titulo "Name of relationship: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Exibir uma instƒncia de rela‡„o *****/

   InicFrm "Exibir Instƒncia Rela‡„o"( Inteiro TipoRelac )
      /* Dado do bloco Obter a lista de estruturas de dados da rela‡„o */

         Objeto   ObjetoRec ;
         Fila     DadosRelac ;

      /* Dado do bloco Selecionar rela‡„o tipo 1 */

         Objeto   InstRelac ;
         Objeto   InstLig ;
         Inteiro  ContaDado ;

      /* Dado do bloco Editar rela‡”es simples */

         Objeto   ObjChave ;

      FimDecl

   /* Corpo de Exibir uma instƒncia de rela‡„o */

      /* Obter a lista de estruturas de dados da rela‡„o */

         EsvaziaLista( ListaEnt   ) ;
         EsvaziaLista( ListaLig   ) ;
         EsvaziaLista( DadosRelac  ) ;
         EsvaziaTexto( ListaChaves ) ;

         ParaTodos LigsInstancia Faz
            ObjetoRec = RotuloLig( Corrente ) ;

            Se ExisteObj( ObjetoRec )
            Ent„o
               ComObjeto ObjetoRec Faz
                  ParaTodos Dados Faz
                     InsereObj( DadosRelac , Corrente ) ;
                  Fim;
               Fim ;
            Sen„o
            Fim ;
         Fim ;

      /* Selecionar rela‡„o tipo 1 */

         InstRelac = Corrente ;

         Se TipoRelac == 1 Ent„o

         /* Editar rela‡”es simples */

            /* Calcular listas de relacao simples */

               ParaTodos LigsInstancia Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                     Frm "Obter nome chave entidade" ;
                     InsereObj( ListaEnt , Corrente ) ;
                     InsereObj( ListaLig , InstLig  ) ;
                     InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                  Fim ;
               Fim ; /* ParaTodos */

            /* Exibir primeiro lado relacao simples */

               Titulo "" ;
               Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 1 ) ,
                                           ObjetoLista( ListaEnt , 1 ) ) ;

               ContaDado = 0 ;
               ComObjeto ObjetoLista( ListaEnt , 2 ) Faz
                  ParaTodos ChavesDet Faz
                     Se PertenceObj( DadosRelac , Corrente )
                     Entao
                        ObjChave  = Corrente ;
                        ContaDado = ContaDado + 1 ;
                     Senao
                     Fim;
                  Fim ;
               Fim ;

               Se ContaDado == 0
               Entao
                  Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 2 ) ;
               Senao
                  FrmElem ObjChave
                      "Exibir referencia relacao chave"(     1 , 10 , 2 ) ;
               Fim ;

            /* Exibir segundo lado relacao simples */

               Titulo "" ;
               Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 2 ) ,
                                           ObjetoLista( ListaEnt , 2 ) ) ;

               ContaDado = 0 ;
               ComObjeto ObjetoLista( ListaEnt , 1 ) Faz
                  ParaTodos ChavesDet Faz
                     Se PertenceObj( DadosRelac , Corrente )
                     Entao
                        ObjChave  = Corrente ;
                        ContaDado = ContaDado + 1 ;
                     Senao
                     Fim;
                  Fim ;
               Fim ;

               Se ContaDado == 0
               Entao
                  Frm "Exibir referencia rela‡„o absorvida"( 2 , 10 , 1 ) ;
               Senao
                  FrmElem ObjChave
                      "Exibir referencia relacao chave"(     2 , 10 , 1 ) ;
               Fim ;

         Sen„o
         Fim ;

      /* Selecionar rela‡”es tipo 2 */

         Se TipoRelac == 2 Ent„o

         /* Editar rela‡”es com entidade valor */

            /* Gerar as listas de objetos, rela‡„o tipo 2 */

               ParaTodos LigsSai Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                     Frm "Obter nome chave entidade" ;
                     InsereObj( ListaEnt , Corrente ) ;
                     InsereObj( ListaLig , InstLig  ) ;
                     InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                  Fim ;
               Fim ; /* ParaTodos */

               ParaTodos LigsInstancia Faz
                  Se NAO Liga‡„oSai( Corrente , InstRelac )
                  Ent„o
                     InstLig = Corrente ;
                     ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                        Frm "Obter nome chave entidade" ;
                        InsereObj( ListaEnt , Corrente ) ;
                        InsereObj( ListaLig , InstLig  ) ;
                        InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                     Fim ;
                  Sen„o
                  Fim ; /* Se */
               Fim ; /* ParaTodos */

            /* Gerar tabelas de rela‡„o com entidade valor */

               Frm "Gerar rela‡”es m£ltiplas"( DadosRelac ,
                                               TipoRelac  ) ;

         Sen„o
         Fim ;

      /* selecionar rela‡”es tipo 3 */

         Se TipoRelac == 3 Ent„o

         /* Editar rela‡”es com duplo relaciomento de sa¡da */

            /* Gerar as listas de objetos, rela‡„o tipo 4 */

               ParaTodos LigsEntra Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                     Frm "Obter nome chave entidade" ;
                     InsereObj( ListaEnt , Corrente ) ;
                     InsereObj( ListaLig , InstLig  ) ;
                     InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                  Fim ;
               Fim ; /* ParaTodos */

               ParaTodos LigsSai Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                     Frm "Obter nome chave entidade" ;
                     InsereObj( ListaEnt , Corrente ) ;
                     InsereObj( ListaLig , InstLig  ) ;
                     InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                  Fim ;
               Fim ; /* ParaTodos */

            /* Gerar tabelas de rela‡„o de sa¡da dupla */

               Frm "Gerar rela‡”es m£ltiplas"( DadosRelac ,
                                               TipoRelac   ) ;

         Sen„o
         Fim ;

      /* Selecionar rela‡„o tipo 4 */

         InstRelac = Corrente ;

         Se TipoRelac == 4 Ent„o

         /* Editar rela‡”es recursivas */

            ParaTodos LigsInstancia Faz
               InstLig = Corrente ;
               ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                  InsereObj( ListaEnt , Corrente ) ;
                  InsereObj( ListaLig , InstLig  ) ;
                  Frm "Obter nome chave entidade" ;
                  InsereTexto( ListaChaves , 100 , ChaveGer ) ;
               Fim ;
            Fim ; /* ParaTodos */

            Titulo "" ;
            Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 1 ) ,
                                        ObjetoLista( ListaEnt , 1 ) ) ;

            FrmElem ObjetoLista( DadosRelac , 1 )
                "Exibir referencia relacao chave"( 1 , 10 , 2 ) ;

            Titulo "" ;
            Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 2 ) ,
                                        ObjetoLista( ListaEnt , 2 ) ) ;

            FrmElem ObjetoLista( DadosRelac , 2 )
                "Exibir referencia relacao chave"( 2 , 10 , 1 ) ;

         Sen„o
         Fim ;

      /* Selecionar rela‡”es tipo 5 */

         Se TipoRelac == 5 Ent„o

         /* Editar rela‡”es com entidade valor virtual */

            /* Gerar as listas de objetos, rela‡„o virtual */

               ParaTodos LigsSai Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                     Frm "Obter nome chave entidade" ;
                     InsereObj( ListaEnt , Corrente ) ;
                     InsereObj( ListaLig , InstLig  ) ;
                     InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                  Fim ;
               Fim ; /* ParaTodos */

               ParaTodos LigsInstancia Faz
                  Se NAO Liga‡„oSai( Corrente , InstRelac )
                  Ent„o
                     InstLig = Corrente ;
                     ComObjeto ObjetoInst( OutraPonta( Corrente , InstRelac )) Faz
                        Frm "Obter nome chave entidade" ;
                        InsereObj( ListaEnt , Corrente ) ;
                        InsereObj( ListaLig , InstLig  ) ;
                        InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                     Fim ;
                  Sen„o
                  Fim ; /* Se */
               Fim ; /* ParaTodos */

            /* Gerar tabelas de rela‡„o com entidade valor virtual */

               Frm "Gerar rela‡”es m£ltiplas"( DadosRelac ,
                                               TipoRelac  ) ;

         Sen„o
         Fim ;
   FimFrm

/***** Formul rio: Exibir cardinalidade espec¡fica *****/

   InicFrm "Exibir cardinalidade"( Objeto InstLig ,
                                   Objeto InstDest )

   /* Corpo de Exibir cardinalidade espec¡fica */

      ComObjeto RotuloLig( InstLig ) Faz
         Se ExisteObj( Corrente )
         Entao
            Titulo "With cardinality [ " ;
            NaoAvLin ;
            Nome ;
         Senao
            Titulo ">>> With no cardinality " ;
         Fim ;
      Fim ;

      ComObjeto ObjetoInst( InstDest ) Faz
         NaoAvLin ;
         Titulo " ] relates to: " ;
         NaoAvLin ;
         Nome ;
      Fim ;
   FimFrm

/***** Formul rio: Gerar tabelas de rela‡”es de rela‡„o m£ltipla *****/

   InicFrm "Gerar rela‡”es m£ltiplas"( Fila       DadosRelac ,
                                       Inteiro    TipoRelac  )
      /* Dado do bloco Corpo de Gerar tabelas de rela‡”es de rela‡„o m£ltipla */

         Inteiro ContaDado ;
         Inteiro Inx1 ;
         Inteiro Inx2 ;

      /* Dado do bloco Gerar entidade com outro lado duplo */

         Objeto ObjChave ;

      FimDecl

   /* Corpo de Gerar tabelas de rela‡”es de rela‡„o m£ltipla */

      /* Gerar entidade com outro lado duplo */

         Se TipoRelac != 5
            Ent„o
            Titulo "" ;
            Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 2 ) ,
                                        ObjetoLista( ListaEnt , 2 )) ;
            Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 3 ) ,
                                        ObjetoLista( ListaEnt , 3 )) ;

            ComObjeto ObjetoInst( ObjetoLista( ListaEnt , 1 )) Faz
               ContaDado = 0 ;
               ParaTodos ChavesDet Faz
                  Se PertenceObj( DadosRelac , Corrente )
                  Entao
                     ObjChave  = Corrente ;
                     ContaDado = ContaDado + 1 ;
                  Senao
                  Fim;
               Fim ;
            Fim ;

            Se ContaDado == 0
            Entao
               Titulo "" ;
               Frm "Exibir referencia rela‡„o absorvida"( 2 , 3 , 1 ) ;
            Senao
               FrmElem ObjChave "Exibir referencia relacao chave"( 2 , 3 , 1 ) ;
            Fim ;
         Sen„o
         Fim ; /* Se */

      /* Gerar primeira entidade com outro lado simples */

         Se TipoRelac == 2
         Ent„o
            Inx1 = 2  ;
            Inx2 = 1  ;
         Sen„o
            Se TipoRelac == 5
            Ent„o
               Inx1 = 2  ;
               Inx2 = 1  ;
            Sen„o
               Inx1 = 1  ;
               Inx2 = 10 ;
            Fim ; /* Se */
         Fim ; /* Se */

         Titulo "" ;

         Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , Inx1 ) ,
                                     ObjetoLista( ListaEnt , Inx1 ) ) ;

         ContaDado = 0 ;
         ComObjeto ObjetoLista( ListaEnt , 3 ) Faz
            ParaTodos ChavesDet Faz
               Se PertenceObj( DadosRelac , Corrente )
               Entao
                  ObjChave  = Corrente ;
                  ContaDado = ContaDado + 1 ;
               Senao
               Fim;
            Fim ;
         Fim ;

         Se ContaDado == 0
         Entao
            Titulo "" ;
            Frm "Exibir referencia rela‡„o absorvida"( Inx1 , Inx2 , 3 ) ;
         Senao
            FrmElem ObjChave
                "Exibir referencia relacao chave"(     Inx1 , Inx2 , 3 ) ;
         Fim ;

      /* Gerar segunda entidade com outro lado simples */

         Se TipoRelac == 2
         Ent„o
            Inx1 = 3  ;
            Inx2 = 1  ;
         Sen„o
            Se TipoRelac == 5
            Ent„o
               Inx1 = 3  ;
               Inx2 = 1  ;
            Sen„o
               Inx1 = 1  ;
               Inx2 = 10 ;
            Fim ; /* Se */
         Fim ; /* Se */

         Titulo "" ;
         Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , Inx1 ) ,
                                     ObjetoLista( ListaEnt , Inx1 ) ) ;

         ContaDado = 0 ;
         ComObjeto ObjetoLista( ListaEnt , 2 ) Faz
            ParaTodos ChavesDet Faz
               Se PertenceObj( DadosRelac , Corrente )
               Entao
                  ObjChave  = Corrente ;
                  ContaDado = ContaDado + 1 ;
               Senao
               Fim;
            Fim ;
         Fim ;


         Se ContaDado == 0
         Entao
            Titulo "" ;
            Frm "Exibir referencia rela‡„o absorvida"( Inx1 , Inx2 , 2 ) ;
         Senao
            FrmElem ObjChave
                "Exibir referencia relacao chave"(     Inx1 , Inx2 , 2 ) ;
         Fim ;
   FimFrm

/***** Formul rio: Display list entries *****/

   InicExterno "Display all list entries"
      /* Dado do bloco Corpo de Display list entries */

         Inteiro     TipoSec ;

      FimDecl

   /* Corpo de Display list entries */

      TipoSec = 1 ;

      Enquanto TipoSec < 3 Faz

      /* Exibir titulo lista list entries */

         /* Display entity title */

         Se TipoSec == 1
         Ent„o
          Titulo "" ;
          Titulo "*****************************************************" ;
          Titulo "" ;
          Titulo "Repository list entries" ;
          Titulo "" ;
         Sen„o
         Fim ; /* Se */
         Se TipoSec == 2
         Ent„o
          Titulo "" ;
          Titulo "*****************************************************" ;
          Titulo "" ;
          Titulo "Knowledge base list entries" ;
          Titulo "" ;
         Sen„o
         Fim ; /* Se */

      /* Efetuar a exibicao list entries */

         ParaTodos Dicionario DicEntidadeLigacao Faz
          
            Se   ( TipoSec == 1 )
               E Existe( [ Alias AliasIsRepository ] )
            Ent„o
               Se NAO Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Frm "Editar entidade de ligacao" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
          
            Se   ( TipoSec == 2 )
               E Existe( [ Alias AliasIsKnowledge ] )
            Ent„o
               Se NAO Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Frm "Editar entidade de ligacao" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */
          
         Fim ;

         TipoSec = TipoSec + 1 ;
      Fim ;
   FimFrm

/***** Formul rio: Editar entidades Liga‡„o *****/

   InicFrm "Editar entidade de ligacao"

   /* Corpo de Editar entidades Liga‡„o */

      /* Editar cabe‡alho de entidade de liga‡„o */

         Endenta 3 ;
         Titulo "" ;
         Titulo "----------------------------------------------------" ;
         Frm "Criar entidade de ligacao" ;

         Frm "Exibir texto"( "Description" ,
                             TxtDescr ) ;

      /* Editar especifica‡„o de entidade de liga‡„o */

         Frm "Editar especifica‡„o" ;

      /* Editar detalhe de entidade de liga‡„o */

         ObjDefin      = Corrente ;
         ChaveEntidade = Etc ;

         AvMrgEsq 3 ;
         Frm "Exibir entidade liga‡„o" ;
   FimFrm

/***** Formul rio: Criar entidades Liga‡„o *****/

   InicFrm "Criar entidade de ligacao"

   /* Corpo de Criar entidades Liga‡„o */

      Titulo "Name of relation entity: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Display all *****/

   InicExterno "Display all"

   /* Corpo de Display all */

      Frm "Display all entitities" ;
      Frm "Display all relationships" ;
      Frm "Display all key data structures" ;
   FimFrm

/**************************************************************************
**** Fim programa: Totem documentation
**************************************************************************/

