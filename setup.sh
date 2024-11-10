kind create cluster --name spark-cluster
helm repo add spark-operator https://kubeflow.github.io/spark-operator
helm repo update
# Install Spark Operator
helm install spark-operator spark-operator/spark-operator \
    --namespace spark \
    --create-namespace \
    --set sparkJobNamespace=spark
