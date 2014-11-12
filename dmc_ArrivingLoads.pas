unit dmc_ArrivingLoads;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable,
  Messages, Controls, Forms,  Dialogs, SqlTimSt, Variants, vidatype,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client ;

type

 TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3) of object;

  TdmArrivingLoads = class(TDataModule)
    dsrcArrivingLoads: TDataSource;
    dsrcArrivingPackages: TDataSource;
    dsConfirmed_Load: TDataSource;
    ds_LoadPackages: TDataSource;
    ds_verkLaster: TDataSource;
    ds_VerkLastPkgs: TDataSource;
    ds_LoadRow: TDataSource;
    dsrcPortArrivingLoads: TDataSource;
    dsrcPortArrivingPackages: TDataSource;
    ds_PksByInventoryPlace: TDataSource;
    dsUserProp: TDataSource;
    ds_LIP: TDataSource;
    ds_PIP: TDataSource;
    cdsArrivingLoads: TFDQuery;
    cdsArrivingLoadsLoadAR: TIntegerField;
    cdsArrivingLoadsCountryCode: TStringField;
    cdsArrivingLoadsLO: TIntegerField;
    cdsArrivingLoadsLOADNO: TIntegerField;
    cdsArrivingLoadsFS: TStringField;
    cdsArrivingLoadsLOADEDDATE: TSQLTimeStampField;
    cdsArrivingLoadsLOAD_STATUS: TIntegerField;
    cdsArrivingLoadsLOAD_ID: TStringField;
    cdsArrivingLoadsSUPPLIER: TStringField;
    cdsArrivingLoadsSUPPCODE: TStringField;
    cdsArrivingLoadsDESTINATION: TStringField;
    cdsArrivingLoadsORDER_NO: TStringField;
    cdsArrivingLoadsOBJECTTYPE: TIntegerField;
    cdsArrivingLoadsINVPOINTNO: TIntegerField;
    cdsArrivingLoadsINVPOINTNAME: TStringField;
    cdsArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsArrivingLoadsCUSTOMER: TStringField;
    cdsArrivingLoadsSUPPLIERNO: TIntegerField;
    cdsArrivingLoadsAVROP_CUSTOMERNO: TIntegerField;
    cdsArrivingLoadsAVROP_CUSTOMER: TStringField;
    cdsArrivingLoadsOBJECTTYPE_1: TIntegerField;
    cdsArrivingLoadsINITIALS: TStringField;
    cdsArrivingLoadsORDERTYPE: TIntegerField;
    cdsArrivingLoadsTYP: TStringField;
    cdsArrivingLoadsLOTYP: TStringField;
    cdsArrivingLoadsLOINI: TStringField;
    cdsArrivingLoadsLASTST�LLE: TStringField;
    cdsArrivingLoadsLipNo: TIntegerField;
    cdsArrivingLoadsTrading: TIntegerField;
    cdsArrivingLoadsAR_LoadNo: TIntegerField;
    cdsArrivingPackages: TFDQuery;
    cdsArrivingPackagesLoadNo: TIntegerField;
    cdsArrivingPackagesLO: TIntegerField;
    cdsArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsArrivingPackagesSUPPLIERCODE: TStringField;
    cdsArrivingPackagesM3_NET: TFloatField;
    cdsArrivingPackagesM3_NOM: TFloatField;
    cdsArrivingPackagesMFBM: TFloatField;
    cdsArrivingPackagesPCS: TIntegerField;
    cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsArrivingPackagesPACKAGEOK: TIntegerField;
    cdsArrivingPackagesPACKAGE_LOG: TStringField;
    cdsArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsArrivingPackagesBC: TStringField;
    cdsArrivingPackagesGS: TStringField;
    cdsConfirmed_Load: TFDQuery;
    cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField;
    cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadNewLoadNo: TIntegerField;
    cdsConfirmed_LoadNewShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadDateCreated: TSQLTimeStampField;
    cdsConfirmed_LoadCreatedUser: TIntegerField;
    cdsConfirmed_LoadModifiedUser: TIntegerField;
    cds_verkLaster: TFDQuery;
    cds_verkLasterLASTNR: TIntegerField;
    cds_verkLasterFS: TStringField;
    cds_verkLasterDATUM: TSQLTimeStampField;
    cds_verkLasterSTATUS: TIntegerField;
    cds_verkLasterLOAD_ID: TStringField;
    cds_verkLasterINT_DEST: TStringField;
    cds_verkLasterLASTSTALLE: TStringField;
    cds_verkLasterVERK: TStringField;
    cds_verkLasterINT_KUND: TStringField;
    cds_VerkLastPkgs: TFDQuery;
    cds_VerkLastPkgsLoadNo: TIntegerField;
    cds_VerkLastPkgsLO: TIntegerField;
    cds_VerkLastPkgsPACKAGE_NO: TIntegerField;
    cds_VerkLastPkgsSUPPLIERCODE: TStringField;
    cds_VerkLastPkgsM3_NET: TFloatField;
    cds_VerkLastPkgsM3_NOM: TFloatField;
    cds_VerkLastPkgsMFBM: TFloatField;
    cds_VerkLastPkgsPRODUCT_DESCRIPTION: TStringField;
    cds_VerkLastPkgsPCS: TIntegerField;
    cds_VerkLastPkgsPACKAGEOK: TIntegerField;
    cds_VerkLastPkgsPACKAGE_LOG: TStringField;
    cds_VerkLastPkgsLOAD_DETAILNO: TIntegerField;
    cds_VerkLastPkgsPSCPERLENGTH: TStringField;
    cdsOneLoad: TFDQuery;
    cdsOneLoadLoadNo: TIntegerField;
    cdsOneLoadSupplierNo: TIntegerField;
    cdsOneLoadLoadedDate: TSQLTimeStampField;
    cdsOneLoadSenderLoadStatus: TIntegerField;
    cdsOneLoadLoadID: TStringField;
    cdsOneLoadMsgToShipper: TMemoField;
    cdsOneLoadInternalNote: TMemoField;
    cdsOneLoadPackageEntryOption: TIntegerField;
    cdsOneLoadLocalShippingCompanyNo: TIntegerField;
    cdsOneLoadLocalLoadingLocation: TIntegerField;
    cdsOneLoadLocalDestinationNo: TIntegerField;
    cdsOneLoadCreatedUser: TIntegerField;
    cdsOneLoadModifiedUser: TIntegerField;
    cdsOneLoadDateCreated: TSQLTimeStampField;
    cdsOneLoadFS: TStringField;
    cdsOneLoadOriginalSupplierNo: TIntegerField;
    cdsOneLoadCustomerNo: TIntegerField;
    cdsOneLoadNotering: TMemoField;
    cdsOneLoadLoadOK: TIntegerField;
    cdsOneLoadLoadAR: TIntegerField;
    cdsOneLoadShippingPlanNo: TIntegerField;
    cdsOneLoadPIPNo: TIntegerField;
    cdsOneLoadLIPNo: TIntegerField;
    cdsCurrentLoadDetails: TFDQuery;
    sq_UpdatePkgStatus: TFDQuery;
    cds_Confirmed_Pkg_Log: TFDQuery;
    cds_Confirmed_Pkg_LogPackageNo: TIntegerField;
    cds_Confirmed_Pkg_LogSupplierCode: TStringField;
    cds_Confirmed_Pkg_LogConfirmed_LoadNo: TIntegerField;
    cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo: TIntegerField;
    cds_Confirmed_Pkg_LogNewLoadNo: TIntegerField;
    cds_Confirmed_Pkg_LogNewShippingPlanNo: TIntegerField;
    cds_Confirmed_Pkg_LogLogicalInventoryPointNo: TIntegerField;
    cds_Confirmed_Pkg_LogPackageTypeNo: TIntegerField;
    cds_Confirmed_Pkg_LogPackageStatus: TIntegerField;
    cds_Confirmed_Pkg_LogOperation: TIntegerField;
    cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo: TIntegerField;
    sq_RevertPkgs: TFDQuery;
    cdsMovePkgNumber: TFDQuery;
    cdsMovePkgNumberPackageNo: TIntegerField;
    cdsMovePkgNumberSupplierCode: TStringField;
    cdsMovePkgNumberLogicalInventoryPointNo: TIntegerField;
    cdsMovePkgNumberStatus: TIntegerField;
    cds_LoadDtlVal: TFDQuery;
    cds_LoadDtlValLoadNo: TIntegerField;
    cds_LoadDtlValLoadDetailNo: TIntegerField;
    cds_LoadDtlValProductLengthNo: TIntegerField;
    cds_LoadDtlValPrice: TFloatField;
    cds_LoadDtlValSubsum: TFloatField;
    cds_LoadDtlValNM3: TFloatField;
    cds_LoadDtlValPaymentNo: TIntegerField;
    cds_LoadDtlValPaymentType: TIntegerField;
    cds_LoadDtlValPackageTypeNo: TIntegerField;
    cds_LoadDtlValSupplierNo: TIntegerField;
    cds_LoadDtlValLoadedDate: TSQLTimeStampField;
    cds_LoadDtlValOldPrice: TFloatField;
    cds_LoadDtlValVerk_FS: TStringField;
    cds_LoadDtlValCredited: TIntegerField;
    cdsLoadDetails: TFDQuery;
    cdsLoadDetailsLoadNo: TIntegerField;
    cdsLoadDetailsLoadDetailNo: TIntegerField;
    cdsLoadDetailsShippingPlanNo: TIntegerField;
    cdsLoadDetailsPackageNo: TIntegerField;
    cdsLoadDetailsSupplierCode: TStringField;
    cdsLoadDetailsPackageOK: TIntegerField;
    cdsLoadDetailsProblemPackageLog: TStringField;
    cdsLoadDetailsProductDisplayName: TStringField;
    cdsLoadDetailsTotalNoOfPieces: TIntegerField;
    cdsLoadDetailsTotalm3Actual: TFloatField;
    cdsLoadDetailsPackageTypeNo: TIntegerField;
    cdsLoadDetailsNoOfPackages: TIntegerField;
    cdsLoadDetailsCreatedUser: TIntegerField;
    cdsLoadDetailsModifiedUser: TIntegerField;
    cdsLoadDetailsDateCreated: TSQLTimeStampField;
    cdsLoadDetailsDefaultCustShipObjectNo: TIntegerField;
    cdsLoadDetailsOverrideMatch: TIntegerField;
    cdsLoadDetailsLIPNo: TIntegerField;
    cdsLoadDetailsDefsspno: TIntegerField;
    cdsLoadDetailsOverrideRL: TIntegerField;
    cdsLoadShippingPlan: TFDQuery;
    cdsLoadShippingPlanLoadNo: TIntegerField;
    cdsLoadShippingPlanShippingPlanNo: TIntegerField;
    cdsLoadShippingPlanConfirmedByReciever: TIntegerField;
    cdsLoadShippingPlanConfirmedBySupplier: TIntegerField;
    cdsLoadShippingPlanInvoiced: TIntegerField;
    cdsLoadShippingPlanCreatedUser: TIntegerField;
    cdsLoadShippingPlanModifiedUser: TIntegerField;
    cdsLoadShippingPlanDateCreated: TSQLTimeStampField;
    cdsPkgNumber: TFDQuery;
    cdsPkgNumberLoadDetailNo: TIntegerField;
    cdsPkgNumberLoadNo: TIntegerField;
    cdsPkgNumberShippingPlanNo: TIntegerField;
    cdsPkgNumberPackageNo: TIntegerField;
    cdsPkgNumberNoOfPackages: TIntegerField;
    cdsPkgNumberPackageTypeNo: TIntegerField;
    cdsPkgNumberSupplierCode: TStringField;
    cdsPkgNumberPackageOK: TIntegerField;
    cdsPkgNumberProblemPackageLog: TStringField;
    cdsPkgNumberCreatedUser: TIntegerField;
    cdsPkgNumberModifiedUser: TIntegerField;
    cdsPkgNumberDateCreated: TSQLTimeStampField;
    cdsPkgNumberDefaultCustShipObjectNo: TIntegerField;
    cdsPkgNumberOverrideMatch: TIntegerField;
    cdsPkgNumberLIPNo: TIntegerField;
    cdsPkgNumberDefsspno: TIntegerField;
    cdsPkgNumberOverrideRL: TIntegerField;
    cdsPkgNumberOldPackageTypeNo2: TIntegerField;
    cdsPkgNumberCustomPcs: TIntegerField;
    cdsPkgNumberPackageNo_1: TIntegerField;
    cdsPkgNumberPackageTypeNo_1: TIntegerField;
    cdsPkgNumberSupplierCode_1: TStringField;
    cdsPkgNumberLogicalInventoryPointNo: TIntegerField;
    cdsPkgNumberSupplierNo: TIntegerField;
    cdsPkgNumberStatus: TIntegerField;
    cdsPkgNumberSequenceNo: TIntegerField;
    cdsPkgNumberCreatedUser_1: TSmallintField;
    cdsPkgNumberModifiedUser_1: TSmallintField;
    cdsPkgNumberDateCreated_1: TSQLTimeStampField;
    cdsPkgNumberOriginal_Price: TFloatField;
    cdsPkgNumberOriginal_In_Date: TSQLTimeStampField;
    cdsPkgNumberUpdate_Price: TFloatField;
    cdsPkgNumberUpdate_Price_Date: TSQLTimeStampField;
    cdsPkgNumberCreatedOfPkgStr: TIntegerField;
    cdsPkgNumberAvgLengthType: TIntegerField;
    cdsPkgNumberREFERENCE: TStringField;
    cdsPkgNumberBL_NO: TStringField;
    cdsPkgNumberPkgArticleNo: TIntegerField;
    cds_LoadRow: TFDQuery;
    cds_LoadRowLoadNo: TIntegerField;
    cds_LoadRowLoadDetailNo: TIntegerField;
    cds_LoadRowShippingPlanNo: TIntegerField;
    cds_LoadRowPackageNo: TIntegerField;
    cds_LoadRowSUPPLIERCODE: TStringField;
    cds_LoadRowm3Actual: TFloatField;
    cds_LoadRowm3Nominal: TFloatField;
    cds_LoadRowMFBMNominal: TFloatField;
    cds_LoadRowNoOfPieces: TIntegerField;
    cds_LoadRowProductLengthNo: TIntegerField;
    cds_LoadRowProductNo: TIntegerField;
    cds_LoadRowLoadedDate: TSQLTimeStampField;
    cds_LoadRowdefsspno: TIntegerField;
    cds_LoadRowObjectType: TIntegerField;
    cds_LoadRowPrice: TFloatField;
    cds_LoadRowPriceListNo: TIntegerField;
    cds_LoadRowPackageTypeNo: TIntegerField;
    cds_LoadRowSupplierNo: TIntegerField;
    cds_LoadRowSSP_SupplierNo: TIntegerField;
    cds_LoadRowSSP_CustomerNo: TIntegerField;
    cds_LoadRowFS: TStringField;
    cds_LoadRowInternKundFrakt: TFloatField;
    cds_PksByInventoryPlace: TFDQuery;
    cds_PksByInventoryPlacePackageNo: TIntegerField;
    cds_PksByInventoryPlaceSupplierCode: TStringField;
    cds_PksByInventoryPlaceSupplierNo: TIntegerField;
    cds_PksByInventoryPlaceLengthDescription: TStringField;
    cds_PksByInventoryPlaceProductDisplayName: TStringField;
    cds_PksByInventoryPlaceProductNo: TIntegerField;
    cdsPortArrivingLoads: TFDQuery;
    cdsPortArrivingLoadsCountryCode: TStringField;
    cdsPortArrivingLoadsLO: TIntegerField;
    cdsPortArrivingLoadsLOADNO: TIntegerField;
    cdsPortArrivingLoadsVerk_LoadNo: TIntegerField;
    cdsPortArrivingLoadsFS: TStringField;
    cdsPortArrivingLoadsLOADEDDATE: TSQLTimeStampField;
    cdsPortArrivingLoadsLOAD_STATUS: TIntegerField;
    cdsPortArrivingLoadsLOAD_ID: TStringField;
    cdsPortArrivingLoadsSUPPLIER: TStringField;
    cdsPortArrivingLoadsSUPPCODE: TStringField;
    cdsPortArrivingLoadsDESTINATION: TStringField;
    cdsPortArrivingLoadsORDER_NO: TStringField;
    cdsPortArrivingLoadsOBJECTTYPE: TIntegerField;
    cdsPortArrivingLoadsINVPOINTNO: TIntegerField;
    cdsPortArrivingLoadsINVPOINTNAME: TStringField;
    cdsPortArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsPortArrivingLoadsCUSTOMER: TStringField;
    cdsPortArrivingLoadsSUPPLIERNO: TIntegerField;
    cdsPortArrivingLoadsAVROP_CUSTOMERNO: TIntegerField;
    cdsPortArrivingLoadsAVROP_CUSTOMER: TStringField;
    cdsPortArrivingLoadsOBJECTTYPE_1: TIntegerField;
    cdsPortArrivingLoadsINITIALS: TStringField;
    cdsPortArrivingLoadsORDERTYPE: TIntegerField;
    cdsPortArrivingLoadsTYP: TStringField;
    cdsPortArrivingLoadsLOTYP: TStringField;
    cdsPortArrivingLoadsLOINI: TStringField;
    cdsPortArrivingLoadsLASTST�LLE: TStringField;
    cdsPortArrivingLoadsLipNo: TIntegerField;
    cdsPortArrivingLoadsM�RKNING: TStringField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    cds_LIPPIPNo: TIntegerField;
    sq_GetDefaultCSObjectNo: TFDQuery;
    sq_GetPriceOfPriceList: TFDQuery;
    sq_GetPriceOfPriceListUnnamed1: TFloatField;
    sq_GetDefaultCSObjectNoCustShipPlanDetailObjectNo: TIntegerField;
    sq_GetOLPrice: TFDQuery;
    sq_GetOLPriceInternalPrice: TFloatField;
    sq_GetOLPricePriceListNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoad: TFDQuery;
    sq_CheckIfConfirmedPkgsValidInLoadLoadNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadLONo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadPRODUCT: TStringField;
    sq_CheckIfConfirmedPkgsValidInLoadLoadDetailNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadPACKAGENO: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadNOOFPKG: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadPACKAGETYPENO: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadSUPP_CODE: TStringField;
    sq_CheckIfConfirmedPkgsValidInLoadPKG_OK: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadPKGLOG: TStringField;
    sq_CheckIfConfirmedPkgsValidInLoadCreatedUser: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadModifiedUser: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadDateCreated: TSQLTimeStampField;
    sq_CheckIfConfirmedPkgsValidInLoadProductNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadDefaultCustShipObjectNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInLoadLogicalInventoryPointNo: TIntegerField;
    sq_CheckPkgLog: TFDQuery;
    sq_CheckPkgLogPackageNo: TIntegerField;
    sq_CheckPkgLogSupplierCode: TStringField;
    sq_CheckPkgLogConfirmed_LoadNo: TIntegerField;
    sq_CheckPkgLogConfirmed_ShippingPlanNo: TIntegerField;
    sq_CheckPkgLogNewLoadNo: TIntegerField;
    sq_CheckPkgLogNewShippingPlanNo: TIntegerField;
    sq_CheckPkgLogLogicalInventoryPointNo: TIntegerField;
    sq_CheckPkgLogPackageTypeNo: TIntegerField;
    sq_CheckPkgLogPackageStatus: TIntegerField;
    sq_CheckPkgLogOperation: TIntegerField;
    sq_CheckPkgLogOld_LogicalInventoryPointNo: TIntegerField;
    sq_Get_LoadShippingPlan: TFDQuery;
    sq_Get_LoadShippingPlanLoadNo: TIntegerField;
    sq_Get_LoadShippingPlanShippingPlanNo: TIntegerField;
    sq_Get_LoadShippingPlanAVROP_CustomerNo: TIntegerField;
    sq_Get_LoadShippingPlanLO_CustomerNo: TIntegerField;
    sq_Get_LoadShippingPlanObjectType: TIntegerField;
    sq_Get_LoadShippingPlanOrderType: TIntegerField;
    sq_Get_LoadShippingPlanLIPNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInInventory: TFDQuery;
    sq_CheckIfConfirmedPkgsValidInInventoryLogicalInventoryPointNo: TIntegerField;
    sq_Get_VWLIPNo: TFDQuery;
    sq_Get_VWLIPNoVW_LIPNo: TIntegerField;
    sq_GetVWCost: TFDQuery;
    sp_ArrivingLoads: TFDStoredProc;
    sp_VerkLaster: TFDStoredProc;
    sq_LoadPackages: TFDQuery;
    sq_LoadPackagesLoadNo: TIntegerField;
    sq_LoadPackagesLONo: TIntegerField;
    sq_LoadPackagesPRODUCT: TStringField;
    sq_LoadPackagesLoadDetailNo: TIntegerField;
    sq_LoadPackagesPACKAGENO: TIntegerField;
    sq_LoadPackagesNOOFPKG: TIntegerField;
    sq_LoadPackagesPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesSUPP_CODE: TStringField;
    sq_LoadPackagesPKG_OK: TIntegerField;
    sq_LoadPackagesPKGLOG: TStringField;
    sq_LoadPackagesCreatedUser: TIntegerField;
    sq_LoadPackagesModifiedUser: TIntegerField;
    sq_LoadPackagesDateCreated: TSQLTimeStampField;
    sq_LoadPackagesOnSticks: TIntegerField;
    sq_LoadPackagesM3_NET: TFloatField;
    sq_LoadPackagesPCS: TIntegerField;
    sq_LoadPackagesM3_NOM: TFloatField;
    sq_LoadPackagesKVM: TFloatField;
    sq_LoadPackagesLOPM: TFloatField;
    sq_LoadPackagesProductNo: TIntegerField;
    sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    sq_LoadPackagesLogicalInventoryPointNo: TIntegerField;
    sq_LoadPackagesPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesOverrideMatch: TIntegerField;
    sq_LoadPackagesBarCodeID: TIntegerField;
    sq_LoadPackagesGradeStamp: TIntegerField;
    sq_LoadPackagesNEWPRODUCTNO: TIntegerField;
    sq_LoadPackagesDefsspNo: TIntegerField;
    sq_LoadPackagesNEWPackageTypeNo: TIntegerField;
    sq_LoadPackagesOverrideRL: TIntegerField;
    sq_IsLoadInvoiced: TFDQuery;
    sq_IsLoadInvoicedLoadNo: TIntegerField;
    sq_IsLoadInvoicedShippingPlanNo: TIntegerField;
    sq_IsLoadInvoicedInternalInvoiceNo: TIntegerField;
    sq_DeleteNewLoadByOldLoadNo: TFDQuery;
    sp_vis_SetDateCreatedPkgsVP: TFDStoredProc;
    sq_samLast: TFDQuery;
    sq_deleteSamLaster: TFDQuery;
    sq_IsLoadAvraknad: TFDQuery;
    sq_IsLoadAvraknadPaymentNo: TIntegerField;
    sq_IsLoadAvraknadLoadNo: TIntegerField;
    sq_DeleteConfirmed_Load_Entry: TFDQuery;
    sq_SearchPkgNo: TFDQuery;
    sq_SearchPkgNoLO: TIntegerField;
    sq_SearchPkgNoLoadNo: TIntegerField;
    sq_SearchPkgNoLOADNO_1: TIntegerField;
    sq_SearchPkgNoM�RKNING: TStringField;
    sp_ProcessPkgAND_Log: TFDStoredProc;
    sq_CompareDetails: TFDQuery;
    sq_CompareDetailsMatching_LD: TIntegerField;
    sq_DelNewLoads: TFDQuery;
    cdsPortArrivingPackages: TFDQuery;
    cdsPortArrivingPackagesLoadNo: TIntegerField;
    cdsPortArrivingPackagesVerk_LoadNo: TIntegerField;
    cdsPortArrivingPackagesLO: TIntegerField;
    cdsPortArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsPortArrivingPackagesSUPPLIERCODE: TStringField;
    cdsPortArrivingPackagesM3_NET: TFloatField;
    cdsPortArrivingPackagesM3_NOM: TFloatField;
    cdsPortArrivingPackagesMFBM: TFloatField;
    cdsPortArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsPortArrivingPackagesPCS: TIntegerField;
    cdsPortArrivingPackagesPACKAGEOK: TIntegerField;
    cdsPortArrivingPackagesPACKAGE_LOG: TStringField;
    cdsPortArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsPortArrivingPackagesPSCPERLENGTH: TStringField;
    cdsPortArrivingPackagesBC: TStringField;
    cdsPortArrivingPackagesGS: TStringField;
    cdsPortArrivingPackagesPPP: TIntegerField;
    cdsPortArrivingPackagesM�RKNING: TStringField;
    sq_SearchLoadNoByPkgNo: TFDQuery;
    sq_SearchLoadNoByPkgNoLO: TIntegerField;
    sq_SearchLoadNoByPkgNoLOADNO: TIntegerField;
    sq_SearchLoadNoByPkgNoVERK_LOADNO: TIntegerField;
    sq_SearchLoadNoByPkgNoM�RKNING: TStringField;
    sq_getMTSLLLipNo: TFDQuery;
    sq_getMTSLLLipNoLIPNo: TIntegerField;
    sp_AR_Invoice: TFDStoredProc;
    sq_InsertPkgNoLogg: TFDQuery;
    sq_PkgInvoiced: TFDQuery;
    sq_PkgInvoicedLoadNo: TIntegerField;
    sq_PkgInvoicedInternalInvoiceNo: TIntegerField;
    sq_ChkPkgs: TFDQuery;
    sq_ChkPkgsLoadNo: TIntegerField;
    sq_ChkPkgsLoggLoadNo: TIntegerField;
    sq_Check_CDS_Link: TFDQuery;
    sq_Check_CDS_LinkSupplierShipPlanObjectNo: TIntegerField;
    sq_Check_CDS_LinkCustShipPlanDetailObjectNo: TIntegerField;
    sq_IsLoadConfirmed: TFDQuery;
    sq_IsLoadConfirmedConfirmed_LoadNo: TIntegerField;
    sq_IsLoadConfirmedConfirmed_ShippingPlanNo: TIntegerField;
    sq_IsLoadConfirmedNewLoadNo: TIntegerField;
    sq_IsLoadConfirmedNewShippingPlanNo: TIntegerField;
    sq_IsLoadConfirmedDateCreated: TSQLTimeStampField;
    sq_IsLoadConfirmedUserName: TStringField;
    sq_CheckObject2Link: TFDQuery;
    sq_CheckObject2LinkSupplierShipPlanObjectNo: TIntegerField;
    sq_CheckObject2LinkCustShipPlanDetailObjectNo: TIntegerField;
    sq_SetLoadAR: TFDQuery;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_ChangePkg: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_PackageTypes: TFDStoredProc;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLoadNo: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesLONo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesPKG_OK: TWordField;
    mtLoadPackagesPKGLOG: TStringField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesNOOFPKG: TIntegerField;
    mtLoadPackagesPRODUCT: TStringField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    mtLoadPackagesProductNo: TIntegerField;
    mtLoadPackagesDefaultCustShipObjectNo: TIntegerField;
    mtLoadPackagesLogicalInventoryPointNo: TIntegerField;
    mtLoadPackagesPcsPerLength: TStringField;
    mtLoadPackagesOverrideMatch: TIntegerField;
    mtLoadPackagesDefsspNo: TIntegerField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtLoadPackagesNEWPRODUCTNO: TIntegerField;
    mtLoadPackagesNEWPackageTypeNo: TIntegerField;
    mtLoadPackagesOverrideRL: TIntegerField;
    mtLoadPackagesRemoved: TBooleanField;
    mtNewPackages: TkbmMemTable;
    mtNewPackagesPACKAGETYPENO: TIntegerField;
    mtNewPackagesLogicalInventoryPointNo: TIntegerField;
    mtNewPackagesNoOfPackages: TIntegerField;
    mtLoadShippingPlan: TkbmMemTable;
    mtLoadShippingPlanLoadNo: TIntegerField;
    mtLoadShippingPlanShippingPlanNo: TIntegerField;
    mtLoadShippingPlanAvrop_CustomerNo: TIntegerField;
    mtLoadShippingPlanLO_CustomerNo: TIntegerField;
    mtLoadShippingPlanObjectType: TIntegerField;
    mtLoadShippingPlanOrderType: TIntegerField;
    mtLoadShippingPlanLIPNo: TIntegerField;
    mtLoadShippingPlanNewLoadNo: TIntegerField;
    mtLoadRemovedPackages: TkbmMemTable;
    mtLoadRemovedPackagesLoadNo: TIntegerField;
    mtLoadRemovedPackagesLoadDetailNo: TIntegerField;
    mtLoadRemovedPackagesLONo: TIntegerField;
    mtLoadRemovedPackagesPACKAGENO: TIntegerField;
    mtLoadRemovedPackagesSUPP_CODE: TStringField;
    mtLoadRemovedPackagesPKG_OK: TWordField;
    mtLoadRemovedPackagesPKGLOG: TStringField;
    mtLoadRemovedPackagesPACKAGETYPENO: TIntegerField;
    mtLoadRemovedPackagesNOOFPKG: TIntegerField;
    mtLoadRemovedPackagesPRODUCT: TStringField;
    mtLoadRemovedPackagesPCS: TIntegerField;
    mtLoadRemovedPackagesM3_NET: TFloatField;
    mtLoadRemovedPackagesM3_NOM: TFloatField;
    mtLoadRemovedPackagesKVM: TFloatField;
    mtLoadRemovedPackagesLOPM: TFloatField;
    mtLoadRemovedPackagesProductNo: TIntegerField;
    mtLoadRemovedPackagesDefaultCustShipObjectNo: TIntegerField;
    mtLoadRemovedPackagesLogicalInventoryPointNo: TIntegerField;
    mtLoadRemovedPackagesPcsPerLength: TStringField;
    mtLoadRemovedPackagesOverrideMatch: TIntegerField;
    mtLoadRemovedPackagesBARCODE_ID: TIntegerField;
    mtLoadRemovedPackagesGRADESTAMPNO: TIntegerField;
    mtLoadRemovedPackagesPkgsRemoved: TBooleanField;
    sq_GetVWCostUnnamed1: TFloatField;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropSurfacingNo: TIntegerField;
    mtUserPropNOMTHICK: TFloatField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    procedure dsrcArrivingLoadsDataChange(Sender: TObject; Field: TField);
    procedure dspMovePkgNumberGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure ds_verkLasterDataChange(Sender: TObject; Field: TField);
    procedure dsrcPortArrivingLoadsDataChange(Sender: TObject;
      Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropLIPNoChange(Sender: TField);
  private
    { Private declarations }
    FOnAmbiguousPkgNo: TAmbiguityEvent;

    procedure InsertLoadDtlVal(const Inkop : Boolean; const SupplierNo, PaymentType, PaymentNo, LoadNo : Integer;const Update_OldPrice : Boolean) ;
    Function  Inkop(const LoadNo, P_SupplierNo : Integer) : Boolean ;
    function  GetPriceOfOrderRow(const Inkop : Boolean;const LoadedDate : TSQLTimeStamp;const SupplierNo, defsspno, ProductNo, ProductLengthNo : Integer) : Double ;
//    function  GetPriceOfPriceList(const LoadedDate : TSQLTimeStamp;const SupplierNo, PriceListNo, ProductNo, ProductLengthNo : Integer) : Double ;

  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3) ;

  public
    { Public declarations }
    LoadConfirmedOK : Boolean ;
    procedure SetDateCreatedPkgsVP(const LoadNo : Integer) ;
    procedure AR_Load(const LoadNo, Status, LIPNo, CreatedUser : Integer) ;
    Function  SearchLoadNoByPkgNo(const PackageNo, ShippingCompanyNo : Integer;const SupplierCode : String) : Integer ;
    function  UndoConfirmLoad : Boolean ;
    function  ChangePackagesToIMPProduct : Boolean ;
    procedure SetLoadAR(const LoadNo, LoadAR : Integer) ;
    function  GetDefaultCSObjectNo(const DefsspNo : Integer) : Integer ;
    procedure GetIntPrice(const P_SupplierNo, PaymentType, PaymentNo, LoadNo : Integer;const Update_OldPrice : Boolean) ;
    Function  GetMotsvarandeVWLIPNo(const LIPNo : Integer) : Integer ;
    Function  GetMotsvarandeVWLIPNoForLoadingLocation(const LONo : Integer) : Integer ;
    Function  SearchPkgNoInLoad (const PackageNo : Integer) : Integer ;
    function  PkgNoToSuppCode(const PkgNo : Integer): string3;
    property  OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmArrivingLoads: TdmArrivingLoads;

