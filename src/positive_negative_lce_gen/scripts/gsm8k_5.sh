round=$1


while true; do
    tmux new-session -d -s 5 "python src/positive_negative_lce_gen_1/lce_solution_gen_gsm8k.py $round -i 5"
    sleep 5
    
    while true; do
        sleep 5
        python src/positive_negative_lce_gen_1/process_gsm8k.py $round -i 5 && break
        sleep 30s
    done

    ((round++))

    sleep 5
done
