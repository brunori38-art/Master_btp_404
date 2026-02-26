@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Client Books'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_clientebook_427d
  as select from ztb_libcli_427d
{
  key id_libro                     as BookId,
      count( distinct id_cliente ) as sales
}
group by
  id_libro;
