@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZDB_NULL_PROJ'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zi_NULL_PROJ as select from zdb_null_proj
{
    key emplid as Emplid,
    key projid as Projid,
    project_name as ProjectName,
    project_type as ProjectType,
    is_current as IsCurrent,
    duration as Duration
}
