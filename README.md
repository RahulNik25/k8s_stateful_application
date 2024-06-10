# Task
 - Deploy a stateful application (such as a database) using PersistentVolumeClaims (PVCs).
 - Configure the application for data persistence using PersistentVolumes (PVs).
 - Implement StatefulSets for managing stateful applications, ensuring ordered deployment and scaling.

# Steps to Achieve
Deploy configmap
 - `kubectl apply -f mysql-configmap.yaml`

Deploy service
 - `kubectl apply -f mysql-service.yaml`

Deploy statefulsets
 - `kubectl apply -f mysql-statefulset.yaml`

**Perform Mysql actions: create/insert/update/delete from mysql-0 pod**
**Changes made into mysql-0 pod will reflect into other pods because of data replication tool**

Deprovision resouces
 - `kubectl delete -f .`

Remove unsed pvc
 - `/bin/bash delete_unused_pvc.sh`
