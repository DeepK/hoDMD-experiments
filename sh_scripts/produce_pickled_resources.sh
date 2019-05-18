set -x

python ../py_files/sent2wv.py ../data/classificationBenchmarks/r8-train-no-short.txt ../data/classificationBenchmarks/r8-test-no-short.txt ../resources/GoogleNews-vectors-negative300.bin.gz ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p
python ../py_files/sent2wv.py ../data/classificationBenchmarks/20ng-train-no-short.txt ../data/classificationBenchmarks/20ng-test-no-short.txt ../resources/GoogleNews-vectors-negative300.bin.gz ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p
python ../py_files/sent2wv.py ../data/stanfordSentimentTreebank/sst5_train_sentences.csv ../data/stanfordSentimentTreebank/sst5_test.csv ../resources/GoogleNews-vectors-negative300.bin.gz ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p
