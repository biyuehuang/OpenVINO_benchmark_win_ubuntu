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
###############################################################
# 指定要搜索的文件夹路径
folder_path="/path/to/your/folder"

# 使用find命令查找所有.xml文件，并将结果保存到一个变量中
xml_files=$(find "$folder_path" -type f -name "*.xml")

# 检查是否找到了.xml文件
if [ -n "$xml_files" ]; then
    echo "找到以下.xml文件："
    echo "$xml_files"
    for file in $xml_files; do
        echo "$file"
        func $file
    done
else
    echo "未找到任何.xml文件。"
fi
