#!/bin/bash

kubectl apply -f ../kubernetes/percona-service.yaml
kubectl apply -f ../kubernetes/percona-configmap.yaml
kubectl apply -f ../kubernetes/percona-statefulset.yaml