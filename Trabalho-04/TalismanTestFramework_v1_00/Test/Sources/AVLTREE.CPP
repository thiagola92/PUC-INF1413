////////////////////////////////////////////////////////////////////////////
//
//Implementation module: AVL  Memory resident AVL tree symbol table
//
//Generated file:        AVLTREE.cpp
//
//Module identification letters: AVL
//Module identification number:  0328
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

   #define  _AVLTREE_OWN
   #include "AVLTREE.hpp"
   #undef   _AVLTREE_OWN

//==========================================================================
//----- Encapsulated data declarations -----
//==========================================================================

   #ifdef _DEBUG
      #include   "dynspac.hpp"
   #endif

   #include    "logger.hpp"
   #include    "global.hpp"
   #include    "exceptn.hpp"


   // #include    "str_avl.inc"

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
// Implementation of class: AVL  Memory resident AVL tree
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: AVL  Memory resident AVL tree

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
         printf( "\n\nEmpty AVL tree" ) ;
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
         printf( "\nWrong number of elements. Is: %i  souldbe: %i" ,
                   countElements , numElements ) ;
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

      if ( pTreeRoot == NULL )
      {
         pElementFound = new tpTreeElement( pSymbol , 1 ) ;
         pTreeRoot     = pElementFound ;
         numElements   = 1 ;
         treeHeight    = 1 ;
         return true ;
      } /* if */

      bool found = DoSearchSymbol( pTreeRoot , pSymbol ) ;
      if ( found )
      {
         return false ;
      } /* if */

      int newHeight = pElementFound->elementHeight + 1 ;

      tpTreeElement * newTreeElement = new tpTreeElement( pSymbol , newHeight ) ;

      if ( treeHeight < newHeight )
      {
         treeHeight = newHeight ;
      } /* if */
      numElements++ ;

      int is = strcmp( pElementFound->symbol , pSymbol ) ;

      if ( is < 0 )
      {
         pElementFound->pLeftSubTree = newTreeElement ;
      } else
      {
         pElementFound->pRightSubTree = newTreeElement ;
      } /* if */

      return true ;

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

      printf( "\nLog2 of %i is greater than the limit: %i" ,
                number ,maxLog2 ) ;

      return -1 ;

   } // End of function: AVL  !Limited base 2 log

//==========================================================================
//----- Private method implementations -----
//==========================================================================

