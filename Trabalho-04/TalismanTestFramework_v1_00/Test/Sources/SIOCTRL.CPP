////////////////////////////////////////////////////////////////////////////
//
//Implementation module: SIO Sequential IO control
//
//Generated file:        SIOCTRL.cpp
//
//Module identification letters: SIO
//Module identification number:  0280
//
//Repository name:      IO Utilities
//Repository file name: Z:\TALISMAN\TEST\BSW\SIOCTRL.BSW
//
//Owning organization:    LES/INF/PUC-Rio
//Project:                Talisman
//List of authors
//   Id      Name
//   avs  - Arndt von Staa
//
//Software base change control
//    Version  Date         Authors      Description 
//    1     10/jul/2001  avs          Development begun
//
////////////////////////////////////////////////////////////////////////////

   #include    <string.h>

   #define  _SIOCTRL_OWN
   #include "SIOCTRL.hpp"
   #undef   _SIOCTRL_OWN

   #ifdef _DEBUG
      #include "counters.hpp"
      #include "dynspac.hpp"
   #endif

   #include    "message.hpp"
   #include    "msgstr.hpp"
   #include    "msgbin.hpp"
   #include    "exceptn.hpp"
   #include    "global.hpp"
   #include    "logger.hpp"
   #include    "verifier.hpp"

   #include    "str_sio.inc"

//==========================================================================
//----- Encapsulated data declarations -----
//==========================================================================

   static const char FILL_CHAR            = '\x096' ;

   static const char TRIM_CHAR[ ]         = " \n\r\t\x01A" ;
   static const char EOL_STRING[ ]        = "\n" ;

   static const char OVERFLOW_CONTROL[ ]  = "\x0CB\x069\x0FF" ;


//==========================================================================
//----- Class implementation -----
//==========================================================================

////////////////////////////////////////////////////////////////////////////
// 
// Implementation of class: Sequential file IO control
////////////////////////////////////////////////////////////////////////////

//==========================================================================
//----- Public method implementations -----
//==========================================================================

