apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: jenkins-ingress
  annotations:
    kubernetes.io/ingress.class: azure/application-gateway
    cert-manager.io/cluster-issuer: letsencrypt-prod
    cert-manager.io/acme-challenge-type: http01
spec:
  rules:
  - http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: jenkins
            port: 
              number: 8080
    host: jenkins.dev.pz.igmapps.ca
  tls:
    - hosts:
      - jenkins.dev.pz.igmapps.ca
      secretName: jenkins-tls