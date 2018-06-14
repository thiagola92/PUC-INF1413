#ifndef _AVLTREE_
   #define _AVLTREE_

////////////////////////////////////////////////////////////////////////////
//
// Definition module: AVL  Memory resident AVL tree symbol table
//
// Generated file:    AVLTREE.hpp
//
// Module identification letters: AVL
// Module identification number:  0328
//
// Repository name:      Test framework support modules
// Repository file name: Z:\TALISMAN\TEST\BSW\UTILIT.BSW
//
// Owning organization:    LES/DI/PUC-Rio
// Project:                Talisman
// List of authors
//    Id      Name
//    avs Arndt von Staa
//
// Software base change control
//       Version  Date         Authors      Description 
//       1     09/02/2007   avs          development begun
// -------------------------------------------------------------------------
// Specification
//    This module implements an AVL tree handler.
//    As symbol it uses the "SMTE Symbol table element value"
//    that can be found in the "SMT  Memory resident hash symbol table" module.
//
////////////////////////////////////////////////////////////////////////////
// 
// -------------------------------------------------------------------------
// Public methods of class AVL_Tree
// 
//    AVL_Tree( )
// 
//    ~AVL_Tree( )
// 
//    void AVL_DisplayAVLtree( AVL_TraversalMode  traversalMode )
// 
//    int VerifyAVLtree( )
// 
//    bool SearchAVLtreeSymbol( char * pSymbol )
// 
//    bool InsertAVLtreeSymbol( char * pSymbol )
// 
//    bool DeleteAVLtreeSymbol( char * pSymbol )
// 
// static int LimLog2( int number ,
//                     int maxLog )
// 
// 
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Required includes -----
//==========================================================================

   #include   "simplist.hpp"
   #include   "string.hpp"
   #include   "logger.hpp"

//==========================================================================
//----- Exported data types -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Data type: AVL Traversal mode
// 
////////////////////////////////////////////////////////////////////////////

   enum AVL_TraversalMode
   {

   // Prefix traversal

      AVL_PREFIX_TRAVERSAL ,

   // Infix traversal

      AVL_INFIX_TRAVERSAL ,

   // Posfix traversal

      AVL_POSFIX_TRAVERSAL

   }  ;


//==========================================================================
//----- Exported declarations -----
//==========================================================================

   const int AVL_DIM_SYMBOL = 10 ;

   struct tpTreeElement ;


//==========================================================================
//----- Class declaration -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Class: AVL  Memory resident AVL tree
//    Implements balanced binary tree handlers
// 
////////////////////////////////////////////////////////////////////////////

class AVL_Tree
{

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !AVL tree constructor
// 
// Description
//    Creates the header of an empty tree.
// 
////////////////////////////////////////////////////////////////////////////

   public:
      AVL_Tree( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !AVL tree destructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      ~AVL_Tree( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !Display AVL tree
// 
////////////////////////////////////////////////////////////////////////////

   public:
      void AVL_DisplayAVLtree( AVL_TraversalMode  traversalMode )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !Verify AVL tree structure
// 
// Description
//    Verifies the structure of the AVL tree
//    
//    All tree elements must refer to two siblings except for
//    partial and true leaf elements.
//    
//    A true leaf element refers to no siblings.
//    
//    A partial leaf elemnt refers to one sibling that must be a true leaf.
// 
////////////////////////////////////////////////////////////////////////////

   public:
      int VerifyAVLtree( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !Search symbol
// 
////////////////////////////////////////////////////////////////////////////

   public:
      bool SearchAVLtreeSymbol( char * pSymbol )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !Insert symbol
// 
// Description
//    if true  node was inserted
//    if false existing node was found
// 
////////////////////////////////////////////////////////////////////////////

   public:
      bool InsertAVLtreeSymbol( char * pSymbol )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !Delete symbol
// 
////////////////////////////////////////////////////////////////////////////

   public:
      bool DeleteAVLtreeSymbol( char * pSymbol )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: AVL  !Limited base 2 log
// 
// Description
//    Obtains the binary log of a number, where the
//    returned log value is less than maxLog.
//    
//    number must be less than or equal to 0x7FFFFFFF
//       henc logs are limited to 32 or less
//    maxLog must be less than or equal to 0x7FFFFFFF
//    
//    number = 0 returns LimLog2 == 0
//    number = 1 returns LimLog2 == 1
// 
////////////////////////////////////////////////////////////////////////////

   public:
      int LimLog2( int number ,
                   int maxLog = 0x7FFFFFFF )  ;

////////////////////////////////////////////////////////////////////////////

//  Method: AVL  $Do verify AVL tree structure

   private:
      void DoVerifyTree( tpTreeElement * currElement )  ;

//  Method: AVL  $Do display AVL tree

   private:
      void DoDisplayAVLtree( tpTreeElement *    pCurrNode ,
                           AVL_TraversalMode  traversalMode )  ;

//  Method: AVL  $DoSearch symbol

   private:
      bool DoSearchSymbol( tpTreeElement *    pCurrElement ,
                           char *             pSymbol )  ;

//  Method: AVL  $DoSearch symbol

   private:
      tpTreeElement * AVL_Tree ::
              DoInsertAVLelement( tpTreeElement * pCurrElement ,
                                  tpTreeElement * newElement ) ;
//  Method: AVL  $DoDelete symbol

   private:
      void DoDeleteAVLtree( tpTreeElement *    pCurrElement ) ;

//  helper functions
   private:
      void DisplayNode( tpTreeElement * pCurrElement ) ;

   private:
      tpTreeElement * ROTATE_RIGHT( tpTreeElement * pNode ) ;

   private:
      tpTreeElement * ROTATE_LEFT( tpTreeElement * pNode ) ;

   private:
      bool VerifyFather( tpTreeElement * pFather ) ;

   private:
      bool VerifyChild( tpTreeElement * pChild ) ;

////////////////////////////////////////////////////////////////////////////

// Reference to tree root

   private: 
      tpTreeElement  * pTreeRoot ;

// Number of elements in the tree

   private: 
      int numElements ;

// Maximum tree height
//    This is the maximum height of any path from root to leaf, considering
//    the number of elements in the tree.

   private: 
      int treeHeight ;

// Verify element counter

   private: 
      int countElements ;

// Verify error counter

   private: 
      int countErrors ;

// Logger

   private:
      LOG_Logger * pLogger ;

// Element found pointer
//    NULL If the element has not been found points 
//    element found while searching

   private: 
      tpTreeElement * pElementFound ;

} ; // End of class declaration: AVL  Memory resident AVL tree

#undef _AVLTREE_CLASS

#endif 

////// End of definition module: AVL  Memory resident AVL tree symbol table ////