// Class: Sequential file IO control

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Construct empty sequential IO control

   SIO_SequentialIO :: SIO_SequentialIO( )
   {

      SetEmpty( ) ;

   } // End of function: SIO  !Construct empty sequential IO control

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Destruct sequential IO control

   SIO_SequentialIO :: ~SIO_SequentialIO( )
   {

      CloseSequentialFile( ) ;

   } // End of function: SIO  !Destruct sequential IO control

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Open sequential file

   SIO_tpRetCode SIO_SequentialIO ::
             OpenSequentialFile( char       * fileNameParm          ,
                                 const char * defaultExtensionParm  ,
                                 SIO_tpMode   openingModeParm ,
                                 const char * messagePrefixParm      )
   {

   #ifdef _DEBUG
      EXC_ASSERT( fileNameParm      != NULL ) ;
      EXC_ASSERT( fileNameParm[ 0 ] != 0    ) ;
      EXC_ASSERT( pSequentialFile   == NULL ) ;
      EXC_ASSERT( messagePrefixParm != NULL ) ;
   #endif

      // Build the name of the file

         MakeFileName( fileNameParm , defaultExtensionParm ) ;

      // Open the file

         openingMode = SIO_ModeIllegal ;

         // Open file to be read

            if ( openingModeParm == SIO_ModeRead )
            {

               openingMode     = SIO_ModeRead ;
               pSequentialFile = fopen( sequentialFileName.GetString( ) , "rt" ) ;

            } // end selection: Open file to be read

         // Open file to be written

            else if ( openingModeParm == SIO_ModeWrite )
            {

               openingMode     = SIO_ModeWrite ;
               pSequentialFile = fopen( sequentialFileName.GetString( ) , "wtc" ) ;

            } // end selection: Open file to be written

         // Open file to be appended

            else if ( openingModeParm == SIO_ModeAppend )
            {

               openingMode     = SIO_ModeWrite ;
               pSequentialFile = fopen( sequentialFileName.GetString( ) , "atc" ) ;

            } // end selection: Open file to be appended

         // Handle illegal opening mode

            else
            {

               EXC_ENFORCE( openingMode != SIO_ModeIllegal ) ;

            } // end selection: Handle illegal opening mode

         // Control opening of files

            if ( pSequentialFile == NULL )
            {
               MSG_Message * pMsg = new MSG_Message( SIO_ErrorFileOpen ) ;
               pMsg->AddItem( 0 , new MSG_ItemString( messagePrefixParm  )) ;
               pMsg->AddItem( 1 , new MSG_ItemString( sequentialFileName )) ;
               VER_DisplayMessage( VER_MessageTypeError , pMsg ) ;
               delete pMsg ;

               SetEmpty( ) ;
               return SIO_RetCodeErrorOpen ;
            } /* if */

            return SIO_RetCodeOK ;

   } // End of function: SIO  !Open sequential file

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Close sequential file

   void SIO_SequentialIO :: CloseSequentialFile( )
   {

      if ( pSequentialFile != NULL )
      {
         fclose( pSequentialFile ) ;
      } /* if */
      SetEmpty( ) ;

   } // End of function: SIO  !Close sequential file

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Verify if file exists for reading

   bool SIO_SequentialIO ::
             ExistsFile(       char * fileNameParm ,
                         const char * defaultExtensionParm )
   {

   #ifdef _DEBUG
      EXC_ASSERT( fileNameParm != NULL ) ;
   #endif

      MakeFileName( fileNameParm , defaultExtensionParm ) ;
      FILE * pArq = fopen( sequentialFileName.GetString( ) , "rt" ) ;
      if ( pArq != NULL )
      {
         fclose( pArq ) ;
         return true ;
      } /* if */

      return false ;

   } // End of function: SIO  !Verify if file exists for reading

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Delete file

   bool SIO_SequentialIO ::
             DeleteFile(       char * fileNameParm ,
                         const char * defaultExtensionParm )
   {

   #ifdef _DEBUG
      EXC_ASSERT( fileNameParm != NULL ) ;
   #endif

      MakeFileName( fileNameParm , defaultExtensionParm ) ;
      return remove( sequentialFileName.GetString( )) == 0 ;

   } // End of function: SIO  !Delete file

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Read line

   int SIO_SequentialIO :: ReadLine( bool trimBefore , bool trimEnd )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSequentialFile != NULL ) ;
      EXC_ASSERT( ( openingMode & SIO_ModeRead ) != 0 ) ;
      EXC_ASSERT( memcmp( overflowControl , OVERFLOW_CONTROL , DIM_OVERFLOW_CONTROL ) == 0 ) ;
   #endif

      // Read the line

         sizBuffer    = 0 ;
         readBuffer[ sizBuffer ] = 0 ;

         if ( feof( pSequentialFile )
           || ( openingMode & SIO_ModeEOF ) )
         {
            openingMode |= SIO_ModeEOF ;
            return -1 ;
         } /* if */

         char * pBuff = fgets( readBuffer ,
                               SIO_DIM_READ_BUFFER - 1 , pSequentialFile ) ;

         if ( pBuff != NULL )
         {
            lineCount ++ ;
         } else
         {
            if ( feof( pSequentialFile ))
            {
               openingMode |= SIO_ModeEOF ;
               return -1 ;
            } /* if */

            MSG_Message * pMsg = new MSG_Message( SIO_ErrorRead ) ;
            pMsg->AddItem( 0 , new MSG_ItemString( &sequentialFileName )) ;
            EXC_PLATFORM( pMsg , -1 , TAL_NullIdHelp ) ;
         } /* if */

         sizBuffer = strlen( readBuffer ) ;

      // Trim at end

         if ( trimEnd)
         {
            for ( ; sizBuffer >= 0 ; sizBuffer-- )
            {
               if ( strchr( TRIM_CHAR , readBuffer[ sizBuffer - 1 ] ) == NULL )
               {
                  break ;
               } /* if */
            } /* for */
            if ( sizBuffer < 0 )
            {
               sizBuffer = 0 ;
            } /* if */
         } /* if */

         readBuffer[ sizBuffer ] = 0 ;

         if ( sizBuffer == 0 )
         {
            return 0 ;
         } /* if */

      // Trim at beginning
      // AE: readBuffer contains at least one non blank character

         if ( trimBefore )
         {
            int start ;
            for ( start = 0 ; start < sizBuffer ; start ++ )
            {
               if ( strchr( TRIM_CHAR , readBuffer[ start ] ) == NULL )
               {
                  break ;
               } /* if */
            } /* for */

            if ( start > 0 )
            {
               memmove( readBuffer , readBuffer + start , sizBuffer + 1  - start ) ;
               sizBuffer -= start ;
            } /* if */
         } /* if */

         readBuffer[ sizBuffer ] = 0 ;

      return sizBuffer ;

   } // End of function: SIO  !Read line

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Write string object

   void SIO_SequentialIO :: Write( STR_String * pStringParm  ,
                                    bool          NewLineParm  )
   {

   #ifdef _DEBUG
      EXC_ASSERT( VerifySeqIO( )) ;
      EXC_ASSERT( ( openingMode & SIO_ModeWrite ) != 0 ) ;
      EXC_ASSERT( pStringParm != NULL ) ;
   #endif

      Write( pStringParm->GetString( ) , NewLineParm ) ;

   } // End of function: SIO  !Write string object

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Write character string constant

   void SIO_SequentialIO :: Write( char * pStringParm  ,
                                   bool   NewLineParm  )
   {

   #ifdef _DEBUG
      EXC_ASSERT( VerifySeqIO( )) ;
      EXC_ASSERT( ( openingMode & SIO_ModeWrite ) != 0 ) ;
      EXC_ASSERT( pStringParm != NULL ) ;
   #endif

      if ( NewLineParm )
      {
         DoWrite( EOL_STRING ) ;
         lineCount ++ ;
      } /* if */

      DoWrite( pStringParm ) ;

   } // End of function: SIO  !Write character string constant

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Get line count

   int SIO_SequentialIO :: GetLineCount( )
   {

      return lineCount ;

   } // End of function: SIO  !Get line count

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Get line read size

   int SIO_SequentialIO :: GetLineReadSize( )
   {

      return sizBuffer ;

   } // End of function: SIO  !Get line read size

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Get read buffer pointer

   char * SIO_SequentialIO :: GetReadBufferPointer( )
   {

      if ( pSequentialFile != NULL )
      {
         return readBuffer ;
      } /* if */
      return NULL ;

   } // End of function: SIO  !Get read buffer pointer

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Get file name

   STR_String * SIO_SequentialIO :: GetFileName( )
   {

      return new STR_String( sequentialFileName ) ;

   } // End of function: SIO  !Get file name

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Get file pointer

   FILE * SIO_SequentialIO :: GetFilePointer( )
   {

      return pSequentialFile ;

   } // End of function: SIO  !Get file pointer

