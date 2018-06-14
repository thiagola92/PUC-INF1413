/**************************************************************************
*
**** Programa de formul rios: Totem repository validation program
*
**** Nome do arquivo gerado:  TTERAVAL
*
*Nome l¢gico da base: Entity relationship model editor for TALISMAN bases
*Nome do arquivo:     C:\TOTEM\FERRAMS\FORMS\TTERAFRM.BSW
*
*   TALISMAN
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
*  Validar tudo                        : "Validate all"
*  Limpar tudo                         : "Clear all findings"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  Validar Atributos                   : "Validar Atributo"
*  Validar Entidades                   : "Validar Entidade"
*  Validar Relacionamentos             : "Validar Relacionamento"
*  Validar entidades Liga‡„o           : "Validar entidade de Liga‡„o"
*  Obter nome da chave da entidade     : "Obter nome chave entidade"
*  Procurar entidade chave             : "Procurar entidade chave"
*  Validar cardinalidade               : "Validar cardinalidade"
*  Validar Categorias                  : "Validar Categoria"
*  Validar compoSi‡„o                  : "Validar compoSi‡„o"
*  Validar Banco de dados              : "Validar Banco de dados"
*  Validar arQuivos                    : "Validar arQuivos"
*  Validar esPa‡os                     : "Validar esPa‡os"
*  Validar Indices                     : "Validar Indices"
*  Validar Vistas                      : "Validar Vistas"
*  Validar interFaces                  : "Validar interFaces"
*  Validar Janelas                     : "Validar Janelas"
*  Validar coment rio                  : "Validar coment rio"
*  Validar tudo                        : "Validate all"
*  Limpar tudo                         : "Clear all findings"
*  Obter dados da rela‡„o              : "Obter dados da rela‡„o"
*
***************************************************************************/

/***** Formul rio global *****/

   InicGlobal


         /* Estrutura de dados Estrutura de dados globais */

            /* Estrutura de dados Declara‡„o das constantes ¡ndices de ali s */

               Constante AliasNomeRelac    =  10 ;
               Constante AliasNomeClasse   =  11 ;
               Constante AliasIdRel        =  12 ;

               Constante AliasKeyForm      =  41 ;

               Constante AliasNomeDest     = 103 ;

               Constante AliasIsKnowledge  = 200 ;
               Constante AliasIsRepository = 201 ;

            /* Estrutura de dados Declara‡„o das constantes ¡ndice de texto */

               Constante TxtRestrIntegr   =  11 ;
               Constante TxtValoresAtrib  =  15 ;
               Constante TxtIntegridAtrib =  19 ;
               Constante TxtDeclAtrib     =  20 ;

            /* Estrutura de dados Declara‡„o de constantes valor */

               Constante Etc     = "..." ;
               Constante Pref    = "***" ;
               Constante Separ   = "" ;
               Constante AttrInx = "AttrInx" ;
               Constante CrdAtr  = "Atr" ;
               Constante CrdAtr1 = "Atr 1" ;
               Constante CrdAtrn = "Atr n" ;
               Constante CrdAtrd = "Atr d" ;
               Constante CrdVirt = "Virt" ;
               Constante CrdVal  = "Val" ;
               Constante CrdList = "List" ;
               Constante Crd1    = "1"    ;
               Constante Crd0ou1 = "0:1"  ;
               Constante Crdn    = "0:n"    ;

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
               Inteiro    TemErro     ;
               Inteiro    TipoAtrib ;
               Logico     TemDeclar ;

               Fila       ListaEnt ;
               Fila       ListaLig ;
               ListaTexto ListaChaves ;
               ListaTexto ListaNomes ;
               ListaTexto ListaModos ;

         /* Estrutura de dados Estruturas para criar limbo */

            Constante   NomeLimbo = "! Limbo" ;
            ListaTexto  TextoRelLimbo ;
            ListaTexto  TextoRelVazio ;
      FimDecl

      /* Corpo de Totem repository validation program */

         InsereTexto( TextoRelLimbo , 1 , NomeLimbo ) ;
         InsereTexto( TextoRelVazio , 1 , "" ) ;
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: Validar Atributos *****/

   InicFrm "Validar Atributo"

   /* Corpo de Validar Atributos */

      Endenta 3 ;

      Se   NAO Existe( [ Alias AliasIsKnowledge  ] )
         E NAO Existe( [ Alias AliasIsRepository ] )
         E NomeLimbo != [ Nome ]
      Ent„o
         Titulo "Data structure is not related to a data model" ;
         Relacao Comp = TextoRelLimbo ;
      Sen„o
      Fim ; /* Se */

      /* Validar pertinˆncia a estrutura */

         Endenta 3 ;
         Se   NAO Existe( [ Relacao Comp ] )
            E NAO Existe( [ Relacao Entidades ] )
            E NAO Existe( [ Relacao EntidLigacao ] )
            E NAO Existe( [ Relacao ChavesDetEntid ] )
            E NAO Existe( [ Relacao ChavesDetEntidLigacao ] )
            E ( NomeLimbo != [ Nome ] )
         Ent„o
            Titulo "Data structure is not related to objects of the model" ;
            Relacao Comp = TextoRelLimbo ;
         Sen„o
         Fim ; /* Se */

      /* Validar especifica‡„o */

         Se NAO Existe( [ Texto TxtDescr ] )
         Ent„o
            Titulo "Missing description in data structure" ;
         Sen„o
         Fim ; /* Se */

      /* Validar chave de estrutura de dados */

         /* Validar relacionamentos de estrutura chave */

            Se    Existe( [ Relacao ChavesDetEntid        ] )
               OU Existe( [ Relacao ChavesDetEntidLigacao ] )
            Ent„o
               Se NAO Existe( [ Alias AliasKeyForm ] )
               Ent„o
                  Titulo "Key data structures must define a key value" ;
               Sen„o
               Fim ; /* Se */

               Se Existe( [ Relacao Comp ] )
               Ent„o
                  Titulo "Key data structures may not have parent structures" ;
               Sen„o
               Fim ; /* Se */

               Se Existe( [ Relacao Decomp ] )
               Ent„o
                  Titulo "Key data structures may not have child structures" ;
               Sen„o
               Fim ; /* Se */

               Se    Existe( [ Relacao Entidades    ] )
                  OU Existe( [ Relacao EntidLigacao ] )
               Ent„o
                  Titulo "Key data structures may not be used as a value" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */

         /* Validar relacionamentos de estrutura definidora de chave */

            Se    Existe( [ Relacao Comp ] )
               OU Existe( [ Relacao Entidades ] )
               OU Existe( [ Relacao EntidLigacao ] )
            Ent„o
               Se Existe( [ Alias AliasKeyForm ] )
               Ent„o
                  Titulo "Value data structure may not define a key value" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */

         /* Validar relacionamentos de estrutura valor */

            Se    Existe( [ Relacao Comp ] )
            Ent„o
               Se Existe( [ Relacao Entidades ] )
               Ent„o
                  Titulo "Value data structure of an entity must be a root" ;
               Sen„o
               Fim ; /* Se */
               Se Existe( [ Relacao EntidLigacao ] )
               Ent„o
                  Titulo "Value data structure of a relation entry must be a root" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */

            Se Existe( [ Relacao Entidades ] )
            Ent„o
               Se Existe( [ Relacao EntidLigacao ] )
               Ent„o
                  Titulo "Value data structures may not be shared" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */

      /* Validar liga‡”es */

         Se   Existe( [ Relacao Comp ] )
            E (   Existe( [ Relacao Entidades ] )
               OU Existe( [ Relacao EntidLigacao ] )
               OU Existe( [ Relacao ChavesDetEntid ] )
               OU Existe( [ Relacao ChavesDetEntidLigacao ] ))
         Ent„o
            Titulo "Child data structures may not be related to other objects " ;
         Sen„o
         Fim ; /* Se */

         Se       Existe( [ Relacao Entidades ] )
            E (   Existe( [ Relacao ChavesDetEntid ] )
               OU Existe( [ Relacao ChavesDetEntidLigacao ] ))
         Ent„o
            Titulo "Value data structure may not be simultaneously a key" ;
         Sen„o
         Fim ; /* Se */

         Se       Existe( [ Relacao EntidLigacao ] )
            E (   Existe( [ Relacao ChavesDetEntid ] )
               OU Existe( [ Relacao ChavesDetEntidLigacao ] ))
         Ent„o
            Titulo "Relation entry data structure may not be simultaneously a key" ;
         Sen„o
         Fim ; /* Se */

         Se       Existe( [ Relacao EntidLigacao ] )
            E     Existe( [ Relacao Entidades ] )
         Ent„o
            Titulo "Relation entry data structures may not relate to other objects " ;
         Sen„o
         Fim ; /* Se */

      /* Validar pertinencia a rela‡„o */

         Se Existe( [ Relacao Relacionamentos ] )
         Ent„o
            Titulo "Data structure may not be linked to relationships" ;
         Sen„o
         Fim ; /* Se */
   FimFrm

