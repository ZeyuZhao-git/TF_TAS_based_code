#!/bin/bash
python3 -m torch.distributed.launch --nproc_per_node=1 --use_env search_autoformer.py --data-path './dataset/imagenet' --gp \
 --change_qk --relative_position --dist-eval --cfg './experiments/search_space/space-T.yaml' --output_dir './OUTPUT/search'

nohup python3 -m torch.distributed.launch --nproc_per_node=1 --use_env search_autoformer.py --data-path '/data02/ImageNet2012' --gp --change_qk --relative_position --dist-eval --cfg '/home/zzy/TF_TAS/experiments/search_space/space-T.yaml' --output_dir '/home/zzy/TF_TAS/OUTPUT/search' 2>/dev/null > /home/zzy/TF_TAS/OUTPUT/console_output.txt




nohup python3 -m torch.distributed.launch --nproc_per_node=2 --use_env search_autoformer.py --data-path '/data02/ImageNet2012' --gp --change_qk --relative_position --dist-eval --cfg '/home/zzy/TF_TAS/experiments/search_space/space-T.yaml' --output_dir '/home/zzy/TF_TAS/all_output/1' > /home/zzy/TF_TAS/OUTPUT/output.log 2> >(grep -v "warning") &



nohup python3 -m torch.distributed.launch --nproc_per_node=2 --use_env search_autoformer.py > /home/zzy/TF_TAS/all_output/3/output.log 2> /home/zzy/TF_TAS/all_output/3/error.log &

