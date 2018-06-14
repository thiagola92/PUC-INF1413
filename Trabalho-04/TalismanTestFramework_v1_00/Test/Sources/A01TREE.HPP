#ifndef _A01TREE_
   #define _A01TREE_

////////////////////////////////////////////////////////////////////////////
//
// Definition module: A01  Memory resident AVL tree symbol table
//
// Generated file:    A01TREE.hpp
//
// Module identification letters: A01
// Module identification number:  0328
//
// Repository name:      Test framework support modules
// Repository file name: Z:\TALISMAN\TEST\BSW\AVL-01.BSW
//
// Owning organization:    LES/DI/PUC-Rio
// Project:                Talisman
// List of authors
//    Id      Name
//    avs Arndt von Staa
//
// Software base change control
//       Version  Date         Authors      Description 
//       1     10/12/2012      avs          development begun
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
//  Class: A01  Memory resident AVL tree
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
//    Returns true if the element was inserted.
//    Returns false if the element already exists in the tree
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
      static int LimLog2( int number ,
                          int maxLog )  ;

////////////////////////////////////////////////////////////////////////////

//  Method: AVL  $Do verify AVL tree structure

   private:
      void DoVerifyTree( tpTreeElement * currElement )  ;

//  Method: AVL  $Do display AVL tree

   private:
      void DoDisplayAVLtree( tpTreeElement *    pCurrNode ,
                           AVL_TraversalMode  traversalMode )  ;

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

// Element found pointer
//    If the element has not been found this pointer points to the
//    leaf element where insertion should occur.
//    
//    If the element has been found this pointer points to the element found.

   private: 
      tpTreeElement * pElementFound ;

} ; // End of class declaration: A01  Memory resident AVL tree

#undef _A01TREE_CLASS

#endif 

////// End of definition module: A01  Memory resident AVL tree symbol table ////

