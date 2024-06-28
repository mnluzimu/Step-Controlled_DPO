model_path=""
max_input_tokens=3072
max_total_tokens=6144

set -x
hostname -I # print the host ip

text-generation-launcher --port 8001 \
--max-batch-prefill-tokens ${max_input_tokens} \
--max-input-length ${max_input_tokens} \
--max-total-tokens ${max_total_tokens} \
--model-id ${model_path}
