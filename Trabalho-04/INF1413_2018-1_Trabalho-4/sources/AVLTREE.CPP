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

   #include   <string.h>
   #include   <stdio.h>

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

      tpTreeElement( char * pString )
      {
         pLeftSubTree  = NULL ;
         pRightSubTree = NULL ;
         pParent       = NULL ;
         elementHeight = 1 ;
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

   inline int MAX(int a, int b) 
   {
      return ( a > b ) ? a : b ;
   }

   inline int HEIGHT( tpTreeElement * pNode ) 
   {
      if ( pNode == NULL )
      {
         return 0 ;
      } /* if */
      return pNode->elementHeight ;
   } // end inline HEIGHT



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

      pLogger = GLB_GetGlobal( )->GetEventLogger( ) ;

   } // End of function: AVL  !AVL tree constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: AVL  !AVL tree destructor

   AVL_Tree ::
             ~AVL_Tree( )
   {
      DoDeleteAVLtree( pTreeRoot ) ;
      pTreeRoot   = NULL ;
      treeHeight  = 0 ;
      numElements = 0 ;

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
         pLogger->Log( "\n\nEmpty AVL tree" ) ;
      } /* if */

      pLogger->Log( " " ) ;

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
         char buffer[ 100 ] ;
         sprintf( buffer , "\nWrong number of elements. Is: %i  souldbe: %i" ,
                   countElements , numElements ) ;
         pLogger->Log( buffer ) ;
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

      return DoSearchSymbol( pTreeRoot , pSymbol ) ;

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

      pElementFound = NULL ;
      tpTreeElement * pNewElement = new tpTreeElement( pSymbol ) ;

      tpTreeElement * pNewRoot = DoInsertAVLelement( pTreeRoot , pNewElement ) ;
 
      if ( pNewRoot != NULL )
      {
         pTreeRoot = pNewRoot ;
         treeHeight = LimLog2( numElements ) ;
         return true ;
      } /* if */

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

      char buffer[ 100 ] ;
      sprintf( buffer , "\nLog2 of %i is greater than the limit: %i" , number , maxLog2 ) ;

      pLogger->Log( buffer ) ;

      return -1 ;

   } // End of function: AVL  !Limited base 2 log

//==========================================================================
//----- Private method implementations -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////

      bool AVL_Tree ::
         VerifyFather( tpTreeElement * pFather ) 
         {
            if ( pFather != NULL ) 
            {
               if ( pFather->pLeftSubTree != NULL )
               {
                  return pFather->pLeftSubTree->pParent == pFather ;
               } /* if */

               if ( pFather->pRightSubTree != NULL )
               {
                  return pFather->pRightSubTree->pParent == pFather ;
               } /* if */

            } /* if */
            return true ;
         }

////////////////////////////////////////////////////////////////////////////

      bool AVL_Tree::
         VerifyChild( tpTreeElement * pChild )
         {
            if ( pChild != NULL )
            {
               if ( pChild->pParent != NULL )
               {
                  return ( pChild->pParent->pLeftSubTree  == pChild ) 
                        || ( pChild->pParent->pRightSubTree == pChild ) ;
               } /* if */
            } /* if */
            return true ;
         }

