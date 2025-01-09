@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZDB_NULL_SKILL'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_NULL_SKILL as select from zdb_null_skill
{
    key emplid as Emplid,
    key projid as Projid,
    key skillid as Skillid,
    skill_level as SkillLevel,
    is_primary as IsPrimary,
    is_certified as IsCertified
}
