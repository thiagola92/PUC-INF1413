////////////////////////////////////////////////////////////////////////////
//
//Implementation module: TAVL Test module of: AVL  Memory resident AVL tree symbol table
//
//Generated file:        TST_AVL.cpp
//
//Module identification letters: TAVL 
//Module identification number:  
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
   #include   "randgen.hpp"

   #define  _TST_AVL_OWN
   #include "TST_AVL.hpp"
   #undef   _TST_AVL_OWN

   //==========================================================================
   //----- Test command table -----
   //==========================================================================

   static const char AVL_DisplayAVLtree_004_CMD[ ]         = "=DisplayTree" ;
   static const char AVL_Tree_002_CMD[ ]                   = "=NewTree" ;
   static const char DeleteAVL_Tree_003_CMD[ ]             = "=DeleteTree" ;
   static const char DeleteSymbol_006_CMD[ ]               = "=DeleteSymbol" ;
   static const char InsertSymbol_005_CMD[ ]               = "=InsertSymbol" ;
   static const char LimLog2_008_CMD[ ]                    = "=LimBase2Log" ;
   static const char Reset_CMD[ ]                          = "=Reset" ;
   static const char SearchSymbol_006_CMD[ ]               = "=SearchSymbol" ;
   static const char VerifyTree_007_CMD[ ]                 = "=VerifyTree" ;
   static const char GenerateTest_100_CMD[ ]               = "=GenerateTest" ;


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: TAVL Specific test class
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: TAVL Specific test class

