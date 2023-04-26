param( 
[Parameter(Mandatory=$true)][string]$primary_servicebus_resource_group_name,                         #Enter the resourcegroup name of servicebus on which geo-recovery needs to be configured
[Parameter(Mandatory=$true)][string]$primary_servicebus_aliasname,                                   #Enter the alias name     
[Parameter(Mandatory=$true)][string]$primary_servicebus_namespace_name,                              #Enter the name of the namespace on which geo-recovery needs to be configured
[Parameter(Mandatory=$true)][string]$secondary_servicebus_namespaceId                                #Enter the resource ID of the namespace with which the pairing is to be initiated       
)


New-AzServiceBusGeoDRConfiguration -Name $primary_servicebus_aliasname -NamespaceName $primary_servicebus_namespace_name -ResourceGroupName $primary_servicebus_resource_group_name -PartnerNamespace $secondary_servicebus_namespaceId

   
