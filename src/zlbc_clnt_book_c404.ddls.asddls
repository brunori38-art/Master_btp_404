@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Client Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
serviceQuality: #B,
sizeCategory: #S,
dataClass: #MIXED
}

define view entity zlbc_clnt_book_c404
  as select from zlbt_clnlib_c404
{
  key id_libro                     as BookId,
      count( distinct id_cliente ) as sales

}
group by
  id_libro;
