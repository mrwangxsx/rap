@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_NULL_SKILL'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_NULL_SKILL as select from ZI_NULL_SKILL
  association to parent ZC_NULL_PROJ as _proj
    on  $projection.Emplid = _proj.Emplid
    and $projection.Projid = _proj.Projid
  association [1..1] to ZC_NULL_EMPL_2 as _empl
    on $projection.Emplid = _empl.Emplid
{
    key Emplid,
    key Projid,
    key Skillid,
    SkillLevel,
    IsPrimary,
    IsCertified,
    
    _proj,
    _empl
}
