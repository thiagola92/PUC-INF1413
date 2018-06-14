#ifndef _TST_AVL_
   #define _TST_AVL_

////////////////////////////////////////////////////////////////////////////
//
// Definition module: TAVL Test module of: AVL  Memory resident AVL tree symbol table
//
// Generated file:    TST_AVL.hpp
//
// Module identification letters: TAVL 
// Module identification number:  
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
//    Test commands syntax
//    
//    Interpret TAVL Reset
//       Reset
//    
//    Test: AVL  !AVL tree constructor
//       NewTree  inxAVLtree
//              AVL_Tree( )
//    
//    Test: AVL  !AVL tree destructor
//       DeleteTree  inxAVLtree
//              ~AVL_Tree( )
//    
//    Test: AVL  !Display AVL tree
//       DisplayTree   inxAVLtree  traversalMode
//              void AVL_DisplayAVLtree( AVL_TraversalMode  traversalMode )
//    
//    Test: AVL  !Insert symbol
//       InsertSymbol inxAVLtree inxSymbol  expValue
//              bool InsertAVLtreeSymbol( char * pSymbol )
//    
//    Test: AVL  !Delete symbol
//       DeleteSymbol inxAVLtree inxSymbol  expValue
//              bool DeleteAVLtreeSymbol( char * pSymbol )
//    
//    Test: AVL  !Search symbol
//       SearchSymbol inxAVLtree inxSymbol  expValue
//              bool SearchAVLtreeSymbol( char * pSymbol )
//    
//    Test: AVL  !Verify AVL tree structure
//       VerifyTree  inxAVLtree  expReturn
//              int VerifyAVLtree( )
//    
//    Test: AVL  !Limited base 2 log
//       LimBase2Log   number  limLog2  expResult
//              int LimLog2( int number ,
//                           int maxLog )
//
//    Test: AVL  Generate test cases
//       GenerateTest inxTree numberElements  numberInserts  expErrorCount
//              
////////////////////////////////////////////////////////////////////////////
// 
// -------------------------------------------------------------------------
// Public methods of class TST_TestSpecific : public TST_TestGeneric
// 
//    TST_TestSpecific( )
// 
// virtual ~TST_TestSpecific( )
// 
//    TST_tpRetCode PerformSpecificTest( char * Command )
// 
// 
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Required includes -----
//==========================================================================

   #include   "gnrctest.hpp"
   #include   "AVLTREE.hpp"
   #include   "tst_rtst.hpp"

//==========================================================================
//----- Exported declarations -----
//==========================================================================

      enum TAVL_tpExistCond
      {
         YES ,
         NO  ,
         ANY  
      } ;


//==========================================================================
//----- Class declaration -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Class: TAVL Specific test class
// 
////////////////////////////////////////////////////////////////////////////

class TST_TestSpecific : public TST_TestGeneric
{

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TAVL !C Specific tester constructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      TST_TestSpecific( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Virtual Method: TAVL !D Specific tester destructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      virtual ~TST_TestSpecific( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TAVL !P Perform specific test actions
// 
////////////////////////////////////////////////////////////////////////////

   public:
      TST_tpRetCode PerformSpecificTest( char * Command )  ;

////////////////////////////////////////////////////////////////////////////

//  Method: TAVL $V Verify object vector index

   private:
      bool VerifyInxAVLtree( int  inxElemParm ,
                             TAVL_tpExistCond MustExist   )  ;

//  Method: TAVL $V Verify symbol vector index

   private:
      bool VerifySymbolIndex( int index )  ;

////////////////////////////////////////////////////////////////////////////

private: 
      // Vector of test objects

         static const int TAVL_dimVtObj = 20 ;
         AVL_Tree * vtObj[ TAVL_dimVtObj ] ;

         struct tpAVLsymbol
         {
             char symbol[ AVL_DIM_SYMBOL ] ;
             bool isInTree ;
         } ;

         static const int DIM_VT_SYMBOLS = 100 ;

         tpAVLsymbol vtAVLsymbols[ DIM_VT_SYMBOLS ] ;

} ; // End of class declaration: TAVL Specific test class

#undef _TST_AVL_CLASS

#endif 

////// End of definition module: TAVL Test module of: AVL  Memory resident AVL tree symbol table ////

