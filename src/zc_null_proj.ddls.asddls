@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_NULL_PROJ
  as select from Zi_NULL_PROJ
  association to parent ZC_NULL_EMPL_2 as _empl
  on $projection.Emplid = _empl.Emplid
  composition [1..*] of ZC_NULL_SKILL as _skill 
{
  key Emplid,
  key Projid,
      ProjectName,
      ProjectType,
      IsCurrent,
      Duration,
      _empl,
      
      _skill 
}
