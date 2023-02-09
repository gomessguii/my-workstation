while read line; do
    if echo $line | grep -q "^NAME="; then
        distro_name=$(echo $line | cut -d= -f2 | tr -d '"')
        echo $distro_name | awk '{print $1}'
        break
    fi
done < /etc/os-release