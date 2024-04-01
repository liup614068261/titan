# 让用户输入想要分配的空间大小
read -p "请输入你想要分配每个节点的存储空间大小（GB），单个上限64G, 网页生效较慢，等待20分钟后，网页查询即可: " storage_gb

docker exec titan1 bash -c "\
    titan-edge config set --storage-size '$storage_gb'GB && \
    titan-edge daemon stop && \
    titan-edge daemon start
    "
docker exec titan2 bash -c "\
    titan-edge config set --storage-size '$storage_gb'GB && \
    titan-edge daemon stop && \
    titan-edge daemon start
    "
docker exec titan3 bash -c "\
    titan-edge config set --storage-size '$storage_gb'GB && \
    titan-edge daemon stop && \
    titan-edge daemon start
    "
docker exec titan4 bash -c "\
    titan-edge config set --storage-size '$storage_gb'GB && \
    titan-edge daemon stop && \
    titan-edge daemon start
    "
docker exec titan5 bash -c "\
    titan-edge config set --storage-size '$storage_gb'GB && \
    titan-edge daemon stop && \
    titan-edge daemon start
    "
