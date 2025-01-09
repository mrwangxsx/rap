@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_NULL_EMPL_2
  as select from zdb_null_empl
  association [1..1] to Zi_NULL_CONT as _cont on $projection.Emplid = _cont.Emplid
  association [1..1] to ZI_NULL_ADDR as _addr on $projection.Emplid = _addr.Emplid
{
  key emplid                            as Emplid,
      fname                             as Fname,
      lname                             as Lname,
      gender                            as Gender,
      designation                       as Designation,
      concat_with_space( fname,lname,1) as FullName,
      _cont,
      _addr
}