implementation

uses dmsDataConn, dmsVidaSystem, VidaConst, VidaUser,   dlgPickPkg_II ;

{$R *.dfm}

function TdmArrivingLoads.GetDefaultCSObjectNo(const DefsspNo : Integer) : Integer ;
Begin
 With dmArrivingLoads do
 Begin
  sq_GetDefaultCSObjectNo.Close ;
  sq_GetDefaultCSObjectNo.ParamByName('SupplierShipPlanObjectNo').AsInteger:= DefsspNo ;
  sq_GetDefaultCSObjectNo.Open ;
  Result:= sq_GetDefaultCSObjectNoCustShipPlanDetailObjectNo.AsInteger ;
  sq_GetDefaultCSObjectNo.Close ;
 End ; //with
End ;

procedure TdmArrivingLoads.SetLoadAR(const LoadNo, LoadAR : Integer) ;
Begin
 Try
 sq_SetLoadAR.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_SetLoadAR.ParamByName('LoadAR').AsInteger:= LoadAR ;
 sq_SetLoadAR.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;


procedure TdmArrivingLoads.dsrcArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
 cdsArrivingPackages.Active:= False ;
 cdsArrivingPackages.Close ;
 cdsArrivingPackages.ParamByName('LoadNo').AsInteger          := cdsArrivingLoadsLOADNO.AsInteger ;
 cdsArrivingPackages.ParamByName('ShippingPlanNo').AsInteger  := cdsArrivingLoadsLO.AsInteger ;
 cdsArrivingPackages.Open ;
 cdsArrivingPackages.Active:= True ;
