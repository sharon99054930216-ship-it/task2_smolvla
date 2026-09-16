FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
    git wget curl build-essential libegl1 libgl1-mesa-glx \
    libosmesa6-dev python3.12 python3.12-venv python3.12-dev \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12

WORKDIR /workspace

COPY . /workspace/lerobot

RUN python3.12 -m pip install --upgrade pip
RUN python3.12 -m pip install torch torchvision --index-url https://download.pytorch.org/whl/cu124
RUN cd /workspace/lerobot && python3.12 -m pip install -e . --no-deps
RUN python3.12 -m pip install "lerobot[smolvla]" --no-deps
