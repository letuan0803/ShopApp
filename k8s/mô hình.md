# mô hình triển khai

## docker

client --> angular(4301:80) --> backend (8099:8088) --> redis (6379:6379) --> mysql (3307:3306)

## k8s

client --> angular(30001:80) --> backend (30000:8080) --> redis (redis-service:6379) --> mysql (30002:3306)

deployment + svc:

- angular + nodePort
- backend + clusterIP
- redis + clusterIP
- mysql + clusterIP

configmap: không cần configmap

- angular
apiBaseUrl: '<http://localhost:8099/api/v1>' --> build lại image

pv:

- mysql
- redis

ingress:

- có thẻ chưa cần nếu expose cả api