end;

function TdmArrivingLoads.UndoConfirmLoad : Boolean ;
const
  LF = #10;
Var CommitChanges : Boolean ;
   Save_Cursor    : TCursor;
begin
 CommitChanges:= True ;

// if MessageDlg('Vill du �ngra ankomstregistration av lasten?',
// mtConfirmation, [mbYes, mbNo], 0) = mrYes then
// Begin

 with dmArrivingLoads do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  Try
 //Undo Confirmation of load arrivals
 //first check if there are customer loads made, if so then
  //BEGIN
  //check if Customer loads are invoiced, if so then
   //stop the process and ask user to delete invoices first

   //otherwhise check that no packages have been added or removed to/from customer load,
   //To do that compare Mill load to customer load
   //if customer have been changed then
   //Give message to user that Undo is not possible unless the customer is
   //put back to original spec

   // If customer have not been changed or invoiced then
   //Delete the customer load
   //Delete Entry in Confirmed_Load for Mill Load

  //END
  //otherwise simply remove the verk load from confirmed_load table

  dmsConnector.StartTransaction;
  Try

//�r lasten fakturerad?
  sq_IsLoadInvoiced.Close ;
  sq_IsLoadInvoiced.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadInvoiced.Open ;
  if not sq_IsLoadInvoiced.Eof then
  Begin
   ShowMessage('Kan inte �ngra, kundlasten: '
   +LF+sq_IsLoadInvoicedLoadNo.AsString
   +LF+'  LO: '+sq_IsLoadInvoicedShippingPlanNo.AsString
   +LF+' �r fakturerad p� internfakturanr: '+sq_IsLoadInvoicedInternalInvoiceNo.AsString
   +LF+', ta bort fakturan och f�rs�k igen.') ;
   sq_IsLoadInvoiced.Close ;
   CommitChanges:= False ;
   Exit ;
  End ;
  sq_IsLoadInvoiced.Close ;

