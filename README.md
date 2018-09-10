# k8s-debug-tools

    // Deploy
    kubectl run debug-tools --image=mirage20/k8s-debug-tools --restart=Never
    // Run
    kubectl exec -it debug-tools <command>
    // Delete
    kubectl delete pod debug-tools