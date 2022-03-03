# Change following parameters

$strRemoteForest = "ISTS.com"

$strRemoteAdmin = Read-Host "enter account name"

$strRemoteAdminPassword = Read-Host "enter account password"

$remoteContext = New-Object -TypeName "System.DirectoryServices.ActiveDirectory.DirectoryContext" -ArgumentList @( "Forest", $strRemoteForest, $strRemoteAdmin, $strRemoteAdminPassword)

try {

        $remoteForest = [System.DirectoryServices.ActiveDirectory.Forest]::getForest($remoteContext)

    }

catch {

        Write-Warning "GetRemoteForest: Failed:`n`tError: $($($_.Exception).Message)"

    }



$localforest=[System.DirectoryServices.ActiveDirectory.Forest]::getCurrentForest()


try {

        $localForest.CreateTrustRelationship($remoteForest,"Inbound")


    }

catch {

        Write-Warning "CreateTrustRelationship: Failed for domain $($remoteForest)`n`tError: $($($_.Exception).Message)"

    }