//�r lasten avr�knad ?
  sq_IsLoadAvraknad.Close ;
  sq_IsLoadAvraknad.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
//  sq_IsLoadAvraknad.ParamByName('ShippingPlanNo').AsInteger:= cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadAvraknad.Open ;
  if Not sq_IsLoadAvraknad.Eof then
  Begin
   ShowMessage('Kan inte �ngra, lasten �r avr�knad. Avr�kningsnr: '+sq_IsLoadAvraknadPaymentNo.AsString) ;
   sq_IsLoadAvraknad.Close ;
   CommitChanges:= False ;
   Exit ;
  End ;
  sq_IsLoadAvraknad.Close ;

//Kolla att det finns en confirmed package log fil
  cds_Confirmed_Pkg_Log.Active:= False ;
  cds_Confirmed_Pkg_Log.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  cds_Confirmed_Pkg_Log.Active:= True ;
  if cds_Confirmed_Pkg_Log.Eof then
  Begin
   ShowMessage('Det finns ingen loggfil f�r lastnr '+cdsArrivingLoadsLOADNO.AsString+' kan inte �terst�lla.') ;
   CommitChanges:= False ;
   Exit ;
  End ;

//  For x:= 0 to 1 do
//  Begin
  cds_Confirmed_Pkg_Log.Filter:= 'Operation = 0 OR Operation = 1' ;//+IntToStr(x) ;
  cds_Confirmed_Pkg_Log.Filtered:= True ;
  While not cds_Confirmed_Pkg_Log.Eof do
  Begin
    sq_ChkPkgs.Close ;
    sq_ChkPkgs.ParamByName('PackageNo').AsInteger               := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
    sq_ChkPkgs.ParamByName('SupplierCode').AsString             := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
    sq_ChkPkgs.Open ;
    if not sq_ChkPkgs.Eof then
    Begin
     if (sq_ChkPkgsLoggLoadNo.AsInteger < sq_ChkPkgsLoadNo.AsInteger) and (sq_ChkPkgsLoggLoadNo.AsInteger <> -1) then
     Begin
      ShowMessage('Kan inte �ngra, Paketnr: '
      +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
      +' �r utlastat p� lastnr ' + sq_ChkPkgsLoadNo.AsString) ;
      CommitChanges:= False ;
      Exit ;
     End ;
    End ; //if not sq_ChkPkgs.Eof then

