rm -r -f gw
mkdir gw
cp install-config.yaml gw
openshift-install create ignition-configs --dir=gw
rm -f ~/.kube/config
cp gw/auth/kubeconfig ~/.kube/config
rm ~/.kube/config
cp gw/auth/kubeconfig ~/.kube/config
scp gw/* root@store.gw.lo:/volume1/tftp
./poweroff-all-vms.sh
sleep 5
./erase-all-vms.sh
sleep 5
./poweron-all-vms.sh
openshift-install --dir=gw wait-for bootstrap-complete --log-level debug
ssh root@esx.gw.lo vim-cmd vmsvc/power.off 7
openshift-install --dir=gw wait-for install-complete --log-level debug





