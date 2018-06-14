/**************************************************************************
*
**** Programa de formul rios: Totem repository modelling representation language
*
**** Nome do arquivo gerado:  TTERAESP
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
*  Exibir todos os laudos              : "Exibir todos laudos"
*
****************************************************************************
*
* Formul rios linearizados (tornados dispon¡veis)
*
*  Criar coment rio                    : "Criar comentario"
*  Criar Entidades                     : "Criar entidade"
*  Criar cardinalidade                 : "Criar cardinalidade"
*  Criar Relacionamentos               : "Criar relacionamento"
*  Criar entidades Liga‡„o             : "Criar entidade de ligacao"
*  Criar Atributos                     : "Criar dado"
*  Criar Categorias                    : "Criar categoria"
*  Criar compoSi‡„o                    : "Criar composicao"
*  Criar Banco de dados                : "Criar banco"
*  Criar arQuivos                      : "Criar Arquivo"
*  Criar esPa‡os                       : "Criar espaco"
*  Criar Indices                       : "Criar indice"
*  Criar Vistas                        : "Criar Vista"
*  Criar interFaces                    : "Criar interface"
*  Criar Janelas                       : "Criar janela"
*  Editar Atributos                    : "Editar dado"
*  Editar Entidades                    : "Editar entidade"
*  Editar Relacionamentos              : "Editar relacionamento"
*  Editar entidades Liga‡„o            : "Editar entidade de ligacao"
*  Editar cardinalidade                : "Editar cardinalidade"
*  Editar Categorias                   : "Editar categoria"
*  Editar compoSi‡„o                   : "Editar composicao"
*  Editar Banco de dados               : "Editar banco"
*  Editar arQuivos                     : "Editar arquivo"
*  Editar esPa‡os                      : "Editar espaco"
*  Editar Indices                      : "Editar indice"
*  Editar Vistas                       : "Editar Vista"
*  Editar interFaces                   : "Editar interface"
*  Editar Janelas                      : "Editar janela"
*  Editar coment rio                   : "Editar coment rio"
*  Obter dados da rela‡„o              : "Obter dados da rela‡„o"
*  Determinar o tipo de atributo       : "Determinar o tipo de atributo"
*  Editar especifica‡„o do objeto      : "Editar especifica‡„o"
*  Editar campos de um atributo        : "Editar campos de um atributo"
*  Editar atributos com chave pr¢pr    : "Editar atributos com chave pr¢pria"
*  Editar atributos da entidade        : "Editar atributos entidade"
*  Exibir laudo                        : "Exibir laudo"
*  Exibir laudo geral                  : "Exibir laudo geral"
*  Exibir todos os laudos              : "Exibir todos laudos"
*  Exibir campo de estrutura de dad    : "Exibir campo relacionamento"( Inteiro InxObj )
*  Exibir referencia relacao chave     : "Exibir referencia relacao chave"( Inteiro InxPara1 ,
*                                                                           Inteiro InxPara2 ,
*                                                                           Inteiro InxDe ,
*                                                                           Inteiro InxNome  )
*  Exibir estrutura de dados de ent    : "Exibir estrutura dados atributo"
*  Exibir estrutura de chave           : "Exibir estrutura chave" ( Sequencia NomeChave )
*  Exibir entidade de liga‡„o          : "Exibir entidade liga‡„o"
*  Exibir todas as rela‡”es com cha    : "Exibir rela‡”es de entidade"( Logico MostraAbsorvido )
*  Exibir chaves estrangeiras          : "Exibir chaves estrangeiras"
*  Exibir entidade atributo de defi    : "Exibir estrutura de dados de entidade"
*  Exibir estrutura de dados           : "Exibir estrutura de dados"
*  Exibir entidades atributo decomp    : "Exibir atributos decompostos"
*  Exibir uma instƒncia de rela‡„o     : "Exibir Instƒncia Rela‡„o"( Inteiro TipoRelac )
*  Exibir cardinalidade espec¡fica     : "Exibir cardinalidade"( Objeto InstLig ,
*                                                                Objeto InstDest )
*  Exibir atributo tabela rela‡„o      : "Exibir atributo rela‡„o"( Sequencia ChaveDest )
*  Exibir referencia rela‡„o absorv    : "Exibir referencia rela‡„o absorvida"( Inteiro InxPara1 ,
*                                                                               Inteiro InxPara2 ,
*                                                                               Inteiro InxDe ,
*                                                                               Inteiro InxNome )
*  Extrair a lista de entidades atr    : "Obter lista entidades atributo"
*  Gerar tabelas de rela‡”es de rel    : "Gerar rela‡”es m£ltiplas"( Inteiro TipoRelac  )
*  Obter nome da chave da entidade     : "Obter nome chave entidade"
*  Obter lista de entidades herdeir    : "Obter lista entidades herdeiras"
*  Procurar entidade chave             : "Procurar entidade chave"
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

/***** Formul rio: Criar coment rio *****/

   InicFrm "Criar comentario"

   /* Corpo de Criar coment rio */

      Titulo "Comment: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Entidades *****/

   InicFrm "Criar entidade"

   /* Corpo de Criar Entidades */

      Titulo "Name of this entity: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Symbolic name of the object class: " ;
      NaoAvLin ;
      Alias AliasNomeClasse ;
      Titulo "Symbolic default relation name:    " ;
      NaoAvLin ;
      Alias AliasNomeRelac ;
      Titulo "" ;
   FimFrm

/***** Formul rio: Criar cardinalidade *****/

   InicFrm "Criar cardinalidade"

   /* Corpo de Criar cardinalidade */

      Titulo "Cardinality: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Optional field name of key: " ;
      NaoAvLin ;
      Alias AliasNomeDest ;
      Titulo "" ;
   FimFrm

/***** Formul rio: Criar Relacionamentos *****/

   InicFrm "Criar relacionamento"

   /* Corpo de Criar Relacionamentos */

      Titulo "Name of relationship: " ;
      NaoAvLin ;
      Nome ;
      Titulo "Attribute class key:  " ;
      NaoAvLin ;
      Alias AliasIdRel ;
      Titulo "" ;
   FimFrm

