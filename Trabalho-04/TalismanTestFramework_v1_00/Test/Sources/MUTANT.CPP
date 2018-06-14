////////////////////////////////////////////////////////////////////////////
//
//Implementation module: MUT  Dummy module used for testing mutation test support
//
//Generated file:        MUTANT.cpp
//
//Module identification letters: MUT
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

   #define  _MUTANT_OWN
   #include "MUTANT.hpp"
   #undef   _MUTANT_OWN

   #include    <stdio.h>

   #ifdef _DEBUG
      #include    "dynspac.hpp"
   #endif

   #include    "gnrctest.hpp"
   #include    "counters.hpp"


//==========================================================================
//----- Exported global functions -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
// Function: MUT  &Mutation test dummy for testing mutation test support

   int MUT_MutationTestDummy( int limitNum )
   {

      // Hard coded
      // OBS: This block has been inserted to protect counter commands
      //      against editing

         // Set up compute prime numbers
            
            CNT_Count( "01 Start test" ) ;
            
            static const int dimPrimeNumbers = 200 ;
            static const int limitNumber     =  83 ;
            
            int vtPrimeNumbers[ dimPrimeNumbers ] ;
            
            vtPrimeNumbers[ 0 ] = 2 ;
            vtPrimeNumbers[ 1 ] = 3 ;
            vtPrimeNumbers[ 2 ] = 5 ;
            
            for( int i = 3 ; i < 200 ; i++ )
            {
               CNT_Count( "02 Fill prime array with garbage" ) ;
            
               vtPrimeNumbers[ i ] = 100 + i ;
            } /* for */
            
            int numPrimes       = 3 ;
            int maxNum          = limitNum ;
            
            // first mutant
            
            if ( TST_GetIdMutant( ) == 11 )
            {
               CNT_Count( "03 Do mutation 11" ) ;
               maxNum = limitNum - 1 ;
            } else
            {
               CNT_Count( "04 Do original 11" ) ;
               maxNum = limitNum ;
            } /* if */
            
            // protect indices
            
            if ( maxNum < 3 )
            {
               CNT_Count( "05 Set maxNum min /:-2" ) ;
               maxNum = 3 ;
            } /* if */
            
            if ( maxNum > limitNumber )
            {
               CNT_Count( "06 Set maxNum max /:-1" ) ;
               maxNum = limitNumber ;
            } /* if */

         // Compute primes that are less than maxNum
            
            int rem = 0 ;
            
            for( int num = 7 ; num <= maxNum ; num += 2 )
            {
               CNT_Count( "07 Generate number" ) ;
            
               for( int inxPrime = 0 ; inxPrime < numPrimes ; inxPrime ++ )
               {
                  CNT_Count( "08 Test divisible by existing prime" ) ;
            
                  rem = num % vtPrimeNumbers[ inxPrime ] ;
            
                  if ( rem == 0 )
                  {
                     CNT_Count( "09 Found divisible by existing prime" ) ;
                     break ;
                  } /* if */
               } /* for */
            
               if ( rem != 0 )
               {
                  CNT_Count( "10 Register new prime" ) ;
            
                  vtPrimeNumbers[ numPrimes ] = num ;
            
               // second mutant
                  if ( TST_GetIdMutant( ) == 10 )
                  {
                     CNT_Count( "11 Do mutation 10" ) ;
                     // do nothing
                  } else
                  {
                     CNT_Count( "12 Do original 10" ) ;
                     numPrimes ++ ;
                  } /* if */
            
               } /* if */
            } /* for */

         // Display result
            
            CNT_Count( "13 End" ) ;
            
         #if 0

         // Set up compute prime numbers

            static const int dimPrimeNumbers = 200 ;
            static const int limitNumber     =  83 ;

            int vtPrimeNumbers[ dimPrimeNumbers ] ;

            vtPrimeNumbers[ 0 ] = 2 ;
            vtPrimeNumbers[ 1 ] = 3 ;
            vtPrimeNumbers[ 2 ] = 5 ;

            for( int i = 3 ; i < 200 ; i++ )
            {
               vtPrimeNumbers[ i ] = 100 + i ;
            } /* for */

            int numPrimes       = 3 ;
            int maxNum          = limitNum ;

            // first mutant

            if ( TST_GetIdMutant( ) == 11 )
            {
               maxNum = limitNum - 1 ;
            } else
            {
               maxNum = limitNum ;
            } /* if */

            // protect indices

            if ( maxNum < 3 )
            {
               maxNum = 3 ;
            } /* if */

            if ( maxNum > limitNumber )
            {
               maxNum = limitNumber ;
            } /* if */

         // Compute primes that are less than maxNum

            int rem = 0 ;

            for( int num = 7 ; num <= maxNum ; num += 2 )
            {

               for( int inxPrime = 0 ; inxPrime < numPrimes ; inxPrime ++ )
               {

                  rem = num % vtPrimeNumbers[ inxPrime ] ;

                  if ( rem == 0 )
                  {
                     break ;
                  } /* if */
               } /* for */

               if ( rem != 0 )
               {
                  vtPrimeNumbers[ numPrimes ] = num ;

               // second mutant

                  if ( TST_GetIdMutant( ) == 10 )
                  {
                     // do nothing
                  } else
                  {
                     numPrimes ++ ;
                  } /* if */

               } /* if */
            } /* for */

         // Display result

            // Debugging help
            //
            // printf( "\n numPrimes %i \n " , numPrimes ) ;
            // for( int i = 0 ; i < numPrimes ; i++ )
            // {
            //    printf( "  %i" , vtPrimeNumbers[ i ] ) ;
            // } /* for */

            return numPrimes ;

         #endif

         return numPrimes ;

   } // End of function: MUT  &Mutation test dummy for testing mutation test support

////// End of implementation module: MUT  Dummy module used for testing mutation test support ////

