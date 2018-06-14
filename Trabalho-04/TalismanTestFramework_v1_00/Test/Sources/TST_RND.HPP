#ifndef _TST_RND_
   #define _TST_RND_

////////////////////////////////////////////////////////////////////////////
//
// Definition module: TRND Test random number generator
//
// Generated file:    TST_RND.hpp
//
// Module identification letters: TRND
// Module identification number:  30340
//
// Repository name:      Test framework support modules
// Repository file name: Z:\TALISMAN\TEST\BSW\U2.BSW
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
//    Testa e exemplifica o uso do gerador de números aleatórios
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

////////////////////////////////////////////////////////////////////////////
// Error log message codes of the module
//
// Method TRND $Test large uniform distribution
// 
// Error log codes
//    /*****
//    int RND_GenerateUniformDist( int Inf , int Sup )
//    *****/
//
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Required includes -----
//==========================================================================

   #include    "gnrctest.hpp"


//==========================================================================
//----- Class declaration -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Class: TRND Test random number generator
// 
////////////////////////////////////////////////////////////////////////////

class TST_TestSpecific : public TST_TestGeneric
{

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TRND !Test random constructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      TST_TestSpecific( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Virtual Method: TRND !Test random destructor
// 
////////////////////////////////////////////////////////////////////////////

   public:
      virtual ~TST_TestSpecific( )  ;

////////////////////////////////////////////////////////////////////////////
// 
//  Method: TRND !Perform random number generator test
// 
////////////////////////////////////////////////////////////////////////////

   public:
      TST_tpRetCode PerformSpecificTest( char * Command )  ;

////////////////////////////////////////////////////////////////////////////

//  Method: TRND $Test create a random permutation of a vector of elements

   private:
      TST_tpRetCode TestPermutation( )  ;

//  Method: TRND $Display distribution

   private:
      void DisplayDistribution( int numElem ,  int Inf , int Sup ,
                                char * Message )  ;

//  Method: TRND $Clear workspace vector

   private:
      void ClearVector( )  ;

//  Method: TRND $Test uniform distribution

   private:
      TST_tpRetCode TestUniform( )  ;

//  Method: TRND $Test large uniform distribution

   private:
      TST_tpRetCode TestLargeUniform( )  ;

//  Method: TRND $Exibir distribuição de freqüências

   private:
      TST_tpRetCode TestFrequencyTable( )  ;

////////////////////////////////////////////////////////////////////////////

private: 
      static const int RND_dimVt = 1000000 ;

      int vtRand[ RND_dimVt + 1 ] ;

} ; // End of class declaration: TRND Test random number generator

#undef _TST_RND_CLASS

#endif 

////// End of definition module: TRND Test random number generator ////