/***** Formul rio: Criar entidades Liga‡„o *****/

   InicFrm "Criar entidade de ligacao"

   /* Corpo de Criar entidades Liga‡„o */

      Titulo "Name of relation entity: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Atributos *****/

   InicFrm "Criar dado"

   /* Corpo de Criar Atributos */

      Titulo "Name of data structure: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Categorias *****/

   InicFrm "Criar categoria"

   /* Corpo de Criar Categorias */

      Titulo "Name of category: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar compoSi‡„o *****/

   InicFrm "Criar composicao"

   /* Corpo de Criar compoSi‡„o */

      Titulo "Name of composition: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Banco de dados *****/

   InicFrm "Criar banco"

   /* Corpo de Criar Banco de dados */

      Titulo "Name of data base: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar arQuivos *****/

   InicFrm "Criar Arquivo"

   /* Corpo de Criar arQuivos */

      Titulo "Name of file: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar esPa‡os *****/

   InicFrm "Criar espaco"

   /* Corpo de Criar esPa‡os */

      Titulo "Name of data space: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Indices *****/

   InicFrm "Criar indice"

   /* Corpo de Criar Indices */

      Titulo "Name of index: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Vistas *****/

   InicFrm "Criar Vista"

   /* Corpo de Criar Vistas */

      Titulo "Name of view: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar interFaces *****/

   InicFrm "Criar interface"

   /* Corpo de Criar interFaces */

      Titulo "Name of interface: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Criar Janelas *****/

   InicFrm "Criar janela"

   /* Corpo de Criar Janelas */

      Titulo "Name of window: " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/***** Formul rio: Editar Atributos *****/

   InicFrm "Editar dado"

   /* Corpo de Editar Atributos */

      /* Editar nome do atributo */

         Endenta 3 ;
         Frm "Criar dado" ;
         Frm "Exibir laudo" ;

         Titulo "Definition of this data structure" ;
         Texto TxtDescr ;

      /* Editar defini‡„o de atributo */

         Titulo "Child data structures of this data structure" ;
         Rela‡„o Decomp ;
         Titulo "Data structure key value" ;
         Alias AliasKeyForm ;

      /* Editar rela‡”es do atributo */

         Titulo "Entities using this data structure as a key" ;
         Rela‡„o ChavesDetEntid ;
         Titulo "Entities using this data structure as a value" ;
         Rela‡„o Entidades ;
         Titulo "Relation entries using this data structure as a key" ;
         Rela‡„o ChavesDetEntidLigacao ;
         Titulo "Relation entries using this data structure as a value" ;
         Rela‡„o EntidLigacao ;
         Titulo "Relationships using this data structure as a key" ;
         Rela‡„o Relacionamentos ;
         Titulo "Parent data structures of this data structure" ;
         Rela‡„o Comp ;

      /* Editar especifica‡„o do atributo */

         Frm "Editar especifica‡„o" ;

         Titulo "" ;
         Titulo "Detailed specification of this data structure" ;

         AvMrgEsq 3 ;
         ChaveEntidade = Pref ;
         Frm "Exibir estrutura de dados" ;
   FimFrm

/***** Formul rio: Editar Entidades *****/

   InicFrm "Editar entidade"

   /* Corpo de Editar Entidades */

      /* Editar cabe‡alho de entidade */

         Endenta 3 ;

         Frm "Criar entidade" ;
         Frm "Exibir laudo" ;

         T¡tulo "Definition of this entity" ;
         Texto  TxtDescr ;

      /* Editar rela‡”es com estruturas de dados da entidade */

         MrgEsq 1 ;
         Titulo "Relations to data structures of this entity" ;
         AvMrgEsq 3 ;
         Titulo "Key data structure of this entity" ;
         Rela‡„o ChavesDet ;
         Titulo "Value data structures of this entity" ;
         Rela‡„o Dados ;
         AvMrgEsq -3 ;

      /* Editar relacionamentos forte/fraco entre entidades */

         MrgEsq 1 ;
         Titulo "" ;
         Titulo "Attribute entity relations" ;
         AvMrgEsq 3 ;
         Titulo "Attribute entities of this entity" ;
         Rela‡„o EntidFracas ;
         Titulo "Entities related to this attribute entity" ;
         Rela‡„o EntidFortes ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o de entidade */

         Frm "Editar especifica‡„o" ;

      /* Relacionamentos para base de conhecimento */

         Titulo "" ;
         Titulo "Knowledge base relations of this entity" ;
         AvMrgEsq 3 ;
         Titulo "Knowledge base entity describing this repository entity" ;
         Rela‡„o DefinidoEm ;
         Titulo "Repository entity described by this knowledge base entity" ;
         Rela‡„o DefineEntidade ;
         Titulo "Repository relationship described by this knowledge base entity" ;
         Rela‡„o DefineRelacionamento ;
         AvMrgEsq -3 ;

      /* Editar chaves da entidade */

         ChaveEntidade = Etc ;
         ChaveGer      = Etc ;
         ObjDefin      = Corrente ;
         MrgEsq 1 ;

         Se NAO Existe( [ Relacao EntidFortes ] )
         Ent„o
            Frm "Obter nome chave entidade" ;

            ChaveEntidade = "" ;

            Titulo "" ;
            Titulo "Access key of this entity" ;
            AvMrgEsq 3 ;

            Titulo "" ;
            Titulo "Key data structures" ;
            AvMrgEsq 3 ;
            ParaTodos ChavesDet Faz
               Titulo "Object key: " ;
               NaoAvLin ;
               Nome ;
               Frm "Exibir estrutura chave"( "" ) ;
            Fim ;
            AvMrgEsq -3 ;

            ChaveEntidade = ChaveGer ;
         Sen„o
         Fim ; /* Se */

      /* Editar atributos da estrutura de heran‡a desta entidade */

         Frm "Editar atributos entidade" ;
   FimFrm