////////////////////////////////////////////////////////////////////////////
// 
// Method: SIO  !Verify sequential IO object

   bool SIO_SequentialIO :: VerifySeqIO( )
   {

      // Verify inexistent file descriptor

         if ( pSequentialFile == NULL )
         {

            if ( ( sequentialFileName.GetLength( ) <= 0 )
              && ( openingMode == SIO_ModeNoFile ) )
            {
               return true ;
            } /* if */

            return false ;

         } // end selection: Verify inexistent file descriptor

      // Verify non empty SIO object

         if ( (  sequentialFileName.GetLength( ) <= 0 )
           || (  openingMode == SIO_ModeNoFile )
           || (( openingMode & SIO_ModeIllegal ) != 0 ))
         {
            return false ;
         } /* if */

      // Verify read buffer

         if ( ( readBuffer[ SIO_DIM_READ_BUFFER - 1 ] != 0 )
           || ( memcmp( overflowControl , OVERFLOW_CONTROL , DIM_OVERFLOW_CONTROL ) != 0 ))
         {
            return false ;
         } /* if */

         if ( ( sizBuffer <  0 )
           || ( sizBuffer >= SIO_DIM_READ_BUFFER ))
         {
            return false ;
         } /* if */

      // Verify open for reading

         if ( ( openingMode & SIO_ModeRead ) != 0 )
         {

            if ( (( openingMode & SIO_ModeWrite  ) != 0 )
              || (( openingMode & SIO_ModeAppend ) != 0 ))
            {
               return false ;
            } /* if */

         } // end selection: Verify open for reading

      // Verify opening for writing

         else if ( ( openingMode & SIO_ModeWrite ) != 0 )
         {

            if ( (( openingMode & SIO_ModeRead   ) != 0 )
              || (( openingMode & SIO_ModeEOF    ) != 0 )
              || (( openingMode & SIO_ModeAppend ) != 0 ))
            {
               return false ;
            } /* if */

            if ( sizBuffer != 0  )
            {
               return false ;
            } /* if */

         } // end selection: Verify opening for writing

      // Verify opening for appending

         else if ( ( openingMode & SIO_ModeAppend ) != 0 )
         {

            if ( (( openingMode & SIO_ModeRead   ) != 0 )
              || (( openingMode & SIO_ModeEOF    ) != 0 )
              || (( openingMode & SIO_ModeWrite  ) != 0 ))
            {
               return false ;
            } /* if */

            if ( sizBuffer != 0  )
            {
               return false ;
            } /* if */

         } // end selection: Verify opening for appending

      // Illegal opening mode

         else
         {

               return false ;

         } // end selection: Illegal opening mode

      return true ;

   } // End of function: SIO  !Verify sequential IO object