/***** Formul rio: Validar Entidades *****/

   InicFrm "Validar Entidade"
      /* Dado do bloco Corpo de Validar Entidades */

         Objeto     InstEntid ;
         Objeto     InstLig ;
         Objeto     InstOut ;
         Sequencia  NomeRot ;
         Inteiro    Inx ;

      /* Dado do bloco Validar descri‡„o de reposit¢rio */

         Sequencia NomeEnt ;

      /* Dado do bloco Validar estruturas de dados em entidades */

         Logico  EhDecomposto ;
         Logico  PrecisaValor ;

      /* Dado do bloco Verificar se entidade ‚ decomposta */

         Objeto  ObjBase ;
         Objeto  InstEnt ;

      /* Dado do bloco Validar dados em entidades estruturais */

         Inteiro ContaChave ;

      FimDecl

   /* Corpo de Validar Entidades */

      /* Validar pertinencia da entidade a modelo */

         Endenta 3 ;

         Se   NAO Existe( [ Alias AliasIsKnowledge  ] )
            E NAO Existe( [ Alias AliasIsRepository ] )
            E NomeLimbo != [ Nome ]
         Ent„o
            Titulo "Entity is not related to a data model" ;
            Relacao Comp = TextoRelLimbo ;
         Sen„o
         Fim ; /* Se */

      /* Validar descri‡„o de reposit¢rio */

         NomeEnt = [ Nome ] ;
         NomeEnt = Subseq( NomeEnt , 1 , 1 ) ;

         Se NAO Existe( [ Texto TxtDescr ] )
         Ent„o
            Se NomeEnt != "+"
            Ent„o
               Titulo "Missing description of this entity" ;
            Sen„o
            Fim ; /* Se */
         Sen„o
         Fim ; /* Se */

      /* Validar nomes classe e relacao da entidade */

         Se   NAO Existe( [ Relacao EntidFortes ] )
            E NomeEnt != "+"
         Ent„o
            Se NAO Existe( [ Alias AliasNomeRelac ] )
            Ent„o
               Titulo "Missing default symbolic relation name" ;
            Sen„o
            Fim ; /* Se */

            Se NAO Existe( [ Alias AliasNomeClasse ] )
            Ent„o
               Titulo "Missing symbolic class name" ;
            Sen„o
            Fim ; /* Se */
         Sen„o
            Se    Existe( [ Alias AliasNomeRelac  ] )
               OU Existe( [ Alias AliasNomeClasse ] )
            Ent„o
               Titulo "Attributes may not have class and relation names" ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* Se */

      /* Gerar listas de valida‡„o de entidade */

         EsvaziaLista( ListaLig ) ;

         ParaTodos InstsObjeto Faz
            InstEntid = Corrente ;
            ParaTodos LigsInstancia Faz
               InstLig = Corrente ;
               InstOut = OutraPonta( Corrente , InstEntid ) ;
               ComObjeto InstOut Faz
                  Se ClasseObj( ObjetoInst( Corrente )) == DicEntidade
                  Ent„o
                     Se LigacaoEntra( InstLig , InstEntid )
                     Ent„o
                        InsereObj( ListaLig , InstLig ) ;
                     Sen„o
                        Se NAO LigacaoSai( InstLig , InstEntid )
                        Ent„o
                           Titulo "Edges between entities must define a direction" ;
                        Sen„o
                        Fim ; /* Se */
                     Fim ; /* Se */
                  Sen„o
                     Se ClasseObj( ObjetoInst( Corrente )) ==
                             DicEntidadeLigacao
                     Ent„o
                        Se ExisteObj( RotuloLig( InstLig ))
                        Ent„o
                           ComObjeto ObjetoInst( RotuloLig( InstLig )) Faz
                              NomeRot = [ Nome ] ;
                              Se   LigacaoSai( InstLig , InstEntid )
                              Ent„o
                                 Se NomeRot != CrdList
                                 Ent„o
                                    Titulo "Edge entering relation entry must be labeled \"List\"" ;
                                 Sen„o
                                 Fim ; /* Se */
                              Sen„o
                                 Se   LigacaoEntra( InstLig , InstEntid )
                                    E NomeRot != Crd1
                                    E NomeRot != Crd0ou1
                                 Ent„o
                                    Titulo "Edge leaving relation entry must be labeled \"1\" or \"0:1\"" ;
                                 Sen„o

                                 Fim ; /* Se */
                              Fim ; /* Se */
                           Fim ; /* ComObjeto */
                        Sen„o
                        Fim ; /* Se */
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ; /* ComObjeto */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */

      /* Validar estruturas de dados em entidades */

         /* Verificar se entidade ‚ decomposta */

            ObjBase      = Corrente ;
            EhDecomposto = FALSO ;
            PrecisaValor = FALSO ;

            ParaTodos InstsObjeto Faz
               InstEnt = Corrente ;
               ParaTodos LigsSai Faz
                  InstLig = Corrente ;
                  ComObjeto ObjetoInst( OutraPonta( Corrente , InstEnt )) Faz
                     Se ClasseObj( Corrente ) == DicComposi‡„o
                     Ent„o
                        EhDecomposto = VERDADEIRO ;
                     Sen„o
                     Fim ; /* Se */
                     Se ClasseObj( Corrente ) == DicEntidade
                     Ent„o
                        PrecisaValor = VERDADEIRO ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Fim ; /* ParaTodos */
            Fim ; /* ParaTodos */

         /* Validar dados em entidades estruturais */

            Se NAO Existe( [ Relacao EntidFortes ] )
            Ent„o
               Se Existe( [ Relacao Dados ] )
               Ent„o
                  Titulo "Object entities may not refer to value data structures" ;
               Sen„o
               Fim ; /* Se */
               ContaChave = 0 ;
               ParaTodos ChavesDet Faz
                  ContaChave = ContaChave + 1 ;
               Fim ; /* ParaTodos */
               Se ContaChave > 1
               Ent„o
                  Titulo "Object entities may have at most one key structure" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
            Fim ; /* Se */

         /* Validar relacionamento direto entre entidades */

            Se NAO Existe( [ Relacao EntidFortes ] )
            Ent„o
               ParaTodos ListaLig Faz
                  InstLig = Corrente ;
                  Se ExisteObj( RotuloLig( InstLig ))
                  Ent„o
                     ComObjeto ObjetoInst( RotuloLig( InstLig )) Faz
                        NomeRot = [ Nome ] ;
                        Se   NomeRot != Crd1
                           E NomeRot != Crd0ou1
                        Ent„o
                           Titulo "Foreign keys must have cardinality \"1\" or \"0:1\"" ;
                        Sen„o
                        Fim ; /* Se */
                     Fim ; /* ComObjeto */
                  Sen„o
                     Titulo "Missing cardinality" ;
                  Fim ; /* Se */
               Fim ; /* ParaTodos */
            Sen„o
               ParaTodos ListaLig Faz
                  InstLig = Corrente ;
                  Se ExisteObj( RotuloLig( InstLig ))
                  Ent„o
                     ComObjeto ObjetoInst( RotuloLig( InstLig )) Faz
                        NomeRot = [ Nome ] ;
                        Se   NomeRot != CrdAtr1
                           E NomeRot != CrdAtrn
                           E NomeRot != CrdAtrd
                        Ent„o
                           Titulo "Label must be one of \"Atr d\", \"Atr 1\" or \"Atr n\"" ;
                        Sen„o
                           Se NomeRot == CrdAtrd
                           Ent„o
                              PrecisaValor = FALSO ;
                           Sen„o
                           Fim ; /* Se */
                        Fim ; /* Se */
                     Fim ; /* ComObjeto */
                  Sen„o
                     Titulo "Missing cardinality" ;
                  Fim ; /* Se */
               Fim ; /* ParaTodos */
            Fim ; /* Se */

         /* Validar dados valor em entidades atributo */

            Se       Existe( [ Relacao EntidFortes ] )
               E NAO Existe( [ Relacao Dados       ] )
               E PrecisaValor
            Ent„o
               Titulo "Attribute entities must define a value" ;
            Sen„o
            Fim ; /* Se */

         /* Validar estruturas de dados chave */

            Se EhDecomposto
            Ent„o
               Se Existe( [ Relacao ChavesDet ] )
               Ent„o
                  Titulo "Inheriting attribute entity may not define a key" ;
               Sen„o
               Fim ; /* Se */

               Se Existe( [ Relacao Dados ] )
               Ent„o
                  Titulo "Decomposed attribute entity may not define a value" ;
               Sen„o
               Fim ; /* Se */
            Sen„o
               Se   NAO Existe( [ Relacao ChavesDet ] )
                  E     Existe( [ Relacao EntidFortes ] )
               Ent„o
                  Titulo "Object entity must define a key" ;
               Sen„o
               Fim ; /* Se */
            Fim ; /* Se */
   FimFrm

