# # Ablation
# python -u run_agent.py --dataset btc --model gpt-4o --use_tech 1 --use_txnstat 0 --use_news 1 --use_reflection 1 &>run_agent-wo-txnstat.out 2>&1
# python -u run_agent.py --dataset btc --model gpt-4o --use_tech 0 --use_txnstat 1 --use_news 1 --use_reflection 1 &>run_agent-wo-tech.out 2>&1
# python -u run_agent.py --dataset btc --model gpt-4o --use_tech 1 --use_txnstat 1 --use_news 1 --use_reflection 0 &>run_agent-wo-reflection.out 2>&1
# python -u run_agent.py --dataset btc --model gpt-4o --use_tech 1 --use_txnstat 1 --use_news 0 --use_reflection 1 &>run_agent-wo-news.out 2>&1

# # Sensitivity
# python -u run_agent.py --model gpt-4o --dataset eth &>4o-eth-bear.out 2>&1
# python -u run_agent.py --model gpt-4o --dataset eth &>4o-eth-sideways.out 2>&1
# python -u run_agent.py --model gpt-4o --dataset eth &>4o-eth-bull.out 2>&1
# python -u run_agent.py --model gpt-4-turbo --dataset eth &>4turbo-eth-bear.out 2>&1
# python -u run_agent.py --model gpt-4-turbo --dataset eth &>4turbo-eth-sideways.out 2>&1
# python -u run_agent.py --model gpt-4-turbo --dataset eth &>4turbo-eth-bull.out 2>&1

# Get the environment variables from the .env file 
# and set them in the current shell
export $(grep -v '^#' .env | xargs)

# Main results 4o
# python -u run_agent.py --model gemini-2.0-flash --dataset btc --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/btc-bear-gemini-2.0-flash.out 2>&1
# python -u run_agent.py --model gemini-2.0-flash --dataset btc --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/btc-sideways-gemini-2.0-flash.out 2>&1
# python -u run_agent.py --model gemini-2.0-flash --dataset btc --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/btc-bull-gemini-2.0-flash.out 2>&1

# python -u run_agent.py --model gemini-2.0-flash --dataset eth --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/eth-bear-gemini-2.0-flash.out 2>&1
# python -u run_agent.py --model gemini-2.0-flash --dataset eth --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/eth-sideways-gemini-2.0-flash.out 2>&1
# python -u run_agent.py --model gemini-2.0-flash --dataset eth --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/eth-bull-gemini-2.0-flash.out 2>&1

# python -u run_agent.py --model gemini-2.0-flash --dataset sol --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/sol-bear-gemini-2.0-flash.out 2>&1
# python -u run_agent.py --model gemini-2.0-flash --dataset sol --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/sol-sideways-gemini-2.0-flash.out 2>&1
# python -u run_agent.py --model gemini-2.0-flash --dataset sol --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/sol-bull-gemini-2.0-flash.out 2>&1

# Main Results gemma 3 27b

# python -u run_agent.py --model gemma-3-27b-it --dataset btc --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/btc-bear-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset btc --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/btc-sideways-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset btc --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/btc-bull-gemma-3-27b-it.out 2>&1

# python -u run_agent.py --model gemma-3-27b-it --dataset eth --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/eth-bear-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset eth --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/eth-sideways-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset eth --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/eth-bull-gemma-3-27b-it.out 2>&1

# python -u run_agent.py --model gemma-3-27b-it --dataset sol --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/sol-bear-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset sol --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/sol-sideways-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset sol --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/sol-bull-gemma-3-27b-it.out 2>&1


# Main Results gemini-2.5-pro-preview-03-25
MODEL_NAME=gemini-2.5-pro-exp-03-25

python -u run_agent.py --model $MODEL_NAME --dataset btc --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/btc-bear-$MODEL_NAME.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset btc --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/btc-sideways-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset btc --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/btc-bull-gemma-3-27b-it.out 2>&1

# python -u run_agent.py --model gemma-3-27b-it --dataset eth --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/eth-bear-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset eth --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/eth-sideways-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset eth --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/eth-bull-gemma-3-27b-it.out 2>&1

# python -u run_agent.py --model gemma-3-27b-it --dataset sol --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/sol-bear-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset sol --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/sol-sideways-gemma-3-27b-it.out 2>&1
# python -u run_agent.py --model gemma-3-27b-it --dataset sol --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/sol-bull-gemma-3-27b-it.out 2>&1


# # Main results 3.5
# python -u run_agent.py --dataset btc --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/btc-bear.out 2>&1
# python -u run_agent.py --dataset btc --starting_date 2023-06-17 --ending_date 2023-08-25 &>logs/btc-sideways.out 2>&1
# python -u run_agent.py --dataset btc --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/btc-bull.out 2>&1

# python -u run_agent.py --dataset eth --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/eth-bear.out 2>&1
# python -u run_agent.py --dataset eth --starting_date 2023-06-20 --ending_date 2023-08-31 &>logs/eth-sideways.out 2>&1
# python -u run_agent.py --dataset eth --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/eth-bull.out 2>&1

# python -u run_agent.py --dataset sol --starting_date 2023-04-12 --ending_date 2023-06-16 &>logs/sol-bear.out 2>&1
# python -u run_agent.py --dataset sol --starting_date 2023-07-08 --ending_date 2023-08-31 &>logs/sol-sideways.out 2>&1
# python -u run_agent.py --dataset sol --starting_date 2023-10-01 --ending_date 2023-12-01 &>logs/sol-bull.out 2>&1
