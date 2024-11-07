param (
    [string]$ServerRole = "Default Server"
)

# Install IIS
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Create a custom HTML page
$htmlContent = "<html><body><h1>This is the $ServerRole</h1></body></html>"
$htmlContent | Set-Content -Path "C:\inetpub\wwwroot\index.html"
