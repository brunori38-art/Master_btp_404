@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Client'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define view entity ZC_cliente_427d   
  as select from ztb_cliente_427d as Clients

    inner join   ztb_libcli_427d as relclnlib on relclnlib.id_cliente = Clients.id_cliente

{
  key Clients.id_cliente  as IdClient,
  key relclnlib.id_libro  as IdBook,
  key Clients.tipo_acceso as AccessType,
      Clients.nombre      as Name,
      Clients.apellido    as Surname,
      Clients.email      as Email,
      Clients.imagen         as images
}
