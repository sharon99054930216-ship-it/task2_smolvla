import json
import glob
import os

results = {}
log_files = glob.glob("./eval_results_400/**/eval_info.json", recursive=True)

if not log_files:
    print("尚未找到 eval_info.json，請確認評估是否執行完畢。")
else:
    for f in log_files:
        task_name = os.path.basename(os.path.dirname(f))
        with open(f, "r") as fp:
            data = json.load(fp)
            results[task_name] = data
    
    with open("eval_info.json", "w") as out_fp:
        json.dump(results, out_fp, indent=2)
    print(f"成功彙整 {len(results)} 個任務結果至 eval_info.json！")