/***** Formul rio: Editar Relacionamentos *****/

   InicFrm "Editar relacionamento"
      /* Dado do bloco Editar tabelas da rela‡„o */

         Objeto ObjOrg ;

      FimDecl

   /* Corpo de Editar Relacionamentos */

      /* Editar cabe‡alho de relacionamento */

         Endenta 3 ;
         Frm "Criar relacionamento" ;
         Frm "Exibir laudo" ;

         T¡tulo "Definition of this relationship" ;
         Texto  TxtDescr ;

      /* Editar especifica‡„o do relacionamento */

         Frm "Editar especifica‡„o" ;

      /* Editar tabelas da rela‡„o */

         Titulo "" ;
         Titulo "Detailed specification of this relationship" ;
         AvMrgEsq 3 ;

         ChaveEntidade = Etc ;

         ObjDefin = Corrente ;

         Frm "Obter dados da rela‡„o" ;

         Se TipoRela‡„o == 1
         Ent„o
            Titulo "Binary relation" ;
         Sen„o
            Se TipoRela‡„o == 2
            Ent„o
               Titulo "Recursive binary relation" ;
            Sen„o
               Se TipoRela‡„o == 3
               Ent„o
                  Titulo "Binary relation with real value object" ;
               Sen„o
                  Se TipoRela‡„o == 4
                  Ent„o
                     Titulo "Binary relation with virtual value object" ;
                  Sen„o
                     Se TipoRela‡„o == 5
                     Ent„o
                        Titulo "Semi-ternary relation" ;
                     Sen„o
                        Titulo ">>> Relation of unknown type" ;
                     Fim ; /* Se */
                  Fim ; /* Se */
               Fim ; /* Se */
            Fim ; /* Se */
         Fim ; /* Se */

         ParaTodos InstsObjeto Faz
            Frm "Exibir Instƒncia Rela‡„o"( TipoRelacao ) ;
         Fim ;
   FimFrm

/***** Formul rio: Editar entidades Liga‡„o *****/

   InicFrm "Editar entidade de ligacao"

   /* Corpo de Editar entidades Liga‡„o */

      /* Editar cabe‡alho de entidade de liga‡„o */

         Endenta 3 ;
         Frm "Criar entidade de ligacao" ;
         Frm "Exibir laudo" ;

         T¡tulo "Description" ;
         Texto  TxtDescr ;

      /* Atributos agregados da entidade de liga‡„o */

         Titulo "Entity attributes, aggregate view" ;
         AvMrgEsq 3 ;
         Titulo "Key attributes" ;
         Rela‡„o ChavesDet ;
         Titulo "Value attributes" ;
         Rela‡„o Dados ;
         AvMrgEsq -3 ;

      /* Editar especifica‡„o de entidade de liga‡„o */

         Frm "Editar especifica‡„o" ;

      /* Editar detalhe de entidade de liga‡„o */

         ObjDefin      = Corrente ;
         ChaveEntidade = Etc ;

         Frm "Exibir entidade liga‡„o" ;
   FimFrm

/***** Formul rio: Editar cardinalidade *****/

   InicFrm "Editar cardinalidade"

   /* Corpo de Editar cardinalidade */

      /* Editar cabe‡alho de cardinalidade */

         Endenta 3 ;
         Frm "Criar cardinalidade" ;
         Frm "Exibir laudo" ;
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

         Titulo "Description" ;
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
            Titulo "!! No inheriting entities defined !!" ;
         Senao
            Titulo "Following entities" ;
            ParaTodos ObjHerda Faz
               Nome ;
            Fim ;
         Fim ;
         Se ListaVazia( ObjRaiz )
         Entao
            Titulo "!! No source entity defined !!" ;
         Senao
            Titulo "inherit from" ;
            ParaTodos ObjRaiz Faz
               Nome ;
            Fim ;
         Fim ;
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

         Titulo "Informal description" ;
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
            Titulo "!! Undefined component list !!" ;
         Senao
            Titulo "Elements" ;
            ParaTodos ObjHerda Faz
               Nome ;
            Fim ;
         Fim ;
         Se ListaVazia( ObjRaiz )
         Entao
            Titulo "!! Undefined composition !!" ;
         Senao
            Titulo "compose" ;
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
   FimFrm

/***** Formul rio: Editar interFaces *****/

   InicFrm "Editar interface"

   /* Corpo de Editar interFaces */

      /* Editar cabe‡alho de interface */

         Endenta 3 ;
         Frm "Criar interface" ;
         Frm "Exibir laudo" ;

      /* Editar especifica‡„o da interface */

         Frm "Editar especifica‡„o" ;
   FimFrm

/***** Formul rio: Editar Janelas *****/

   InicFrm "Editar janela"

   /* Corpo de Editar Janelas */

      /* Editar cabe‡alho da janela */

         Endenta 3 ;
         Frm "Criar janela" ;
         Frm "Exibir laudo" ;
   FimFrm

/***** Formul rio: Editar coment rio *****/

   InicFrm "Editar coment rio"

   /* Corpo de Editar coment rio */

      Frm "Criar coment rio" ;
      Titulo "Comment text" ;
      Texto TxtDescr ;

      Frm "Exibir todos laudos" ;
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
                        ObjetoRec = InstOutro ;
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

/***** Formul rio: Editar especifica‡„o do objeto *****/

   InicFrm "Editar especifica‡„o"

   /* Corpo de Editar especifica‡„o do objeto */

      /* Restri‡”es de integridade */

         Titulo "" ;
         Titulo "Specific integrity constraints" ;
         Texto  TxtRestrIntegr ;

      /* Editar observa‡”es */

         T¡tulo "Observations" ;
         Texto  TxtObserv     ;
   FimFrm

/***** Formul rio: Editar campos de um atributo *****/

   InicFrm "Editar campos de um atributo"

   /* Corpo de Editar campos de um atributo */

      Texto TxtDescr ;
      AvMrgEsq 3 ;
      Titulo "Acceptable values" ;
      Texto TxtValoresAtrib ;
      Titulo "Integrity constraints" ;
      Texto TxtIntegridAtrib ;
      Titulo "Data declaration" ;
      Texto TxtDeclAtrib ;
      AvMrgEsq -3 ;
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

