#!/bin/bash
cd /tmp || exit
echo "Downloading sonar-scanner....."
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip
echo "Download completed."

echo "Unziping downloaded file....."
if dpkg -l "unzip"
then
    echo "Unzip is installed"
elif [ $? = '1' ]
then
    echo "Unzip is not installed. Installing unzip....."
    apt install unzip
fi
unzip sonar-scanner-cli-4.2.0.1873-linux.zip
echo "Unzip completed."
rm sonar-scanner-cli-4.2.0.1873-linux.zip
echo "Installation completed successfully."

echo "Running sonar scanner for current repo....."
cd - || exit
/tmp/sonar-scanner-4.2.0.1873-linux/bin/sonar-scanner -D sonar.host.url="$SQ_URL" -D sonar.projectKey="$SERVICE_NAME" -D sonar.login="$SQ_TOKEN" -D sonar.sources="$SCANNER_REPO"