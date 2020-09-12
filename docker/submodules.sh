echo "Initialize script and ng serve..."

# Clone from ssh https://github.com/elias-cloudbiz/ptpro_frontendapp.git (only with ssh key) 
#rm -rf .[^.]*

cd /usr/app 

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=application
cp /tmp/githubkey /root/.ssh/application_rsa
chmod 600 /root/.ssh/application_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/application_rsa"
git submodule update --init /usr/app/src/app/modules/application

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=communication
cp /tmp/githubkey /root/.ssh/communication_rsa
chmod 600 /root/.ssh/communication_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/communication_rsa"
git submodule update --init /usr/app/src/app/modules/communication

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=payment
cp /tmp/githubkey /root/.ssh/payment_rsa
chmod 600 /root/.ssh/payment_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/payment_rsa"
git submodule update --init /usr/app/src/app/modules/payment

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=profiles
cp /tmp/githubkey /root/.ssh/profiles_rsa
chmod 600 /root/.ssh/profiles_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/profiles_rsa"
git submodule update --init /usr/app/src/app/modules/profiles

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=providers
cp /tmp/githubkey /root/.ssh/providers_rsa
chmod 600 /root/.ssh/providers_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/providers_rsa"
git submodule update --init /usr/app/src/app/modules/providers

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=public
cp /tmp/githubkey /root/.ssh/public_rsa
chmod 600 /root/.ssh/public_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/public_rsa"
git submodule update --init /usr/app/src/app/modules/public

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=secure
cp /tmp/githubkey /root/.ssh/secure_rsa
chmod 600 /root/.ssh/secure_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/secure_rsa"
git submodule update --init /usr/app/src/app/modules/secure

wget -O /tmp/githubkey https://skyinformatics.biz/deploy?key=providers
cp /tmp/githubkey /root/.ssh/providers_rsa
chmod 600 /root/.ssh/providers_rsa
export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/providers_rsa"
git submodule update --init /usr/app/src/app/providers

ng analytics off 
ng serve --host 0.0.0.0 --disable-host-check --poll=500 --port 4800 