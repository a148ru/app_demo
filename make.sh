#!/bin/bash

# Выводит справку
help() {
    echo "Использование: $0 -a <authorized_key.json> -c <cloud_id> -f <folder_id>"
    echo ""
    echo "  -i, --registry_id           ID registry"
    echo "  -n, --image_name            Name image"
    echo "  -t, --image_release         Release image"        
    echo "  -h, --help                  Show help"
    exit 1
}

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -i|--registry_id) registry_id="${2}"; shift ;;
        -n|--image_name) image_name="$2"; shift ;;
        -t|--image_release) image_release="$2"; shift ;;
        -h|--help) help ;;
        *) echo "Проверь параметры: $1"; help ;;
    esac
    shift
done


docker build -t cr.yandex/${registry_id}/${image_name}:${image_release} .
docker push  cr.yandex/${registry_id}/${image_name}:${image_release}