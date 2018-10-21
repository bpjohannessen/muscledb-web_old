echo "Executing deploy.sh"
openssl aes-256-cbc -K $encrypted_51c466c92341_key -iv $encrypted_51c466c92341_iv -in deploy_rsa.enc -out /tmp/deploy_rsa -d
eval "$(ssh-agent -s)"
chmod 600 /tmp/deploy_rsa
ssh-add /tmp/deploy_rsa
cd MuscleWeb
echo "Running dotnet restore"
dotnet restore
echo "Running dotnet publish"
dotnet publish
echo $TRAVIS_BUILD_DIR
echo "Connecting to fettenajs.com with ssh"
ssh bp@fettenajs.com '
echo "Stopping kestrel"
sudo systemctl stop kestrel-muscleweb.service
exit'
echo "Running rsync"
rm -rf /home/bp/www/fettenajs.com/public_html/med/publish
rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/MuscleWeb/bin/Debug/netcoreapp2.1/publish bp@fettenajs.com:/home/bp/www/fettenajs.com/public_html/med
echo "Connecting to fettenajs.com with (again)"
ssh bp@fettenajs.com '
cd /home/bp/www/fettenajs.com/public_html/med/publish
cat database.sql | sqlite3 muscles.db
echo "Hacking sql"
chmod +x sql.sh
./sql.sh
rm sql.sh
echo "Starting kestrel"
sudo systemctl start kestrel-muscleweb.service
exit'
echo "Ending deploy.sh"