////////////////////////////////////////////////////////////////////////////
//
//Implementation module: TMUT Test module of: MUT  Dummy module used for testing mutation test support
//
//Generated file:        TST_MUT.cpp
//
//Module identification letters: TMUT 
//Module identification number:  
//
//Repository name:      Talisman test framework test drivers
//Repository file name: Z:\TALISMAN\TEST\BSW\MAIN.BSW
//
//Owning organization:    LES/INF/PUC-Rio
//Project:                Talisman
//List of authors
//   Id      Name
//   avs  Arndt von Staa
//
//Software base change control
//    Version  Date         Authors      Description 
//    1        01/sep/2006  avs          development begun
//    1.1      22/jun/2012  avs          added the #include statement
//
////////////////////////////////////////////////////////////////////////////

   #include   <stdio.h>
   #include   <string.h>

   #define  _TST_MUT_OWN
   #include "TST_MUT.hpp"
   #undef   _TST_MUT_OWN

   #include    "readtest.hpp"

   //==========================================================================
   //----- Test command table -----
   //==========================================================================

   static const char Reset_CMD[ ]        = "=Reset" ;
   static const char MutationTest_CMD[ ] = "=MutationTest" ;


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: TMUT Specific test class
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: TMUT Specific test class

////////////////////////////////////////////////////////////////////////////
// 
// Method: TMUT !C Specific tester constructor

   TST_TestSpecific ::
             TST_TestSpecific( )
   {

   } // End of function: TMUT !C Specific tester constructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: TMUT !D Specific tester destructor

   TST_TestSpecific ::
             ~TST_TestSpecific( )
   {

   } // End of function: TMUT !D Specific tester destructor

////////////////////////////////////////////////////////////////////////////
// 
// Method: TMUT !P Perform specific test actions

   TST_tpRetCode TST_TestSpecific ::
             PerformSpecificTest( char * Command )
   {

      // Reset
      // AE: Reset

         if ( strcmp( Command , Reset_CMD ) == 0 )
         {

            return TST_RetCodeOK ;

         } // end selection: Reset

      // Test: MUT  &Mutation test dummy for testing mutation test support
      // AE: MutationTest   <limit> <idMutant>

         if ( strcmp( Command , MutationTest_CMD ) == 0 )
         {

            /***** Function
            int MUT_MutationTestDummy( int limitNum )
            *****/

            int  limit        = -1 ;
            int  expNumPrimes = -1 ;

            int  numRead  = TST_pReader->ReadCommandLine( "ii" ,
                      &limit , &expNumPrimes ) ;

            if ( numRead != 2 )
            {
               return TST_RetCodeParmError ;
            } /* if */

            return Compare( MUT_MutationTestDummy( limit ) ,
                      expNumPrimes , "Incorrect number of primes." ) ;

         } // end selection: Test: MUT  &Mutation test dummy for testing mutation test support

      return TST_RetCodeUnknown ;

   } // End of function: TMUT !P Perform specific test actions

//--- End of class: TMUT Specific test class

////// End of implementation module: TMUT Test module of: MUT  Dummy module used for testing mutation test support ////

