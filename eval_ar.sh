base_PATH=/wings/zeus-kimi-k2-flush-a-na131-m-test/hub/models--lmsys--vicuna-13b-v1.3/snapshots/6566e9cb1787585d1147dcf4f9bc48f29e1328d2
Eagle3_PATH=/wings/zeus-kimi-k2-flush-a-na131-m-test/hub/models--yuhuili--EAGLE3-Vicuna1.3-13B/snapshots/651195736adad4c05282d140e94bfff058b1fc8b
Drafter_PATH=/your_own_path/vicuna-68m
Space_PATH=/your_own_path/vicuna-v1.3-7b-space
datastore_PATH=./model/rest/datastore/datastore_chat_large.idx
MODEL_NAME=vicuna-13b-v1.3
TEMP=0.0
GPU_DEVICES=0

bench_NAME="spec_bench"
torch_dtype="float16" # ["float32", "float64", "float16", "bfloat16"]

CUDA_VISIBLE_DEVICES=${GPU_DEVICES} python -m evaluation.inference_baseline --model-path $base_PATH --model-id ${MODEL_NAME}-vanilla-${torch_dtype}-temp-${TEMP} --bench-name $bench_NAME --temperature $TEMP --dtype $torch_dtype