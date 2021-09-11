$nordservers = Invoke-WebRequest -Uri https://nordvpn.com/api/server -UseBasicParsing -Method GET | ConvertFrom-Json; $nordservers | Where-Object features -match "socks=True" | Select-Object name, domain | Sort-Object name
$nordservers | Out-File nordvpn-servers.txt
