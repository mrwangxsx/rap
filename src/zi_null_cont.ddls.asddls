@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZDB_NULL_CONT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zi_NULL_CONT as select from ZDB_NULL_CONT
{
    key emplid as Emplid,
    phone_num as PhoneNum,
    alt_phone_num as AltPhoneNum,
    email_id as EmailId,
    alt_email_id as AltEmailId
}
