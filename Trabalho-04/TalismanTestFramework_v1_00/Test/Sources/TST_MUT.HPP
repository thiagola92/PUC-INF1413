#ifndef _TST_MUT_
   #define _TST_MUT_

////////////////////////////////////////////////////////////////////////////
//
// Definition module: TMUT Test module of: MUT  Dummy module used for testing mutation test support
//
// Generated file:    TST_MUT.hpp
//
// Module identification letters: TMUT 
// Module identification number:  
//
// Repository name:      Talisman test framework test drivers
// Repository file name: Z:\TALISMAN\TEST\BSW\MAIN.BSW
//
// Owning organization:    LES/INF/PUC-Rio
// Project:                Talisman
// List of authors
//    Id      Name
//    avs  Arndt von Staa
//
// Software base change control
//       Version  Date         Authors      Description 
//       1        01/sep/2006  avs          development begun
//       1.1      22/jun/2012  avs          added the #include statement
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
   #include   "MUTANT.hpp"
   #include   "tst_rtst.hpp"


//==========================================================================
//----- Class declaration -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Class: TMUT Specific test class
// 
////////////////////////////////////////////////////////////////////////////

class TST_TestSpecific : public TST_TestGeneric
{

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TMUT !C Specific tester constructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      TST_TestSpecific( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Virtual Method: TMUT !D Specific tester destructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      virtual ~TST_TestSpecific( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TMUT !P Perform specific test actions
// 
////////////////////////////////////////////////////////////////////////////

   public:
      TST_tpRetCode PerformSpecificTest( char * Command )  ;

////////////////////////////////////////////////////////////////////////////

} ; // End of class declaration: TMUT Specific test class

#undef _TST_MUT_CLASS

#endif 

////// End of definition module: TMUT Test module of: MUT  Dummy module used for testing mutation test support ////

