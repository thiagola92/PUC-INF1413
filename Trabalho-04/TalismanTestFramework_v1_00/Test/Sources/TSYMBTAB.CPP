////////////////////////////////////////////////////////////////////////////
//
//Implementation module: SMT  Memory resident symbol table - draft
//
//Generated file:        SymbTab.cpp
//
//Module identification letters: SMT
//Module identification number:  0320
//
//Repository name:      Test framework support modules
//Repository file name: Z:\TALISMAN\TEST\BSW\UTILIT.BSW
//
//Owning organization:    LES/DI/PUC-Rio
//Project:                Talisman
//List of authors
//   Id      Name
//   avs Arndt von Staa
//
//Software base change control
//    Version  Date         Authors      Description 
//    1     09/02/2007   avs          development begun
//
////////////////////////////////////////////////////////////////////////////

   #include   <stdio.h>
   #include   <string.h>

   #define  _SymbTab_OWN
   #include "tsymbTab.hpp"
   #undef   _SymbTab_OWN

//==========================================================================
//----- Encapsulated data declarations -----
//==========================================================================

   #ifdef _DEBUG
      #include   "dynspac.hpp"
   #endif

   #include    "logger.hpp"
   #include    "global.hpp"
   #include    "exceptn.hpp"
   #include    "str_smt.inc"


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: SMTE Symbol table element value
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: SMTE Symbol table element value

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMTE !Symbol table element constructor

   TSMTE_SymbolTableElement ::
             TSMTE_SymbolTableElement( )
   {

   } // End of function: SMTE !Symbol table element constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMTE !Symbol table element destructor

   TSMTE_SymbolTableElement ::
             ~TSMTE_SymbolTableElement( )
   {

   } // End of function: SMTE !Symbol table element destructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMTE !Verify symbol table element

   bool TSMTE_SymbolTableElement ::
             VerifyElement(  const TAL_tpVerifyMode )
   {

      return true ;

   } // End of function: SMTE !Verify symbol table element

