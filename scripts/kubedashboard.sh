echo ${$(kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}') | grep token:)#'token:'} | xargs | xclip -selection clipboard && echo 'Token copied to clipboard' && xdg-open 'http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login' && kubectl proxy