set -x

python sent2wv.py datasets/r8-train-no-short.txt datasets/r8-test-no-short.txt GoogleNews-vectors-negative300.bin.gz pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p
python sent2wv.py datasets/20ng-train-no-short.txt datasets/20ng-test-no-short.txt GoogleNews-vectors-negative300.bin.gz pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p
python sent2wv.py stanfordSentimentTreebank/sst5_train_sentences.csv stanfordSentimentTreebank/sst5_test.csv GoogleNews-vectors-negative300.bin.gz pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p
