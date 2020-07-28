setx OPENNIC_CLIENT_PATH %1\scripts
schtasks /create /tn "OpenNIC Client" /xml %1\7up\schtasks.xml