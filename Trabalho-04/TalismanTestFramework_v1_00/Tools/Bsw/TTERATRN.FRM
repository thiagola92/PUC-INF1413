/**************************************************************************
*
**** Programa de formul rios: Totem transformation
*
**** Nome do arquivo gerado:  TTERATRN
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
*  Mark all belonging to repository    : "Mark all belonging to repository"
*  Mark all belonging to knowledge     : "Mark knowledge base elements"
*  Unmark all                          : "Unmark all"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  Mark all belonging to repository    : "Mark all belonging to repository"
*  Mark all belonging to knowledge     : "Mark knowledge base elements"
*  Mark all substructures of a data    : "Mark knowledge base sub-structures"
*  Mark all repository sub-structur    : "Mark repository sub-structures"
*  Unmark all                          : "Unmark all"
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
      FimDecl
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: Mark all belonging to repository *****/

   InicExterno "Mark all belonging to repository"

   /* Corpo de Mark all belonging to repository */

      Alias AliasIsKnowledge  = "" ;
      Alias AliasIsRepository = "x" ;

      ComObjeto FolhaFilho( Corrente ) Faz
         ParaTodos InstFolha Faz
            ComObjeto ObjetoInst( Corrente ) Faz
               Alias AliasIsKnowledge  = "" ;
               Alias AliasIsRepository = "x" ;
               GeraLaudo Novo ;
               Se    ClasseObj( Corrente ) == DicEntidade
                  OU ClasseObj( Corrente ) == DicEntidadeLigacao
               Ent„o
                  ParaTodos Dados Faz
                     Frm "Mark repository sub-structures" ;
                  Fim ; /* ParaTodos */
                  ParaTodos ChavesDet Faz
                     Frm "Mark repository sub-structures" ;
                  Fim ; /* ParaTodos */
               Sen„o
               Fim ; /* Se */
               Se    ClasseObj( Corrente ) == DicRelacionamento
               Ent„o
                  ParaTodos Dados Faz
                     Frm "Mark repository sub-structures" ;
                  Fim ; /* ParaTodos */
               Sen„o
               Fim ; /* Se */
            Fim ; /* ComObjeto */
         Fim ; /* ParaTodos */
      Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: Mark all belonging to knowledge base *****/

   InicExterno "Mark knowledge base elements"

   /* Corpo de Mark all belonging to knowledge base */

      Alias AliasIsKnowledge  = "x" ;
      Alias AliasIsRepository = "" ;

      ComObjeto FolhaFilho( Corrente ) Faz
         ParaTodos InstFolha Faz
            ComObjeto ObjetoInst( Corrente ) Faz
               Alias AliasIsKnowledge  = "x" ;
               Alias AliasIsRepository = "" ;
               GeraLaudo Novo ;
               Se    ClasseObj( Corrente ) == DicEntidade
                  OU ClasseObj( Corrente ) == DicEntidadeLigacao
               Ent„o
                  ParaTodos Dados Faz
                     Frm "Mark knowledge base sub-structures" ;
                  Fim ; /* ParaTodos */
                  ParaTodos ChavesDet Faz
                     Frm "Mark knowledge base sub-structures" ;
                  Fim ; /* ParaTodos */
               Sen„o
               Fim ; /* Se */
               Se    ClasseObj( Corrente ) == DicRelacionamento
               Ent„o
                  ParaTodos Dados Faz
                     Frm "Mark knowledge base sub-structures" ;
                  Fim ; /* ParaTodos */
               Sen„o
               Fim ; /* Se */
            Fim ; /* ComObjeto */
         Fim ; /* ParaTodos */
      Fim ; /* ComObjeto */
   FimFrm

/***** Formul rio: Mark all substructures of a data structure *****/

   InicFrm "Mark knowledge base sub-structures"

   /* Corpo de Mark all substructures of a data structure */

      Alias AliasIsKnowledge  = "x" ;
      Alias AliasIsRepository = "" ;
      GeraLaudo Novo ;
      ParaTodos Decomp Faz
         Frm "Mark knowledge base sub-structures" ;
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: Mark all repository sub-structures *****/

   InicFrm "Mark repository sub-structures"

   /* Corpo de Mark all repository sub-structures */

      Alias AliasIsKnowledge  = "" ;
      Alias AliasIsRepository = "x" ;
      GeraLaudo Novo ;
      ParaTodos Decomp Faz
         Frm "Mark repository sub-structures" ;
      Fim ; /* ParaTodos */
   FimFrm

/***** Formul rio: Unmark all *****/

   InicExterno "Unmark all"

   /* Corpo de Unmark all */

      ParaTodos Dicionario DicEntidade Faz
         Alias AliasIsKnowledge  = "" ;
         Alias AliasIsRepository = "" ;
      Fim ; /* ParaTodos */

      ParaTodos Dicionario DicEntidadeLiga‡„o Faz
         Alias AliasIsKnowledge  = "" ;
         Alias AliasIsRepository = "" ;
      Fim ; /* ParaTodos */

      ParaTodos Dicionario DicRelacionamento Faz
         Alias AliasIsKnowledge  = "" ;
         Alias AliasIsRepository = "" ;
      Fim ; /* ParaTodos */

      ParaTodos Dicionario DicDado Faz
         Alias AliasIsKnowledge  = "" ;
         Alias AliasIsRepository = "" ;
      Fim ; /* ParaTodos */

      ParaTodos Dicionario DicComposicao Faz
         Alias AliasIsKnowledge  = "" ;
         Alias AliasIsRepository = "" ;
      Fim ; /* ParaTodos */

      ParaTodos Dicionario DicCategoria Faz
         Alias AliasIsKnowledge  = "" ;
         Alias AliasIsRepository = "" ;
      Fim ; /* ParaTodos */
   FimFrm

/**************************************************************************
**** Fim programa: Totem transformation
**************************************************************************/

