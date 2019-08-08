echo $1
curl https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${1}/openshift-install-mac-${1}.tar.gz -o install.taz 
tar xvzf install.taz
mv openshift-install /usr/local/sbin/openshift-install
which openshift-install
openshift-install version
./run.sh

