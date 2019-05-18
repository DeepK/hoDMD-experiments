set -x

echo "Reuters 8"
python evalpca.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 1
python evalpca.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 2
python evalpca.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 3

echo "20 newsgroups"
python evalpca.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 1
python evalpca.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 2
python evalpca.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 3


echo "20 newsgroups"
python evalpca.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 1
python evalpca.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 2
python evalpca.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 3