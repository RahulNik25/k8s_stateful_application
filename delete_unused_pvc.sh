#!/bin/bash


pvc_list=$(kubectl get pvc -o jsonpath='{.items[*].metadata.name}')

for pvc in $pvc_list; do
    if ! kubectl get pod -o jsonpath='{.items[*].spec.volumes[*].persistentVolumeClaim.claimName}' | grep -q "$pvc"; then
        kubectl delete pvc "$pvc"
        echo "Deleted PVC: $pvc"
    fi
done
