
resource "azurerm_mssql_database" "sqldb" {
  name         = var.sqldb_name
  server_id    = azurerm_mssql_server.dbserver.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"


tags = {
    foo = "bar"
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}