#ifndef _ATTRS_ID_
   #define _ATTRS_ID_

////////////////////////////////////////////////////////////////////////////
//
// Definition file: Page type identifications
//
// File:    TYPE_ELEMS.INC
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
//       1     04/feb/2010  avs          Complete rewrite
//
// $. //////////////////////////////////////////////////////////////////////

// ----------------------------------------------------------
// Category page element types

////////////////////////////////////////////////////////////////////////
// 
// Data type: ELEM Value type identifiers
//    Attribute types are hardwired into the Talisman system.
//
// CAREFULL:
// Find type key given an id does not search, instead uses the id as index into
// the table. Hence type ids must start at 1 and form a dense sequence.
// 
// $. //////////////////////////////////////////////////////////////////

   enum ATTR_tpAttributeTypeIds 
   {
   //    The root attribute type establishes the attribute type inheritance root
   //    Every hyper-object must belong to some known hyper-class.
   //    Hyper-classes are defined in the definition base.
   //    Every hyper-object must contain exactly one root attribute that tells, among others
   //    to what hyper-object class it belongs.

      ATTR_ROOT_ID =  1 ,

   //    Child page references are used in btrees.
   //    They contain solely a BCD number refering to the child page 
   
      ATTR_CHILD_PAGE_ID = 2 ,  

   //    Btree idPags attribute contain the root and data list idPags of a ghiven Btree

      ATTR_BTREE_HEAD_ID = 3 ,

   //    Dictionary attributes refer to <hyper , sub>-objects contained
   //    in the data list of an object store.

      ATTR_OBJECT_REF_ID = 4 ,
   
   //    All hyper-objects must contain a hyper-object descriptor attribute.
   //    This is always the very first attribute of the hyper-object in the btree data list
   //    This attribute contains the idClass of the hyper-object as well as several 
   //    property bits that control access to the hyper-object. These properties
   //    must not be related to meta-environment properties
   
      ATTR_OBJECT_CLASS_ID = 5 ,

   //    Hyper-objects may contain sub-objects. Whenever a new sub-object is created,
   //    a new sub-object key must be created. This attribute identifies the sub-object
   //    counter used to create new sub-object keys.

      ATTR_SUB_OBJ_COUNT_ID = 6 ,
   
   //    Hyper-object and sub-object name attributes.
   //    These attributes are strings, hence inherit almost all methods form ATTR_RootAttribute

      ATTR_OBJ_NAME_ID = 7 ,
   
   //    Hyper and sub-objects may contain a variety of strings.
   //    Strings may contain any character, including zeroes.
   //    Strings may be of any size. The system takes care about strings that
   //    are longer than a page.
   //    Strings may be short or long. A short string fits in a page. A long string
   //    is stored as a list of 1 or more fragments, the concatenation of these
   //    fragments make up the string.

      ATTR_STRING_ID = 8 ,

   //    Type text
   //    Texts are sequences of strings, each of which terminated by an
   //    end of line sequence, i.e. each line corresponds to a paragraph.
   //    Any character is valid in a text, even null characters.
   //    Texts may be short - fit into a page - or long require one or more pages
   
      ATTR_TEXT_ID ,

   //    Type record
   //    Records are an assembly of 1 or more fields.
   //    Records are used to store non textual data, such as integers and dates.
   //    Fields are typed.
   //    Usual types are number, float, date, small fixed size strings.
   //    Records must fit in a page.
   //    The corresponding record descriptor is identified by the idAttr field.
   //    Record descriptors contain the names, types and sizes of each field.

      ATTR_RECORD_ID ,

   //    Type binary relation
   //    Bynary relations establish mappings from a given hyper-object
   //    onto one or more other hyper-objects.
   //    Both source and target hyper-objects are instances of specific classes
   //    The definition base determines which classes are involved in a specific relation.
   //    All binary relations may be n to n, however rules may restrict the cardinality
   //    and ordering
   //    Binary relations may be auto-relations, such as "decompose" and "compose"
   //    Every binary relation corresponds to an inverse binary relation, inverting
   //    target and source types
  
      ATTR_BIN_REL_ID
   
   // Type ternary relation


   // Type collection


   // Type relational text


   // Type abstract syntax graph

   //    Remote to attributes link the hyper-object to a hyper-object contained in a 
   //    different segment. That this link exists must be defined in the hyper-object
   //    property field
   
   //    ATTR_REMOTE_TO_ID ,

   //    Remote from attributes link the hyper-object to one or more hyper-object contained 
   //    other segments and that are defined by the current hyper-object
   //    That this link exists must be defined in the hyper-object property field.
   //    There must be an entry in the from attribute for every hyper-object that
   //    contains a to attribute.
   
   //    ATTR_REMOTE_FROM_ID ,

   }  ;

// 
// $. //////////////////////////////////////////////////////////////////

#endif

////// End of definition file: PAGES - Page value type identifications