// Class: AVL  Memory resident AVL tree

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

      // Verify parent pointer

         if ( pCurrElement->pParent == NULL )
         {
            if ( pCurrElement->elementHeight != 1 )
            {
               printf( "\nWrong root element  %s  is  %i" ,
                         pCurrElement->symbol ,
                         pCurrElement->elementHeight ) ;
               countErrors ++ ;
            } /* if */
         } else
         {
            if ( ( pCurrElement->pParent->pLeftSubTree  != pCurrElement )
              && ( pCurrElement->pParent->pRightSubTree != pCurrElement ))
            {
               printf( "\nWrong parent %s of element %s " ,
                         pCurrElement->pParent->symbol ,
                         pCurrElement->symbol ) ;
               countErrors ++ ;
            } /* if */

            if ( pCurrElement->pParent->elementHeight !=
                 pCurrElement->elementHeight - 1 )
            {
               printf( "\nWrong parent height of element %s  is  %i  should be  %i" ,
                         pCurrElement->symbol ,
                         pCurrElement->pParent->elementHeight ,
                         pCurrElement->elementHeight - 1 ) ;
               countErrors ++ ;
            } /* if */

         } /* if */

      // Handle true leaf

         if ( ( pCurrElement->pLeftSubTree  == NULL )
           && ( pCurrElement->pRightSubTree == NULL ))
         {

            if ( pCurrElement->elementHeight != treeHeight )
            {
               printf( "\nWrong true leaf element height: %s " ,
                         pCurrElement->symbol ) ;
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
                  printf( "\nIntermediate element height must be less than tree\'s height: %s" ,
                            pCurrElement->symbol ) ;
                  countErrors ++ ;
               } /* if */
            } else
            {
               if ( pCurrElement->elementHeight != treeHeight - 1 )
               {
                  printf( "\nRight partial leaf\'s height must be one less than the tree\'s height: %s" ,
                            pCurrElement->symbol ) ;
                  countErrors ++ ;
               } /* if */
            } /* if */

            tpTreeElement * pChild = pCurrElement->pLeftSubTree ;

            if ( STR_Compare( strlen( pChild->symbol ) , pChild->symbol ,
                      strlen( pCurrElement->symbol ) , pCurrElement->symbol , false )
                      != TAL_CompareLess )
            {
               printf( "\nLeft sub tree symbol must be less than: %s" ,
                         pCurrElement->symbol ) ;
               countErrors ++ ;
            } /* if */

            DoVerifyTree( pCurrElement->pLeftSubTree ) ;

         } // end selection: Handle left sub tree

      // Handle right sub tree

         if ( pCurrElement->pRightSubTree  != NULL )
         {

            if ( pCurrElement->elementHeight != treeHeight - 1 )
            {
               printf( "\nLeft partial leaf\'s height must be one less than the tree\'s height: %s" ,
                         pCurrElement->symbol ) ;
               countErrors ++ ;
            } /* if */

            tpTreeElement * pChild = pCurrElement->pRightSubTree ;

            if ( STR_Compare( strlen( pChild->symbol ) , pChild->symbol ,
                      strlen( pCurrElement->symbol ) , pCurrElement->symbol , false )
                      != TAL_CompareGreater )
            {
               printf( "\nLeft sub tree symbol must be greater than: %s" ,
                         pCurrElement->symbol ) ;
               countErrors ++ ;
            } /* if */

            DoVerifyTree( pCurrElement->pRightSubTree ) ;

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

      // Traverse prefix mode

         if ( traversalMode == AVL_PREFIX_TRAVERSAL )
         {

            printf( "%s  " , pCurrElement->symbol ) ;

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

         } // end selection: Traverse prefix mode

      // Traverse infix mode

         else if ( traversalMode == AVL_INFIX_TRAVERSAL )
         {

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            printf( "%s  " , pCurrElement->symbol ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

         } // end selection: Traverse infix mode

      // Traverse posfix mode

         else if ( traversalMode == AVL_POSFIX_TRAVERSAL )
         {

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

            printf( "%s  " , pCurrElement->symbol ) ;

         } // end selection: Traverse posfix mode

      // Traversal mode error

         else
         {

            printf( "\n*** Unknown traversal mode: %i" , traversalMode ) ;

         } // end selection: Traversal mode error

   } // End of function: AVL  $Do display AVL tree

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  $DoSearch symbol
//    Searches recursively the symbol
// 
////////////////////////////////////////////////////////////////////////////

   bool AVL_Tree ::
             DoSearchSymbol( tpTreeElement *    pCurrElement ,
                             char *             pSymbol )
   {

      int is = strcmp( pCurrElement->symbol , pSymbol ) ;


      if ( is == 0 )
      {
         pElementFound = pCurrElement ;
         return true ;
      } /* if */

      if ( is < 0 )
      {
         if ( pCurrElement->pLeftSubTree != NULL )
         {
            return DoSearchSymbol( pCurrElement->pLeftSubTree ,  pSymbol ) ;
         } /* if */
      } else
      {
         if ( pCurrElement->pRightSubTree != NULL )
         {
            return DoSearchSymbol( pCurrElement->pRightSubTree , pSymbol ) ;
         } /* if */
      } /* if */

      pElementFound = pCurrElement ;
      return false ;

   } // End of function: AVL  $DoSearch symbol

//--- End of class: AVL  Memory resident AVL tree

////// End of implementation module: AVL  Memory resident AVL tree symbol table ////

