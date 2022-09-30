#!/bin/bash

par_dir=/Users/harmang/Desktop/git_home/coursework/2022_18_Fall/prog_script_fall_2022/hw

${par_dir}/prep_data.sh

${par_dir}/k_checker.sh

if [[ -e k_states.txt ]]; then
    echo `wc -l k_states.txt`
fi