//==========================================================================
//----- Private method implementations -----
//==========================================================================

// Class: Sequential file IO control

////////////////////////////////////////////////////////////////////////////
// 
//  Method: SIO  $Do write
// 
////////////////////////////////////////////////////////////////////////////

   void SIO_SequentialIO ::
             DoWrite( const char * pCharString )
   {

      int Wrote = fputs( pCharString , pSequentialFile ) ;
      if ( Wrote < 0 )
      {
         MSG_Message * pMsg = new MSG_Message( SIO_ErrorWrite ) ;
         pMsg->AddItem( 0 , new MSG_ItemString( sequentialFileName )) ;
         EXC_PLATFORM( pMsg , -1 , TAL_NullIdHelp ) ;
      } /* if */

   } // End of function: SIO  $Do write

////////////////////////////////////////////////////////////////////////////
// 
//  Method: SIO  $Set file control to empty
//    Sets all attributes to empty, despite of its possible contents.
// 
////////////////////////////////////////////////////////////////////////////

   void SIO_SequentialIO :: SetEmpty( )
   {

      openingMode        = SIO_ModeNoFile ;
      pSequentialFile    = NULL ;
      sequentialFileName = ""   ;
      lineCount          = 0    ;

      memcpy( overflowControl , OVERFLOW_CONTROL , DIM_OVERFLOW_CONTROL ) ;
      memset( readBuffer , 0 , SIO_DIM_READ_BUFFER ) ;
      sizBuffer          = 0    ;

   } // End of function: SIO  $Set file control to empty

////////////////////////////////////////////////////////////////////////////
// 
//  Method: SIO  $Make a file name
// 
////////////////////////////////////////////////////////////////////////////

   void SIO_SequentialIO ::
             MakeFileName(       char * FileNameParm ,
                           const char * DefaultExtensionParm )
   {

      sequentialFileName = FileNameParm ;
      if ( SIO_GetFileType( FileNameParm ) == NULL )
      {
         if ( DefaultExtensionParm != NULL )
         {
            if ( DefaultExtensionParm[ 0 ] != 0 )
            {
               sequentialFileName.Append( TAL_ExtensionSepString ) ;
               sequentialFileName.Append( DefaultExtensionParm ) ;
            } /* if */
         } /* if */
      } /* if */

   } // End of function: SIO  $Make a file name

//--- End of class: Sequential file IO control


//==========================================================================
//----- Exported global functions -----
//==========================================================================


