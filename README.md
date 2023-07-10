# OpenVINO_windows_benchmark
test all .xml file in current document

step 1: install Miniconda
Step 2: Open a terminal

set http_proxy=http://proxy.com:913
set https_proxy=http://proxy.com:913

python -m pip install --upgrade pip

$ conda create -n ov2023.0 python=3.8
$ conda activate ov2023.0
$ pip install openvino==2023.0.1
$ pip install openvino-dev==2023.0.1
$ benchmark_app -h
$ run_win_ov23.bat
$ run_win_latency.bat

$ conda create -n ov2022.3 python=3.8
$ conda activate ov2022.3
$ pip install openvino==2022.3.1
$ pip install openvino-dev==2022.3.1
$ benchmark_app -h
$ run_win.bat
