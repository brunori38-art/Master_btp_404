@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Client'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define view entity ZLBC_client_C404
  as select from zlbt_client_c404 as Clients

    inner join   zlbt_clnlib_c404 as relclnlib on relclnlib.id_cliente = Clients.id_cliente

{
  key Clients.id_cliente  as IdClient,
  key relclnlib.id_libro  as IdBook,
  key Clients.tipo_acceso as AccessType,
      Clients.nombre      as Name,
      Clients.apellido    as Surname,
      Clients.emeail      as Email,
      Clients.url         as images
}
