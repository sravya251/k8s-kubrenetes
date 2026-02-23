#!/bin/bash

echo "Testing developer access"
kubectl auth can-i create pods --as=developer -n development

echo "Testing readonly access"
kubectl auth can-i delete pods --as=readonly-user -n development

echo "Testing operator access"
kubectl auth can-i create deployments --as=operator-user -n development