////////////////////////////////////////////////////////////////////////////
// 
// Function: SIO  &Get file type

   char * SIO_GetFileType( char * FileNameParm )
   {

      for( int i = strlen( FileNameParm ) - 1 ; i >= 0  ; i -- )
      {
         if ( FileNameParm[ i ] == TAL_ExtensionSep )
         {
            return FileNameParm + i + 1 ;
         } /* if */
         if ( ( FileNameParm[ i ] == TAL_DirectorySep )
           || ( FileNameParm[ i ] == TAL_DriveSep     ))
         {
            return NULL ;
         } /* if */
      } /* for */
      return NULL ;

   } // End of function: SIO  &Get file type

////////////////////////////////////////////////////////////////////////////
// 
// Function: SIO  &Copy file

   bool SIO_CopyFile(       char * SourceFileName ,
                      const char * SourceFileExtension ,
                            char * DestinationFileName ,
                      const char * DestinationFileExtension )
   {

      // Open files to copy

         STR_String StrSource( SIO_PrefixCopySource ) ;
         STR_String StrDest(   SIO_PrefixCopyDest   ) ;

         SIO_SequentialIO SourceFile;
         if ( SourceFile.OpenSequentialFile( SourceFileName , SourceFileExtension,
                   SIO_ModeRead , StrSource.GetString( ) ) != SIO_RetCodeOK )
         {
            return false ;
         } /* if */

         char * pReadBuffer = SourceFile.GetReadBufferPointer( ) ;
         SIO_SequentialIO DestinationFile ;
         if ( DestinationFile.OpenSequentialFile( DestinationFileName , DestinationFileExtension,
                   SIO_ModeWrite , StrDest.GetString( ) ) != SIO_RetCodeOK )
         {
            return false ;
         } /* if */

      // Copy the file

         try
         {
            int numRead = SourceFile.ReadLine( false , false ) ;
            while ( numRead >= 0 )
            {
               DestinationFile.Write( pReadBuffer , false ) ;
               numRead = SourceFile.ReadLine( false , false ) ;
            } /* while */
         } // end try
         catch ( EXC_Exception * pExc )
         {
            GLB_GetGlobal( )->GetEventLogger( )->Log( pExc->ToString( )) ;
            delete pExc ;
            return false ;
         } // end catch

         return true ;

   } // End of function: SIO  &Copy file

