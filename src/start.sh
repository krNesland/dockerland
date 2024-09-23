#!/bin/bash
ls
eval "$(conda shell.bash hook)"
conda activate dockerland
conda env list
conda list
python -c "print('hello world')"
python "src/main.py"
fastapi dev src/fast_demo.py --host 0.0.0.0 --port 8000  # Running the app and making it available on the network