/***** Formul rio: Editar atributos da entidade *****/

   InicFrm "Editar atributos entidade"
      /* Dado do bloco Gerar listas de lineariza‡„o */

         Objeto    ObjDeclar ;

      /* Dado do bloco Obter objeto defini‡„o de atributos absorvidos */

         Sequencia NomeRot ;
         Objeto    InstCorr ;
         Objeto    LigCorr ;
         Objeto    ObjDecl ;

      /* Dado do bloco Editar todas as entidades de que esta entidade herda */

         Objeto NovaOrigem ;
         Objeto InstOrigemHerda ;

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

               MrgEsq 1 ;
               Titulo "" ;
               Titulo "Detailed specs. of entity: " ;
               NaoAvLin ;
               Nome ;
               AvMrgEsq 3 ;

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

            MrgEsq 1 ;
            Titulo "" ;
            Titulo "Detailed specs. of attribute entity: " ;
            NaoAvLin ;
            Nome ;

            InsereObj( ListaAtributo , Corrente ) ;
            InsereObj( Processados   , Corrente ) ;

            AvMrgEsq 3 ;
         Fim ;

      /* Gerar a lista de estruturas de dados internas */

         Se TemDeclar
         Ent„o
            ComObjeto ObjDeclar Faz
               Titulo "" ;
               Titulo "Descriptor attribute: " ;
               NaoAvLin ;
               Nome ;
               Titulo "" ;
               Titulo "Data composition of this attribute" ;
               AvMrgEsq 3 ;

               Frm "Exibir estrutura de dados de entidade" ;

            Fim ; /* ComObjeto */
         Sen„o
         Fim ; /* Se */

         AvMrgEsq -3 ;

      /* Editar todos atributos com chave pr¢pria */

         Titulo "" ;
         Titulo "Attributes of this entity" ;
         AvMrgEsq 3 ;

         Frm "Editar atributos com chave pr¢pria" ;

         AvMrgEsq -3 ;

      /* Editar todas as entidades de que esta entidade herda */

         ComObjeto ObjOrgHerda Faz
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
                                 MrgEsq 1 ;
                                 Titulo "" ;
                                 Titulo "---------------" ;
                                 Titulo "Inherits from: " ;
                                 NaoAvLin ;
                                 Nome ;
                                 Frm "Procurar entidade chave" ;
                                 Frm "Editar atributos entidade" ;
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

/***** Formul rio: Exibir laudo *****/

   InicFrm "Exibir laudo"

   /* Corpo de Exibir laudo */

      Endenta 3 ;
      Se Existe( [ Alias AliasIsRepository ] )
      Ent„o
         Titulo "Repository component" ;
      Sen„o
         Se Existe( [ Alias AliasIsKnowledge  ] )
         Ent„o
            Titulo "Definition base component" ;
         Sen„o
            Titulo "Component of an undefined base" ;
         Fim ; /* Se */
      Fim ; /* Se */

      Se Existe( [ Texto TxtLaudo ] )
      Entao
         Titulo "" ;
         Titulo "Findings report" ;
         TextoLaudo ;
         Titulo "" ;
      SeNao
      Fim ;
   FimFrm

/***** Formul rio: Exibir laudo geral *****/

   InicFrm "Exibir laudo geral"

   /* Corpo de Exibir laudo geral */

      Se   Existe( [ Texto TxtLaudo ] )
      /*   E Existe( [ Alias AliasIsRepository ] ) */
      Ent„o
         Titulo "" ;
         Nome ;
         AvMrgEsq 3 ;
            TextoLaudo ;
         AvMrgEsq -3 ;
      Sen„o
      Fim ; /* Se */
   FimFrm

/***** Formul rio: Exibir todos os laudos *****/

   InicExterno "Exibir todos laudos"

   /* Corpo de Exibir todos os laudos */

      Titulo "" ;
      Titulo ">>> Entities" ;
      ParaTodos Dicionario DicEntidade Faz
         Frm "Exibir laudo geral" ;
      Fim ; /* ParaTodos */

      Titulo "" ;
      Titulo ">>> Relationships" ;
      ParaTodos Dicionario DicRelacionamento Faz
         Frm "Exibir laudo geral" ;
      Fim ; /* ParaTodos */

      Titulo "" ;
      Titulo ">>> Relation entries" ;
      ParaTodos Dicionario DicEntidadeLiga‡„o Faz
         Frm "Exibir laudo geral" ;
      Fim ; /* ParaTodos */

      Titulo "" ;
      Titulo ">>> Data structures" ;
      ParaTodos Dicionario DicDado Faz
         Frm "Exibir laudo geral" ;
      Fim ; /* ParaTodos */

      Titulo "" ;
      Titulo ">>> Categories" ;
      ParaTodos Dicionario DicCategoria Faz
         Frm "Exibir laudo geral" ;
      Fim ; /* ParaTodos */

      Titulo "" ;
      Titulo ">>> Compositions" ;
      ParaTodos Dicionario DicComposicao Faz
         Frm "Exibir laudo geral" ;
      Fim ; /* ParaTodos */
      Titulo "" ;
      Titulo ">>> End of findings report" ;
   FimFrm

/***** Formul rio: Exibir campo de estrutura de dados de relacionamento *****/

   InicFrm "Exibir campo relacionamento"( Inteiro InxObj )

   /* Corpo de Exibir campo de estrutura de dados de relacionamento */

      AvMrgEsq 3 ;

      Titulo "Entry name: " ;
      NaoAvLin ;

      ComObjeto ObjetoInst( ObjetoLista( ListaEnt , InxObj )) Faz
         Se LinhaTexto( ListaNomes , InxObj ) == [ Alias AliasNomeRelac ]
         Ent„o
            Alias AliasNomeRelac ;
         Sen„o
            ComObjeto RotuloLig( ObjetoLista( ListaLig , InxObj )) Faz
               Alias AliasNomeDest ;
            Fim ; /* ComObjeto */
         Fim ; /* Se */
      Fim ; /* ComObjeto */

      Titulo "      type: " ;
      NaoAvLin ;
      Titulo LinhaTexto( ListaChaves , InxObj ) ;
   FimFrm