////////////////////////////////////////////////////////////////////////////
// 
// Function: SIO  &Compare file

   bool SIO_CompareFile( char * A_fileName ,
                         char * A_fileExtension ,
                         char * B_fileName ,
                         char * B_fileExtension ,
                         int    skipLines )
   {

      // Open files to compare

         STR_String str( SIO_PrefixCompare ) ;

         SIO_SequentialIO file_A ;
         if ( file_A.OpenSequentialFile( A_fileName , A_fileExtension,
                   SIO_ModeRead , str.GetString( ) ) != SIO_RetCodeOK )
         {
            return false ;
         } /* if */
         char * pReadBuffer_A = file_A.GetReadBufferPointer( ) ;

         SIO_SequentialIO file_B ;
         if ( file_B.OpenSequentialFile( B_fileName , B_fileExtension,
                   SIO_ModeRead , str.GetString( ) ) != SIO_RetCodeOK )
         {
            return false ;
         } /* if */
         char * pReadBuffer_B = file_B.GetReadBufferPointer( ) ;

      // Special envelope

         struct PointerEnvelope
         {
            MSG_Message * pMsg ;
            STR_String  * pStrA ;
            STR_String  * pStrB ;

            PointerEnvelope( )
            {
               pMsg = NULL ;
               pStrA = NULL ;
               pStrB = NULL ;
            }

           ~PointerEnvelope( )
            {
               delete pMsg ;
               delete pStrA ;
               delete pStrB ;
            }

            void Clear( )
            {
               delete pMsg ;
               delete pStrA ;
               delete pStrB ;
               pMsg = NULL ;
               pStrA = NULL ;
               pStrB = NULL ;
            }
         } envelope ; /* struct */

      // Compare the files

         int  numRead_A   = 0 ;
         int  numRead_B   = 0 ;
         int  counter     = 0 ;
         int  countErrors = 0 ;

         pReadBuffer_A[ 0 ] = 0 ;
         pReadBuffer_B[ 0 ] = 0 ;

         envelope.Clear( ) ;
         envelope.pMsg  = new MSG_Message( SIO_CompareFiles ) ;
         envelope.pStrA = file_A.GetFileName( ) ;
         envelope.pMsg->AddItem( 1 , new MSG_ItemString( envelope.pStrA )) ;
         envelope.pStrB = file_B.GetFileName( ) ;
         envelope.pMsg->AddItem( 2 , new MSG_ItemString( envelope.pStrB )) ;

         VER_DisplayMessage( VER_MessageTypeInfo , envelope.pMsg ) ;

         while ( counter >= 0 ) {

         // Read the lines

            try
            {
               numRead_A = file_A.ReadLine( false , true ) ;
            } // end try
            catch( EXC_Exception * pExc )
            {
               GLB_GetGlobal( )->GetEventLogger( )->Log( pExc->ToString( )) ;
               delete pExc ;
               return false ;
            } // end try catch

            try
            {
               numRead_B = file_B.ReadLine( false , true ) ;
            } // end try
            catch( EXC_Exception * pExc )
            {
               GLB_GetGlobal( )->GetEventLogger( )->Log( pExc->ToString( )) ;
               delete pExc ;
               return false ;
            } // end try catch

            if ( ( numRead_A < 0 )
              || ( numRead_B < 0 ))
            {
               break ;
            } /* if */

            counter ++ ;

         // Compare the lines

            if ( ( numRead_A != numRead_B )
              || ( strcmp( pReadBuffer_A , pReadBuffer_B ) != 0 ))
            {

               if ( counter > skipLines )
               {
                  countErrors ++ ;

                  envelope.Clear( ) ;
                  envelope.pMsg = new MSG_Message( SIO_ErrorCompare ) ;

                  envelope.pMsg->AddItem( 0 , new MSG_ItemInteger( counter )) ;
                  VER_DisplayMessage( VER_MessageTypeError , envelope.pMsg ) ;

                  if ( countErrors > SIO_MAX_ERRORS )
                  {
                     envelope.Clear( ) ;
                     envelope.pMsg = new MSG_Message( SIO_ErrorLimit ) ;

                     envelope.pMsg->AddItem( 0 , new MSG_ItemInteger( countErrors )) ;
                     VER_DisplayMessage( VER_MessageTypeError , envelope.pMsg ) ;

                     return false ;
                  } /* if */
               } else
               {
                  envelope.Clear( ) ;
                  envelope.pMsg = new MSG_Message( SIO_ErrorAccepted ) ;

                  envelope.pMsg->AddItem( 0 , new MSG_ItemInteger( counter )) ;
                  VER_DisplayMessage( VER_MessageTypeInfo , envelope.pMsg ) ;
               } /* if */

            } // end selection: Compare the lines

         } // end repetition: Compare the files

      // Close the files to compare

         if ( ( numRead_A == -1 )
           && ( numRead_B == -1 ))
         {
            return true ;
         } /* if */

         delete envelope.pMsg ;
         envelope.pMsg = new MSG_Message( SIO_ErrorLength ) ;

         if ( numRead_A < 0 )
         {
            envelope.pStrA = file_A.GetFileName( ) ;
            envelope.pMsg->AddItem( 2 , new MSG_ItemString( envelope.pStrA )) ;
            envelope.pStrB = file_B.GetFileName( ) ;
            envelope.pMsg->AddItem( 1 , new MSG_ItemString( envelope.pStrB )) ;
         } else
         {
            envelope.pStrA = file_A.GetFileName( ) ;
            envelope.pMsg->AddItem( 1 , new MSG_ItemString( envelope.pStrA )) ;
            envelope.pStrB = file_B.GetFileName( ) ;
            envelope.pMsg->AddItem( 2 , new MSG_ItemString( envelope.pStrB )) ;
         } /* if */

         VER_DisplayMessage( VER_MessageTypeError , envelope.pMsg ) ;

         return false ;

   } // End of function: SIO  &Compare file

////// End of implementation module: SIO Sequential IO control ////

