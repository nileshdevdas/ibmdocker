1.  you can simply apply the secrets.yml but once do it you database boot 
2.  how to verify 
      do a kubectl exec -it   <yourdbpod>  /bin/bash 
3.  once you are in the container --> 
      a)  echo $MY_SQL_PASSWORD (from env) 
      b)   mysql -u root -p$MY_SQL_PASSWORD 
        check if you are able to login or not 
        
      
