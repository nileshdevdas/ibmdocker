To Create a config Map With literal 
kubectl create configmap logconfig --from-literal=LOG_LEVEL=INFO

to validate the Config Map 
kubectl  describe configmap logconfig 

Now you need to use this config map in the Pod to use withng your code so this should go as a environment variable .... 

kind: Pod
metadata:
apiVersion: v1
kind: Pod
metadata:
  name: configtest-pod
spec:
  containers:
    - name: test-container
      image: k8s.gcr.io/busybox
      command: [ "/bin/sh", "-c", "env" ]
      env:
        - name: LOGGING_STATE
          valueFrom:
            configMapKeyRef:
              name: logconfig
              key: LOG_LEVEL
  restartPolicy: Never
