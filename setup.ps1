# Run command as PowerShell Admin, ensure you have an appropriate Execution Policy to run script.

Write-Host "Installing Az CLI. This could take a few mins, good time for a coffee..."

$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

Write-Host "Az CLI Installation Complete. Please relaunch your PowerShell Instance!"