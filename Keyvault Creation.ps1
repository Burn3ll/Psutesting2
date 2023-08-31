$sub = '8aa7716c-7411-412c-a44f-4c22a0e42655'
Connect-AzAccount -Id -Scope CurrentUser -SubscriptionId $sub

Register-SecretVault -ModuleName Az.KeyVault -Name AzureKeyVault -VaultParameters @{ 
    AZKVaultName = 'psu01mnaext-keyvault'
    SubscriptionId = $sub
} -AllowClobber