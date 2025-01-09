@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Empl Baisc Info'
@Metadata.allowExtensions: true
define root view entity ZC_NULL_EMPL_2
  as select from ZI_NULL_EMPL_2
  composition [1..*] of ZC_NULL_PROJ as _proj
  association [1..*] to ZC_NULL_SKILL as _skill
    on $projection.Emplid = _skill.Emplid 
{
  key Emplid,
      Fname,
      Lname,
      Gender,
      Designation,
      FullName,
      _cont.PhoneNum,
      _cont.AltPhoneNum,
      _cont.EmailId,
      _cont.AltEmailId,

      _addr.Street,
      _addr.City,
      _addr.Country,
      _proj,
      _skill
}
