export XPU_VISIBLE_DEVICES=6,7
export BKCL_PCIE_RING=1
python -m torch.distributed.launch \
    --nproc_per_node 2 \
    --master_port=12355 \
    run_pretraining.py \
    --extern_config_dir=/home/FlagPerf/training/kunlun/mobilenetv2-pytorch/config \
    --extern_module_dir=/home/FlagPerf/training/kunlun/mobilenetv2-pytorch/extern \
    --extern_config_file=config_R300x1x2.py \
    --enable_extern_config 
