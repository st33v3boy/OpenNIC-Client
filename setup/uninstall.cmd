reg delete "HKCU\Environment" /v OPENNIC_CLIENT_PATH /f
schtasks /delete /tn "OpenNIC Client" /f