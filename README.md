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
python lerobot/scripts/train.py \
  --policy.type=smolvla \
  --dataset.repo_id=lerobot/libero
3. Evaluation (400 Episodes)
Evaluated across 4 suites (libero_spatial, libero_object, libero_goal, libero_10):

Total evaluated: 40 tasks × 10 episodes = 400 episodes.

Metrics are logged in eval_info.json.

4. Deliverables & Links
Model Checkpoint & 400-Episode Full Videos: Google Drive Deliverables Folder

pretrained_model_step20000.tar (Model checkpoint directory)

libero_400_videos.tar (Full 400-episode video recordings)

Evaluation Info: See eval_info.json
