$filePath = "C:/Apache24/conf/extra/nodejs.conf"

# Define the content to be written to the file
$fileContent = @"
<VirtualHost *:80>
  ServerName localhost

  ProxyPass /node http://localhost:3000/
  ProxyPassReverse / http://localhost:3000/
</VirtualHost>
"@

# Write the content to the file
Set-Content -Path $filePath -Value $fileContent
