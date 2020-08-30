setx OPENNIC_CLIENT_PATH %1\src
schtasks /create /tn "OpenNIC Client" /xml %1\setup\schtasks.xml