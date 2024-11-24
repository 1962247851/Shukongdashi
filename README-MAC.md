Mac OS 安装 TensorFlow 1.x：https://zhuanlan.zhihu.com/p/521418835

```bash
docker build -t skds-py37 .
```

```bash
docker run -d -p 8000:8000 --name skds-py37 skds-py37
```

---
将Neo4j监听地址改为0.0.0.0

导出镜像

```bash
docker commit skds-py37 skds-cp37:0.0.1
```

安装 tensorflow-on-arm

```bash
wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v1.14.0-buster/tensorflow-1.14.0-cp37-none-linux_aarch64.whl

pip install tensorflow-1.14.0-cp37-none-linux_aarch64.whl
```

https://ask.csdn.net/questions/909018