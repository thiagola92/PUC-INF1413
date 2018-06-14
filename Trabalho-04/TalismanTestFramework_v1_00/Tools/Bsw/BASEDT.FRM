/**************************************************************************
*
**** Programa de formul rios: BASEDT Editar nome da base
*
**** Nome do arquivo gerado:  BASEDT
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
*  CPPBASE Editar base                 : "Editar identifica‡„o"
*  CPPBASE Criar base                  : "Criar identifica‡„o"
*
***************************************************************************/

/***** Formul rio global *****/

   InicGlobal

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
      FimDecl
   FimFrm

/***** Formul rios do programa *****/

/***** Formul rio: CPPBASE Editar base *****/

   InicFrm "Editar identifica‡„o"

   /* Corpo de Editar identificação da base */

      Endenta 3 ;

      /* Editar cabe‡alho de base de software */

         Frm "Criar identifica‡„o" ;

      /* Editar preâmbulo da base */

         T¡tulo "" ;
         T¡tulo "Ownership" ;
         AvMrgEsq 3 ;
            Titulo "Repository file name:   " ;
            NaoAvLin ;
            Titulo NomeArqObj( Corrente ) ;

            Titulo "Owning organization:    " ;
            NaoAvLin ;
            Alias AliasBasProprietario ;

            Titulo "Project:                " ;
            NaoAvLin ;
            Alias AliasBasProjeto ;

            Titulo "List of all authors" ;
            Titulo "   Id      Name" ;
            Texto TxtBasAutores ;
         AvMrgEsq -3 ;

      /* Editar controle de altera‡”es da base */

         T¡tulo "" ;
         T¡tulo "Change control" ;
         AvMrgEsq 3 ;
            Titulo "Change History " ;
            Titulo "   Version  Date         Authors      Description " ;
            Texto TxtBasHistoriaAlt ;
            Titulo "List of pending problems" ;
            Texto TxtBasSolAlt ;
            Titulo "List of solved problems" ;
            Texto TxtBasAltFeitas ;
         AvMrgEsq -3 ;

      /* Editar descri‡„o do conte£do da base */

         T¡tulo "" ;
         T¡tulo "Repository contents" ;
         AvMrgEsq 3 ;
            T¡tulo "Description" ;
            Texto TxtDescr ;
            T¡tulo "Observations" ;
            Texto TxtObserv ;
         AvMrgEsq -3 ;

      /* Editar informação complementar da base */

         T¡tulo "" ;
         T¡tulo "Documentation" ;
         AvMrgEsq 3 ;
            Titulo "Reference to documentation" ;
            Texto TxtBasDocumentation ;
            Titulo "Bibliography" ;
            Texto TxtBasBibliography ;
            Titulo "Acknowledgements" ;
            Texto TxtBasAcknowledgements ;
         AvMrgEsq -3 ;
   FimFrm

/***** Formul rio: CPPBASE Criar base *****/

   InicFrm "Criar identifica‡„o"

   /* Corpo de Criar identificação da base */

      Titulo "Software base name:        " ;
      NaoAvLin ;
      Nome ;
   FimFrm

/**************************************************************************
**** Fim programa: BASEDT Editar nome da base
**************************************************************************/