/***** Formul rio: Validar Relacionamentos *****/

   InicFrm "Validar Relacionamento"
      /* Dado do bloco Validar relacionamento ternario */

         Sequencia Rotulo1 ;
         Sequencia Rotulo2 ;

      FimDecl

   /* Corpo de Validar Relacionamentos */

      /* Validar pertinecia relacionamento a modelo de dados */

         Endenta 3 ;

         Se   NAO Existe( [ Alias AliasIsKnowledge  ] )
            E NAO Existe( [ Alias AliasIsRepository ] )
            E NomeLimbo != [ Nome ]
         Ent„o
            Titulo "Relationship is not related to a data model" ;
            Relacao Comp = TextoRelLimbo ;
         Sen„o
         Fim ; /* Se */

      /* Validar descri‡„o */

         Se NAO Existe( [ Texto TxtDescr ] )
         Ent„o
            Titulo "Missing description of this relationship" ;
         Sen„o
         Fim ; /* Se */

      /* Validar nome de categoria de atributo relacionamento */

         Se NAO Existe( [ Alias AliasIdRel ] )
         Ent„o
            Titulo "Missing relation attribute category name" ;
         Sen„o
         Fim ; /* Se */

      /* Validar dados de relacionamento */

         Frm "Obter dados da rela‡„o" ;
         Se TemErro == 1
         Ent„o
            Titulo "Missing cardinality on edge of relation" ;
         Sen„o
         Fim ; /* Se */
         Se TemErro == 2
         Ent„o
            Titulo "Only one object entity key may be absorbed" ;
         Sen„o
         Fim ; /* Se */
         Se TemErro == 3
         Ent„o
            Titulo "Recursive binary relations may not absorbe keys" ;
         Sen„o
         Fim ; /* Se */
         Se TemErro == 4
         Ent„o
            Titulo "Ilegal virtual value object edge" ;
         Sen„o
         Fim ; /* Se */
         Se TemErro == 5
         Ent„o
            Titulo "Cardinality must be one of \"0:1\", \"1\", \"0:n\", \"Virt\" or \"Val\"" ;
         Sen„o
         Fim ; /* Se */

         Se TemErro == 6
         Ent„o
            Titulo "Binary value relations must have one out edge labeled \"Virt\" or \"Val\"" ;
         Sen„o
         Fim ; /* Se */

         Se TemErro == 7
         Ent„o
            Titulo "Relationship is incorrectly linked on diagram" ;
         Sen„o
         Fim ; /* Se */

         Se TemErro == 8
         Ent„o
            Titulo "This relationship may not have value edges" ;
         Sen„o
         Fim ; /* Se */

      /* Validar relacionamento valor real */

         Se TipoRelacao == 3 Ent„o

         /* Validar relacionamento valor */

            Se    LinhaTexto( ListaModos , 1 ) == "a"
               OU LinhaTexto( ListaModos , 2 ) == "a"
            Ent„o
               Titulo "Real object valued binary relations may not absorbe keys" ;
            Sen„o
            Fim ; /* Se */

            Se LinhaTexto( ListaNomes , 1 ) == LinhaTexto( ListaNomes , 2 )
            Ent„o
               Titulo "Names of related edges must be different " ;
            Sen„o
            Fim ; /* Se */

         Sen„o
         Fim ;

      /* Selecionar Validar relacionamento recursivo */

         Se TipoRelacao == 2 Ent„o

         /* Validar relacionamento recursivo */

            Se LinhaTexto( ListaNomes , 1 ) == LinhaTexto( ListaModos , 2 )
            Ent„o
               Titulo "Names of edges of recursive relations must be different" ;
            Sen„o
            Fim ; /* Se */

         Sen„o
         Fim ;

      /* Selecionar validar relacionamento ternario */

         Se TipoRelacao == 5 Ent„o

         /* Validar relacionamento ternario */

            Rotulo1 = "" ;
            ComObjeto ObjetoLista( ListaLig , 2 ) Faz
               Se ExisteObj( RotuloLig( Corrente ))
               Ent„o
                  ComObjeto ObjetoInst( RotuloLig( Corrente )) Faz
                     Rotulo1 = [ Nome ] ;
                  Fim ; /* ComObjeto */
               Sen„o
               Fim ; /* Se */
            Fim ; /* ComObjeto */

            Rotulo2 = "*" ;
            ComObjeto ObjetoLista( ListaLig , 3 ) Faz
               Se ExisteObj( RotuloLig( Corrente ))
               Ent„o
                  ComObjeto ObjetoInst( RotuloLig( Corrente )) Faz
                     Rotulo2 = [ Nome ] ;
                  Fim ; /* ComObjeto */
               Sen„o
               Fim ; /* Se */
            Fim ; /* ComObjeto */

            Se Rotulo1 != Rotulo2
            Ent„o
               Titulo "Cardinalities on destination edges must be equal" ;
            Sen„o
            Fim ; /* Se */

            Se    LinhaTexto( ListaModos , 2 ) == "a"
               OU LinhaTexto( ListaModos , 3 ) == "a"
            Ent„o
               Titulo "Destination object entities may not absorve keys" ;
            Sen„o
            Fim ; /* Se */

            Se LinhaTexto( ListaNomes , 2 ) == LinhaTexto( ListaNomes , 3 )
            Ent„o
               Titulo "Names of edges must be different " ;
            Sen„o
            Fim ; /* Se */

         Sen„o
         Fim ;
   FimFrm