/***** Formul rio: Exibir referencia relacao chave *****/

   InicFrm "Exibir referencia relacao chave"( Inteiro InxPara1 ,
                                              Inteiro InxPara2 ,
                                              Inteiro InxDe ,
                                              Inteiro InxNome  )

   /* Corpo de Exibir referencia relacao chave */

      Titulo "Relation list attribute of: " ;
      NaoAvLin ;
      ComObjeto ObjetoLista( ListaEnt , InxDe ) Faz
         Nome ;
      Fim ; /* ComObjeto */

      AvMrgEsq 3 ;
      Titulo "Access key: " ;
      NaoAvLin ;
      Titulo "< " ;
      NaoAvLin ;
      Titulo ChaveEntidade ;
      Se TamSeq( ChaveEntidade ) != 0
      Ent„o
         NaoAvLin ;
         Titulo ", " ;
      Sen„o
      Fim ; /* Se */

      NaoAvLin ;
      Alias AliasIdRel ;
      NaoAvLin ;
      Titulo " , " ;
      NaoAvLin ;

      ComObjeto ObjetoInst( ObjetoLista( ListaEnt , InxNome )) Faz
         Se LinhaTexto( ListaNomes , InxNome ) == [ Alias AliasNomeRelac ]
         Ent„o
            Alias AliasNomeRelac ;
         Sen„o
            ComObjeto RotuloLig( ObjetoLista( ListaLig , InxNome )) Faz
               Alias AliasNomeDest ;
            Fim ; /* ComObjeto */
         Fim ; /* Se */
      Fim ; /* ComObjeto */

      NaoAvLin ;
      Titulo " >" ;

      Frm "Exibir campo relacionamento"( InxPara1 ) ;

      Se InxPara2 < 5
      Ent„o
         Frm "Exibir campo relacionamento"( InxPara2 ) ;
      Sen„o
      Fim ; /* Se */
      AvMrgEsq -3 ;
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
         Titulo "" ;
         Titulo "Key data structure: " ;
         NaoAvLin ;
         Nome ;
         Frm "Exibir estrutura chave"( ChaveInx ) ;
      Fim ; /* ParaTodos */

      Titulo "Declaration begin" ;

      AvMrgEsq 3 ;
      Frm "Exibir chaves estrangeiras" ;
      AvMrgEsq -3 ;

      ParaTodos Dados Faz
         AvMrgEsq 3 ;
         Titulo "" ;
         Titulo "Data structure: " ;
         NaoAvLin ;
         Nome ;
         AvMrgEsq -3 ;
         Frm "Exibir estrutura de dados" ;
      Fim ; /* ParaTodos */

      Titulo "Declaration end" ;
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

      AvMrgEsq 6 ;
      Titulo "Key data structure: " ;
      NaoAvLin ;
      Nome ;
      Texto TxtDescr ;
   FimFrm

/***** Formul rio: Exibir entidade de liga‡„o *****/

   InicFrm "Exibir entidade liga‡„o"
      /* Dado do bloco Exibir chaves extrangeiras da entidade de liga‡„o */

         Objeto    InstOrigem ;
         Objeto    InstDestino ;
         Objeto    LigCorr ;
         Sequencia NomeRot ;

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
                        AvMrgEsq 3 ;

                        Titulo "Links [ " ;
                        NaoAvLin ;
                        Nome ;
                        NaoAvLin ;
                        Titulo " ] to: " ;
                        ComObjeto ObjetoInst( InstDestino ) Faz
                           NaoAvLin ;
                           Nome ;
                        Fim ;

                        EsvaziaLista( ListaEnt ) ;
                        EsvaziaLista( ListaLig ) ;
                        EsvaziaTexto( ListaChaves ) ;
                        EsvaziaTexto( ListaNomes  ) ;

                        InsereObj( ListaEnt , InstOrigem ) ;
                        InsereObj( ListaLig , LigCorr    ) ;
                        ComObjeto ObjetoInst( InstDestino ) Faz
                           Frm "Obter nome chave entidade" ;
                           InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                           InsereTexto( ListaNomes  , 100 ,
                                        Converte Sequencia
                                                  [ Alias AliasNomeRelac ] ) ;
                        Fim ;

                        Frm "Exibir campo relacionamento"( 1 ) ;

                        AvMrgEsq -3 ;
                     Senao
                        Titulo ">>> Missing cardinality" ;
                     Fim;
                  Fim ;
               Fim ;
            Fim ;
         Fim ;
   FimFrm

