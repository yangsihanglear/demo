FROM registry.cn-hangzhou.aliyuncs.com/pai-dlc/pai-pytorch-training:torch-1.12-cuda11.3-py38-acc-221213

WORKDIR /app

COPY . /app

RUN pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirement.txt

CMD ["python", "app.py"]