/***** Formul rio: Validar entidades Liga‡„o *****/

   InicFrm "Validar entidade de Liga‡„o"
      /* Dado do bloco Validar liga‡”es de entidade de liga‡„o */

         Objeto     InstEntid ;
         Objeto     InstLig ;
         Objeto     ObjetoDest ;
         Inteiro    ContaLista ;
         Sequencia  NomeRot ;

      FimDecl

   /* Corpo de Validar entidades Liga‡„o */

      /* Validar pertinenciade ent lig a modelo de dados */

         Endenta 3 ;

         Se   NAO Existe( [ Alias AliasIsKnowledge  ] )
            E NAO Existe( [ Alias AliasIsRepository ] )
            E NomeLimbo != [ Nome ]
         Ent„o
            Titulo "Relation entry is not related to a data model" ;
            Relacao Comp = TextoRelLimbo ;
         Sen„o
         Fim ; /* Se */

      /* Validar descri‡„o de entidade de liga‡„o em reposit¢rio */

         Se NAO Existe( [ Texto TxtDescr ] )
         Ent„o
            Titulo "Missing description of this relation entry" ;
         Sen„o
         Fim ; /* Se */

      /* Validar liga‡”es de entidade de liga‡„o */

         ContaLista = 0 ;
         ParaTodos InstsObjeto Faz
            InstEntid = Corrente ;
            ParaTodos LigsInstancia Faz
               InstLig = Corrente ;
               Se ExisteObj( RotuloLig( Corrente ))
               Ent„o
                  ComObjeto ObjetoInst( RotuloLig( Corrente )) Faz
                     NomeRot = [ Nome ] ;
                     Se NomeRot == CrdList
                     Ent„o
                        Se LigacaoEntra( InstLig , InstEntid )
                        Ent„o
                           ContaLista = ContaLista + 1 ;
                        Sen„o
                           Titulo "Only incoming edges may be labeled \"List\"";
                        Fim ; /* Se */
                     Sen„o
                        Se   ( NomeRot != Crd1   )
                           E ( NomeRot != Crd0ou1 )
                        Ent„o
                           Titulo "Cardinality must be either \"1\" or \"0:1\"" ;
                        Sen„o
                        Fim ; /* Se */
                     Fim ; /* Se */
                  Fim ; /* ComObjeto */
               Sen„o
                  Titulo "Missing cardinality" ;
               Fim ; /* Se */
               ObjetoDest = ObjetoInst( OutraPonta( Corrente , InstEntid )) ;
               Se   ClasseObj( ObjetoDest ) != DicEntidade
                  E ClasseObj( ObjetoDest ) != DicEntidadeLiga‡„o
               Ent„o
                  Titulo "Relation entries may relate only to entities or relation entries" ;
               Sen„o
               Fim ; /* Se */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */
         Se ContaLista != 1
         Ent„o
            Titulo "There must be exactly one incoming edge labeled \"List\"" ;
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
               ChaveGer = ConcatSeq( ChaveGer , [ Alias AliasKeyForm ] ) ;
               ChaveGer = ConcatSeq( ChaveGer , " "      ) ;
            Fim ; /* ParaTodos */
         Sen„o
         Fim ; /* Se */
      Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: Procurar entidade chave *****/

   InicFrm "Procurar entidade chave"
      /* Dado do bloco Navegar sobre a lista de heran‡a */

         Objeto InstOrigem ;
         Objeto InstCateg ;

      FimDecl

   /* Corpo de Procurar entidade chave */

      Se Existe( [ Relacao ChavesDet ] ) Ent„o

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

