CLASS zlbcl_insert_tabcustomer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zlbcl_insert_tabcustomer IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lt_customers) = VALUE ZLBtT_CUSTOMER(
( doc_id = '005638984K' matricula =
'8764FGH' nombres = 'Olivia' apellidos = 'Allan'
email = 'olivia.allan@email.com' cntr_type = 'C1'
)
( doc_id = '982356739N' matricula =
'8764FGH' nombres = 'Matt' apellidos = 'Slater'
email = 'matt.slater@email.com' cntr_type = 'C3'
)
( doc_id = '453532543O' matricula =
'8764FGH' nombres = 'Vanessa' apellidos = 'Wilson'
email = 'vanessa.wilson@email.com' cntr_type = 'C1'
)
( doc_id = '005632984R' matricula =
'1246GSA' nombres = 'John' apellidos = 'Allan'
email = 'john.allan@email.com' cntr_type = 'C3'
)
( doc_id = '982367739N' matricula =
'1246GSA' nombres = 'Clark' apellidos = 'Allan'
email = 'clark.slater@email.com' cntr_type = 'C2'
)
( doc_id = '340958439D' matricula =
'29348KJ' nombres = 'Michael' apellidos = 'Short'
email = 'michael.short@email.com' cntr_type = 'C1'
)
( doc_id = '964356739N' matricula =
'29348KJ' nombres = 'Robert' apellidos = 'Allan'
email = 'robert.slater@email.com' cntr_type = 'C1'
)
( doc_id = '340458439D' matricula =
'2847JGH' nombres = 'Cole' apellidos = 'Short'
email = 'cole.short@email.com' cntr_type = 'C2'
)
( doc_id = '340958438D' matricula =
'2827SAF' nombres = 'George' apellidos = 'Short'
email = 'george.short@email.com' cntr_type = 'C3'
)

( doc_id = '859675368G' matricula =
'2827SAF' nombres = 'Sonny' apellidos = 'Wright'
email = 'sonny.wright@email.com' cntr_type = 'C2'
)
( doc_id = '859675388V' matricula =
'2827SAF' nombres = 'Evelyn' apellidos = 'Wright'
email = 'evelyn.wright@email.com' cntr_type = 'C2'
)
( doc_id = '340952439D' matricula =
'2837KFF' nombres = 'Avery' apellidos = 'Short'
email = 'avery.short@email.com' cntr_type = 'C4'
)
( doc_id = '859675388G' matricula =
'2837KFF' nombres = 'Madison' apellidos = 'Wright'
email = 'madison.wright@email.com' cntr_type =
'C1' )
( doc_id = '982656739N' matricula =
'2837SUF' nombres = 'Matt' apellidos = 'Slater'
email = 'matt.slater@email.com' cntr_type = 'C3' )
( doc_id = '345093450E' matricula =
'2425SFA' nombres = 'Sue' apellidos =
'Sanderson' email = 'sue.sanderson@email.com'
cntr_type = 'C1' )
( doc_id = '852367586F' matricula =
'2425SFA' nombres = 'Eric' apellidos = 'Berry'
email = 'eric.berry@email.com' cntr_type = 'C4'
)
( doc_id = '345093850A' matricula =
'2392JFH' nombres = 'Lily' apellidos =
'Sanderson' email = 'lily.sanderson@email.com'
cntr_type = 'C3' )
( doc_id = '489632862G' matricula =
'2329HFS' nombres = 'Neil' apellidos = 'Welch'
email = 'neil.welch@email.com' cntr_type = 'C2'
)
( doc_id = '345234534M' matricula =
'2329HFS' nombres = 'Lily' apellidos = 'Langdon'
email = 'lily.langdon@email.com' cntr_type = 'C1' )
( doc_id = '453572543O' matricula =
'2329HFS' nombres = 'Vanessa' apellidos = 'Wilson'
email = 'vanessa.wilson@email.com' cntr_type = 'C4'
)
( doc_id = '345839534R' matricula =
'2356FSF' nombres = 'Andrew' apellidos =
'Langdon' email = 'andrew.langdon@email.com'
cntr_type = 'C2' )
( doc_id = '852327586F' matricula =
'2392JFH' nombres = 'Addison' apellidos = 'Berry'
email = 'addison.berry@email.com' cntr_type =
'C2' )
( doc_id = '345831534R' matricula =
'2174FHF' nombres = 'Lucy' apellidos = 'Langdon'
email = 'lucy.langdon@email.com' cntr_type = 'C0' )
( doc_id = '489612882D' matricula =
'2174FHF' nombres = 'Julian' apellidos = 'Welch'
email = 'julian.welch@email.com' cntr_type =
'C1' )
( doc_id = '348941597P' matricula =
'2188SJS' nombres = 'Cooper' apellidos = 'Davies'
email = 'cooper.davies@email.com' cntr_type = 'C1'
)
( doc_id = '348947997P' matricula =
'1246GSA' nombres = 'Lillian' apellidos = 'Davies'
email = 'lillian.davies@email.com' cntr_type = 'C2'
)
( doc_id = '430958233A' matricula =
'2174FHF' nombres = 'Wendy' apellidos = 'Short'
email = 'wendy.short@email.com' cntr_type = 'C4'
)
( doc_id = '453832543O' matricula =
'4545ABC' nombres = 'Vanessa' apellidos = 'Wilson'
email = 'vanessa.wilson@email.com' cntr_type = 'C1'
)
( doc_id = '982124739N' matricula =
'2148AFS' nombres = 'Tyler' apellidos = 'Slater'
email = 'tyler.slater@email.com' cntr_type = 'C3'
)
( doc_id = '982356839W' matricula =
'5235HER' nombres = 'Parker' apellidos = 'Slater'
email = 'parker.slater@email.com' cntr_type = 'C3'
)
).
DELETE FROM zrent_customers.
INSERT zrent_customersf FROM TABLE @lt_customers.
SELECT * FROM zrent_customersf INTO TABLE
@lt_customers.
out->write( sy-dbcnt ).
out->write( 'zrent_customers data inserted successfully!' ).

  ENDMETHOD.

ENDCLASS.
