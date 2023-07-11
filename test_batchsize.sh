BS=(1 2 4 8 16 32 64 128)
echo -e "\n\n+++++++++++  throughput Testing multiply batch size)"

func()
{
    for b in ${BS[*]}
    do
        echo -e "\n\nbenchmark_app -d GPU -m $MODEL -hint throughput -shape [${b},3,224,224]"
        benchmark_app -d GPU -m $MODEL -hint throughput -shape [${b},3,224,224]
        sleep 30s
    done
}

echo -e "\n\n+++++++++++  resnet-50-pytorch"
MODEL=resnet-50-pytorch/FP16/resnet-50-pytorch.xml
func $MODEL

echo -e "\n\n+++++++++++  resnet-50-pytorch"
MODEL=resnet-50-pytorch/FP16-INT8/resnet-50-pytorch.xml
func $MODEL

