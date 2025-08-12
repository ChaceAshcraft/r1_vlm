
DEEPSPEED_CONFIG=src/r1_vlm/deepspeed_configs/multi_gpu_3only_zero3.yaml

# SCRIPT=src/r1_vlm/environments/message_decoding_env/train_4gpu.py
SCRIPT=src/r1_vlm/environments/nist_discriminator_env/train.py

CUDA_VISIBLE_DEVICES=0,1,2,3 uv run accelerate launch --config_file $DEEPSPEED_CONFIG $SCRIPT 
# uv run src/r1_vlm/environments/message_decoding_env/train_4gpu.py

