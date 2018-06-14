#ifndef _MUTANT_
   #define _MUTANT_

////////////////////////////////////////////////////////////////////////////
//
// Definition module: MUT  Dummy module used for testing mutation test support
//
// Generated file:    MUTANT.hpp
//
// Module identification letters: MUT
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
// -------------------------------------------------------------------------
// Specification
//    This is a dummy module to be used to test the mutation test
//    commands
//
////////////////////////////////////////////////////////////////////////////
// 
// -------------------------------------------------------------------------
// Exported global functions
// 
//    int MUT_MutationTestDummy( int limitNum )
// 
////////////////////////////////////////////////////////////////////////////


//==========================================================================
//----- Exported global functions -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
//  Function: MUT  &Mutation test dummy for testing mutation test support
// 
// Description
//    Provides a simple code containing a single mutation
//    
//    Returns the number of prime numbers less or equal to limitNum
// 
// Parameters
//    limitNum - the greatest prime that might be found
//               if limitNum < 3    it is set to 3
//               if limitNum > 400  it is set to 400
//    
//    Mutants
//    
//    10 - forgets to increment the counter of found primes
//    11 - uses less than instead of less or equal to set used limitNum
// 
////////////////////////////////////////////////////////////////////////////
    
   int MUT_MutationTestDummy( int limitNum ) ;

#undef _MUTANT_CLASS

#endif 

////// End of definition module: MUT  Dummy module used for testing mutation test support ////