/***** Formul rio: Exibir todas as rela‡”es com chaves pr¢prias em entidades herdadas *****/

   InicFrm "Exibir rela‡”es de entidade"( Logico MostraAbsorvido )
      /* Dado do bloco Corpo de Exibir todas as rela‡”es com chaves pr¢prias em entidades herdadas */

         ConjuntoFila   ListaRelac ;
         Objeto         InstOrigem ;
         Objeto         ObjBase ;

      /* Dado do bloco Processar todas as rela‡”es desta entidade */

         Logico Mostra ;

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

         /* Determinar se exibe rela‡„o */

            Frm "Obter dados da rela‡„o" ;

            Mostra = FALSO ;

            Se MostraAbsorvido
            Ent„o
               Se   ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 1 )) ,
                                   ObjBase )
                  E LinhaTexto( ListaModos , 1 ) == "a"
               Ent„o
                  Mostra = VERDADEIRO ;
               Sen„o
               Fim ; /* Se */

               Se   ObjetosIguais( ObjetoINst( ObjetoLista( ListaEnt , 2 )) ,
                                   ObjBase )
                  E LinhaTexto( ListaModos , 2 ) == "a"
               Ent„o
                  Mostra = VERDADEIRO ;
               Sen„o
               Fim ; /* Se */

               Se TipoRelacao >= 5
               Ent„o
                  Se   ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 3 )) ,
                                      ObjBase )
                     E LinhaTexto( ListaModos , 3 ) == "a"
                  Ent„o
                     Mostra = VERDADEIRO ;
                  Sen„o
                  Fim ; /* Se */
               Sen„o
               Fim ; /* Se */

            Sen„o
               Se   ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 1 )) ,
                                   ObjBase )
                  E LinhaTexto( ListaModos , 1 ) != "a"
               Ent„o
                  Mostra = VERDADEIRO ;
               Sen„o
               Fim ; /* Se */

               Se   ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 2 )) ,
                                   ObjBase )
                  E LinhaTexto( ListaModos , 2 ) != "a"
               Ent„o
                  Mostra = VERDADEIRO ;
               Sen„o
               Fim ; /* Se */

               Se TipoRelacao >= 3
               Ent„o
                  Se   ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 3 )) ,
                                      ObjBase )
                     E LinhaTexto( ListaModos , 3 ) != "a"
                  Ent„o
                     Mostra = VERDADEIRO ;
                  Sen„o
                  Fim ; /* Se */
               Sen„o
               Fim ; /* Se */

            Fim ; /* Se */

         /* Exibir todas as rela‡”es da entidade corrente e que s„o absorvidas */

            Se Mostra
            Ent„o

            /* Exibir t¡tulo do conjunto de rela‡”es */

               Titulo "" ;
               Titulo "Relationship: " ;
               NaoAvLin ;
               Nome ;

            /* Selecionar exibir chave rela‡„o bin ria */

               Se TipoRela‡„o == 1 Ent„o

               /* Exibir chave rela‡„o bin ria */

                  Titulo "Binary relation" ;

                  AvMrgEsq 3 ;

                  Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 1 )) ,
                                    ObjBase )
                  Ent„o
                     Se   LinhaTexto( ListaModos , 1 ) == "a"
                     Entao
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 10 , 1 , 2 ) ;
                     Senao
                        Frm "Exibir referencia relacao chave"(     2 , 10 , 1 , 2 ) ;
                     Fim ;

                  Sen„o
                     Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 2 )) ,
                                       ObjBase )
                     Ent„o
                        Se   LinhaTexto( ListaModos , 2 ) == "a"
                        Entao
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 2 , 1 ) ;
                        Senao
                           Frm "Exibir referencia relacao chave"(     1 , 10 , 2 , 1 ) ;
                        Fim ;

                     Sen„o
                     Fim ;
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar modo chave recursiva */

               Se TipoRela‡„o == 2 Ent„o

               /* Exibir chave rela‡„o recursiva */

                  Titulo "Recursive binary relation" ;

                  AvMrgEsq 3 ;

                  Frm "Exibir referencia relacao chave"(     1 , 10 , 1 , 1 ) ;

                  Titulo "" ;
                  Frm "Exibir referencia relacao chave"(     2 , 10 , 1 , 2 ) ;

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar exibir chave rela‡„o objeto valor real */

               Se TipoRela‡„o == 3 Ent„o

               /* Exibir rela‡„o valor real */

                  Titulo "Binary real valued relation" ;

                  AvMrgEsq 3 ;

                  Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 1 )) ,
                                    ObjBase )
                  Ent„o
                     Se   LinhaTexto( ListaModos , 1 ) == "a"
                     Entao
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 3 , 1 , 2 ) ;
                     Senao
                        Frm "Exibir referencia relacao chave"(     2 , 3 , 1 , 2 ) ;
                     Fim ;

                  Sen„o
                     Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 2 )) ,
                                       ObjBase )
                     Ent„o
                        Se   LinhaTexto( ListaModos , 2 ) == "a"
                        Entao
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 3 , 2 , 1 ) ;
                        Senao
                           Frm "Exibir referencia relacao chave"(     1 , 3 , 2 , 1 ) ;
                        Fim ;

                     Sen„o
                        Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 3 )) ,
                                          ObjBase )
                        Ent„o
                           Frm "Exibir referencia relacao chave"(     1 , 2 , 3 , 3 ) ;
                        Sen„o
                        Fim ;
                     Fim ;
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar chave valor virtual */

               Se TipoRela‡„o == 4 Ent„o

               /* Exibir rela‡„o valor virtual */

                  Titulo "Binary virtual valued relation" ;

                  AvMrgEsq 3 ;

                  Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 1 )) ,
                                    ObjBase )
                  Ent„o
                     Se   LinhaTexto( ListaModos , 1 ) == "a"
                     Entao
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 3 , 1 , 2 ) ;
                     Senao
                        Frm "Exibir referencia relacao chave"(     2 , 3 , 1 , 2 ) ;
                     Fim ;

                  Sen„o
                     Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 2 )) ,
                                       ObjBase )
                     Ent„o
                        Se   LinhaTexto( ListaModos , 2 ) == "a"
                        Entao
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 3 , 2 , 1 ) ;
                        Senao
                           Frm "Exibir referencia relacao chave"(     1 , 3 , 2 , 1 ) ;
                        Fim ;

                     Sen„o
                     Fim ;
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            /* Selecionar exibir chave ternaria */

               Se TipoRela‡„o == 5 Ent„o

               /* Exibir rela‡„o ternaria */

                  Titulo "Ternary relation" ;

                  AvMrgEsq 3 ;

                  Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 1 )) ,
                                    ObjBase )
                  Ent„o
                     Se   LinhaTexto( ListaModos , 1 ) == "a"
                     Entao
                        Frm "Exibir referencia rela‡„o absorvida"( 2 , 3 , 1 , 1 ) ;
                     Senao
                        Frm "Exibir referencia relacao chave"(     2 , 3 , 1 , 1 ) ;
                     Fim ;

                  Sen„o
                     Se ObjetosIguais( ObjetoInst( ObjetoLista( ListaEnt , 2 )) ,
                                       ObjBase )
                     Ent„o
                        Se   LinhaTexto( ListaModos , 2 ) == "a"
                        Entao
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 2 , 1 ) ;
                        Senao
                           Frm "Exibir referencia relacao chave"(     1 , 10 , 2 , 1 ) ;
                        Fim ;

                     Sen„o
                        Se   LinhaTexto( ListaModos , 3 ) == "a"
                        Entao
                           Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 3 , 1 ) ;
                        Senao
                           Frm "Exibir referencia relacao chave"(     1 , 10 , 3 , 1 ) ;
                        Fim ;

                     Fim ;
                  Fim ; /* Se */

                  AvMrgEsq -3 ;

               Sen„o
               Fim ;

            Sen„o
            Fim ; /* Se */
         Fim ;
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
                     Se Primeiro
                     Ent„o
                        Primeiro = FALSO ;
                        Titulo "" ;
                        Titulo "Foreign keys" ;
                     Sen„o
                     Fim ; /* Se */

                     EsvaziaLista( ListaEnt ) ;
                     EsvaziaLista( ListaLig ) ;
                     EsvaziaTexto( ListaChaves ) ;
                     EsvaziaTexto( ListaNomes ) ;

                     InsereObj( ListaEnt , InstOrigem ) ;
                     InsereObj( ListaLig , LigCorr    ) ;
                     ComObjeto ObjetoInst( InstOrigem ) Faz
                         Frm "Obter nome chave entidade" ;
                         InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                         InsereTexto( ListaNomes  , 100 ,
                                      Converte Sequencia [ Alias AliasNomeRelac ] ) ;
                     Fim ;

                     InsereObj( ListaEnt ,
                                OutraPonta( LigCorr , InstOrigem )) ;
                     ComObjeto ObjetoInst( OutraPonta( LigCorr ,
                                                       InstOrigem )) Faz
                         Frm "Obter nome chave entidade" ;
                         InsereTexto( ListaChaves , 100 , ChaveGer ) ;
                         InsereTexto( ListaNomes  , 100 ,
                                      Converte Sequencia [ Alias AliasNomeRelac ] ) ;
                     Fim ;
                     InsereObj( ListaLig , LigCorr    ) ;

                     Frm "Exibir referencia rela‡„o absorvida"( 2 , 10 , 1 , 2 ) ;

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

