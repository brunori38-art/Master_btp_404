@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Category'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZLBC_CATEG_C404
  as select from zlbt_catego_c404
{
  key bi_categ    as Category,
      descripcion as Description
}