////////////////////////////////////////////////////////////////////////////
// 
// Method: TAVL !C Specific tester constructor

   TST_TestSpecific ::
             TST_TestSpecific( )
   {
      for ( int i = 0 ; i < TAVL_dimVtObj ; i++ )
      {
         vtObj[ i ] = NULL ;
      } /* for */
 
      for( int inxSymbol = 0 ; inxSymbol < DIM_VT_SYMBOLS ; inxSymbol++ )
      {
         sprintf( vtAVLsymbols[ inxSymbol ].symbol , "%03i" , inxSymbol ) ;
         vtAVLsymbols[ inxSymbol ].isInTree = false ;
      } /* for */

   } // End of function: TAVL !C Specific tester constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: TAVL !D Specific tester destructor

   TST_TestSpecific ::
             ~TST_TestSpecific( )
   {

      for ( int i = 0 ; i < TAVL_dimVtObj ; i++ )
      {
         delete vtObj[ i ] ;
      } /* for */

   } // End of function: TAVL !D Specific tester destructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: TAVL !P Perform specific test actions

   TST_tpRetCode TST_TestSpecific ::
             PerformSpecificTest( char * Command )
   {

      // Interpret TAVL Reset
      // AE: Reset

         if ( strcmp( Command , Reset_CMD ) == 0 ) 
         {

            for ( int i = 0 ; i < TAVL_dimVtObj ; i++ )
            {
               delete vtObj[ i ] ;
               vtObj[ i ] = NULL ;
            } /* for */

            return TST_RetCodeOK ;

         } // end selection: Interpret TAVL Reset

      // Test: AVL  !AVL tree constructor
      // AE: NewTree  inxAVLtree

         else if ( strcmp( Command , AVL_Tree_002_CMD ) == 0 )
         {

            /***** Function
            AVL_Tree( )
            *****/

            int  inxObj   = -1 ;

            int  numRead  = TST_pReader->ReadCommandLine( "i" , &inxObj ) ;

            if ( ( numRead != 1 )
              || !VerifyInxAVLtree( inxObj  , NO ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            vtObj[ inxObj ] = new AVL_Tree( ) ;

            return TST_RetCodeOK ;

         } // end selection: Test: AVL  !AVL tree constructor

      // Test: AVL  !AVL tree destructor
      // AE: DeleteTree  inxAVLtree

         else if ( strcmp( Command , DeleteAVL_Tree_003_CMD ) == 0 )
         {

            /***** Function
            ~AVL_Tree( )
            *****/

            int  inxObj   = -1 ;

            int  numRead  = TST_pReader->ReadCommandLine( "i" , &inxObj ) ;

            if ( ( numRead != 1 )
              || !VerifyInxAVLtree( inxObj  , ANY ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            delete vtObj[ inxObj ] ;

            vtObj[ inxObj ] = NULL ;

            return TST_RetCodeOK ;

         } // end selection: Test: AVL  !AVL tree destructor

      // Test: AVL  !Display AVL tree
      // AE: DisplayTree   inxAVLtree  traversalMode

         else if ( strcmp( Command , AVL_DisplayAVLtree_004_CMD ) == 0 )
         {

            /***** Function
            void AVL_DisplayAVLtree( AVL_TraversalMode  traversalMode )
            *****/

            int  inxObj       = -1 ;
            AVL_TraversalMode mode ;

            int  numRead  = TST_pReader->ReadCommandLine( "ii" ,
                      &inxObj , &mode ) ;

            if ( ( numRead != 2 )
              || !VerifyInxAVLtree( inxObj  , YES ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            DisplayMsg( TAL_MsgPrefixTrace , "Display start\n\n          " ) ;

            vtObj[ inxObj ]->AVL_DisplayAVLtree( mode ) ;

            DisplayMsg( TAL_MsgPrefixTrace , "Display end" ) ;

            return TST_RetCodeOK ;

         } // end selection: Test: AVL  !Display AVL tree

      // Test: AVL  !Insert symbol
      // AE: InsertSymbol inxAVLtree inxSymbol  expValue

         else if ( strcmp( Command , InsertSymbol_005_CMD ) == 0 )
         {

            /***** Function
            bool InsertAVLtreeSymbol( char * pSymbol )
            *****/

            int  inxObj    = -1 ;
            int  inxSymbol = -1 ;
            bool expValue  = false ;

            int  numRead  = TST_pReader->ReadCommandLine( "iib" ,
                      &inxObj , &inxSymbol , &expValue ) ;

            if ( ( numRead != 3 )
              || !VerifyInxAVLtree(  inxObj  , YES )
              || !VerifySymbolIndex( inxSymbol ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            return CompareBool( vtObj[ inxObj ]->InsertAVLtreeSymbol(
                      vtAVLsymbols[ inxSymbol ].symbol ) , expValue ,
                      "Incorrect symbol insertion" ) ;

         } // end selection: Test: AVL  !Insert symbol

      // Test: AVL  !Delete symbol
      // AE: DeleteSymbol inxAVLtree inxSymbol  expValue

         else if ( strcmp( Command , DeleteSymbol_006_CMD ) == 0 )
         {

            /***** Function
            bool DeleteAVLtreeSymbol( char * pSymbol )
            *****/

            int  inxObj    = -1 ;
            int  inxSymbol = -1 ;
            bool expValue  = false ;

            int  numRead  = TST_pReader->ReadCommandLine( "iib" ,
                      &inxObj , &inxSymbol , &expValue ) ;

            if ( ( numRead != 3 )
              || !VerifyInxAVLtree(  inxObj ,  YES )
              || !VerifySymbolIndex( inxSymbol ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            return CompareBool( vtObj[ inxObj ]->DeleteAVLtreeSymbol(
                      vtAVLsymbols[ inxSymbol ].symbol ) , expValue ,
                      "Incorrect symbol delete" ) ;

         } // end selection: Test: AVL  !Delete symbol

      // Test: AVL  !Search symbol
      // AE: SearchSymbol inxAVLtree inxSymbol  expValue

         else if ( strcmp( Command , SearchSymbol_006_CMD ) == 0 )
         {

            /***** Function
            bool SearchAVLtreeSymbol( char * pSymbol )
            *****/

            int  inxObj    = -1 ;
            int  inxSymbol = -1 ;
            bool expValue  = false ;

            int  numRead  = TST_pReader->ReadCommandLine( "iib" ,
                      &inxObj , &inxSymbol , &expValue ) ;

            if ( ( numRead != 3 )
              || !VerifyInxAVLtree(  inxObj    , YES )
              || !VerifySymbolIndex( inxSymbol ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            return CompareBool( vtObj[ inxObj ]->SearchAVLtreeSymbol(
                      vtAVLsymbols[ inxSymbol ].symbol ) , expValue ,
                      "Incorrect symbol search" ) ;

         } // end selection: Test: AVL  !Search symbol

      // Test: AVL  !Verify AVL tree structure
      // AE: VerifyTree  inxAVLtree  expReturn

         else if ( strcmp( Command , VerifyTree_007_CMD ) == 0 )
         {

            /***** Function
            int VerifyAVLtree( )
            *****/

            int  inxObj    = -1 ;
            int  expValue  = false ;

            int  numRead  = TST_pReader->ReadCommandLine( "ii" ,
                      &inxObj , &expValue ) ;

            if ( ( numRead != 2 )
              || !VerifyInxAVLtree( inxObj  , YES ))
            {
               return TST_RetCodeParmError ;
            } /* if */

            DisplayMsg( TAL_MsgPrefixTrace , "Verify start" ) ;
            int isNumErrors = vtObj[ inxObj ]->VerifyAVLtree( ) ;
            DisplayMsg( TAL_MsgPrefixTrace , "Verify end\n" ) ;

            return Compare( isNumErrors , expValue ,
                      "Incorrect AVL tree verification return" ) ;

         } // end selection: Test: AVL  !Verify AVL tree structure

      // Test: Generate test suit

         else if ( strcmp( Command , GenerateTest_100_CMD ) == 0 )
         {

            int  numElements   = -1 ;
            int  numTests      = -1 ; 
            int  expErrorCount = -1 ;
            int  inxTree       = -1 ;

            int  numRead  = TST_pReader->ReadCommandLine( "iiii" ,
                      &inxTree , &numElements , &numTests , &expErrorCount ) ;

            if ( ( numRead != 4 )
              || ( !VerifyInxAVLtree(  inxTree  , YES )))
            {
               return TST_RetCodeParmError ;
            } /* if */
            
            int inxSymbol    = 0 ;
            int isErrorCount = 0 ;

            for ( int i = 0 ; i < numTests ; i++ )
            {
               inxSymbol = RND_GenerateUniformDist( 1 , numElements ) ;

  // dummy
  //   bool isRet = false ;
  //   isRet = vtObj[ inxTree ]->InsertAVLtreeSymbol( vtAVLsymbols[ inxSymbol ].symbol ) ;
       printf( "\nSymbol %3i %s" , inxSymbol , vtAVLsymbols[ inxSymbol ].symbol ) ;
       isErrorCount ++ ;
  // end dummy
            } /* for */

            return Compare( isErrorCount , expErrorCount , "Incorrect error count" ) ;

         } // end selection: Test: AVL  !Verify AVL tree structure

      return TST_RetCodeUnknown ;

   } // End of function: TAVL !P Perform specific test actions

//==========================================================================
//----- Private method implementations -----
//==========================================================================

// Class: TAVL Specific test class

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TAVL $V Verify object vector index
// 
////////////////////////////////////////////////////////////////////////////

   bool TST_TestSpecific ::
             VerifyInxAVLtree( int  inxElemParm ,
                               TAVL_tpExistCond MustExist   )
   {

      if ( ( inxElemParm < 0          )
        || ( inxElemParm >= TAVL_dimVtObj ))
      {
         return false ;
      } /* if */

      if ( MustExist == YES )
      {
         if ( vtObj[ inxElemParm ] == NULL )
         {
            return false ;
         } /* if */

      } else if ( MustExist == NO )
      {
         if ( vtObj[ inxElemParm ] != NULL )
         {
            return false ;
         } /* if */
      } /* if */

      return true ;

   } // End of function: TAVL $V Verify object vector index

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TAVL $V Verify symbol vector index
// 
////////////////////////////////////////////////////////////////////////////

   bool TST_TestSpecific ::
             VerifySymbolIndex( int index )
   {

      if ( ( index >= 0 )
        && ( index < DIM_VT_SYMBOLS ))
      {
         return true ;
      } /* if */

      return false ;

   } // End of function: TAVL $V Verify symbol vector index

//--- End of class: TAVL Specific test class

////// End of implementation module: TAVL Test module of: AVL  Memory resident AVL tree symbol table ////

