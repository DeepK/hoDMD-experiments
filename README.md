## Information about this repo

This repo contains the code and data to produce the results as reported in the paper titled: **EigenSent: Spectral sentence embeddings using higher-order Dynamic Mode Decomposition** accepted at **ACL 2019** as a long paper.
If you use this code in your work or experiments, please cite the paper as:

```
@inproceedings{eigensent,
author = {Kayal, Subhradeep and Tsatsaronis, George},
title = {EigenSent: Spectral sentence embeddings using higher-order Dynamic Mode Decomposition},
booktitle = {Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics (ACL)},
year = {2019}
}
```

## Guide to run code

### Prerequisites
- pydmd (https://mathlab.github.io/PyDMD/hodmd.html)
- bert as a service (https://bert-as-service.readthedocs.io)
- tensorflow
(apart from other common python packages)

### Get resources
- In the main folder do: ```mkdir resources```
- Download the pretrained word embeddings from Google: ```GoogleNews-vectors-negative300.bin.gz``` and put them in the ```resources``` folder you've just created
- Download the pretrained BERT model: ```https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-24_H-1024_A-16.zip```, copy to ```resources``` and unzip

### Run code
- Open a CLI and run ```bert-serving-start -model_dir <path-to>resources/uncased_L-24_H-1024_A-16/ -num_worker=<as many as possible on your system>```. Keep this running.
- Open another CLI and ..
- Go to ```sh_scripts``` and run: ```sh produce_pickled_resources.sh```
- This should read the datasets and produce lists of word embeddings, one list per sentence in the original dataset, and write it to ```data/pickled_data/<dataset_name>```
- For more information about the pickle files, read the code in ```py_files/sent2wv.py```
- Next, do ```sh runall.sh``` to produce all the necessary results written to text files in ```data/results/```
