set -x

echo "20 newsgroups"
python evaldct.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 1
python evaldct.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 2
python evaldct.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 3
python evaldct.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 4
python evaldct.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 5
python evaldct.py pickled_data/20ng/20ng-train-no-short.p pickled_data/20ng/20ng-test-no-short.p 6

echo "Reuters 8"
python evaldct.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 1
python evaldct.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 2
python evaldct.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 3
python evaldct.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 4
python evaldct.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 5
python evaldct.py pickled_data/r8/r8-train-no-short.p pickled_data/r8/r8-test-no-short.p 6

echo "SST 5"
python evaldct.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 1
python evaldct.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 2
python evaldct.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 3
python evaldct.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 4
python evaldct.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 5
python evaldct.py pickled_data/sst5/sst5_train_sentences.p pickled_data/sst5/sst5_test.p 6