#ifndef _PROPERTY_MASKS_
   #define _PROPERTY_MASKS_

////////////////////////////////////////////////////////////////////////////
//
// File:    PropertyMasks.INC
//
// Description
//    Contains the property masks used by the definition base
//
// Ownership
//    Owning organization:    LES/DI/PUC-Rio
//    Project:                Talisman
//    Controller:             avs
//    List of all authors
//       avs - Arndt von Staa
//
// $. //////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// 
// Definition base objects may establish properties. For example,
// Talisman class descriptors may establish that all corresponding objects
// are "named" or anonymous. Furthermore may establish whether hyper-objects
// admit sub-objects or not.
//
// Software base objects may be indirect or not. When indirect the object
// contains attributes that determine the segment where the object's data 
// reside and what its ids are in this other segment
//
// $. //////////////////////////////////////////////////////////////////////

// Properties defined in the first byte of the property char array

const int PROP_DIM_PROPERTIES = 2 ;

// Properties of byte[ 0 ]

const int  PROP_0             = 0 ; 

const char PROP_IS_NAMED      = '\x01' ; // Objects of class must contain names
const char PROP_IS_CONVERTED  = '\x02' ; // Comparison mode of inxName dictionary names is converted
const char PROP_IS_SUBOBJECT  = '\x04' ; // Class is a sub-object class
const char PROP_HAS_SUBOBJECT = '\x08' ; // Class may have sub-objects class

// Properties of byte [ 1 ]

const int  PROP_1             = 1 ; 

#endif

//
// End of file: PropertyMasks.INC
//
