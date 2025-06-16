param (
    [Parameter(Mandatory=$true)]
    [string]$Number,
    [string]$AIPNumber = "XXXX"
)

$templatePath = "..\templates\adr-template.md"
$outputFile = "..\adr\ADR-$Number.md"

(Get-Content $templatePath) `
    -replace "ADR-XXXX", "ADR-$Number" `
    -replace "AIP-XXXX", "AIP-$AIPNumber" | Set-Content $outputFile

Write-Host "✅ ADR-$Number criado com sucesso."
