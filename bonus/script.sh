ARGOCD_URL="https://localhost:8080"

check_argocd_status() {
    response=$(curl -k -s -o /dev/null -w "%{http_code}" $ARGOCD_URL)

    if [ $response -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

while check_argocd_status; do
	echo nononono
	sleep 10
done