(*    sq_PkgInvoiced.Close ;
    sq_PkgInvoiced.ParamByName('PackageNo').AsInteger               := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
    sq_PkgInvoiced.ParamByName('SupplierCode').AsString             := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
    sq_PkgInvoiced.Open ;
    if not sq_PkgInvoiced.Eof then
    Begin
      ShowMessage('Kan inte �ngra, Paketnr: '
      +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
      +' �r utlastat p� lastnr ' + sq_ChkPkgsLoadNo.AsString) ;
      CommitChanges:= False ;
     Exit ;
    End ; //if not sq_PkgInvoiced.Eof then
    *)



   cds_Confirmed_Pkg_Log.Next ;
  End ; //While
//  End ; //For
  cds_Confirmed_Pkg_Log.Active:= False ;

  if CommitChanges = True then
  Begin
  //Insert packagenumberlogg
   Try
   sq_InsertPkgNoLogg.ParamByName('LoadNo').AsInteger  := cdsArrivingLoadsLOADNO.AsInteger ;
   sq_InsertPkgNoLogg.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
   sq_InsertPkgNoLogg.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
       CommitChanges:= False ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  //Set package status = 0 on packages that were moved to inventory
   sq_UpdatePkgStatus.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
   Try
   sq_UpdatePkgStatus.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
       CommitChanges:= False ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  //Delete NewLoad, this also removes Confirmed_Load and Confirmed_Load_Packages
  //Bara f�r LO av OBJECTTYPE = 2 (normala), add och int LO skapar aldrig en ny last
//   if cdsArrivingLoadsOBJECTTYPE.AsInteger = 2 then
//   Begin
//    sq_DeleteNewLoadByOldLoadNo.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
//    if sq_DeleteNewLoadByOldLoadNo.ExecSQL(False) = -1 then CommitChanges:= False ;
//   End ;

//Byt ut ovan mot den h�r som anv�nder l�nken i Confirmed_Package_Log f�r att ta bort nya laster
   if cdsArrivingLoadsOBJECTTYPE.AsInteger = 2 then
   Begin
    sq_DelNewLoads.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
    Try
    sq_DelNewLoads.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
       CommitChanges:= False ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End ;

  //Delete Confirmed_Load record for Old Load
   sq_DeleteConfirmed_Load_Entry.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
   Try
   sq_DeleteConfirmed_Load_Entry.ExecSQL ;
   except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
       CommitChanges:= False ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

//Set LoadAR till 0
//   SetLoadAR(cdsArrivingLoadsLOADNO.AsInteger,  0{set LoadAR till ankomstregistrerad = 1}) ;
  End ;

  try
     // Now write the data to the database
   if CommitChanges = True then
   Begin
    dmsConnector.Commit;
//    ShowMessage('�ngra ankomstregistrering OK');
    Application.ProcessMessages ;
   End
   else
    Begin
     dmsConnector.Rollback ;
     ShowMessage('�ngra ankomstregistrering misslyckades, data �terst�lld.');
    End ;


   except
      on Exception do begin
        raise;
        end;
   end;

  except
   dmsConnector.Rollback ;
   raise;
  end;



  Finally
   cds_Confirmed_Pkg_Log.Filtered:= False ;
   if CommitChanges = False then
    Begin
     dmsConnector.Rollback ;
    End ;

//   cdsCurrentLoadDetails.Active:= False ;
   sq_CompareDetails.Close ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
   Result:= CommitChanges ;
  End ;
 End ; //with
// End  //if
//  else
//    Result:= True ;
end;

(*function TdmArrivingLoads.UndoConfirmLoad : Boolean ;
const
  LF = #10;
Var CommitChanges : Boolean ;
   Save_Cursor    : TCursor;
   TransactionNo  : LongWord;
   x              : Integer;
begin
 CommitChanges:= True ;

// if MessageDlg('Vill du �ngra ankomstregistration av lasten?',
// mtConfirmation, [mbYes, mbNo], 0) = mrYes then
// Begin

 with dmArrivingLoads do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  Try
 //Undo Confirmation of load arrivals
 //first check if there are customer loads made, if so then
  //BEGIN
  //check if Customer loads are invoiced, if so then
   //stop the process and ask user to delete invoices first

   //otherwhise check that no packages have been added or removed to/from customer load,
   //To do that compare Mill load to customer load
   //if customer have been changed then
   //Give message to user that Undo is not possible unless the customer is
   //put back to original spec

   // If customer have not been changed or invoiced then
   //Delete the customer load
   //Delete Entry in Confirmed_Load for Mill Load

  //END
  //otherwise simply remove the verk load from confirmed_load table

  TransactionNo := dmsConnector.StartTransaction;
  Try

  sq_IsLoadInvoiced.Close ;
  sq_IsLoadInvoiced.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadInvoiced.Open ;
  if not sq_IsLoadInvoiced.Eof then
  Begin
   ShowMessage('Kan inte �ngra, kundlasten: '
   +LF+sq_IsLoadInvoicedLoadNo.AsString
   +LF+'  LO: '+sq_IsLoadInvoicedShippingPlanNo.AsString
   +LF+' �r fakturerad p� internfakturanr: '+sq_IsLoadInvoicedInternalInvoiceNo.AsString
   +LF+', ta bort fakturan och f�rs�k igen.') ;
   sq_IsLoadInvoiced.Close ;
   CommitChanges:= False ;
   Exit ;
  End ;
  sq_IsLoadInvoiced.Close ;

  sq_IsLoadAvraknad.Close ;
  sq_IsLoadAvraknad.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
//  sq_IsLoadAvraknad.ParamByName('ShippingPlanNo').AsInteger:= cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadAvraknad.Open ;
  if Not sq_IsLoadAvraknad.Eof then
  Begin
   ShowMessage('Kan inte �ngra, lasten �r avr�knad. Avr�kningsnr: '+sq_IsLoadAvraknadPaymentNo.AsString) ;
   sq_IsLoadAvraknad.Close ;
   CommitChanges:= False ;
   Exit ;
  End ;
  sq_IsLoadAvraknad.Close ;

  cds_Confirmed_Pkg_Log.Active:= False ;
  sq_Confirmed_Pkg_Log.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  cds_Confirmed_Pkg_Log.Active:= True ;
  if cds_Confirmed_Pkg_Log.Eof then
  Begin
   ShowMessage('Det finns ingen loggfil f�r lastnr '+cdsArrivingLoadsLOADNO.AsString+' kan inte �terst�lla.') ;
   CommitChanges:= False ;
   Exit ;
  End ;

  sq_CheckIfConfirmedPkgsValidInInventory.Close ;
  sq_CheckIfConfirmedPkgsValidInLoad.Close ;

  For x:= 0 to 1 do
  Begin
  cds_Confirmed_Pkg_Log.Filter:= 'Operation = '+IntToStr(x) ;
  cds_Confirmed_Pkg_Log.Filtered:= True ;
  While not cds_Confirmed_Pkg_Log.Eof do
  Begin
   if x = 0 then
   Begin
    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('PackageNo').AsInteger               := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('SupplierCode').AsString             := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('LoadNo').AsInteger                  := cds_Confirmed_Pkg_LogNewLoadNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('ShippingPlanNo').AsInteger          := cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger ;
//    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('LogicalInventoryPointNo').AsInteger := cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('PackageTypeNo').AsInteger           := cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('Status').AsInteger                  := cds_Confirmed_Pkg_LogPackageStatus.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInLoad.Open ;
    if sq_CheckIfConfirmedPkgsValidInLoad.Eof then
    Begin
     ShowMessage('Kan inte �ngra, Paketnr: '
     +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
     +' �r �ndrat eller borttaget fr�n lasten.') ;
     CommitChanges:= False ;
     Exit ;
     sq_CheckIfConfirmedPkgsValidInLoad.Close ;
    End ;
    sq_CheckIfConfirmedPkgsValidInLoad.Close ;
   End
   else
   Begin
    sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('PackageNo').AsInteger              := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('SupplierCode').AsString            := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
    sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('PackageTypeNo').AsInteger          := cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('Status').AsInteger                 := cds_Confirmed_Pkg_LogPackageStatus.AsInteger ;
    sq_CheckIfConfirmedPkgsValidInInventory.Open ;
    if sq_CheckIfConfirmedPkgsValidInInventory.Eof then
    Begin
     ShowMessage('Kan inte �ngra, paketnr: '
     +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
     +LF+' har blivit �ndrat eller borttaget fr�n lagret.') ;
     CommitChanges:= False ;
     Exit ;
     sq_CheckIfConfirmedPkgsValidInInventory.Close ;
    End ;
    sq_CheckIfConfirmedPkgsValidInInventory.Close ;
   End ;

   cds_Confirmed_Pkg_Log.Next ;
  End ; //While
  End ; //For
  cds_Confirmed_Pkg_Log.Active:= False ;

  if CommitChanges = True then
  Begin
  //Set package status = 0 on packages that were moved to inventory
   sq_UpdatePkgStatus.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
   if sq_UpdatePkgStatus.ExecSQL(False) = -1 then CommitChanges:= False ;

  //Delete NewLoad, this also removes Confirmed_Load and Confirmed_Load_Packages
  //Bara f�r LO av OBJECTTYPE = 2 (normala), add och int LO skapar aldrig en ny last
   if cdsArrivingLoadsOBJECTTYPE.AsInteger = 2 then
   Begin
    sq_DeleteNewLoadByOldLoadNo.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
    if sq_DeleteNewLoadByOldLoadNo.ExecSQL(False) = -1 then CommitChanges:= False ;
   End ;

  //Delete Confirmed_Load record for Old Load
   sq_DeleteConfirmed_Load_Entry.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
   if sq_DeleteConfirmed_Load_Entry.ExecSQL(False) = -1 then CommitChanges:= False ;

//Set LoadAR till 0
//   SetLoadAR(cdsArrivingLoadsLOADNO.AsInteger,  0{set LoadAR till ankomstregistrerad = 1}) ;
  End ;

  try
     // Now write the data to the database
   if CommitChanges = True then
   Begin
    dmsConnector.Commit(TransactionNo) ;
//    ShowMessage('�ngra ankomstregistrering OK');
    Application.ProcessMessages ;
   End
   else
    Begin
     dmsConnector.Rollback(TransactionNo);
     ShowMessage('�ngra ankomstregistrering misslyckades, data �terst�lld.');
    End ;


   except
      on Exception do begin
        raise;
        end;
   end;

  except
   dmsConnector.Rollback(TransactionNo);
   raise;
  end;



  Finally
   cds_Confirmed_Pkg_Log.Filtered:= False ;
   if CommitChanges = False then
    Begin
     dmsConnector.Rollback(TransactionNo);
    End ;

//   cdsCurrentLoadDetails.Active:= False ;
   sq_CompareDetails.Close ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
   Result:= CommitChanges ;
  End ;
 End ; //with
// End  //if
//  else
//    Result:= True ;
end; *)

