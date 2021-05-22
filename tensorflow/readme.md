# Running Tensorflow on Jetson Nano
Info: https://ngc.nvidia.com/catalog/containers/nvidia:l4t-tensorflow

Pull the tensorflow 2.3 with python 3 docker image.
```
docker pull nvcr.io/nvidia/l4t-tensorflow:r32.5.0-tf2.3-py3
```

Start a docker container with tensorflow and the nvidia runtime
```
sudo docker run -it --rm --runtime nvidia --network host nvcr.io/nvidia/l4t-tensorflow:r32.5.0-tf2.3-py3
```

Start an interactive python3 session
```
python3
```

Python code to list cuda enabled GPUs
```
import tensorflow
from tensorflow.python.client import device_lib

def get_available_gpus():
    local_device_protos = device_lib.list_local_devices()
    return [x.name for x in local_device_protos if x.device_type == 'GPU']

get_available_gpus()
```


