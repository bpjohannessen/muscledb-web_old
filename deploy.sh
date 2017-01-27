echo "SCRIPT: Nå kjører vi med openssl +++"
openssl aes-256-cbc -K $encrypted_51c466c92341_key -iv $encrypted_51c466c92341_iv -in deploy_rsa.enc -out /tmp/deploy_rsa -d
eval "$(ssh-agent -s)"
chmod 600 /tmp/deploy_rsa
ssh-add /tmp/deploy_rsa
cd MuscleWeb
dotnet restore
dotnet publish
echo $TRAVIS_BUILD_DIR
ssh bp@fettenajs.com '
echo "Stopping kestrel"
sudo systemctl stop kestrel-muscleweb.service
exit'
echo "Running rsync"
rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/MuscleWeb/bin/Debug/netcoreapp1.1/publish bp@fettenajs.com:/home/bp/www/fettenajs.com/public_html/med
ssh bp@fettenajs.com '
cd /home/bp/www/fettenajs.com/public_html/med/muscledb-web/MuscleWeb/bin/Debug/netcoreapp1.1/publish
cat database.sql | sqlite3 muscles.db
echo "Starting kestrel"
sudo systemctl start kestrel-muscleweb.service
exit'
echo "Script finished"