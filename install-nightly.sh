oc login https://api.ci.openshift.org --token=QfHNI5FHm4dKUa-Zb4YC8jF-cW4TywjCM-28ssKlpwQ
oc registry login
version=$(curl -s https://openshift-release.svc.ci.openshift.org/api/v1/releasestream/4.2.0-0.nightly/latest | jq '.pullSpec')
echo $version
version=${version%\"}
echo $version
version=${version#*:}
echo "Using version $version"

rm -r -f wip
mkdir wip
cd wip
#Example: 4.2.0-0.nightly-2019-08-01-113533
curl https://openshift-release-artifacts.svc.ci.openshift.org/${version}/openshift-install-mac-${version}.tar.gz -o install-${version}.tar.gz
ls -l
tar -xf install-$version.tar.gz
cp openshift-install /usr/local/sbin
rm *.gz
cd ..
./run.sh
