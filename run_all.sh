nohup python3 search_autoformer.py > /home/zzy/TF_TAS/all_output/get_ken_output_M/SEED_0/cal_tf/output.log 2> /home/zzy/TF_TAS/all_output/get_ken_output_M/SEED_0/cal_tf/error.log

if [ $? -eq 0 ]; then
    nohup python3 -m torch.distributed.launch --nproc_per_node=4 --use_env evolution.py > /home/zzy/TF_TAS/all_output/get_ken_output_M/SEED_0/cal_af/output.log 2> /home/zzy/TF_TAS/all_output/get_ken_output_M/SEED_0/cal_af/error.log &
else
    echo "First command failed. Skipping the second command."
fi