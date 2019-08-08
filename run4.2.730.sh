curl https://mirror.openshift.com/pub/openshift-v4/clients/ocp-dev-preview/4.2.0-0.nightly-2019-07-30-155738/openshift-install-mac-4.2.0-0.nightly-2019-07-30-155738.tar.gz -o install.taz
tar xvzf install.taz
mv openshift-install /usr/local/sbin/openshift-install
which openshift-install
openshift-install version
./run.sh

