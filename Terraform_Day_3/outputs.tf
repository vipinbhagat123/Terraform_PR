output "storage_accounts" {
    value ={
        for key, sa in azurerm_storage_account.storage :
        key => sa.name
    }
}