// Class: AVL  Memory resident AVL tree

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  $Do verify AVL tree structure
//    pCurrElement  - pointer to the current element being traversed.
//                    May be NULL, which is the case if the tree is empty.
//    numErrors     - total number of errors found while traversing the tree.
//                    Must be zero when starting at the root of the tree.
//                    Object member attribute.
//    countElements - number of elements visited so far.
//                    Object member attribute.
// 
////////////////////////////////////////////////////////////////////////////

   void AVL_Tree ::
             DoVerifyTree( tpTreeElement * pCurrElement )
   {

      char buffer[ 100 ] ;
      if ( pCurrElement == NULL  )
      {
         return ;
      } /* if */

      countElements ++ ;

      // Verify parent pointer

        tpTreeElement * pParent = pCurrElement->pParent ;
        if ( pParent == NULL )
         {
            if ( pCurrElement->elementHeight != treeHeight )
            {
               sprintf( buffer , "\nWrong root element height is %i should be %i: %s" ,
                         pCurrElement->elementHeight , treeHeight , pCurrElement->symbol ) ;
               pLogger->Log( buffer ) ;
               countErrors ++ ;
            } /* if */
         } else
         {
            if ( ( pParent->pLeftSubTree  != pCurrElement )
              && ( pParent->pRightSubTree != pCurrElement ))
            {
               sprintf( buffer , "\nParent %s is not a parent of %s " ,
                         pParent->symbol , pCurrElement->symbol ) ;
               pLogger->Log( buffer ) ;
               if (  pParent->pLeftSubTree != NULL )
               {
                  sprintf( buffer , " Left: %s " , pParent->pLeftSubTree->symbol ) ;
                  pLogger->Log( buffer , false ) ;
               } else
               {
                  pLogger->Log( " Left -----" , false ) ;
               } /* if */
               if (  pParent->pRightSubTree != NULL )
               {
                  sprintf( buffer , " Right: %s " , pParent->pRightSubTree->symbol ) ;
                  pLogger->Log( buffer , false ) ;
               } else
               {
                  pLogger->Log( " Right -----" , false ) ;
               } /* if */

               countErrors ++ ;
            } /* if */

            if ( ! ( pParent->elementHeight == pCurrElement->elementHeight + 1 )
              && ! ( pParent->elementHeight == pCurrElement->elementHeight + 2 ))
            {
               sprintf( buffer , "\nHeight %i of parent element %s of element %s should be %i + 1 or + 2" ,
                         pParent->elementHeight , pParent->symbol,
                         pCurrElement->symbol , pCurrElement->elementHeight ) ;
               pLogger->Log( buffer ) ;
               countErrors ++ ;
            } /* if */

         } /* if */

      // Handle leaf element

         if ( ( pCurrElement->pLeftSubTree  == NULL )
           && ( pCurrElement->pRightSubTree == NULL ))
         {

            if ( pCurrElement->elementHeight != 1 )
            {
               sprintf( buffer , "\nHeight %i of leaf element %s should be 0" ,
                         pCurrElement->elementHeight , pCurrElement->symbol ) ;
               pLogger->Log( buffer ) ;
               countErrors ++ ;
            } /* if */

            return ;

         } // end selection: Handle true leaf

      // Handle left child 

         if ( pCurrElement->pLeftSubTree != NULL )
         {
            tpTreeElement * pChild = pCurrElement->pLeftSubTree ;

            if ( ! ( pCurrElement->elementHeight == pChild->elementHeight + 1 )
              && ! ( pCurrElement->elementHeight == pChild->elementHeight + 2 ))
            {
               sprintf( buffer , "\nElement height %i of left child %s of element %s should be %i - 1 or - 2" ,
                          pChild->elementHeight , pChild->symbol ,
                          pCurrElement->symbol , pCurrElement->elementHeight ) ; 
               pLogger->Log( buffer ) ;
               countErrors ++ ;
            } /* if */

            if ( STR_Compare( strlen( pChild->symbol ) , pChild->symbol ,
                        strlen( pCurrElement->symbol ) , pCurrElement->symbol , false )
                        != TAL_CompareLess )
            {
               sprintf( buffer , "\nLeft child symbol %s must be less than element symbol %s" ,
                        pChild->symbol , pCurrElement->symbol ) ;
               pLogger->Log( buffer ) ;
               countErrors ++ ;
            } /* if */

            DoVerifyTree( pChild ) ;

         } // end selection: Handle right sub tree

      // Handle right child 

         if ( pCurrElement->pRightSubTree != NULL )
         {
            tpTreeElement * pChild = pCurrElement->pRightSubTree ;
 
            if ( ! ( pCurrElement->elementHeight == pChild->elementHeight + 1 )
              && ! ( pCurrElement->elementHeight == pChild->elementHeight + 2 ))
            {
               sprintf( buffer , "\nElement height %i of right child %s of element %s should be %i - 1 or - 2" ,
                          pChild->elementHeight , pChild->symbol ,
                          pCurrElement->symbol , pCurrElement->elementHeight ) ; 
               pLogger->Log( buffer ) ;
               countErrors ++ ;
            } /* if */

            if ( STR_Compare( strlen( pChild->symbol ) , pChild->symbol ,
                        strlen( pCurrElement->symbol ) , pCurrElement->symbol , false )
                        != TAL_CompareGreater )
            {
               sprintf( buffer , "\nRight child symbol %s must be greater than element symbol %s" ,
                        pChild->symbol , pCurrElement->symbol ) ;
               pLogger->Log( buffer ) ;
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

   void AVL_Tree :: DisplayNode( tpTreeElement * pCurrElement )
   {
      char parent[ AVL_DIM_SYMBOL ] ;
      char buffer[ 100 ] ;

      if ( pCurrElement->pParent == NULL )
      {
         strcpy( parent , "xxx" ) ;
      } else
      {
         strcpy( parent , pCurrElement->pParent->symbol ) ;
      } /* if */
      sprintf( buffer , "%i/%s:%s " , pCurrElement->elementHeight , 
                parent ,pCurrElement->symbol ) ;
      pLogger->Log( buffer , false ) ;
   }

   void AVL_Tree ::
             DoDisplayAVLtree( tpTreeElement *    pCurrElement ,
                             AVL_TraversalMode  traversalMode )
   {

      if ( pCurrElement == NULL  )
      {
         return ;
      } /* if */

      char buffer[ 100 ] ;
 
      // Traverse prefix mode

         if ( traversalMode == AVL_PREFIX_TRAVERSAL )
         {
            DisplayNode( pCurrElement ) ;

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

         } // end selection: Traverse prefix mode

      // Traverse infix mode

         else if ( traversalMode == AVL_INFIX_TRAVERSAL )
         {

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DisplayNode( pCurrElement ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

         } // end selection: Traverse infix mode

      // Traverse posfix mode

         else if ( traversalMode == AVL_POSFIX_TRAVERSAL )
         {

            DoDisplayAVLtree( pCurrElement->pLeftSubTree  , traversalMode ) ;

            DoDisplayAVLtree( pCurrElement->pRightSubTree , traversalMode ) ;

            DisplayNode( pCurrElement ) ;

         } // end selection: Traverse posfix mode

      // Traversal mode error

         else
         {

            sprintf( buffer , "\n*** Unknown traversal mode: %i" , traversalMode ) ;
            pLogger->Log( buffer , false ) ;


         } // end selection: Traversal mode error

   } // End of function: AVL  $Do display AVL tree

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  $Do delete AVL tree
// 
////////////////////////////////////////////////////////////////////////////


   void AVL_Tree ::
             DoDeleteAVLtree( tpTreeElement * pCurrElement ) 
   {

      if ( pCurrElement == NULL  )
      {
         return ;
      } /* if */

      DoDeleteAVLtree( pCurrElement->pLeftSubTree ) ;
      DoDeleteAVLtree( pCurrElement->pRightSubTree ) ;

      delete pCurrElement ;

   } // End of function: AVL  $Do delete AVL tree

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

      if ( is > 0 )
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
      
      return false ;

   } // End of function: AVL  $DoSearch symbol

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  $Do insert element in AVL tree
//
//  Adapted from https://www.geeksforgeeks.org/avl-tree-set-1-insertion/
// 
////////////////////////////////////////////////////////////////////////////

   inline int GET_BALANCE( tpTreeElement * pNode )
   {
      if ( pNode == NULL )
      {
         return 0 ;
      } /* if */
      return HEIGHT( pNode->pLeftSubTree ) - HEIGHT( pNode->pRightSubTree ) ;
   } // End of inline GET_BALANCE

////////////////////////////////////////////////////////////////////////////

   tpTreeElement * AVL_Tree :: ROTATE_RIGHT( tpTreeElement * pNode )
   {
     if(pNode == NULL)
     puts("asdf\n");
      tpTreeElement * pLeft      = pNode->pLeftSubTree ;
      tpTreeElement * pLeftRight = pLeft->pRightSubTree ;
      tpTreeElement * pParent    = pNode->pParent ;

pLogger->Log( "-- rotate right " ) ;
DisplayNode( pNode ) ;
DisplayNode( pLeft ) ;

if ( pLeftRight != NULL )
{
   DisplayNode( pLeftRight ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

if ( pParent != NULL )
{
   DisplayNode( pParent ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

   // Rotate

      pLeft->pRightSubTree = pNode ;
      pNode->pParent = pLeft;
      pLeft->pParent = pParent ; 
      pNode->pLeftSubTree = pLeftRight ; 

if (pLeftRight != NULL)
{
  pLeftRight->pParent = pNode;
}

if (pParent != NULL && pParent->pRightSubTree == pNode)
{
  pParent->pRightSubTree = pLeft;
}
else if (pParent != NULL && pParent->pLeftSubTree == pNode)
{
  pParent->pLeftSubTree = pLeft;
}

pLogger->Log( "-- first " ) ;
DisplayNode( pLeft ) ;

if (pLeft->pLeftSubTree != NULL )
{
  DisplayNode( pLeft->pLeftSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

if (pLeft->pRightSubTree != NULL )
{
  DisplayNode( pLeft->pRightSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

pLogger->Log( "-- second " ) ;
DisplayNode( pNode ) ;
if ( pNode->pLeftSubTree != NULL )
{
   DisplayNode( pNode->pLeftSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */
if ( pNode->pRightSubTree != NULL )
{
   DisplayNode( pNode->pRightSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

   // Update heights

      pNode->elementHeight = MAX( HEIGHT( pNode->pLeftSubTree ) , HEIGHT( pNode->pRightSubTree ) ) + 1 ;
      pLeft->elementHeight = MAX( HEIGHT( pLeft->pLeftSubTree ) , HEIGHT( pLeft->pRightSubTree ) ) + 1 ;

#ifdef zero

pLogger->Log( "-- result " ) ;
if ( pParent != NULL )
{
   DoDisplayAVLtree( pParent , AVL_INFIX_TRAVERSAL ) ;
} else
{
   pLogger->Log( "xxx " , false ) ;
   DoDisplayAVLtree( pLeft , AVL_INFIX_TRAVERSAL ) ;
}
#endif

EXC_ASSERT( VerifyChild( pLeft )) ;
EXC_ASSERT( VerifyFather( pLeft->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather( pLeft->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pLeft->pParent )) ;


      return pLeft ;

   } // end of inline ROTATE_RIGHT

////////////////////////////////////////////////////////////////////////////

   tpTreeElement * AVL_Tree :: ROTATE_LEFT( tpTreeElement * pNode )
   {
      tpTreeElement * pRight     = pNode->pRightSubTree ;
      tpTreeElement * pRightLeft = pRight->pLeftSubTree ;
      tpTreeElement * pParent    = pNode->pParent ;
      
pLogger->Log( "-- rotate left " ) ;
DisplayNode( pNode ) ;
DisplayNode( pRight ) ;

if ( pRightLeft != NULL )
{
   DisplayNode( pRightLeft ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

if ( pParent != NULL )
{
   DisplayNode( pParent ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */


   // Rotate

      pRight->pLeftSubTree = pNode ;
      pNode->pParent = pRight;
      pRight->pParent = pParent ;
      pNode->pRightSubTree = pRightLeft ; 

if (pRightLeft != NULL)
{
  pRightLeft->pParent = pNode;
}

if (pParent != NULL && pParent->pRightSubTree == pNode)
{
  pParent->pRightSubTree = pRight;
}
else if (pParent != NULL && pParent->pLeftSubTree == pNode)
{
  pParent->pLeftSubTree = pRight;
}

pLogger->Log( "-- first " ) ;
DisplayNode( pRight ) ;

if (pRight->pLeftSubTree != NULL )
{
  DisplayNode( pRight->pLeftSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

if (pRight->pRightSubTree != NULL )
{
  DisplayNode( pRight->pRightSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */

pLogger->Log( "-- second " ) ;
DisplayNode( pNode ) ;
if ( pNode->pLeftSubTree != NULL )
{
   DisplayNode( pNode->pLeftSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */
if ( pNode->pRightSubTree != NULL )
{
   DisplayNode( pNode->pRightSubTree ) ;
} else
{
   pLogger->Log( "------ " , false ) ;
} /* if */


   // Update heights

      pNode->elementHeight  = MAX( HEIGHT( pNode->pLeftSubTree  ) , HEIGHT( pNode->pRightSubTree  ) )  + 1;
      pRight->elementHeight = MAX( HEIGHT( pRight->pLeftSubTree ) , HEIGHT( pRight->pRightSubTree ) )  + 1;

EXC_ASSERT( VerifyChild( pRight )) ;
EXC_ASSERT( VerifyFather( pRight->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather( pRight->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pRight->pParent )) ;

      return pRight ;

   } // end of inline ROTATE_LEFT

////////////////////////////////////////////////////////////////////////////

//  Method: AVL  $Do insert element in AVL tree

   tpTreeElement * AVL_Tree ::
              DoInsertAVLelement( tpTreeElement * pCurrElement ,
                                  tpTreeElement * pNewElement )
   {
   
   // Recursive function to insert a key in the subtree rooted
   // with node and returns the new root of the subtree.

   // 1.  Perform the normal BST insertion 

      if ( pCurrElement == NULL )
      {
         numElements++ ;
         return pNewElement ;
      } /* if */

      int is = strcmp( pNewElement->symbol , pCurrElement->symbol ) ;

      if ( is < 0 )
      {
         pCurrElement->pLeftSubTree = DoInsertAVLelement( pCurrElement->pLeftSubTree , pNewElement ) ;
         pCurrElement->pLeftSubTree->pParent = pCurrElement ;
      } else if ( is > 0 )
      {
         pCurrElement->pRightSubTree = DoInsertAVLelement( pCurrElement->pRightSubTree , pNewElement ) ;
         pCurrElement->pRightSubTree->pParent = pCurrElement ;
      } else 
      {
      // New node exists
         pElementFound = pCurrElement ;
         return pNewElement ;
      } /* if */

    // 2. Update height of this ancestor node 
      pCurrElement->elementHeight = 1 + MAX( HEIGHT( pCurrElement->pLeftSubTree ) ,
                HEIGHT( pCurrElement->pRightSubTree )) ;
 
    // 3. Get the balance factor of this ancestor node to check whether this node became
    //    unbalanced 

      int balance = 0 ;
      if ( pNewElement != NULL )
      { 
         balance = GET_BALANCE( pCurrElement ) ;
      } /* if */
    
    // If this node becomes unbalanced, then
    // there are 4 cases
 
    // Left Left Case
    // if (balance > 1 && key < node->left->key)
    //    return rightRotate(node);

      if ( ( balance > 1 )
        && ( strcmp( pNewElement->symbol , pCurrElement->pLeftSubTree->symbol ) < 0 ))
      {
         pCurrElement = ROTATE_RIGHT( pCurrElement ) ; 

EXC_ASSERT( VerifyChild( pCurrElement )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pCurrElement->pParent )) ;

         return pCurrElement ; 
      } /* if */

    // Right Right Case
    // if (balance < -1 && key > node->right->key)
    //     return leftRotate(node);

      if ( ( balance < -1 )
        && ( strcmp( pNewElement->symbol , pCurrElement->pRightSubTree->symbol ) > 0 ))
      {
         //  return rightRotate(node);

         pCurrElement = ROTATE_LEFT( pCurrElement ) ; 

EXC_ASSERT( VerifyChild( pCurrElement )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pCurrElement->pParent )) ;

         return pCurrElement ; 
      } /* if */
 
    // Left Right Case
    //   if (balance > 1 && key > node->left->key)
    //   {
    //      node->left =  leftRotate(node->left);
    //      return rightRotate(node);
    //   }

       if ( ( balance > 1 )
        && ( strcmp( pNewElement->symbol , pCurrElement->pLeftSubTree->symbol ) > 0 ))
      {

pLogger->Log( "-- left right case " ) ;
DisplayNode( pCurrElement ) ;

         pCurrElement->pLeftSubTree = ROTATE_LEFT( pCurrElement->pLeftSubTree ) ;
         pCurrElement->pLeftSubTree->pParent = pCurrElement ;

pLogger->Log( " -- after " , false ) ;
DisplayNode( pCurrElement ) ;
DisplayNode( pCurrElement->pLeftSubTree  ) ;

         pCurrElement = ROTATE_RIGHT( pCurrElement ) ;

EXC_ASSERT( VerifyChild( pCurrElement )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pCurrElement->pParent )) ;

         return  pCurrElement ;

      } /* if */

    // Right Left Case
    // if (balance < -1 && key < node->right->key)
    // {
    //    node->right = rightRotate(node->right);
    //    return leftRotate(node);
    // }

       if ( ( balance < -1 )
        && ( strcmp( pNewElement->symbol , pCurrElement->pRightSubTree->symbol ) < 0 ))
      {

pLogger->Log( "-- right left case " ) ;
DisplayNode( pCurrElement ) ;
         
         pCurrElement->pRightSubTree = ROTATE_RIGHT( pCurrElement->pRightSubTree ) ;
         pCurrElement->pRightSubTree->pParent = pCurrElement ;

pLogger->Log( "-- after " , false ) ;
DisplayNode( pCurrElement ) ;
DisplayNode( pCurrElement->pRightSubTree  ) ;

         pCurrElement = ROTATE_LEFT( pCurrElement ) ;

EXC_ASSERT( VerifyChild( pCurrElement )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pCurrElement->pParent )) ;

         return pCurrElement ;

      } /* if */
 
    // return the (unchanged) node pointer 

EXC_ASSERT( VerifyChild( pCurrElement )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pLeftSubTree )) ;
EXC_ASSERT( VerifyFather(  pCurrElement->pRightSubTree )) ;
EXC_ASSERT( VerifyChild( pCurrElement->pParent )) ;

      return pCurrElement ;

   } //  End of function:  AVL  $Do insert element in AVL tree


//--- End of class: AVL  Memory resident AVL tree

////// End of implementation module: AVL  Memory resident AVL tree symbol table ////

