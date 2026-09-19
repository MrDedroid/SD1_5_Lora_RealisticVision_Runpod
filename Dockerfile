# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.10.0-base

# Download checkpoint
RUN comfy model download --url https://huggingface.co/MrDedroid/realisticVisionV60B1_v51VAE_pruned_fp16/resolve/main/realisticVisionV60B1_v51VAE_pruned_fp16.safetensors --relative-path models/checkpoints --filename realisticVisionV60B1_v51VAE_pruned_fp16.safetensors

# Download LoRA
RUN comfy model download --url https://huggingface.co/MrDedroid/sd15_Lora_milan_fit_girl/resolve/main/milan_fit_girl.safetensors --relative-path models/loras --filename milan_fit_girl.safetensors