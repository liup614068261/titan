#第一步

export QUIC_GO_DISABLE_ECN=true

sysctl -w net.core.rmem_max=2500000

sysctl -w net.core.wmem_max=2500000




#第二步 安装docker 和 titan镜像


wget -O duokai.sh https://raw.githubusercontent.com/liup614068261/titan/main/duokai.sh && chmod +x duokai.sh && ./duokai.sh




#第三步 防止titan 服务器 空间不一致问题


wget -O setstorage.sh https://raw.githubusercontent.com/liup614068261/titan/main/setstorage.sh && chmod +x setstorage.sh && ./setstorage.sh
