ARG_1=$1

check_status() {
    response=$(curl -k -s -o /dev/null -w "%{http_code}" $ARG_1)

    if [ $response -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

while check_status; do
	echo nononono
	sleep 10
done

echo this is fine


