
ssh root@esx.gw.lo "cd /vmfs/volumes/datastore1/$1;rm $1.vmdk;rm $1.vmsd;rm $1-flat.vmdk;vmkfstools -i "/vmfs/volumes/datastore1/win2019/win2019.vmdk" "/vmfs/volumes/datastore1/$1/$1.vmdk" -d thin"