/***** Formul rio: Validar cardinalidade *****/

   InicFrm "Validar cardinalidade"
      /* Dado do bloco Corpo de Validar cardinalidade */

         Sequencia ValCrd ;

      FimDecl

   /* Corpo de Validar cardinalidade */

      Endenta 3 ;
      ValCrd = [ Nome ] ;
      Se   ( CrdAtr  != ValCrd )
         E ( CrdAtr1 != ValCrd )
         E ( CrdAtrn != ValCrd )
         E ( CrdAtrd != ValCrd )
         E ( CrdVirt != ValCrd )
         E ( CrdList != ValCrd )
         E ( Crd1    != ValCrd )
         E ( Crd0ou1 != ValCrd )
         E ( Crdn    != ValCrd )
      Ent„o
         Titulo "Unknown cardinality value" ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Validar Categorias *****/

   InicFrm "Validar Categoria"
      /* Dado do bloco Corpo de Validar Categorias */

         Objeto  ObjCorr ;
         Objeto  LigCorr ;
         Inteiro ContaEnt ;
         Inteiro ContaSai ;
         Inteiro Conta    ;

      FimDecl

   /* Corpo de Validar Categorias */

      Endenta 3 ;

      Se   NAO Existe( [ Alias AliasIsKnowledge  ] )
         E NAO Existe( [ Alias AliasIsRepository ] )
         E NomeLimbo != [ Nome ]
      Ent„o
         Titulo "Category is not related to a base" ;
         Relacao Comp = TextoRelLimbo ;
      Sen„o
      Fim ; /* Se */

      /* Validar categoria de repositorio */

         Endenta 3 ;
         ContaEnt = 0 ;
         ContaSai = 0 ;
         Conta    = 0 ;
         ParaTodos InstsObjeto Faz
            ObjCorr = Corrente ;
            ParaTodos LigsInstancia Faz
               LigCorr = Corrente ;
               Conta   = Conta + 1 ;
               Se LigacaoEntra( Corrente , ObjCorr )
               Ent„o
                  ContaEnt = ContaEnt + 1 ;
               Sen„o
               Fim ; /* Se */
               Se LigacaoSai( Corrente , ObjCorr )
               Ent„o
                  ContaSai = ContaSai + 1 ;
               Sen„o
               Fim ; /* Se */
               Se ExisteObj( RotuloLig( Corrente ))
               Ent„o
                  Titulo "Edges may not have cardinalities" ;
               Sen„o
               Fim ; /* Se */
               ComObjeto OutraPonta( Corrente , ObjCorr) Faz
                  Se ClasseObj( Corrente ) != DicEntidade
                  Ent„o
                     Titulo "Edges may only relate entities" ;
                  Sen„o
                     Se Existe( [ Relacao EntidFortes ] )
                     Ent„o
                        Titulo "Categories may only relate structural entities" ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ; /* ComObjeto */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */
         Se ( ContaEnt + ContaSai ) != Conta
         Ent„o
            Titulo "All edges must have a single direction";
         Sen„o
         Fim ; /* Se */
         Se ContaSai != 1
         Ent„o
            Titulo "There must be exactly one outgoing edge" ;
         Sen„o
         Fim ; /* Se */
   FimFrm

