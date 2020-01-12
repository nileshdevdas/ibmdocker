Daemonset are to run on specific or all the node : 
when these nodes get create irresptive of arequirment the pod is deployed to the given affinity nodes 
genrally being used as agents, backed node service , nodeagen .... 

1. kubeclt apply -f daemons.yml

2.  kubectl get daemonssets      

3.  Describe the daemonset as per your need 
      ...... Test the daemons 
      
 4. in real world if  new node would get added you would be able automatically se 1 oinstance getting create  for this node provided there is 
 no Node Afffinity 
 
 
