#ifndef _TYPE_ATTRS_ID_
   #define _TYPE_ATTRS_ID_

////////////////////////////////////////////////////////////////////////////
//
// Table file: KEY Key type category  identifications
//
// File:    C:\TALISMAN\REPOSIT\TABLES\TYPE_KEYS.INC
//
// This file is hand edited.
//
// Description
//    Contains the key type category computational identifiers 
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
//       1     27/nov/2013  avs          Development begun
//
// $. //////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
// 
// Data type: Key type category identifiers
//    Keys occupy the key field of a page element.
//    They correspond to the key part of a tuple <key , value>
//    This file contains the key type ids of all Talisman objects
//
//    Key types are hardwired into the Talisman system.
// 
// $. //////////////////////////////////////////////////////////////////

   enum KEY_tpKeyTypeIds 
   {

   //    The no key type corresponds to a key value of length 0 
   //    and that is not comparable
   //    Any attempt to compare or use a no key value will result in an exception.
   //    The to string operation is permitted though.
   
      KEY_NO_KEY_ID        = 1 ,

   //    The array key type expects keys that are strings of any length
   //    as long they fit into a page element
   //    Comparison uses converted strings, not sensible to case, dicritics and runs of blanks.
   //    Strings may contain any character, including zeroes.   
   //
   //    This is the root type of the key category

      KEY_ARRAY_ID         = 2 ,       
   
   //    The converted string key type expects keys that are strings of 
   //    any length as long as they fit into a page element
   //    Comparison uses non-converted strings, sensible to case, dicritics and runs of blanks.
   //    Strings may contain any character, including zeroes.

      KEY_CONV_ARRAY_ID    = 3 ,     
   
   //    The store entry key is the standard key of hyper-object attribute
   //    Elements.

      KEY_ATTRIBUTE_ID     = 4 ,

   //    The dictionary entry is the standard key of a hyper-object
   //    dictionary name element. This entry identifies the corresponding
   //    hyper-object in the object store. These keys compare hyper-object
   //    names in converted mode. I.e. not sensible to case, diacritics and blanks.

      KEY_DICTIONARY_ID = 5 ,

   //    An exact name key is a dictionary key which compares hyper-object names
   //    in non-converted mode. I.e. sensible to case, diacritics and blanks.
   
      KEY_EXACT_NAME_ID = 6 
   }  ;

// 
// $. //////////////////////////////////////////////////////////////////

#endif

////// End of table file: PAGES - Page value type identifications
