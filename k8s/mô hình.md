# mô hình triển khai

## docker

client --> angular(4301) --> backend (8099) --> redis (6379) --> mysql (3307)

## k8s

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
