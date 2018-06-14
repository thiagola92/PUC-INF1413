////////////////////////////////////////////////////////////////////////////
//
//Implementation module: A01  Memory resident AVL tree symbol table
//
//Generated file:        A01TREE.cpp
//
//Module identification letters: A01
//Module identification number:  0328
//
//Repository name:      Test framework support modules
//Repository file name: Z:\TALISMAN\TEST\BSW\AVL-01.BSW
//
//Owning organization:    LES/DI/PUC-Rio
//Project:                Talisman
//List of authors
//   Id      Name
//   avs Arndt von Staa
//
//Software base change control
//    Version  Date         Authors      Description 
//    1     10/12/2012      avs          development begun
//
////////////////////////////////////////////////////////////////////////////

   #include   <stdio.h>
   #include   <string.h>

   #define  _A01TREE_OWN
   #include "A01TREE.hpp"
   #undef   _A01TREE_OWN

//==========================================================================
//----- Encapsulated data declarations -----
//==========================================================================

   #ifdef _DEBUG
      #include   "dynspac.hpp"
   #endif

   #include    "logger.hpp"
   #include    "global.hpp"
   #include    "exceptn.hpp"

//==========================================================================
//----- Encapsulated data types -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Data type: AVL Tree element
// 
////////////////////////////////////////////////////////////////////////////

   struct tpTreeElement
   {

   // Reference to left subtree

      tpTreeElement * pLeftSubTree ;

   // Reference to right subtree

      tpTreeElement * pRightSubTree ;

   // Reference to parent subtree

      tpTreeElement * pParent ;

   // Height of element

      int elementHeight ;

   // Symbol string


      char symbol[ AVL_DIM_SYMBOL + 1 ] ;

   // Element constructor

      tpTreeElement( char * pString ,
                     int    height  )
      {
         pLeftSubTree  = NULL ;
         pRightSubTree = NULL ;
         pParent       = NULL ;
         elementHeight = height ;
         strncpy( symbol , pString , AVL_DIM_SYMBOL ) ;
         symbol[ AVL_DIM_SYMBOL ] = 0 ;
      } ; /* end of constructor */

   }  ;


////////////////////////////////////////////////////////////////////////////
// 
//  Data type: AVL Tree header
// 
////////////////////////////////////////////////////////////////////////////

   struct tpTreeHead ;



//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: A01  Memory resident AVL tree
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: A01  Memory resident AVL tree

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !AVL tree constructor

   AVL_Tree ::
             AVL_Tree( )
   {

      pTreeRoot   = NULL ;

      treeHeight  = 0 ;

      numElements = 0 ;

   } // End of function: AVL  !AVL tree constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !AVL tree destructor

   AVL_Tree ::
             ~AVL_Tree( )
   {

   } // End of function: AVL  !AVL tree destructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !Display AVL tree

   void AVL_Tree ::
             AVL_DisplayAVLtree( AVL_TraversalMode  traversalMode )
   {

      if ( pTreeRoot != NULL )
      {
         DoDisplayAVLtree( pTreeRoot , traversalMode ) ;
      } else
      {
         GLB_GetGlobal( )->GetEventLogger( )->Log( "\nEmpty AVL tree" ) ;
      } /* if */

   } // End of function: AVL  !Display AVL tree

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !Verify AVL tree structure

   int AVL_Tree ::
             VerifyAVLtree( )
   {

      countElements = 0 ;
      countErrors   = 0 ;

      DoVerifyTree( pTreeRoot ) ;

      if ( countElements != numElements )
      {
         char msg[ 100 ] ;
         sprintf( msg , "\n>>> Wrong number of elements. Is: %i  sould be: %i" ,
                   countElements , numElements ) ;

         GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

         countErrors ++ ;
      } /* if */

      return countErrors ;

   } // End of function: AVL  !Verify AVL tree structure

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !Search symbol

   bool AVL_Tree ::
             SearchAVLtreeSymbol( char * pSymbol )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSymbol != NULL ) ;
   #endif

      GLB_GetGlobal( )->GetEventLogger( )->Log(
                "\n>>> Search is not implemented yet." ) ;

      return false ;

   } // End of function: AVL  !Search symbol

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !Insert symbol

   bool AVL_Tree ::
             InsertAVLtreeSymbol( char * pSymbol )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSymbol != NULL ) ;
   #endif

      GLB_GetGlobal( )->GetEventLogger( )->Log(
                "\n>>> Insert is not implemented yet." ) ;

      return false ;

   } // End of function: AVL  !Insert symbol

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !Delete symbol

   bool AVL_Tree ::
             DeleteAVLtreeSymbol( char * pSymbol )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSymbol != NULL ) ;
   #endif

      GLB_GetGlobal( )->GetEventLogger( )->Log(
                "\n>>> Delete is not implemented yet." ) ;

      return false ;

   } // End of function: AVL  !Delete symbol

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !Limited base 2 log

   int AVL_Tree ::
             LimLog2( int number  ,
                      int maxLog2  )
   {

   #ifdef _DEBUG
      EXC_ASSERT( number  >= 0 ) ;
      EXC_ASSERT( number  <= 0x7FFFFFFF ) ;
      EXC_ASSERT( maxLog2 >= 1 ) ;
      EXC_ASSERT( maxLog2 <= 0x7FFFFFFF ) ;
   #endif

      int log2Ciel = 1 ;

      for( int log2 = 0 ; log2 <= maxLog2 ; log2 ++ )
      {
         if ( number < log2Ciel )
         {
            return log2 ;
         } /* if */
         log2Ciel *= 2 ;
      } /* for */

      char msg[ 100 ] ;
      sprintf( msg , "\n>>> Log2 of %i is greater than the limit: %i" ,
                number , maxLog2 ) ;

      GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

      return -1 ;

   } // End of function: AVL  !Limited base 2 log

