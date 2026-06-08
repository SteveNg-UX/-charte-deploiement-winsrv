Install-PackageProvider -Name "Nutget" -MinimalVersion 2.9.8.201 -Force:$true
Install-Module -Name "powersell-yaml" -Force:$true

function Charger-DonneYAML {
    param(
        [String]$CHEMIN_FICHIER_YAML = ".\data.yaml"
    )
    try {
        return Get-Content -Path $CHEMIN_FICHIER_YAML | ConvertFrom-Yaml
    }
    catch {
        Write-Host $_
    }
}