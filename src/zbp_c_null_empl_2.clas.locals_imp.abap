CLASS lsc_zc_null_empl_2 DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS adjust_numbers REDEFINITION.

ENDCLASS.

CLASS lsc_zc_null_empl_2 IMPLEMENTATION.

  METHOD adjust_numbers.

    IF 1 = 2.

    ENDIF.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZC_NULL_EMPL_2 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zc_null_empl_2 RESULT result.

ENDCLASS.

CLASS lhc_ZC_NULL_EMPL_2 IMPLEMENTATION.

  METHOD get_instance_authorizations.
   if 1 = 2.

   endif.
  ENDMETHOD.

ENDCLASS.
