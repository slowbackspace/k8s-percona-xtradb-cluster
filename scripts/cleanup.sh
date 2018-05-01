grace=$(kubectl get po percona-galera-0 -o=jsonpath='{.spec.terminationGracePeriodSeconds}') \
  && kubectl delete statefulset -l app=percona-galera 
  #&& echo "Sleeping $grace" \
  #&& sleep $grace 

# Depending on the storage class and reclaim policy,
# deleting the Persistent Volume Claims may cause the associated volumes to also be deleted
kubectl delete pvc -l app=percona-galera

# delete cassandra service
kubectl delete service -l app=percona-galera
kubectl delete service -l app=percona-galera-xtradb
kubectl delete configmap percona-scripts
