#!/bin/bash
set -ex
export PYTHONPATH=`pwd`:$PYTHONPATH
cd `pwd`
#python3 scripts/reader/preprocess.py data/datasets/ data/datasets/ --split SQuAD-v1.1-train --tokenizer spacy
#python3 scripts/reader/preprocess.py data/datasets/ data/datasets/ --split SQuAD-v1.1-dev --tokenizer spacy
python3 scripts/reader/train_drqa.py --data-dir data/datasets --restrict-vocab 0 --train-file SQuAD-v1.1-train-processed-spacy.txt --dev-file SQuAD-v1.1-dev-processed-spacy.txt --dev-json SQuAD-v1.1-dev.json --model-dir data/models --model-name drqa_drop