/***** Formul rio: Exibir entidade atributo de defini‡„o *****/

   InicFrm "Exibir estrutura de dados de entidade"

   /* Corpo de Exibir entidade atributo de defini‡„o */

      /* Gerar a chave da estrutura de dados da entidade */

         ParaTodos ChavesDet Faz
            Frm "Exibir estrutura chave"( Separ ) ;
         Fim ;

      /* Exibir todos todas as chaves extrangeiras */

         Titulo "Declaration begin" ;

         AvMrgEsq 3 ;

         ParaTodos ListaEntidade Faz
            Frm "Exibir chaves estrangeiras" ;
         Fim ; /* ParaTodos */

         Frm "Exibir chaves estrangeiras" ;

         AvMrgEsq -3 ;

      /* Exibir todas as rela‡”es absorvidas em entidades herdadas */

         Titulo "Absorbed relations" ;
         Frm "Exibir rela‡”es de entidade"( VERDADEIRO ) ;

      /* Exibir todos os atributos do corpo */

         ParaTodos Dados Faz
            Titulo "" ;
            Titulo "Internal data structure: " ;
            NaoAvLin ;
            Nome ;
            Frm "Exibir estrutura de dados" ;
         Fim ;

      Titulo "Declaration end" ;
   FimFrm

/***** Formul rio: Exibir estrutura de dados *****/

   InicFrm "Exibir estrutura de dados"

   /* Corpo de Exibir estrutura de dados */

      AvMrgEsq 3 ;

      /* Exibir especificacao raiz da estrutura de  dados */

         Titulo "Data structure specification" ;
         Frm "Editar campos de um atributo" ;

      /* Exibir campos da estrutura de dados */

         Se Existe( [ Rela‡„o Decomp ] )
         Entao
            ParaTodos Decomp Faz
               AvMrgEsq  3 ;
               Titulo "Data structure field: " ;
               NaoAvLin ;
               Nome ;
               Frm "Editar campos de um atributo" ;
               AvMrgEsq -3 ;
            Fim ;
         Senao
         Fim ;

      AvMrgEsq -3 ;
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
                     Se Primeiro
                     Ent„o
                        Primeiro = Falso ;
                        ComObjeto OrgDecomp Faz
                           Titulo "" ;
                           Titulo "Decomposed attribute entity: " ;
                           NaoAvLin ;
                           Nome ;
                        Fim ; /* ComObjeto */
                     Sen„o
                     Fim ; /* Se */
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

/***** Formul rio: Exibir uma instƒncia de rela‡„o *****/

   InicFrm "Exibir Instƒncia Rela‡„o"( Inteiro TipoRelac )

   /* Corpo de Exibir uma instƒncia de rela‡„o */

      /* Selecionar rela‡„o bin ria normal */

         Se TipoRelac == 1 Ent„o

         /* Editar rela‡„o bin ria normal */

            /* Exibir primeiro lado relacao simples */

               Titulo "" ;
               Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 1 ) ,
                                           ObjetoLista( ListaEnt , 2 ) ) ;

               Se LinhaTexto( ListaModos , 1 ) == "a"
               Entao
                  Frm "Exibir referencia rela‡„o absorvida"( 2 , 10 , 1 , 2 ) ;
               Senao
                  Frm "Exibir referencia relacao chave"(     2 , 10 , 1 , 2 ) ;
               Fim ;

            /* Exibir segundo lado relacao simples */

               Titulo "" ;
               Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 2 ) ,
                                           ObjetoLista( ListaEnt , 1 ) ) ;

               Se LinhaTexto( ListaModos , 2 ) == "a"
               Entao
                  Frm "Exibir referencia rela‡„o absorvida"( 1 , 10 , 2 , 1 ) ;
               Senao
                  Frm "Exibir referencia relacao chave"(     1 , 10 , 2 , 1 ) ;
               Fim ;

         Sen„o
         Fim ;

      /* Selecionar rela‡„o recursiva */

         Se TipoRelac == 2 Ent„o

         /* Editar rela‡”es recursivas */

            Titulo "" ;
            Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 1 ) ,
                                        ObjetoLista( ListaEnt , 1 ) ) ;

            Frm "Exibir referencia relacao chave"(     1 , 10 , 2 , 1 ) ;

            Titulo "" ;
            Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 2 ) ,
                                        ObjetoLista( ListaEnt , 2 ) ) ;
            Frm "Exibir referencia relacao chave"(     2 , 10 , 1 , 2 ) ;

         Sen„o
         Fim ;

      /* Selecionar demais rela‡”es */

         Se    ( TipoRelac == 3 )
            OU ( TipoRelac == 4 )
            OU ( TipoRelac == 5 ) Ent„o

         /* Editar demais rela‡”es */

            Frm "Gerar rela‡”es m£ltiplas"( TipoRelac  ) ;

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

