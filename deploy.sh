echo "SCRIPT: Nå kjører vi med openssl +++"
openssl aes-256-cbc -K $encrypted_51c466c92341_key -iv $encrypted_51c466c92341_iv -in deploy_rsa.enc -out /tmp/deploy_rsa -d
eval "$(ssh-agent -s)"
chmod 600 /tmp/deploy_rsa
ssh-add /tmp/deploy_rsa
ssh bp@fettenajs.com '
ls
exit'
echo `date`