//--- End of class: SMTE Symbol table element value


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: SMT  Memory resident hashed symbol table
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: SMT  Memory resident hashed symbol table

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Symbol table constructor

   TSMT_SymbolTable ::
             TSMT_SymbolTable( int dimVtHashParm )
   {

   #ifdef _DEBUG
      EXC_ASSERT( dimVtHashParm >= TSMT_minDimVector ) ;
   #endif

      dimVtHash  = dimVtHashParm ;
      HashVector = new SLS_SimpleList[ dimVtHash ] ;

   } // End of function: SMT  !Symbol table constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Symbol table destructor

   TSMT_SymbolTable ::
             ~TSMT_SymbolTable( )
   {

      delete [] HashVector ;

   } // End of function: SMT  !Symbol table destructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Search symbol

   TSMTE_SymbolTableElement * TSMT_SymbolTable ::
             SearchSymbol( int lenString , char * pString )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pString != NULL ) ;
   #endif

      inxHash = Hash( lenString , pString ) ;
      pCollisionList = &( HashVector[ inxHash ] ) ;
      pCollisionList->MoveToFirst( ) ;

      bool HasNext = ( pCollisionList->GetCurrentElement( ) != NULL ) ;

      while ( HasNext )
      {
         TSMTE_SymbolTableElement * pCurrentElem =
                   dynamic_cast< TSMTE_SymbolTableElement * >
                   ( pCollisionList->GetCurrentElement( ) ) ;
         EXC_ASSERT( pCurrentElem != NULL ) ;
         if ( pCurrentElem->CompareSymbol( lenString , pString ) == TAL_CompareEqual )
         {
            return pCurrentElem ;
         } /* if */
         HasNext = ( pCollisionList->MoveElement( 1 ) == 1 ) ;
      } /* while */

      return NULL ;

   } // End of function: SMT  !Search symbol

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Insert symbol

   TSMTE_SymbolTableElement * TSMT_SymbolTable ::
             InsertSymbol( TSMTE_SymbolTableElement * pSymbol )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSymbol != NULL ) ;
   #endif

      if ( SearchSymbol( pSymbol->GetSymbolString( )->GetLength( ) ,
                         pSymbol->GetSymbolString( )->GetString( )) != NULL )
      {
         return pSymbol ;
      } /* if */

      pCollisionList->InsertAfter( pSymbol ) ;

      return NULL ;

   } // End of function: SMT  !Insert symbol

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Delete symbol

   bool TSMT_SymbolTable ::
             DeleteSymbol( int lenString , char * pString )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pString != NULL ) ;
   #endif

      if ( SearchSymbol( lenString , pString ) == NULL )
      {
         return false ;
      } /* if */

      pCollisionList->DeleteCurrentElement( ) ;

      return true ;

   } // End of function: SMT  !Delete symbol

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Verify symbol table structure

   #define   ASSERT_VER( Condition , idMsg )           \
      if ( !( Condition ) )                            \
      {                                                \
         if ( ModeParm == TAL_VerifyLog )              \
         {                                             \
            EXC_LOG( Envelope.pMsg , idMsg ) ;         \
            ErrorCount ++ ;                            \
         } else                                        \
         {                                             \
            return false ;                             \
         }                                             \
      }

   bool TSMT_SymbolTable ::
             Verify( const TAL_tpVerifyMode ModeParm )
   {
      // AE: TST_ASSERT( pTabela != NULL ) ;

      unsigned ErrorCount = 0 ;

      // Create symbol table pointer envelope

         struct PointerEnvelope
         {
            MSG_Message * pMsg ;

            PointerEnvelope( ){ pMsg = NULL ; } ;
           ~PointerEnvelope( ){ delete pMsg ; pMsg = NULL ; } ;
         } Envelope ; /* struct */

         if ( ModeParm == TAL_VerifyLog )
         {
            Envelope.pMsg = new MSG_Message( SMT_ErrorRoot ) ;
         } /* if */

      // Verify the head of the table

         ASSERT_VER( HashVector != NULL , TSMT_ErrorNoHashVector ) ;
         ASSERT_VER( dimVtHash  >= TSMT_minDimVector , TSMT_ErrorHashVectorSize ) ;

         if ( HashVector == NULL )
         {
            return false ;
         } /* if */

      // Verify all collision lists

         for ( int inxList = 0 ; inxList < dimVtHash ; inxList ++ ) {

         // Verify this collision list

            SLS_SimpleList * pCurrentList = &( HashVector[ inxList ] ) ;
            ASSERT_VER( pCurrentList->Verify( ModeParm ) , TSMT_IncorrectCollisionList ) ;

            pCurrentList->MoveToFirst( ) ;
            bool HasNext = ( pCurrentList->GetCurrentElement( ) != NULL ) ;

            while ( HasNext )
            {
               TSMTE_SymbolTableElement * pCurrentElem =
                        dynamic_cast< TSMTE_SymbolTableElement * >
                        ( pCurrentList->GetCurrentElement( ) ) ;
               ASSERT_VER( pCurrentElem != NULL , TSMT_IllegalCurrentElement ) ;
               ASSERT_VER( Hash( pCurrentElem->GetSymbolString( )->GetLength( ) ,
                                 pCurrentElem->GetSymbolString( )->GetString( ) )
                           == ( unsigned ) inxList , TSMT_IncorrectHashIndex ) ;

               HasNext = ( pCurrentList->MoveElement( 1 ) == 1 ) ;
            } /* while */

         } // end repetition: Verify all collision lists

      return ErrorCount == 0 ;

   } // End of function: SMT  !Verify symbol table structure

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Display collision list lengths

   void TSMT_SymbolTable ::
             DisplayCollisionListLength( )
   {

      LOG_Logger * pLogger = GLB_GetGlobal( )->GetEventLogger( ) ;
      pLogger->Log( STR_GetStringAddress( SMT_FormatColHeader )) ;

      const int DIM_MSG  = 100 ;
      const int DIM_HIST = 16 ;

      char msg[ DIM_MSG ] ;

      int  histogram[ DIM_HIST ] ;
      for( int i = 0 ; i < DIM_HIST ; i++ )
      {
         histogram[ i ] = 0 ;
      } /* for */

      int totalNumElem = 0 ;
      for( int i = 0 ; i < dimVtHash ; i++ )
      {
         int numElem = HashVector[ i ].GetNumberElements( ) ;
         totalNumElem += numElem ;
         sprintf( msg , STR_GetStringAddress( SMT_FormatColLength ) ,
                   i , numElem ) ;
         pLogger->Log( msg ) ;

         if ( numElem >= DIM_HIST - 2 )
         {
            histogram[ DIM_HIST - 1 ] ++ ;
         } else
         {
            histogram[ numElem ] ++ ;
         } /* if */
      } /* for */

      double floatNumElem = totalNumElem ;
      double meanLength   = floatNumElem / dimVtHash ;

      sprintf( msg , STR_GetStringAddress( SMT_FormatStat ) ,
                totalNumElem , meanLength ) ;
         pLogger->Log( msg ) ;

      for( int i = 0 ; i < DIM_HIST ; i ++ )
      {
         sprintf( msg , STR_GetStringAddress( SMT_FormatHistEntry ) ,
                   i , histogram[ i ] ) ;
         pLogger->Log( msg ) ;
      } /* for */

   } // End of function: SMT  !Display collision list lengths

//==========================================================================
//----- Private method implementations -----
//==========================================================================

// Class: SMT  Memory resident hashed symbol table

////////////////////////////////////////////////////////////////////////////
// 
//  Method: SMT  $Compute hash
// 
////////////////////////////////////////////////////////////////////////////

   unsigned TSMT_SymbolTable ::
             Hash( int           lenString ,
                   char *        pString    )
   {

      unsigned long newInxHash = 0 ;
      bool  doShift    = false ;
      int j ;

      for( int i = 0 ; i < lenString ; i ++ )
      {
         if ( doShift )
         {
            j = pString[ i ] ;
            newInxHash += j << 7 ;
            doShift = false ;
         } else
         {
            newInxHash += pString[ i ] ;
            doShift = true ;
         } /* if */
      } /* for */

      return newInxHash % dimVtHash ;

   } // End of function: SMT  $Compute hash

//--- End of class: SMT  Memory resident hashed symbol table

////// End of implementation module: SMT  Memory resident symbol table ////

