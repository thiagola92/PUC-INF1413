#ifndef _SYS_ATTR_ID_
   #define _SYS_ATTR_ID_

////////////////////////////////////////////////////////////////////////////
//
// Definition file: System type attributes id attributes
//
// File:    TYPE_SYS_ATTR.INC
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
// Category page element types

////////////////////////////////////////////////////////////////////////
// 
// Data type: SYS type attribute id attributes
//    System type attributes are hardwired into the Talisman system.
//    each id attribute has a special meaning and maps onto an element attribute type
//    The correspondence table is stored in the fixed part of the definition base
//    The values must be BCD_Numbers, since they will be used in the attribute id field
//    of an attribute key.
//
// CAREFULL:
//    The ids do not correspond to types 
// 
// $. //////////////////////////////////////////////////////////////////
   
   char SYS_AttributeIdsBCD[ ][ BCD_DIM_MAX + 1 ] =
             {{ "\x60\0\0\0\0\x00" } ,   // 0 - not valid attribute id
              { "\x60\0\0\0\0\x01" } ,   // 1 - < hyper , sub >-object class identifier
              { "\x60\0\0\0\0\x02" }     // 2 - sub-object counter
             } ; // End of SYS_AttributeIdsBCD
// 
// $. //////////////////////////////////////////////////////////////////

   enum SYS_AttributeIds 
   { SYS_ATTR_ILLEGAL_ID        = 0 ,
     SYS_ATTR_CLASS_ID          = 1 ,
     SYS_ATTR_SUBOBJ_COUNTER_ID = 2 
   } ; // end of SYS_AttributeIds 

#endif

////// End of definition file: System type attributes id attributes