/***** Formul rio: Validar compoSi‡„o *****/

   InicFrm "Validar compoSi‡„o"
      /* Dado do bloco Corpo de Validar compoSi‡„o */

         Objeto  ObjCorr ;
         Objeto  LigCorr ;
         Inteiro ContaEnt ;
         Inteiro ContaSai ;
         Inteiro Conta    ;

      FimDecl

   /* Corpo de Validar compoSi‡„o */

      Endenta 3 ;

      Se   NAO Existe( [ Alias AliasIsKnowledge  ] )
         E NAO Existe( [ Alias AliasIsRepository ] )
         E NomeLimbo != [ Nome ]
      Ent„o
         Titulo "Composition is not related to a base" ;
         Relacao Comp = TextoRelLimbo ;
      Sen„o
      Fim ; /* Se */

      /* Validar composi‡„o de reposit¢rio */

         Endenta 3 ;
         ContaEnt = 0 ;
         ContaSai = 0 ;
         Conta    = 0 ;
         ParaTodos InstsObjeto Faz
            ObjCorr = Corrente ;
            ParaTodos LigsInstancia Faz
               LigCorr = Corrente ;
               Conta   = Conta + 1 ;
               Se LigacaoEntra( Corrente , ObjCorr )
               Ent„o
                  ContaEnt = ContaEnt + 1 ;
               Sen„o
               Fim ; /* Se */
               Se LigacaoSai( Corrente , ObjCorr )
               Ent„o
                  ContaSai = ContaSai + 1 ;
               Sen„o
               Fim ; /* Se */
               Se ExisteObj( RotuloLig( Corrente ))
               Ent„o
                  Titulo "Edges may not have cardinalities" ;
               Sen„o
               Fim ; /* Se */
               ComObjeto OutraPonta( Corrente , ObjCorr) Faz
                  Se ClasseObj( Corrente ) != DicEntidade
                  Ent„o
                     Titulo "Edges may only relate entities" ;
                  Sen„o
                     Se NAO Existe( [ Relacao EntidFortes ] )
                     Ent„o
                        Titulo "Compositions may only relate attribute entities" ;
                     Sen„o
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ; /* ComObjeto */
            Fim ; /* ParaTodos */
         Fim ; /* ParaTodos */
         Se ( ContaEnt + ContaSai ) != Conta
         Ent„o
            Titulo "All edges must have a single direction";
         Sen„o
         Fim ; /* Se */
         Se ContaEnt != 1
         Ent„o
            Titulo "There must be exactly one outgoing edge" ;
         Sen„o
         Fim ; /* Se */
         Se ContaSai <= 1
         Ent„o
            Titulo "A decomposition should decompose into 2 or more" ;
         Sen„o
         Fim ; /* Se */
   FimFrm

/***** Formul rio: Validar Banco de dados *****/

   InicFrm "Validar Banco de dados"

   /* Corpo de Validar Banco de dados */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar arQuivos *****/

   InicFrm "Validar arQuivos"

   /* Corpo de Validar arQuivos */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar esPa‡os *****/

   InicFrm "Validar esPa‡os"

   /* Corpo de Validar esPa‡os */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar Indices *****/

   InicFrm "Validar Indices"

   /* Corpo de Validar Indices */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar Vistas *****/

   InicFrm "Validar Vistas"

   /* Corpo de Validar Vistas */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar interFaces *****/

   InicFrm "Validar interFaces"

   /* Corpo de Validar interFaces */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar Janelas *****/

   InicFrm "Validar Janelas"

   /* Corpo de Validar Janelas */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar coment rio *****/

   InicFrm "Validar coment rio"

   /* Corpo de Validar coment rio */

      Endenta 3 ;
      Titulo "This object class is not supported" ;
   FimFrm

