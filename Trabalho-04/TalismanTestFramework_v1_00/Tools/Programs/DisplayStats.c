/***************************************************************************
*  $MCI M�dulo de implementa��o: DSTS Display accumulated teststatistics
*
*  Arquivo gerado:              DisplayStats.c
*
*  Projeto: Talisman
*  Gestor:  LES/DI/PUC-Rio
*  Autores: avs
*
*  $ED Descri��o do m�dulo
*     Exibe o conte�do do arquivo acumulador de estat�sticas de massas de teste.
*
*  $EIU Interface com o usu�rio pessoa
*     Deve ser fornecido um par�metro /a<nome>
*     no qual <nome> � o nome do arquivo de acumula��o de estat�sticas
*     gerado com apoio do arcabou�o.
*
***************************************************************************/

#include    <stdio.h>
#include    <string.h>


#define  DEFAULT_EXT_ACUM  ".stats"
#define  CHAR_EXT          '.'
#define  CHAR_SEP          '\\'

#define  PARM_NOME_ARQ_1   's'
#define  PARM_NOME_ARQ_2   'S'

#define  PARM_NOME_HELP_1  '?'
#define  PARM_NOME_HELP_2  'h'
#define  PARM_NOME_HELP_3  'H'

/***** Prot�tipos das fun��es encapuladas no m�dulo *****/

   static char * TST_ObterInicioExtensao( char * NomeArqParm ) ;

/*****  C�digo das fun��es exportadas pelo m�dulo  *****/


