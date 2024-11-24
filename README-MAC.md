Mac OS 安装 TensorFlow 1.x：https://zhuanlan.zhihu.com/p/521418835

```bash
docker build -t skds-py37 .
```

```bash
docker run -d -p 8000:8000 --name skds-py37 skds-py37
```

- http://127.0.0.1:8000/qa?pinpai=发那科&xinghao=MATE-TD&errorid=ALM401&question=自动换刀时刀链运转不到位，刀库停止运转&relationList=机床自动报警
- http://127.0.0.1:8000/pa?pinpai=发那科&xinghao=MATE-TD&errorid=ALM401&question=自动换刀时刀链运转不到位，刀库停止运转&relationList=机床自动报警
- http://127.0.0.1:8000/wenda?question=外部24V短路的故障会引起哪些现象
- http://127.0.0.1:8000/save?pinpai=发那科&xinghao=MATE-TD&errorid=ALM401&question=自动换刀时刀链运转不到位，刀库停止运转&relationList=机床自动报警&answer=test使用时间较长,液压站的输出压力调得太高，导致联轴器的啮合齿损坏，从而当液压电动机旋转时,联轴器不能很好地传递转矩，从而产生异响。更换该联轴器后，机床恢复正常。

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