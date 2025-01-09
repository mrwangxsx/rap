CLASS znull_gen_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS znull_gen_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
  TYPES: TT_EMPL  TYPE STANDARD TABLE OF ZDB_NULL_EMPL WITH DEFAULT KEY,
         TT_CONT  TYPE STANDARD TABLE OF ZDB_NULL_CONT WITH DEFAULT KEY,
         TT_ADDR  TYPE STANDARD TABLE OF ZDB_NULL_ADDR WITH DEFAULT KEY,
         TT_PROJ  TYPE STANDARD TABLE OF ZDB_NULL_PROJ WITH DEFAULT KEY,
         TT_SKILL TYPE STANDARD TABLE OF ZDB_NULL_SKILL WITH DEFAULT KEY,
         TT_COUNTRY TYPE STANDARD TABLE OF ZDB_NULL_COUNTRY WITH DEFAULT KEY.

""" Employee - Basic Info
  DATA(LT_EMPL) = VALUE TT_EMPL(
  ( emplid = '1234' fname = 'Thamos'    lname = 'Jung'      gender = 'M' designation = 'Senior Consultant' )
  ( emplid = '1235' fname = 'William'   lname = 'Hall'      gender = 'M' designation = 'Associate Consultant' )
  ( emplid = '1236' fname = 'Akshay'    lname = 'Kumar'     gender = 'M' designation = 'Senior Consultant' )
  ( emplid = '1237' fname = 'Jacob'     lname = 'Brown'     gender = 'M' designation = 'Associate Consultant' )
  ( emplid = '1238' fname = 'Brandon'   lname = 'Williams'  gender = 'M' designation = 'Senior Consultant' )
  ( emplid = '1239' fname = 'Oliver'    lname = 'Nelson'    gender = 'F' designation = 'Associate Consultant' )
  ( emplid = '1240' fname = 'Raj'       lname = 'Kumar'     gender = 'M' designation = 'Senior Consultant' )
  ( emplid = '1241' fname = 'Grace'     lname = 'Smith'     gender = 'F' designation = 'Senior Consultant' )
  ( emplid = '1242' fname = 'Victoria'  lname = 'Jones'     gender = 'F' designation = 'Associate Consultant' )
  ( emplid = '1243' fname = 'Rahul'     lname = 'Sharma'    gender = 'M' designation = 'Associate Consultant' )
  ( emplid = '1244' fname = 'Stella'    lname = 'Davis'     gender = 'F' designation = 'Associate Consultant' )
  ( emplid = '1245' fname = 'Akira'     lname = 'Lophez'    gender = 'M' designation = 'Senior Consultant' )
  ( emplid = '1246' fname = 'Daniel'    lname = 'Gracia'    gender = 'M' designation = 'Senior Consultant' )
  ( emplid = '1247' fname = 'Priya'     lname = 'Menon'     gender = 'F' designation = 'Associate Consultant' )
  ( emplid = '1248' fname = 'John'      lname = 'Miller'    gender = 'M' designation = 'Associate Consultant' )
  ( emplid = '1249' fname = 'Genki'     lname = 'Lee'       gender = 'F' designation = 'Associate Consultant' )
  ( emplid = '1250' fname = 'Mahesh'    lname = 'Babu'      gender = 'M' designation = 'Associate Consultant' )
  ).
  """ Upload - EMPL
  LOOP AT LT_EMPL INTO DATA(LS_EMPL).
      INSERT ZDB_NULL_EMPL FROM @LS_EMPL.
      COMMIT WORK.
  ENDLOOP.
  """ Print
  out->write( 'Employee Basic Info Records Created...'  ).

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Contact Info
  DATA(LT_CONT) = VALUE TT_CONT(
  ( emplid = '1234' phone_num = '9000001234' alt_phone_num = '1000001234' email_id = 'tjung@zmail.com'     alt_email_id = 'tjung@ymail.com' )
  ( emplid = '1235' phone_num = '9000001235' alt_phone_num = '1000001235' email_id = 'whall@zmail.com'     alt_email_id = 'whall@ymail.com' )
  ( emplid = '1236' phone_num = '9000001236' alt_phone_num = '1000001236' email_id = 'akumar@zmail.com'    alt_email_id = 'akumar@ymail.com' )
  ( emplid = '1237' phone_num = '9000001237' alt_phone_num = '1000001237' email_id = 'jbrown@zmail.com'    alt_email_id = 'jbrown@ymail.com' )
  ( emplid = '1238' phone_num = '9000001238' alt_phone_num = '1000001238' email_id = 'bwilliams@zmail.com' alt_email_id = 'bwilliams@ymail.com' )
  ( emplid = '1239' phone_num = '9000001239' alt_phone_num = '1000001239' email_id = 'onelson@zmail.com'   alt_email_id = 'onelson@ymail.com' )
  ( emplid = '1240' phone_num = '9000001240' alt_phone_num = '1000001240' email_id = 'rkumar@zmail.com'    alt_email_id = 'rkumar@ymail.com' )
  ( emplid = '1241' phone_num = '9000001241' alt_phone_num = '1000001241' email_id = 'gsmith@zmail.com'    alt_email_id = 'gsmith@ymail.com' )
  ( emplid = '1242' phone_num = '9000001242' alt_phone_num = '1000001242' email_id = 'vjones@zmail.com'    alt_email_id = 'vjones@ymail.com' )
  ( emplid = '1243' phone_num = '9000001243' alt_phone_num = '1000001243' email_id = 'rsharma@zmail.com'   alt_email_id = 'rsharma@ymail.com' )
  ( emplid = '1244' phone_num = '9000001244' alt_phone_num = '1000001244' email_id = 'sdavis@zmail.com'    alt_email_id = 'sdavis@ymail.com' )
  ( emplid = '1245' phone_num = '9000001245' alt_phone_num = '1000001245' email_id = 'alophez@zmail.com'   alt_email_id = 'alophez@ymail.com' )
  ( emplid = '1246' phone_num = '9000001246' alt_phone_num = '1000001246' email_id = 'dgracia@zmail.com'   alt_email_id = 'dgracia@ymail.com' )
  ( emplid = '1247' phone_num = '9000001247' alt_phone_num = '1000001247' email_id = 'pmenon@zmail.com'    alt_email_id = 'pmenon@ymail.com' )
  ( emplid = '1248' phone_num = '9000001248' alt_phone_num = '1000001248' email_id = 'jmiller@zmail.com'   alt_email_id = 'jmiller@ymail.com' )
  ( emplid = '1249' phone_num = '9000001249' alt_phone_num = '1000001249' email_id = 'glee@zmail.com'      alt_email_id = 'glee@ymail.com' )
  ( emplid = '1250' phone_num = '9000001250' alt_phone_num = '1000001250' email_id = 'mbabu@zmail.com'     alt_email_id = 'mbabu@ymail.com' )
  ).
  """ Upload - CONT
  LOOP AT LT_CONT INTO DATA(LS_CONT).
      INSERT ZDB_NULL_CONT FROM @LS_CONT.
      COMMIT WORK.
  ENDLOOP.
  """ Print
  out->write( 'Employee Contact Info Records Created...'  ).
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Address Info
  DATA(LT_ADDR) = VALUE TT_ADDR(
  ( emplid = '1234' street = 'St. 1234' city = 'Los Angeles' country = 'US' )
  ( emplid = '1235' street = 'St. 1235' city = 'Melbourne' country = 'AU' )
  ( emplid = '1236' street = 'St. 1236' city = 'Mumbai' country = 'IN' )
  ( emplid = '1237' street = 'St. 1237' city = 'Texas' country = 'US' )
  ( emplid = '1238' street = 'St. 1238' city = 'Sydney' country = 'AU' )
  ( emplid = '1239' street = 'St. 1239' city = 'New York' country = 'US' )
  ( emplid = '1240' street = 'St. 1240' city = 'Bangalore' country = 'IN' )
  ( emplid = '1241' street = 'St. 1241' city = 'Brisbane' country = 'AU' )
  ( emplid = '1242' street = 'St. 1242' city = 'California' country = 'US' )
  ( emplid = '1243' street = 'St. 1243' city = 'Hyderabad' country = 'IN' )
  ( emplid = '1244' street = 'St. 1244' city = 'New York' country = 'US' )
  ( emplid = '1245' street = 'St. 1245' city = 'Frankfurt' country = 'DE' )
  ( emplid = '1246' street = 'St. 1246' city = 'Sydney' country = 'AU' )
  ( emplid = '1247' street = 'St. 1247' city = 'Bangalore' country = 'IN' )
  ( emplid = '1248' street = 'St. 1248' city = 'Sydney' country = 'AU' )
  ( emplid = '1249' street = 'St. 1249' city = 'Berlin' country = 'DE' )
  ( emplid = '1250' street = 'St. 1250' city = 'Hyderabad' country = 'IN' )
  ).

  """ Upload - ADDR
  LOOP AT LT_ADDR INTO DATA(LS_ADDR).
      INSERT ZDB_NULL_ADDR FROM @LS_ADDR.
      COMMIT WORK.
  ENDLOOP.
  """ Print
  out->write( 'Employee Address Info Records Created...'  ).
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Project Info
  DATA(LT_PROJ) = VALUE TT_PROJ(
  ( emplid = '1234' projid = 'XYZ'   project_name = 'XYZ Solutions'     project_type = 'IMP' is_current = 'X' duration = '2' )
  ( emplid = '1234' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = ''  duration = '5' )
  ( emplid = '1234' projid = 'INT'   project_name = 'Internal Project'  project_type = 'SUP' is_current = ''  duration = '3' )
  ( emplid = '1235' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '4' )
  ( emplid = '1235' projid = 'INT'   project_name = 'Internal Project'  project_type = 'IMP' is_current = ''  duration = '2' )
  ( emplid = '1236' projid = 'BENCH' project_name = 'Bench'             project_type = 'NA'  is_current = 'X' duration = '0' )
  ( emplid = '1237' projid = 'INT'   project_name = 'Internal Project'  project_type = 'IMP' is_current = 'X' duration = '2' )
  ( emplid = '1238' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '1' )
  ( emplid = '1238' projid = 'XYZ'   project_name = 'XYZ Solutions'     project_type = 'IMP' is_current = ''  duration = '2' )
  ( emplid = '1238' projid = 'INT'   project_name = 'Internal Project'  project_type = 'SUP' is_current = ''  duration = '4' )
  ( emplid = '1239' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '2' )
  ( emplid = '1240' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '3' )
  ( emplid = '1240' projid = 'INT'   project_name = 'Internal Project'  project_type = 'IMP' is_current = ''  duration = '3' )
  ( emplid = '1241' projid = 'XYZ'   project_name = 'XYZ Solutions'     project_type = 'SUP' is_current = 'X' duration = '4' )
  ( emplid = '1242' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '2' )
  ( emplid = '1242' projid = 'XYZ'   project_name = 'XYZ Solutions'     project_type = 'IMP' is_current = ''  duration = '2' )
  ( emplid = '1243' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '3' )
  ( emplid = '1244' projid = 'BENCH' project_name = 'Bench'             project_type = 'NA'  is_current = 'X' duration = '0' )
  ( emplid = '1245' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '1' )
  ( emplid = '1246' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'SUP' is_current = 'X' duration = '1' )
  ( emplid = '1247' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'IMP' is_current = 'X' duration = '1' )
  ( emplid = '1248' projid = 'ABC'   project_name = 'ABC Technologies'  project_type = 'SUP' is_current = 'X' duration = '2' )
  ( emplid = '1249' projid = 'XYZ'   project_name = 'XYZ Solutions'     project_type = 'IMP' is_current = 'X' duration = '2' )
  ( emplid = '1249' projid = 'INT'   project_name = 'Internal Project'  project_type = 'IMP' is_current = ''  duration = '1' )
  ( emplid = '1250' projid = 'BANCH' project_name = 'Bench'             project_type = 'NA'  is_current = 'X' duration = '0' )
  ).
  """ Upload - PROJ
  LOOP AT LT_PROJ INTO DATA(LS_PROJ).
      INSERT ZDB_NULL_PROJ FROM @LS_PROJ.
      COMMIT WORK.
  ENDLOOP.
  """ Print
  out->write( 'Employee Project Info Records Created...'  ).
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Skill Info
  DATA(LT_SKILL) = VALUE TT_SKILL(
  ( emplid = '1234' projid = 'XYZ'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1234' projid = 'XYZ'   skillid = 'ODATA'  skill_level = 'L2' is_primary = ''  is_certified = '' )
  ( emplid = '1234' projid = 'XYZ'   skillid = 'FIORI'  skill_level = 'L1' is_primary = ''  is_certified = '' )
  ( emplid = '1234' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1234' projid = 'ABC'   skillid = 'ODATA'  skill_level = 'L2' is_primary = ''  is_certified = '' )
  ( emplid = '1234' projid = 'INT'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1235' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1235' projid = 'ABC'   skillid = 'ODATA'  skill_level = 'L1' is_primary = ''  is_certified = '' )
  ( emplid = '1235' projid = 'INT'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1235' projid = 'INT'   skillid = 'ODATA'  skill_level = 'L1' is_primary = ''  is_certified = '' )
  ( emplid = '1236' projid = 'BENCH' skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = '' )
  ( emplid = '1237' projid = 'INT'   skillid = 'ODATA'  skill_level = 'L2' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1238' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = '' )
  ( emplid = '1238' projid = 'XYZ'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = '' )
  ( emplid = '1238' projid = 'INT'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = '' )
  ( emplid = '1239' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = 'X' )
  ( emplid = '1239' projid = 'ABC'   skillid = 'FIORI'  skill_level = 'L1' is_primary = ''  is_certified = '2' )
  ( emplid = '1240' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L1' is_primary = ''  is_certified = '3' )
  ( emplid = '1240' projid = 'INT'   skillid = 'FIORI'  skill_level = 'L1' is_primary = ''  is_certified = '3' )
  ( emplid = '1241' projid = 'XYZ'   skillid = 'ODATA'  skill_level = 'L2' is_primary = ''  is_certified = '4' )
  ( emplid = '1242' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = '2' )
  ( emplid = '1242' projid = 'XYZ'   skillid = 'FIORI'  skill_level = 'L1' is_primary = ''  is_certified = '2' )
  ( emplid = '1243' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L3' is_primary = 'X' is_certified = '3' )
  ( emplid = '1243' projid = 'ABC'   skillid = 'ODATA'  skill_level = 'L2' is_primary = ''  is_certified = '3' )
  ( emplid = '1243' projid = 'ABC'   skillid = 'FIORI'  skill_level = 'L2' is_primary = 'X' is_certified = '3' )
  ( emplid = '1243' projid = 'ABC'   skillid = 'SAPUI5' skill_level = 'L2' is_primary = ''  is_certified = '3' )
  ( emplid = '1244' projid = 'BENCH' skillid = 'FIORI'  skill_level = 'L2' is_primary = ''  is_certified = '0' )
  ( emplid = '1244' projid = 'BENCH' skillid = 'SAPUI5' skill_level = 'L2' is_primary = ''  is_certified = '0' )
  ( emplid = '1245' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L3' is_primary = ''  is_certified = '1' )
  ( emplid = '1246' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = '1' )
  ( emplid = '1247' projid = 'ABC'   skillid = 'ABAP'   skill_level = 'L1' is_primary = 'X' is_certified = '1' )
  ( emplid = '1248' projid = 'ABC'   skillid = 'ODATA'  skill_level = 'L3' is_primary = ''  is_certified = '2' )
  ( emplid = '1249' projid = 'XYZ'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = '2' )
  ( emplid = '1249' projid = 'INT'   skillid = 'ABAP'   skill_level = 'L2' is_primary = 'X' is_certified = '1' )
  ( emplid = '1249' projid = 'INT'   skillid = 'FIORI'  skill_level = 'L1' is_primary = ''  is_certified = '1' )
  ( emplid = '1250' projid = 'BANCH' skillid = 'FIORI'  skill_level = 'L2' is_primary = ''  is_certified = '0' )
  ).
  """ Upload - SKILL
  LOOP AT LT_SKILL INTO DATA(LS_SKILL).
      INSERT ZDB_NULL_SKILL FROM @LS_SKILL.
      COMMIT WORK.
  ENDLOOP.
  """ Print
  out->write( 'Employee Skills Info Records Created...'  ).
*DELETE FROM ZDB_TKG_SKILL.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Country & Logo URL
  DATA(LT_COUNTRY) = VALUE TT_COUNTRY(
    ( country = 'IN' logo_url = 'https://raw.githubusercontent.com/hampusborgos/country-flags/refs/heads/main/png1000px/in.png' )
    ( country = 'US' logo_url = 'https://raw.githubusercontent.com/hampusborgos/country-flags/refs/heads/main/png1000px/us.png' )
    ( country = 'AU' logo_url = 'https://raw.githubusercontent.com/hampusborgos/country-flags/refs/heads/main/png1000px/au.png' )
    ( country = 'DE' logo_url = 'https://raw.githubusercontent.com/hampusborgos/country-flags/refs/heads/main/png1000px/de.png' )
  ).

   """ Upload - COUNTRY
  LOOP AT LT_COUNTRY INTO DATA(LS_COUNTRY).
      INSERT ZDB_NULL_COUNTRY FROM @LS_COUNTRY.
      COMMIT WORK.
  ENDLOOP.
  """ Print
  out->write( 'Country Info Records Created...'  ).
* DELETE FROM ZDB_TKG_COUNTRY.
  ENDMETHOD.

ENDCLASS.
