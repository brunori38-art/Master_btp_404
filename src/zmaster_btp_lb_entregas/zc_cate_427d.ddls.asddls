@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Category'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_cate_427d 
  as select from ztb_catego_427d
{
  key bi_categ    as Category,
      descripcion as Description
}
