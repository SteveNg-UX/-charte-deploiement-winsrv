Install-PackageProvider -Name "NuGet" -MinimumVersion 2.8.5.201 -Force
Install-Module -Name "powershell-yaml" -Force

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