/***********************************************************************
*
*  $FC Fun��o: EXES &Exibir conte�do do arquivo estatisticas
*
***********************************************************************/

   int main( int NumParm , char ** vtValorParm )
   {

      char NomeArquivoEstatisticas[ 250 ] = "" ;

      int  inxParm ;
      int  Erro = 0 ;
      char ParmBuffer[ 250 ] ;

      FILE * pArqAcumula ;
      int numMassasTeste    = 0 ;
      int numCasosTeste     = 0 ;
      int numCmdExecutados  = 0 ;
      int numLinhasLidas    = 0 ;
      int numFalhas         = 0 ;

      /* Exibir logo do programa exibir estatisticas */

         printf( "\nLES - Laboratorio de Engenharia de Software DI/PUC-Rio" ) ;
         printf( "\n      Display accumulated test statistics (c) 2007\n" ) ;

      /* Obter par�metros exibe estatisticas */

         for ( inxParm = 1 ; inxParm < NumParm ; inxParm ++ )
         {
            strcpy( ParmBuffer , vtValorParm[ inxParm ] ) ;

            if ( ( ParmBuffer[ 0 ] == '/' )
              || ( ParmBuffer[ 0 ] == '-' ))
            {
               switch ( ParmBuffer[ 1 ] )
               {
                  case PARM_NOME_ARQ_1 :
                  case PARM_NOME_ARQ_2 :
                  {
                     if ( NomeArquivoEstatisticas[ 0 ] == 0 )
                     {
                        strcpy( NomeArquivoEstatisticas , ParmBuffer + 2 ) ;
                     } else
                     {
                        printf( "\n   Statistics file has already been defined." ) ;
                        Erro = 4 ;
                     } /* if */
                     break ;
                  } /* fim case */

                  case PARM_NOME_HELP_1 :
                  case PARM_NOME_HELP_2 :
                  case PARM_NOME_HELP_3 :
                  {
                     Erro = 2 ;
                     break ;
                  } /* fim case */

                  default :
                  {
                     printf( "\n   Unknown parameter: %s" , ParmBuffer ) ;
                     Erro = 4 ;
                     break ;
                  } /* fim case */

               } /* fim switch */
            } else
            {
               printf( "\n   Wrong parameter syntax: %s" , ParmBuffer ) ;
               Erro = 4 ;
            } /* fim if */
         } /* fim repete */

      /* Controlar par�metros exibir estatisticas */

         if ( NomeArquivoEstatisticas[ 0 ] == 0 )
         {

            if ( Erro == 0 )
            {
               printf( "\nMissing statistics file name." ) ;
               Erro = 4 ;
            } /* if */

         } /* fim ativa: Controlar par�metros exibir estatisticas */

      /* Exibir sintaxe de uso do programa exibir estatisticas */

         if ( Erro != 0 )
         {

            printf( "\n\nProgram usage" ) ;
            printf(   "\n  DisplayStats /s<Stats> {/? | /h }" ) ;
            printf( "\n\n  <Stats>   - file name of the accumulated statistics file." ) ;
            printf(   "\n              Mandatory parameter." ) ;
            printf(   "\n              Default extension: %s" ,  DEFAULT_EXT_ACUM ) ;
            printf(   "\n  /? ou /h  - help.\n" ) ;

            return Erro ;

         } /* fim ativa: Exibir sintaxe de uso do programa exibir estatisticas */

      /* Exibir conte�do do estatisticas */

         if ( TST_ObterInicioExtensao( NomeArquivoEstatisticas ) == NULL )
         {
            strcat( NomeArquivoEstatisticas , DEFAULT_EXT_ACUM ) ;
         } /* if */
            
         pArqAcumula = fopen( NomeArquivoEstatisticas , "r" ) ;
         if ( pArqAcumula != 0 )
         {
            fscanf( pArqAcumula , " %d %d %d %d %d" ,
                         &numMassasTeste , &numCmdExecutados ,
                         &numCasosTeste  , &numLinhasLidas   ,
                         &numFalhas ) ;
            fclose( pArqAcumula ) ;
         } else
         {
            printf( "\nAccumulated statistics file does not exist: %s\n" ,
                    NomeArquivoEstatisticas ) ;
            return 4 ;
         } /* if */

         printf( "\n!!! ------------------ Accumulated test statistics ----------------" ) ;
         printf( "\n!!! Statistics file:          %s"  , NomeArquivoEstatisticas ) ;
         printf( "\n!!! Number of script files:   %7d" , numMassasTeste ) ;
         printf( "\n!!! Number of test cases:     %7d" , numCasosTeste ) ;
         printf( "\n!!! Number of test commands:  %7d" , numCmdExecutados ) ;
         printf( "\n!!! Number of lines:          %7d" , numLinhasLidas ) ;
         printf( "\n!!! Number of failures found: %7d" , numFalhas ) ;
         printf( "\n!!! ---------------------------------------------------------------" ) ;

         if ( numFalhas == 0 )
         {
            printf( "\n\n-------------------------------------------------------------------" ) ;
            printf( "\n!!! No failures have been found." ) ;
            printf( "\n-------------------------------------------------------------------\n\n" ) ;

         } else
         {
            printf( "\n\n>>> ***************************************************************" ) ;
            printf( "\n>>> %d failures have been found. Read the log files!" , numFalhas ) ;
            printf( "\n>>> ***************************************************************\n\n" ) ;
            return 4 ;
         } /* if */

      return 0 ;

   } /* Fim fun��o: EXES &Exibir conte�do do arquivo estatisticas */


/*****  C�digo das fun��es encapsuladas no m�dulo  *****/


/***********************************************************************
*
*  $FC Fun��o: TSTG &Obter origem do nome da extens�o de arquivo
*
*  $ED Descri��o da fun��o
*     Procura o in�cio do nome da extens�o contido no nome do arquivo
*     dado por par�metro
*
*  $EP Par�metros
*     $P NomeArqParm - nome de arquivo a ser analisado
*
*  $FV Valor retornado
*     Ponteiro para o caractere '.' que separa a extens�o.
*     Ser� NULL caso o nome do arquivo n�o contenha extens�o.
*
***********************************************************************/

   char * TST_ObterInicioExtensao( char * NomeArqParm )
   {

      int i ;

      for( i = ( int ) strlen( NomeArqParm ) - 1 ; i >= 0 ; i-- )
      {
         if ( NomeArqParm[ i ] == CHAR_EXT )
         {
            return NomeArqParm + i ;
         } /* if */
         if ( NomeArqParm[ i ] == CHAR_SEP )
         {
            return NULL ;
         } /* if */
      } /* for */

      return NULL ;

   } /* Fim fun��o: TSTG &Obter origem do nome da extens�o de arquivo */

/********** Fim do m�dulo de implementa��o: EXES Exibir estatisticas de teste acumuladas **********/

