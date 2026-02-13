@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Books'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true

define view entity ZLBC_books_C404
  as select from    zlbt_libros_c404 as Books

    inner join      zlbt_catego_c404 as Category on Category.bi_categ = Books.bi_categ

    left outer join zlbc_clnt_book_c404 as Sales    on Sales.BookId = Books.id_libro

  association [0..*] to ZLBC_client_C404 as _Client on $projection.Idlibro = _Client.IdBook

{
  key Books.id_libro  as Idlibro,
      Books.titulo    as Titulo,
   Books.bi_categ  as BiCateg,  
      Books.autor     as Autor,
      Books.editorial as Editorial,
      Books.idioma    as Idioma,
      Books.paginas   as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      Books.precio    as Precio,
      Books.moneda    as Moneda,
      case      
      when Sales.sales < 1 then 0
      when Sales.sales = 1 then 1
      when Sales.sales = 2 then 2
      when Sales.sales > 2 then 3
      else 0
      end as Sales,      
      
      Category.descripcion as Description,
      
      Books.formato   as Formato,
      Books.imagen       as Imagen,

      _Client
}