//==========================================================================
//----- Private method implementations -----
//==========================================================================

// Class: A01  Memory resident AVL tree

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  $Do verify AVL tree structure
//    pCurrElement  - pointer to the current element being traversed.
//                    May be NULL, which is the case if the tree is empty.
//    numErrors     - total number of errors found while traversing the tree.
//                    Must be zero when startin at the root of the tree.
// 
////////////////////////////////////////////////////////////////////////////

   void AVL_Tree ::
             DoVerifyTree( tpTreeElement * pCurrElement )
   {

      if ( pCurrElement == NULL  )
      {
         return ;
      } /* if */

      countElements ++ ;

      char msg[ 100 ] ;

      // Verify parent element

         if ( pCurrElement->pParent == NULL )
         {
            if ( pCurrElement->elementHeight != 1 )
            {
               sprintf( msg , "\n>>> Wrong root element  %s  height is  %i" ,
                               pCurrElement->symbol ,
                               pCurrElement->elementHeight ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */
         } else
         {
            if ( ( pCurrElement->pParent->pLeftSubTree  != pCurrElement )
              && ( pCurrElement->pParent->pRightSubTree != pCurrElement ))
            {
               sprintf( msg , "\n>>> Wrong parent %s of element %s " ,
                         pCurrElement->pParent->symbol ,
                         pCurrElement->symbol ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */

            if ( pCurrElement->pParent->elementHeight !=
                 pCurrElement->elementHeight - 1 )
            {
               sprintf( msg , "\n>>> Wrong parent height of element %s  is  %i  should be  %i" ,
                         pCurrElement->symbol ,
                         pCurrElement->pParent->elementHeight ,
                         pCurrElement->elementHeight - 1 ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */

         } /* if */

      // Handle true leaf

         if ( ( pCurrElement->pLeftSubTree  == NULL )
           && ( pCurrElement->pRightSubTree == NULL ))
         {

            if ( pCurrElement->elementHeight != treeHeight )
            {
               sprintf( msg , "\nWrong true leaf element %s  height is: %i" ,
                         pCurrElement->symbol ,  pCurrElement->elementHeight ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */

            return ;

         } // end selection: Handle true leaf

      // Handle left sub tree

         if ( pCurrElement->pLeftSubTree  != NULL )
         {

            if ( pCurrElement->pRightSubTree != NULL )
            {
               if ( pCurrElement->elementHeight < treeHeight )
               {
                  sprintf( msg , "\n>>> Intermediate element %s  too large height %i" ,
                            pCurrElement->symbol ,  pCurrElement->elementHeight ) ;

                  GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

                  countErrors ++ ;
               } /* if */
            } else
            {
               if ( pCurrElement->elementHeight != treeHeight - 1 )
               {
                  sprintf( msg , "\n>>> Right partial leaf %s  wrong height %i  should be %i" ,
                            pCurrElement->symbol ,
                            pCurrElement->elementHeight , treeHeight - 1 ) ;

                  GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

                  countErrors ++ ;
               } /* if */
            } /* if */

            tpTreeElement * pChild = pCurrElement->pLeftSubTree ;

            if ( STR_Compare( strlen( pChild->symbol ) , pChild->symbol ,
                      strlen( pCurrElement->symbol ) , pCurrElement->symbol , false )
                      != TAL_CompareLess )
            {
               sprintf( msg , "\n>>> Element %s  has wrong left subtree symbol %s" ,
                         pCurrElement->symbol , pChild->symbol ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */

            DoVerifyTree( pChild ) ;

         } // end selection: Handle left sub tree

      // Handle right sub tree

         if ( pCurrElement->pRightSubTree  != NULL )
         {

            if ( pCurrElement->elementHeight != treeHeight - 1 )
            {
               sprintf( msg , "\n>>> Left partial leaf %s wrong height %i  should be %i" ,
                         pCurrElement->symbol ,
                         pCurrElement->elementHeight , treeHeight - 1 ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */

            tpTreeElement * pChild = pCurrElement->pRightSubTree ;

            if ( STR_Compare( strlen( pChild->symbol ) , pChild->symbol ,
                      strlen( pCurrElement->symbol ) , pCurrElement->symbol , false )
                      != TAL_CompareGreater )
            {

               sprintf( msg , "\nElement %s  has wrong right subtree symbol %s" ,
                         pCurrElement->symbol , pChild->symbol ) ;

               GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

               countErrors ++ ;
            } /* if */

            DoVerifyTree( pChild ) ;

         } // end selection: Handle right sub tree

   } // End of function: AVL  $Do verify AVL tree structure

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  $Do display AVL tree
// 
////////////////////////////////////////////////////////////////////////////

   void AVL_Tree ::
             DoDisplayAVLtree( tpTreeElement *    pCurrElement ,
                             AVL_TraversalMode  traversalMode )
   {

      if ( pCurrElement == NULL  )
      {
         return ;
      } /* if */

      char msg[ 100 ] ;

      GLB_GetGlobal( )->GetEventLogger( )->Log( "\n\n" ) ;

      // Traverse prefix mode

         if ( traversalMode == AVL_PREFIX_TRAVERSAL )
         {

            sprintf( msg , "%s  " , pCurrElement->symbol ) ;

            GLB_GetGlobal( )->GetEventLogger( )->Log( msg , false ) ;

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

         } // end selection: Traverse prefix mode

      // Traverse infix mode

         else if ( traversalMode == AVL_INFIX_TRAVERSAL )
         {

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            sprintf( msg , "%s  " , pCurrElement->symbol ) ;

            GLB_GetGlobal( )->GetEventLogger( )->Log( msg , false ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

         } // end selection: Traverse infix mode

      // Traverse posfix mode

         else if ( traversalMode == AVL_POSFIX_TRAVERSAL )
         {

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

            sprintf( msg , "%s  " , pCurrElement->symbol ) ;

            GLB_GetGlobal( )->GetEventLogger( )->Log( msg , false ) ;

         } // end selection: Traverse posfix mode

      // Traversal mode error

         else
         {

            sprintf( msg , "\n>>> Unknown traversal mode: %i" , traversalMode ) ;

            GLB_GetGlobal( )->GetEventLogger( )->Log( msg ) ;

         } // end selection: Traversal mode error

   } // End of function: AVL  $Do display AVL tree

//--- End of class: A01  Memory resident AVL tree

////// End of implementation module: A01  Memory resident AVL tree symbol table ////

