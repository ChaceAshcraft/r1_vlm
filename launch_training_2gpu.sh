
NCCL_DEBUG=INFO CUDA_VISIBLE_DEVICES=0,1 NCCL_IB_DISABLE=1 uv run src/r1_vlm/environments/message_decoding_env/train_2gpu.py