procedure TdmArrivingLoads.dspMovePkgNumberGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName := 'PackageNumber' ;
end;

procedure TdmArrivingLoads.ds_verkLasterDataChange(Sender: TObject;
  Field: TField);
begin
 cds_VerkLastPkgs.Active:= False ;
 cds_VerkLastPkgs.Close ;
 cds_VerkLastPkgs.ParamByName('LoadNo').AsInteger:= cds_verkLasterLastNr.AsInteger ;
 cds_VerkLastPkgs.Open ;
 cds_VerkLastPkgs.Active:= True ;
end;

function TdmArrivingLoads.ChangePackagesToIMPProduct : Boolean ;
Var
  Save_Cursor     : TCursor;
  AllPkgChangedOK : Boolean ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
  PkgTypeNumbers  : TList;
  PackagetypeNo   : Integer ;
  MyList          : TList;
  ARecord         : PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtLoadPackagesNEWPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger = 0 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;
    end;

    Function GetNoOfOriginalLengthsInPkg : Integer ;
    Begin
     Result:= 0 ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       New(ARecord);
       ARecord^.ProductLengthNo := sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.NoOfPieces      := sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);
       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;
    End ;

    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
//      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
//      NoOfLengths := GetNoOfLengthsInPkg
//      else
       NoOfLengths :=  GetNoOfOriginalLengthsInPkg ;

      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];

            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with
    end;

    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtLoadPackagesNEWPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

//************** Now add the PackageTypeDetail records. ********************
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
       end;
    end;

  procedure  SavePackageTypeLengths ;
  Begin
   Try
   sp_Populate_One_PkgTypeLengths.Close ;
   sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
   sp_Populate_One_PkgTypeLengths.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   sp_Populate_One_PkgTypeLengths.Close ;
  End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
    Try
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
    sp_PackageTotals.Close;
  end;

  begin
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om l�ngdgrupper �ndras justeras pakettypskolumner d�r, h�r l�ggs pakettypen upp f�r de l�ngdgrupper som finns f�r tillf�llet
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  procedure UpdatePackage ;
  begin
    Try
    sp_ChangePkg.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ChangePkg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_ChangePkg.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_ChangePkg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
    sp_ChangePkg.ParamByName('@RegistrationPointNo'    ).AsInteger  := 6 ;//RegistrationPointNo ;
    sp_ChangePkg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_ChangePkg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_ChangePkg.ParamByName('@SupplierNo'             ).AsInteger  := cdsOneLoadSupplierNo.AsInteger ;
    sp_ChangePkg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
    sp_ChangePkg.ParamByName('@MatPunktAgareNo'        ).AsInteger  := cdsOneLoadSupplierNo.AsInteger ;
    sp_ChangePkg.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  end;


//Proc ChangePackagesToIMPProduct : Boolean ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

// Update packages with the selections the user has done
// PrepareLocalPkgTable ;

 Try
  Result:= False ;
  AllPkgChangedOK:= True ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if (mtLoadPackagesNEWPRODUCTNO.AsInteger > 0) //or (mtLoadPackagesNEWPackageTypeNo.AsInteger > 0) then
   AND (mtLoadPackagesProductNo.AsInteger <> mtLoadPackagesNEWPRODUCTNO.AsInteger) then
   Begin
    dmsConnector.StartTransaction;
    try
     if mtLoadPackagesNEWPackageTypeNo.AsInteger = -1 then
     SavePkgType
      else
       PackageTypeNo:= mtLoadPackagesNEWPackageTypeNo.AsInteger ;
     Try

      UpdatePackage ;
     except
      ShowMessage ('Error spara paket �ndringar ');
      Result:= False ;
      Raise ;
     End ;

     mtLoadPackages.Edit ;
     mtLoadPackagesPackageTypeNo.AsInteger:= PackageTypeNo ;
     mtLoadPackages.Post ;

     dmsConnector.Commit ;
     Result:= True ;
    except
     dmsConnector.Rollback ;
     Result:= False ;
    end;
   End //if mtLoadPackagesNEWPRODUCTNO.AsInteger > 0 then
   else
   AllPkgChangedOK:= False ;

   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
  end;//While not mtLoadPackages.Eof do

 if AllPkgChangedOK = False then
 ShowMessage('Alla paket i lasten kunde inte �ndras till en impregnerad kvalitet') ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

(*
function TdmArrivingLoads.GetPriceOfPriceList(const LoadedDate : TSQLTimeStamp;const SupplierNo, PriceListNo, ProductNo, ProductLengthNo : Integer) : Double ;
{Var PriceAdjustment,
    RandomLengthPrice,
    FixedLengthPrice    : Double ;
    UseRandomLengthPrice   : Integer ; }
Begin
{ FixedLengthPrice := 0 ;
 RandomLengthPrice:= 0 ;
 PriceAdjustment  := 0 ;

 if PriceListNo > 0 then
 Begin }
  sq_GetPriceOfPriceList.ParamByName('PriceListNo').AsInteger         := PriceListNo ;
  sq_GetPriceOfPriceList.ParamByName('LoadedDate').AsSQLTimeStamp     := LoadedDate ;
  sq_GetPriceOfPriceList.ParamByName('ProductNo').AsInteger           := ProductNo ;
  sq_GetPriceOfPriceList.ParamByName('ProductLengthNo').AsInteger     := ProductLengthNo ;
  sq_GetPriceOfPriceList.ParamByName('SupplierNo').AsInteger          := SupplierNo ;
  sq_GetPriceOfPriceList.Open ;
//  sq_GetPriceOfPriceList.First ;
//  While not sq_GetPriceOfPriceList.Eof do
//  Begin
  if not sq_GetPriceOfPriceList.Eof then
   Result:= sq_GetPriceOfPriceListCOLUMN1.AsFloat ;
//   UseRandomLengthPrice:= sq_GetPriceOfPriceListRandomLengthPrice.AsInteger ;
{   PriceAdjustment  := sq_GetPriceOfPriceListPriceAdjustment.AsFloat ;
   if sq_GetPriceOfPriceListProductLengthNo.AsInteger = 453 then
   RandomLengthPrice:= sq_GetPriceOfPriceListPrice.AsFloat
   else
   FixedLengthPrice:= sq_GetPriceOfPriceListPrice.AsFloat ;
   sq_GetPriceOfPriceList.Next ; }
//  End ;
  sq_GetPriceOfPriceList.Close ;
{  if UseRandomLengthPrice = 1 then
   Result:= RandomLengthPrice + PriceAdjustment
    else
     Result:= FixedLengthPrice + PriceAdjustment ; }

{  if FixedLengthPrice > 0 then
   Result:= FixedLengthPrice + PriceAdjustment
    else
     Result:= RandomLengthPrice + PriceAdjustment ; }

{  if RandomLengthPrice > 0 then
   Result:= RandomLengthPrice + PriceAdjustment
    else
     Result:= FixedLengthPrice + PriceAdjustment ;
 End
  else
   Result:= 0 ; }
End ; *)

