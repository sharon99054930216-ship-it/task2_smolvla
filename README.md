# SmolVLA on LIBERO Benchmark

This repository reproduces SmolVLA training and evaluation on the LIBERO benchmark using LeRobot.

## 1. Environment Setup
- Python: 3.12
- PyTorch: 2.6.0+cu124
- LeRobot: v0.6.2
- Platform: 4x NVIDIA RTX 6000 Ada

You can build and run via Docker:
```bash
docker build -t lerobot-smolvla .
2. Training
Trained SmolVLA on lerobot/libero for 20,000 steps (batch_size=64):

Bash
bash run_train.sh
3. Evaluation (400 Episodes)
Evaluated across 4 suites (libero_spatial, libero_object, libero_goal, libero_10):

Bash
bash run_eval_400.sh
4. Deliverables & Links
Model Checkpoint & 400-Episode Full Videos: Google Drive Deliverables Folder

pretrained_model_step20000.tar (Model checkpoint directory)

libero_400_videos.tar (Full 400-episode video recordings)

Evaluation Info: See eval_info.json


---
