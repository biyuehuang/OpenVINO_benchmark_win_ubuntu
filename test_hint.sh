
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint throughput"
benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint throughput

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint none"
benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint none

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint latency"
benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint latency

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint cumulative_throughput"
benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU -hint cumulative_throughput

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU"
benchmark_app -m ./resnet-50-pytorch/FP16/resnet-50-pytorch.xml -d GPU 

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint throughput"

benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint throughput

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint none"
benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint none

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint latency"
benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint latency

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint cumulative_throughput"
benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU -hint cumulative_throughput

sleep 30s
echo -e "benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU "
benchmark_app -m ./resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml -d GPU 
