CUDA_VISIBLE_DEVICES=0 python ../../prompt_tuning_for_single_task.py \
    --output_dir ../../PromptTuning/save_models  \
    --per_device_train_batch_size 32 \
    --per_device_eval_batch_size 32 \
    --learning_rate 0.3 \
    --weight_decay 1e-5 \
    --num_train_epochs 20 \
    --eval_steps 500 \
    --log_dir ../../PromptTuning/logs \
    --record_dir ../../PromptTuning/record \
    --pad_token_id 0 \
    --task_name wsc.fixed \
    --do_train \
    --do_eval \
    --do_test \
    --base_model t5-base \
    --optimizer_type constant \
    --init_type frequent \
    --num_virual_tokens 100 \
    --model_type from_scratch \
    --task_type super_glue \
    --save_strategy epoch \
    --max_generate_length 3 \
    --seed 42






