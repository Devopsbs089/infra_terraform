data "azurerm_mssql_database" "example" {
  name      = "example-mssql-db"
  server_id = azurerm_mssql_server.example.id
}