/***** Formul rio: Exibir atributo tabela rela‡„o *****/

   InicFrm "Exibir atributo rela‡„o"( Sequencia ChaveDest )

   /* Corpo de +Exibir atributo tabela rela‡„o */

      Titulo "" ;
      Titulo "Relation list attribute of: " ;
      AvMrgEsq 3 ;
      NaoAvLin ;
      ComObjeto ObjDefin Faz
         Nome ;
      Fim ; /* ComObjeto */
      Titulo "" ;
      Titulo "Relation list entry data structure: " ;
      NaoAvLin ;
      Nome ;
      Titulo "" ;
      ChaveEntidade = ChaveGer ;
      Frm "Exibir estrutura chave"( Separ ) ;
      AvMrgEsq 6 ;
      Titulo "Key type: " ;
      NaoAvLin ;
      Titulo ChaveDest ;
      AvMrgEsq -3 ;
      AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: Exibir referencia rela‡„o absorvida *****/

   InicFrm "Exibir referencia rela‡„o absorvida"( Inteiro InxPara1 ,
                                                  Inteiro InxPara2 ,
                                                  Inteiro InxDe ,
                                                  Inteiro InxNome )

   /* Corpo de Exibir referencia rela‡„o absorvida */

      Titulo "Relationship is absorbed in: " ;
      NaoAvLin ;
      ComObjeto ObjetoLista( ListaEnt , InxDe ) Faz
         Nome ;
      Fim ; /* ComObjeto */
      Frm "Exibir campo relacionamento"( InxPara1 ) ;

      Se InxPara2 < 5
      Ent„o
         Frm "Exibir campo relacionamento"( InxPara2 ) ;
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

/***** Formul rio: Gerar tabelas de rela‡”es de rela‡„o m£ltipla *****/

   InicFrm "Gerar rela‡”es m£ltiplas"( Inteiro TipoRelac  )
      /* Dado do bloco Corpo de Gerar tabelas de rela‡”es de rela‡„o m£ltipla */

         Inteiro ContaDado ;
         Inteiro Inx1 ;
         Inteiro Inx2 ;
         Inteiro Inx3 ;

      /* Dado do bloco Gerar entidade com outro lado duplo */

         Objeto    ObjChave ;

      FimDecl

   /* Corpo de Gerar tabelas de rela‡”es de rela‡„o m£ltipla */

      /* Gerar entidade com outro lado duplo */

         Se TipoRelac == 3
         Ent„o
            Titulo "" ;

            Frm "Exibir referencia relacao chave"( 1 , 2 , 3 , 3 ) ;

         Sen„o
            Se TipoRelac == 5
            Ent„o
               Titulo "" ;
               Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 1 ) ,
                                           ObjetoLista( ListaEnt , 2 )) ;
               Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , 1 ) ,
                                           ObjetoLista( ListaEnt , 3 )) ;

               Se LinhaTexto( ListaModos , 1 ) == "a"
               Entao
                  Frm "Exibir referencia rela‡„o absorvida"( 2 ,  3 , 1 , 1 ) ;
               Senao
                  Frm "Exibir referencia relacao chave"(     2 ,  3 , 1 , 1 ) ;
               Fim ;
            Senao
            Fim ; /* Se */
         Fim ; /* Se */

      /* Gerar primeira entidade com outro lado simples */

         Se TipoRelac == 3
         Ent„o
            Inx1 = 1  ;
            Inx2 = 3  ;
            Inx3 = 2  ;
         Sen„o
            Se TipoRelac == 4
            Ent„o
               Inx1 = 1  ;
               Inx2 = 3  ;
               Inx3 = 2  ;
            Sen„o
               Inx1 = 1  ;
               Inx2 = 10 ;
               Inx3 = 2  ;
            Fim ; /* Se */
         Fim ; /* Se */

         Titulo "" ;

         Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , Inx3 ) ,
                                     ObjetoLista( ListaEnt , Inx1 ) ) ;

         Se LinhaTexto( ListaModos , Inx3 ) == "a"
         Entao
            Frm "Exibir referencia rela‡„o absorvida"( Inx1 , Inx2 , Inx3 , Inx1 ) ;
         Senao
            Frm "Exibir referencia relacao chave"(     Inx1 , Inx2 , Inx3 , Inx1 ) ;
         Fim ;

      /* Gerar segunda entidade com outro lado simples */

         Se TipoRelac == 3
         Ent„o
            Inx1 = 2  ;
            Inx2 = 3  ;
            Inx3 = 1  ;
         Sen„o
            Se TipoRelac == 4
            Ent„o
               Inx1 = 2  ;
               Inx2 = 3  ;
               Inx3 = 1  ;
            Sen„o
               Inx1 = 1  ;
               Inx2 = 10 ;
               Inx3 = 3  ;
            Fim ; /* Se */
         Fim ; /* Se */

         Titulo "" ;

         Frm "Exibir cardinalidade"( ObjetoLista( ListaLig , Inx3 ) ,
                                     ObjetoLista( ListaEnt , Inx1 ) ) ;

         Se LinhaTexto( ListaModos , Inx3 ) == "a"
         Entao
            Frm "Exibir referencia rela‡„o absorvida"( Inx1 , Inx2 , Inx3 , Inx1 ) ;
         Senao
            Frm "Exibir referencia relacao chave"(     Inx1 , Inx2 , Inx3 , Inx1 ) ;
         Fim ;
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

/**************************************************************************
**** Fim programa: Totem repository modelling representation language
**************************************************************************/

