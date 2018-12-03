param([string]$filepath = './example.ps1')

$lintresult = Invoke-ScriptAnalyzer -Path $filepath


IF([string]::IsNullOrEmpty($lintresult)) {            
    Write-Host "Linting completed successfully."           
} else {  
    Invoke-ScriptAnalyzer -Path $filepath
    throw 'Linting failed! See output above and fix as possible.'
}