function TdmArrivingLoads.GetPriceOfOrderRow(const Inkop : Boolean;const LoadedDate : TSQLTimeStamp;const SupplierNo, defsspno, ProductNo, ProductLengthNo : Integer) : Double ;
Var vwCost,
    Price,
    RandomLengthPrice,
    FixedLengthPrice    : Double ;
    PriceListNo         : Integer ;
Begin
 FixedLengthPrice := 0 ;
 RandomLengthPrice:= 0 ;
 Price            := 0 ;
 //H�mta OL pris och PriceListNo fr�n relationen LO-row -> orderline
 //om direktpriset �r 0 h�mtas prislist priset d�rav hamtas pricelistno in
 //defsspNo �r LO-radens unika key

 //I direkt priset skall vwcostnaden dras ifr�n om det �r en f�rs�ljning.
 sq_GetOLPrice.ParamByName('defsspNo').AsInteger:= defsspno ;
 sq_GetOLPrice.Open ;
 Try
 if not sq_GetOLPrice.Eof then
  Begin
   if InKop then
    Price:= sq_GetOLPriceInternalPrice.AsFloat
     else
      Begin
       vwCost := 0 ;
       sq_GetVWCost.ParamByName('LoadedDate').AsSQLTimeStamp:= LoadedDate ;
       sq_GetVWCost.Open ;
       if not sq_GetVWCost.Eof then
        vwCost := sq_GetVWCostUnnamed1.AsFloat ;
       sq_GetVWCost.Close ;
      Price:= sq_GetOLPriceInternalPrice.AsFloat  + vwCost ;
      End ;
   PriceListNo:= sq_GetOLPricePriceListNo.AsInteger ;
  End
  else
  Begin
   Result:= 0 ;
   Exit ;
  End ;
 Finally
  sq_GetOLPrice.Close ;
 End ;

 //om direktpriset �r 0 h�mtas prislist priset d�rav hamtas pricelistno in
 if Price > 0 then
 Begin
  Result:= Price ;
  Exit ;
 End ;
{ else
 if PriceListNo > 0 then
  Result:= GetPriceOfPriceList(LoadedDate, SupplierNo, PriceListNo, ProductNo, ProductLengthNo)
   else
    Result:= 0 ; }
End ;

Function TdmArrivingLoads.Inkop(const LoadNo, P_SupplierNo : Integer) : Boolean ;
Begin
 cds_LoadRow.Active:= False ;
 cds_LoadRow.ParamByName('LoadNo').AsInteger:= LoadNo ;
 cds_LoadRow.Active:= True ;
 if not cds_LoadRow.Eof then
  if cds_LoadRowSSP_SupplierNo.AsInteger = P_SupplierNo then
   Result:= False //Ink�p = false
    else
     Result:= True ; //Ink�p = true
 cds_LoadRow.Active:= False ;
End ;

//P_SupplierNo (kan vara b�de kund eller leverant�r) anv�nds bara n�r det anropas fr�n avr�kningen, d� det �r en specifik LoadDtlVal som uppdateras
//F�r att veta om lasten �r ett ink�p eller f�rs�ljning
procedure TdmArrivingLoads.GetIntPrice(const P_SupplierNo, PaymentType, PaymentNo, LoadNo : Integer;const Update_OldPrice : Boolean) ;
Var Price               : Double ;
    CustomerNo,
    SupplierNo          : Integer ;
    MakeForCustAndSupp,
    MakeForInkop,
    MakeForVerk         : Boolean ;
    P_Inkop             : Boolean;
Begin
 if P_SupplierNo > 0 then
 Begin
  //OM LO �r ett "ink�p" k�rs denna rutin
  P_Inkop:= Inkop(LoadNo, P_SupplierNo) ;
  InsertLoadDtlVal(P_Inkop, P_SupplierNo, PaymentType, PaymentNo, LoadNo, Update_OldPrice) ;
  Exit ;
 End ;
 //cds_LoadRow inneh�ller alla lastrader i lasten.
 cds_LoadRow.Active:= False ;
 cds_LoadRow.ParamByName('LoadNo').AsInteger:= LoadNo ;
 cds_LoadRow.Active:= True ;
 if not cds_LoadRow.Eof then
 Begin
  CustomerNo          := cds_LoadRowSSP_CustomerNo.AsInteger ;
  SupplierNo          := cds_LoadRowSSP_SupplierNo.AsInteger ;
  MakeForCustAndSupp  := False ;
  MakeForInkop         := False ;
  MakeForVerk         := False ;

  //OM leverant�r och kund �r samma g�rs ingenting
  if cds_LoadRowSSP_CustomerNo.AsInteger = cds_LoadRowSSP_SupplierNo.AsInteger then
  Exit ;

  //Best�m vilken typ av aff�r det �r
  if (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_DANMARK)
  and (cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and (cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_DANMARK) then
  MakeForCustAndSupp := True //verk s�ljer till verk
   else
   if (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_DANMARK)
   and ((cds_LoadRowSSP_SupplierNo.AsInteger = VIDA_WOOD_COMPANY_NO) or (cds_LoadRowSSP_SupplierNo.AsInteger = VIDA_DANMARK)) then
   MakeForInkop:= True //vidawood s�ljer till verk INK�P
    else
    if ((cds_LoadRowSSP_CustomerNo.AsInteger = VIDA_WOOD_COMPANY_NO) or (cds_LoadRowSSP_CustomerNo.AsInteger = VIDA_DANMARK))
    and ((cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and (cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_DANMARK)) then
     MakeForVerk := True ;//verk s�ljer till vidawood

  cds_LoadRow.Active:= False ;
 End //if not cds_LoadRow.Eof then
  else
   Begin
    //Om inga lastrader hittades g�rs ingenting
    cds_LoadRow.Active:= False ;
    Exit ;
   End ;

//Anropa InsertLoadDtlVal beroende p� vilken typ av aff�r
 if MakeForCustAndSupp then
 Begin
  InsertLoadDtlVal(False, SupplierNo, PaymentType, PaymentNo, LoadNo, Update_OldPrice) ;
  InsertLoadDtlVal(True, CustomerNo, PaymentType, PaymentNo, LoadNo, Update_OldPrice) ;
 End
  else
  if MakeForVerk then
   InsertLoadDtlVal(False, SupplierNo, PaymentType, PaymentNo, LoadNo, Update_OldPrice)
    else
     if MakeForInkop then
      InsertLoadDtlVal(True, CustomerNo, PaymentType, PaymentNo, LoadNo, Update_OldPrice) ;
End ;

//PaymentType, vilken typ av avr�kning som tex priskorrigering (kredit) eller vanlig debit.
procedure TdmArrivingLoads.InsertLoadDtlVal(const Inkop : Boolean;const SupplierNo, PaymentType, PaymentNo, LoadNo : Integer;const Update_OldPrice : Boolean) ;
Var Price       : Double ;
Begin

{******************************************************************************
get vwcost f�r period samt priskorrigering verk f�r period!

F�rs�ljning verk
internpris
- vwcost
- priskorrigering verk

Ink�p verk
internpris
-fraktkostnad
+ vwcost
- priskorrigering verk }

//if inkop then showmessage('Ink�p')  else    showmessage('F�rs�ljning') ;

 cds_LoadDtlVal.ParamByName('LoadNo').AsInteger:= LoadNo ;
 cds_LoadDtlVal.Active:= True ;
 Try
(** Finns priset angivet p� LO anv�nds alltid det i f�rsta hand p� alla LO typer **)
(** om det inte finns angivet                                                    **)
(** 1) P� normala LO kollar man om pris finns angivet p� orderline och i andra hand prislista **)
//*********************** G� igenom alla lastrader ***************************
 cds_LoadRow.ParamByName('LoadNo').AsInteger := LoadNo ;
 cds_LoadRow.Active                         := True ;
 Try
 cds_LoadRow.First ;
 While not cds_LoadRow.Eof do
 Begin
  if cds_LoadRowPrice.AsFloat < 1 then//om priset finns angivet p� LO tar vi det annars k�rs nedan rutin
  Begin
  //Priset fanns inte angivet direkt p� LO k�r detta block
  //OM LO prislista �r angiven tas det priset

//   if cds_LoadRowPriceListNo.AsInteger > 0 then
//    Price:= GetPriceOfPriceList(cds_LoadRowLoadedDate.AsSQLTimeStamp, SupplierNo, cds_LoadRowPriceListNo.AsInteger, cds_LoadRowProductNo.AsInteger, cds_LoadRowProductLengthNo.AsInteger)
//     else
     //annat fall om lastorder �r av normal typ tas priset fr�n orderrad
      if cds_LoadRowObjectType.AsInteger = 2 then
       Price:= GetPriceOfOrderRow(Inkop, cds_LoadRowLoadedDate.AsSQLTimeStamp, SupplierNo, cds_LoadRowdefsspno.AsInteger, cds_LoadRowProductNo.AsInteger, cds_LoadRowProductLengthNo.AsInteger)
        else
         Price:= 0 ;
  End
  else
  Begin
   if Inkop then
    Price:= cds_LoadRowPrice.AsFloat + cds_LoadRowInternKundFrakt.AsFloat
     else
      Price:= cds_LoadRowPrice.AsFloat ;
  End ;

//  if cds_LoadDtlVal.FindKey([cds_LoadRowLoadNo.AsInteger, cds_LoadRowLoadDetailNo.AsInteger, cds_LoadRowProductLengthNo.AsInteger,
//  PaymentNo, PaymentType, SupplierNo]) then
  if cds_LoadDtlVal.Locate('LoadNo;LoadDetailNo;ProductLengthNo;SupplierNo', VarArrayOf([cds_LoadRowLoadNo.AsInteger, cds_LoadRowLoadDetailNo.AsInteger, cds_LoadRowProductLengthNo.AsInteger, SupplierNo]), []) then
  cds_LoadDtlVal.Edit
  else
(**  Insert record to LoadDtlVal table **)
  cds_LoadDtlVal.Insert ;
  cds_LoadDtlValLoadNo.AsInteger          := cds_LoadRowLoadNo.AsInteger ;
  cds_LoadDtlValLoadDetailNo.AsInteger    := cds_LoadRowLoadDetailNo.AsInteger ;
  cds_LoadDtlValProductLengthNo.AsInteger := cds_LoadRowProductLengthNo.AsInteger ;
  cds_LoadDtlValNM3.AsFloat               := cds_LoadRowm3Nominal.AsFloat ;
  cds_LoadDtlValPrice.AsFloat             := Price ;
  if Update_OldPrice then
   cds_LoadDtlValOldPrice.AsFloat          := Price ;
  cds_LoadDtlValSubsum.AsFloat            := Price * cds_LoadRowm3Nominal.AsFloat ;
  cds_LoadDtlValPaymentNo.AsInteger       := PaymentNo ;//-1 som default
  cds_LoadDtlValPaymentType.AsInteger     := PaymentType ; //0 som default
  cds_LoadDtlValPackageTypeNo.AsInteger   := cds_LoadRowPackageTypeNo.AsInteger ;
//  if Inkop = True then
//  cds_LoadDtlValSupplierNo.AsInteger := 741
//  else

  cds_LoadDtlValSupplierNo.AsInteger      := SupplierNo ;
  cds_LoadDtlValLoadedDate.AsSQLTimeStamp := cds_LoadRowLoadedDate.AsSQLTimeStamp ;
  cds_LoadDtlValVerk_FS.AsString          := cds_LoadRowFS.AsString ;
  cds_LoadDtlVal.Post ;

  cds_LoadRow.Next ;
 End ;//While
 Finally
  cds_LoadRow.Active:= False ;
 End ;
 if cds_LoadDtlVal.ChangeCount > 0 then
  cds_LoadDtlVal.ApplyUpdates(0) ;
 Finally
  cds_LoadDtlVal.Active:= False ;
 End ;
End ;

procedure TdmArrivingLoads.dsrcPortArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
 cdsPortArrivingPackages.Active:= False ;
 cdsPortArrivingPackages.Close ;
 cdsPortArrivingPackages.ParamByName('LoadNo').AsInteger          := cdsPortArrivingLoadsVerk_LoadNo.AsInteger ;
 cdsPortArrivingPackages.ParamByName('ShippingPlanNo').AsInteger  := cdsPortArrivingLoadsLO.AsInteger ;
 cdsPortArrivingPackages.ParamByName('Reference').AsString        := cdsPortArrivingLoadsM�RKNING.AsString ;
 cdsPortArrivingPackages.Open ;
 cdsPortArrivingPackages.Active:= True ;
end;

Function TdmArrivingLoads.GetMotsvarandeVWLIPNo(const LIPNo : Integer) : Integer ;
Begin
 Result:= -1 ;
  sq_Get_VWLIPNo.ParamByName('LIPNo').AsInteger:= LIPNo ;
  sq_Get_VWLIPNo.Open ;
 Try
  if not sq_Get_VWLIPNo.Eof then
   Result:= sq_Get_VWLIPNoVW_LIPNo.AsInteger
    else
     Result:= -1 ;
 Finally
  sq_Get_VWLIPNo.Close ;
 End ;
End ;

Function TdmArrivingLoads.SearchPkgNoInLoad (const PackageNo : Integer) : Integer ;
Begin
{ sq_SearchPkgNo.ParamByName('PackageNo').AsInteger:= PackageNo ;

 Case cds_SearchPkgNo.Recordcount of
  0 :
  1 : Result:= cds_SearchPkgNoLoadNo.AsInteger ;
  else }
End ;

function TdmArrivingLoads.PkgNoToSuppCode(const PkgNo : Integer): string3;
var
  SuppCode : string3;

procedure getPkgsByInventoryPlace ;
begin
  cds_PksByInventoryPlace.ParamByName('PkgNo').AsInteger             := PkgNo;
end;

begin
  cds_PksByInventoryPlace.Active:= False ;
  getPkgsByInventoryPlace ;
  cds_PksByInventoryPlace.Active:= True ;
  case cds_PksByInventoryPlace.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := cds_PksByInventoryPlace.FieldByName('SupplierCode').AsString;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_PksByInventoryPlace,SuppCode);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmArrivingLoads.DataModuleCreate(Sender: TObject);
