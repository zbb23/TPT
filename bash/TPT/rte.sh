CUDA_VISIBLE_DEVICES=0 python ../../TPT.py \
    --output_dir ../../TPT/save_models  \
    --per_device_train_batch_size 32 \
    --per_device_eval_batch_size 32 \
    --learning_rate 0.4 \
    --weight_decay 0 \
    --num_train_epochs 30 \
    --eval_steps 500 \
    --log_dir ../../TPT/log \
    --record_dir ../../TPT/record \
    --pad_token_id 0 \
    --task_name rte \
    --do_train \
    --do_eval \
    --do_test \
    --base_model t5-base \
    --optimizer_type constant \
    --init_type frequent \
    --num_soft_tokens 100 \
    --num_bank_tokens 100 \
    --total_bank_tokens 600 \
    --select_method max_pooling \
    --model_type from_scratch \
    --task_type glue \
    --save_strategy epoch \
    --max_generate_length 3 \
    --bank_path ../../save_model/bank \
    --prompt_path ../../save_model/PromptTuning/mnli \
    --is_all \
    --warm_up 500 \
    --merge_type concat \
    --seed 42




