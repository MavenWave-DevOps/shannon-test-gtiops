===
apiVersion: v1
kind: ServiceAccount
metadata:
  name: google-cas-issuer
  namespace: jenkins
  annotations: 
    iam.gke.io/gcp-service-account: google-cas-issuer@sr-cas-gke-test.iam.gserviceaccount.com

---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: jenkins
  namespace: jenkins
  annotations:
    iam.gke.io/gcp-service-account: jenkins@sr-cas-gke-test.iam.gserviceaccount.com