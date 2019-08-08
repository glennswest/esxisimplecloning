ssh -o "StrictHostKeyChecking=no" core@bootstrap-0.gw.lo "journalctl -b -f -u bootkube.service"

