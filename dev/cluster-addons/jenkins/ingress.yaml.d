apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: jenkins-ingress
  annotations:
    kubernetes.io/ingress.class: "nginx"
    cert-manager.io/cluster-issuer: googlecasclusterissuer-sample
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