
ssh root@esx.gw.lo "cd /vmfs/volumes/datastore2/$1;rm $1.vmdk;rm $1.vmsd;rm $1-flat.vmdk;vmkfstools -i "/vmfs/volumes/datastore2/rhel76/rhel76.vmdk" "/vmfs/volumes/datastore2/$1/$1.vmdk" -d thin"

