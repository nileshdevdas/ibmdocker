######################
we are using a manual storage driver which mean it is tied to the host 
hence we will need a simple thing that we have create thi 
/mnt/data  # the local mount on each node if you have one node no worries of the one node ..... 
######################


kubectl apply -f  <yourpvfile> 
kubectl apply -f  <yourpvpodfile> 

kubectl get pods  <find the id of the pv pod> 
kubectl exec  -it  <yourpvpodname>  /bin/bash 

#### now create a file in thijs /usr/share/nginx/html/
or 
#### 
create a file in your mount in /mnt/data   
