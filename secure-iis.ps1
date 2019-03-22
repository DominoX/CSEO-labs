New-SelfSignedCertificate -CertStoreLocation cert:\LocalMachine\My -DnsName *.westus2.cloudapp.azure.com -FriendlyName CSEO-SSL-Cert
New-WebBinding -Name "Default Web Site" -Protocol https -Port 443
Get-ChildItem cert:\localmachine\My | New-Item -Path IIS:\SslBindings\!443
