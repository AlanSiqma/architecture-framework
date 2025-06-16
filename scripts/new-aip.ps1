param (
    [Parameter(Mandatory=$true)]
    [string]$Number,
    [string]$Title = "Título da Proposta"
)

$templatePath = "..\templates\aip-template.md"
$outputFolder = "..\aip\AIP-$Number"
$outputFile = "$outputFolder\AIP-$Number.md"
$diagramFile = "$outputFolder\AIP-$Number.drawio"

New-Item -ItemType Directory -Force -Path $outputFolder
(Get-Content $templatePath) -replace "AIP-XXXX", "AIP-$Number" | Set-Content $outputFile
New-Item -ItemType File -Path $diagramFile | Out-Null

Write-Host "✅ AIP-$Number criado com sucesso em $outputFolder"
