#!/bin/bash

# SPLIT="mmbench_dev_cn_20231003"

# python -m llava.eval.model_vqa_mmbench \
#     --model-path liuhaotian/llava-v1.5-13b \
#     --question-file ./playground/data/eval/mmbench_cn/$SPLIT.tsv \
#     --answers-file ./playground/data/eval/mmbench_cn/answers/$SPLIT/llava-v1.5-13b.jsonl \
#     --lang cn \
#     --single-pred-prompt \
#     --temperature 0 \
#     --conv-mode vicuna_v1

# mkdir -p playground/data/eval/mmbench/answers_upload/$SPLIT

# python scripts/convert_mmbench_for_submission.py \
#     --annotation-file ./playground/data/eval/mmbench_cn/$SPLIT.tsv \
#     --result-dir ./playground/data/eval/mmbench_cn/answers/$SPLIT \
#     --upload-dir ./playground/data/eval/mmbench_cn/answers_upload/$SPLIT \
#     --experiment llava-v1.5-13b

SPLIT="mmbench_dev_cn_20231003"

# python -m llava.eval.model_vqa_mmbench \
#     --model-path /home/nfs03/zhaof/LLaVA/playground/model/llava-v1.5-13b \
#     --question-file /home/nfs03/zhaof/LLaVA/playground/data/eval/mmbench_cn/$SPLIT.tsv \
#     --answers-file /home/nfs03/zhaof/LLaVA/playground/data/eval/mmbench_cn/answers/$SPLIT/llava-v1.5-13b-1.jsonl \
#     --lang cn \
#     --single-pred-prompt \
#     --temperature 0 \
#     --conv-mode vicuna_v1

# mkdir -p /home/nfs03/zhaof/LLaVA/playground/data/eval/mmbench_cn/answers_upload_1/$SPLIT

python /home/nfs03/zhaof/LLaVA/scripts/convert_mmbench_for_submission.py \
    --annotation-file /home/nfs03/zhaof/LLaVA/playground/data/eval/mmbench_cn/$SPLIT.tsv \
    --result-dir /home/nfs03/zhaof/LLaVA/playground/data/eval/mmbench_cn/answers/$SPLIT \
    --upload-dir /home/nfs03/zhaof/LLaVA/playground/data/eval/mmbench_cn/answers_upload_1/$SPLIT \
    --experiment llava-v1.5-13b-1
