# mô hình triển khai

## docker

client --> angular(4301:80) --> backend (8099:8088) --> redis (6379:6379) --> mysql (3307:3306)

## k8s

client --> angular(30001:80) --> backend (30000:8080) --> redis (redis-service:6379) --> mysql (30002:3306)

deployment + svc:

- angular + nodePort (call từ client)
- backend + nodePort (call từ client)
- redis + clusterIP (call internal backend)
- mysql + nodePort (call từ client)

configmap: không cần configmap

- angular
apiBaseUrl: '<http://localhost:8099/api/v1>' --> build lại image

pv:

- mysql
- redis

ingress:

- tạm thời chưa cần