/***** Formul rio: Validar tudo *****/

   InicExterno "Validate all"

   /* Corpo de Validar tudo */

      /* Esvaziar todos os limbos */

         ComObjeto ObjetoNome( DicEntidade , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicRelacionamento , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicDado , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicCategoria , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicComposi‡„o , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

      /* Efetuar a validacao de tudo */

         ParaTodos Dicionario DicEntidade Faz
            GeraLaudo Novo ;
            Frm "Validar entidade" ;
         Fim ; /* ParaTodos */

         ParaTodos Dicionario DicEntidadeLigacao Faz
            GeraLaudo Novo ;
            Frm "Validar entidade de ligacao" ;
         Fim ; /* ParaTodos */

         ParaTodos Dicionario DicRelacionamento Faz
            GeraLaudo Novo ;
            Frm "Validar Relacionamento" ;
         Fim ; /* ParaTodos */

         ParaTodos Dicionario DicDado Faz
            GeraLaudo Novo ;
            Frm "Validar atributo" ;
         Fim ; /* ParaTodos */

         ParaTodos Dicionario DicComposicao Faz
            GeraLaudo Novo ;
            Frm "Validar composicao" ;
         Fim ; /* ParaTodos */

         ParaTodos Dicionario DicCategoria Faz
            GeraLaudo Novo ;
            Frm "Validar categoria" ;
         Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: Limpar tudo *****/

   InicExterno "Clear all findings"

   /* Corpo de Limpar tudo */

      /* Esvaziar todos os limbos */

         ComObjeto ObjetoNome( DicEntidade , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicRelacionamento , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicDado , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicCategoria , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */
         ComObjeto ObjetoNome( DicComposi‡„o , NomeLimbo ) Faz
            Se ExisteObj( Corrente )
            Ent„o
               Relacao Decomp = TextoRelVazio ;
            Sen„o
            Fim ; /* Se */
         Fim ; /* ComObjeto */

      /* Limpar todos os dicionarios */

         ParaTodos Dicionario DicDado Faz
            GeraLaudo Novo ;
         Fim ; /* ParaTodos */
         ParaTodos Dicionario DicRelacionamento Faz
            GeraLaudo Novo ;
         Fim ; /* ParaTodos */
         ParaTodos Dicionario DicEntidade Faz
            GeraLaudo Novo ;
         Fim ; /* ParaTodos */
         ParaTodos Dicionario DicEntidadeLiga‡„o Faz
            GeraLaudo Novo ;
         Fim ; /* ParaTodos */
         ParaTodos Dicionario DicCategoria Faz
            GeraLaudo Novo ;
         Fim ; /* ParaTodos */
         ParaTodos Dicionario DicComposicao Faz
            GeraLaudo Novo ;
         Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: Obter dados da rela‡„o *****/

   InicFrm "Obter dados da rela‡„o"
      /* Dado do bloco Corpo de Obter dados da rela‡„o */

         Inteiro     Conta      ;
         Inteiro     ContaEntra ;
         Inteiro     ContaSai   ;
         Inteiro     ContaSem   ;
         Inteiro     ContaVirt  ;
         Inteiro     ContaVal   ;
         Inteiro     ContaRec   ;
         Inteiro     ContaAbsorv ;
         Objeto      ObjetoRec  ;

      /* Dado do bloco Obter contagem em instancia */

         Logico      TemVirt   ;
         Logico      TemVal    ;
         Logico      TemAbsorv ;
         Logico      TemCard   ;
         Objeto      InstCorr  ;
         Objeto      InstOutro ;
         Objeto      LigCorr   ;
         Sequencia   NomeDest  ;

      /* Dado do bloco Obter contagem de r¢tulo */

         Objeto      RotCorr ;
         Sequencia   NomeRot ;

      /* Dado do bloco Inserir dados na lista do relacionamento */

         Sequencia   ModoLiga ;
         Inteiro     Inx ;

      FimDecl

   /* Corpo de Obter dados da rela‡„o */

      /* Limpar listas do relacionamento */

         EsvaziaLista( ListaEnt    ) ;
         EsvaziaLista( ListaLig    ) ;
         EsvaziaTexto( ListaChaves ) ;
         EsvaziaTexto( ListaNomes  ) ;
         EsvaziaTexto( ListaModos  ) ;

      /* Obter a contagem de liga‡”es */

         Conta         = 0 ;
         ContaEntra    = 0 ;
         ContaSai      = 0 ;
         ContaSem      = 0 ;
         ContaRec      = 0 ;
         ContaVirt     = 0 ;
         ContaVal      = 0 ;
         ContaAbsorv   = 0 ;
         TemErro       = 0 ;
         ObjetoRec     = Corrente ;

         ParaTodos InstsObjeto Faz

         /* Obter contagem em instancia */

            InstCorr = Corrente ;

            ParaTodos LigsInstancia Faz

            /* Obter contagem de r¢tulo */

               InstOutro = OutraPonta( Corrente , InstCorr ) ;
               LigCorr   = Corrente ;

               TemVirt   = FALSO ;
               TemVal    = FALSO ;
               TemAbsorv = FALSO ;
               TemCard   = FALSO ;
               RotCorr   = RotuloLig( Corrente ) ;
               NomeDest  = "" ;

               Se ExisteObj( RotCorr )
               Ent„o
                  ComObjeto RotCorr Faz
                     TemCard  = VERDADEIRO ;
                     NomeRot  = [ Nome ] ;
                     Se    ( NomeRot == Crd1    )
                        OU ( NomeRot == Crd0ou1 )
                     Ent„o
                        TemAbsorv   = VERDADEIRO ;
                     Sen„o
                        Se NomeRot == Crdn
                        Ent„o
                        Sen„o
                           Se NomeRot == CrdVirt
                           Ent„o
                              TemVirt   = VERDADEIRO ;
                           Sen„o
                              Se NomeRot == CrdVal
                              Ent„o
                                 TemVal = VERDADEIRO ;
                              Sen„o
                                 TemErro  = 5 ;
                              Fim ; /* Se */
                           Fim ; /* Se */
                        Fim ; /* Se */
                     Fim ; /* Se */

                     Se Existe( [ Alias AliasNomeDest ] )
                     Entao
                        NomeDest = [ Alias AliasNomeDest ] ;
                     Senao
                     Fim ;

                  Fim ; /* ComObjeto */
               Sen„o
               Fim ; /* Se */

            /* Inserir dados na lista do relacionamento */

               Se NomeDest == ""
               Ent„o
                  ComObjeto ObjetoInst( InstOutro ) Faz
                     NomeDest = [ Alias AliasNomeRelac ] ;
                  Fim ; /* ComObjeto */
               Sen„o
               Fim ; /* Se */

               ModoLiga = "" ;
               Se TemVirt
               Ent„o
                  ModoLiga = "v" ;
               Sen„o
               Fim ; /* Se */

               Se TemVal
               Ent„o
                  ModoLiga = "o" ;
               Sen„o
               Fim ; /* Se */

               Se TemAbsorv
               Ent„o
                  ModoLiga = "a" ;
               Sen„o
               Fim ; /* Se */

               Se NAO TemCard
               Ent„o
                  ModoLiga = "s" ;
               Sen„o
               Fim ; /* Se */

               Se Liga‡„oSai( Corrente , InstCorr )
               Ent„o
                  Inx = 10 ;
               Sen„o
                  Inx = 0 ;
               Fim ; /* Se */

               ComObjeto ObjetoInst( InstOutro ) Faz
                  ObjDefin = ObjetoInst( InstOutro ) ;
                  Frm "Obter nome chave entidade" ;
               Fim ; /* ParaTodos */

               InsereInxObj( ListaEnt ,    Inx , InstOutro ) ;
               InsereInxObj( ListaLig ,    Inx , Corrente  ) ;
               InsereTexto(  ListaNomes  , Inx , NomeDest  ) ;
               InsereTexto(  ListaChaves , Inx , ChaveGer ) ;
               InsereTexto(  ListaModos  , Inx , ModoLiga   ) ;

            /* Obter contagem de liga‡„o */

               Conta = Conta + 1 ;

               Se NAO TemCard
               Ent„o
                  TemErro = 1 ;
               Sen„o
               Fim ; /* Se */

               Se Liga‡„oEntra( Corrente , InstCorr )
               Entao
                  ContaEntra = ContaEntra + 1 ;

                  Se TemVirt
                  Ent„o
                     TemErro = 4 ;
                  Sen„o
                  Fim ; /* Se */

                  Se TemVal
                  Ent„o
                     TemErro = 4 ;
                  Sen„o
                  Fim ; /* Se */


               Senao

                  Se Liga‡„oSai( Corrente , InstCorr )
                  Entao
                     ContaSai  = ContaSai + 1 ;

                     Se TemVirt
                     Ent„o
                        ContaVirt    = ContaVirt + 1 ;
                     Sen„o
                     Fim ; /* Se */
                     Se TemVal
                     Ent„o
                        ContaVal     = ContaVal  + 1 ;
                     Sen„o
                     Fim ; /* Se */

                  Senao
                     ContaSem = ContaSem + 1 ;

                     Se TemVirt
                     Ent„o
                        TemErro = 4 ;
                     Sen„o
                     Fim ; /* Se */

                     Se TemVal
                     Ent„o
                        TemErro = 4 ;
                     Sen„o
                     Fim ; /* Se */

                     Se ObjetosIguais( ObjetoRec , InstOutro )
                     Ent„o
                        ContaRec  = ContaRec + 1 ;

                        Se TemAbsorv
                        Ent„o
                           TemErro = 3 ;
                        Sen„o
                        Fim ; /* Se */

                     Sen„o
                     Fim ; /* Se */
                  Fim ;
               Fim ;

               Se TemAbsorv
               Ent„o
                  ContaAbsorv  = ContaAbsorv + 1 ;
               Sen„o
               Fim ; /* Se */
            Fim ;
         Fim ;

      /* Determinar o tipo da liga‡„o */

         Se ContaAbsorv > 1
         Ent„o
            TemErro = 2 ;
         Sen„o
         Fim ; /* Se */

         TipoRelacao = 0 ;

         Se   ( ContaSem == 2 )
            E ( Conta    == 2 )
         Entao
            Se ContaRec == 0
            Ent„o
               TipoRelacao = 1 ;
            Sen„o
               TipoRelacao = 2 ;
            Fim ; /* Se */

            Se    ( ContaVal  != 0 )
               OU ( ContaVirt != 0 )
            Ent„o
               TemErro = 8 ;
            Sen„o
            Fim ; /* Se */

         Senao

            Se   ( ContaSem == 2 )
               E ( ContaSai == 1 )
               E ( Conta    == 3 )
            Entao

               Se ContaVal == 1
               Ent„o
                  TipoRelacao = 3 ;

                  Se    ( ContaVirt != 0 )
                  Ent„o
                     TemErro = 6 ;
                  Sen„o
                  Fim ; /* Se */
               Sen„o
                  Se ContaVirt == 1
                  Ent„o
                     TipoRelacao = 4 ;

                     Se    ( ContaVal != 0 )
                     Ent„o
                        TemErro = 6 ;
                     Sen„o
                     Fim ; /* Se */
                  Sen„o
                     TemErro = 6 ;
                  Fim ; /* Se */
               Fim ; /* Se */

            Senao

               Se   ( ContaEntra == 1 )
                  E ( ContaSai   == 2 )
                  E ( Conta      == 3 )
               Entao
                  TipoRelacao = 5 ;
                  Se    ( ContaVal  != 0 )
                     OU ( ContaVirt != 0 )
                  Ent„o
                     TemErro = 8 ;
                  Sen„o
                  Fim ; /* Se */
               Senao

                  TemErro = 7 ;

               Fim ;

            Fim ;
         Fim ;

      /* Debug obter dados relacao */
   FimFrm

/**************************************************************************
**** Fim programa: Totem repository validation program
**************************************************************************/

