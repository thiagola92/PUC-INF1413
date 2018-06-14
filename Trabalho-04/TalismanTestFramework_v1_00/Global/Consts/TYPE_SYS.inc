#ifndef _SYS_IDS_
   #define _SYS_IDS_

////////////////////////////////////////////////////////////////////////////
//
// Definition file: System attribute field types
//
// File:    TYPE_SYS.INC
//
// Description
//    Contains the element type identifiers 
//
// Ownership
//    Owning organization:    LES/DI/PUC-Rio
//    Project:                Talisman
//    Controller:             avs
//    List of all authors
//       avs - Arndt von Staa
//
// Software base change control
//    Current version:        1
//    Acceptance date:        
//    Accepted by:            avs
//    Change History 
//    Version  Date         Autors       Description 
//       1     12/dec/2014  avs          Starting development
//
// $. //////////////////////////////////////////////////////////////////////

// ----------------------------------------------------------
// Category System types

////////////////////////////////////////////////////////////////////////
// 
// Data type: SYS Value type identifiers
//    System types are hardwired into the Talisman system.
//
// CAREFULL:
// Find type system given an id does not search, instead uses the id as index into
// the table. Hence type ids must start at 1 and form a dense sequence.
// Numbering is given only for documentation purpose.
//
// Type 0 is always IllegalType
// 
// $. //////////////////////////////////////////////////////////////////

   enum SYS_tpSystemTypeIds 
   {

   //    All system type attributes have the same system key field, the actual id 
   //    is contained in the inxAttribute field.
   //    The attribute type is defined as usual by the attribute field contained
   //    in the element.

      SYS_SYSTEM_ID =  1 ,

   //    System names imply attributyes of type name
   
      SYS_NAME_ID = 2 ,  

   //    System strings imply attributes of type string. Different from the 
   //    string root attribute, string attributes may be longer than a page.

      SYS_STRING_ID = 3 ,

   //    System texts imply attributes of type text
   
      SYS_TEXT_ID = 4 ,
   
   //    System relation imply attributes of type binary relation
      
      SYS_RELATION_ID = 5 ,

   //    Largest possible system key type value. May not be used to desgnite a type.

      SYS_MAX = 255

   }  ;

// 
// $. //////////////////////////////////////////////////////////////////

#endif

////// End of definition file: SYS - System type identifications