begin
//  dmArrivingLoads.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
end;

procedure TdmArrivingLoads.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3);
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to pick. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_II.Create(Nil) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
//      SupplierNo := SupplierNoForSelectedpkg;
//      ProductNo  := ProductNoForSelectedpkg ;
      end
    else
      Choice := '';
  finally
    free;
    end;
end;

Function TdmArrivingLoads.SearchLoadNoByPkgNo(const PackageNo, ShippingCompanyNo : Integer;const SupplierCode : String) : Integer ;
Begin
 Try
 sq_SearchLoadNoByPkgNo.ParamByName('PackageNo').AsInteger          := PackageNo ;
 sq_SearchLoadNoByPkgNo.ParamByName('ShippingCompanyNo').AsInteger  := ShippingCompanyNo ;
 sq_SearchLoadNoByPkgNo.ParamByName('SupplierCode').AsString        := SupplierCode ;
 sq_SearchLoadNoByPkgNo.Open ;
 if not sq_SearchLoadNoByPkgNo.Eof then
  Result := sq_SearchLoadNoByPkgNoVERK_LOADNO.AsInteger
   else
    Result := -1 ;
 Finally
  sq_SearchLoadNoByPkgNo.Close ;
 End ;
End ;

Function TdmArrivingLoads.GetMotsvarandeVWLIPNoForLoadingLocation(const LONo : Integer) : Integer ;
Begin
 Result:= -1 ;
 sq_getMTSLLLipNo.ParamByName('LONo').AsInteger:= LONo ;
 sq_getMTSLLLipNo.Open ;
 Try
  if not sq_getMTSLLLipNo.Eof then
   Result:= sq_getMTSLLLipNoLIPNo.AsInteger
    else
     Result:= -1 ;
 Finally
  sq_getMTSLLLipNo.Close ;
 End ;
End ;

procedure TdmArrivingLoads.AR_Load(const LoadNo, Status, LIPNo, CreatedUser : Integer) ;
Begin
 Try
 sp_AR_Invoice.ParamByName('@LoadNo').AsInteger            := LoadNo ;
 sp_AR_Invoice.ParamByName('@Status').AsInteger            := Status ;
 sp_AR_Invoice.ParamByName('@LIPNo').AsInteger             := LIPNo ;
 sp_AR_Invoice.ParamByName('@CreatedUser').AsInteger       := CreatedUser ;
 sp_AR_Invoice.ExecProc ;

 except
  On E: Exception do
  Begin
//   dmsSystem.FDoLog(E.Message) ;
   ShowMessage(E.Message);
   Raise ;
  End ;
 end;
End ;

procedure TdmArrivingLoads.mtUserPropOwnerNoChange(Sender: TField);
begin
 cds_PIP.Active := False ;
 cds_PIP.ParamByName('UserID').AsInteger   := ThisUser.UserID ;
 cds_PIP.ParamByName('OwnerNo').AsInteger  := ThisUser.CompanyNo ;
 cds_PIP.Active := True ;

 if (cds_PIP.Active) and (cds_PIP.RecordCount > 0) then
 Begin
  mtUserPropPIPNo.AsInteger := cds_PIPPIPNO.AsInteger ;
  cds_LIP.Active    := False ;
  cds_LIP.Filter    := 'PIPNo = ' + mtUserPropPIPNo.AsString ;
  cds_LIP.Filtered  := True ;
  cds_LIP.Active    := True ;
  if cds_LIP.RecordCount = 1 then
   mtUserPropLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
 End ;
// cdsArrivingLoads.Active  := False ;
end;

procedure TdmArrivingLoads.mtUserPropPIPNoChange(Sender: TField);
begin
 if (cds_PIP.Active) and (cds_PIP.RecordCount > 0) then
 Begin
//  mtUserPropPIPNo.AsInteger := cds_PIPPIPNO.AsInteger ;
  cds_LIP.Active    := False ;
  cds_LIP.Filter    := 'PIPNo = ' + mtUserPropPIPNo.AsString ;
  cds_LIP.Filtered  := True ;
  cds_LIP.Active    := True ;
  if cds_LIP.RecordCount > 0 then
   mtUserPropLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
 End ;
end;

procedure TdmArrivingLoads.mtUserPropLIPNoChange(Sender: TField);
begin
// cdsArrivingLoads.Active  := False ;
end;

procedure TdmArrivingLoads.SetDateCreatedPkgsVP(const LoadNo : Integer) ;
Begin
 Try
 sp_vis_SetDateCreatedPkgsVP.ParamByName('@LoadNo').AsInteger  := LoadNo ;
 sp_vis_SetDateCreatedPkgsVP.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

end.
