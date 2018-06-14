#ifndef _TYPE_PAGES_ID_
   #define _TYPE_PAGES_ID_

////////////////////////////////////////////////////////////////////////////
//
// Table file: PAGES  Page type category  identifications
//
// File:    TYPE_PAGES.inc
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

////////////////////////////////////////////////////////////////////////////
//
// Page value type definitions
//
// Description
//    This enumeration identifies all known page types.
//
// $. //////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
// 
// Data type: PAGE Value type identifiers
// 
// $. //////////////////////////////////////////////////////////////////

   enum PAGES_tpPageTypeIds 
   {

   //////////////////////////////////////////////////////////
   // Simple page
   // Pages of this type correspond to class PG_CPage

      PAGE_SimplePage          = 1 ,

   //////////////////////////////////////////////////////////
   // Simple segment root page
   // Pages of this type correspond to class PG_CSegmentRoot

      PAGE_SegmentRootPage     = 2 ,

   //////////////////////////////////////////////////////////
   // Free page list page
   // Pages of this type correspond to class PG_CFreePage

      PAGE_FreeListPage        = 3 ,

   //////////////////////////////////////////////////////////
   // Base list page
   // Pages of this type correspond to class LSP_CListPage
   // Base lists are not ordered. Search is performed sequentially

      PAGE_BaseListPage        = 4 ,

   //////////////////////////////////////////////////////////
   // Ordered list page
   // Pages of this type correspond to class LSO_COrderedList
   // Search is performed sequentially over pages and 
   // binary within pages

      PAGE_OrderedListPage     = 5 ,

   //////////////////////////////////////////////////////////
   // Btree page
   // Pages of this type correspond to class BTR_CBtree
   // These pages implement the structural pages of a btree
   // Data pages are ordered list pages
   // Btrees superimpose a search structure on orderd lists

      PAGE_BtreePage               = 6 ,

   //////////////////////////////////////////////////////////
   // Object store root page
   // Pages of this type establish the standard anchor of base pages
   // These pages implement a base segment root

      PAGE_ObjectStoreRootPage     = 7 ,

   //////////////////////////////////////////////////////////
   // Version control page
   // Pages of this type contain the version control structure
   // of a given segment

      PAGE_ObjectStoreVersionPage  = 8 , 

   //////////////////////////////////////////////////////////
   // Software base root pages
   // Pages of this type contain the anchor of a software project
   // Software projects may expand over one or more segments

      PAGE_SoftwareBaseRootPage    =  9 ,

   //////////////////////////////////////////////////////////
   // Knowledge base root pages
   // Pages of this type contain the anchor a specific knowledge base
   // 

      PAGE_KnowledgeBaseRootPage   = 10 ,
   //////////////////////////////////////////////////////////
   // Software base root pages
   // Pages of this type contain the anchor of temporary scratch bases
   // 

      PAGE_ScratchBaseRootPage     = 11

   }  ;

// 
// $. //////////////////////////////////////////////////////////////////

#endif

////// End of Table file: PAGES  Page type category  identifications

