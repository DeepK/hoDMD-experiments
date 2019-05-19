set -x

echo "Reuters 8"
python ../py_files/evalbert.py ../data/pickled_data/r8/r8-train-no-short.p ../data/pickled_data/r8/r8-test-no-short.p

echo "20 newsgroups"
python ../py_files/evalbert.py ../data/pickled_data/20ng/20ng-train-no-short.p ../data/pickled_data/20ng/20ng-test-no-short.p

echo "SST 5"
python ../py_files/evalbert.py ../data/pickled_data/sst5/sst5_train_sentences.p ../data/pickled_data/sst5/sst5_test.p
