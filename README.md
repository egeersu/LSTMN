## Long-Short-Term-Memory-Networks for Machine Reading
Implementation of [Long-Short-Term-Memory-Networks](https://arxiv.org/abs/1601.06733) using Julia and [Knet.](https://github.com/egeersu/Knet.jl)

Term Project for [COMP541: Deep Learning](https://sites.google.com/a/ku.edu.tr/comp541/)

### Models

There are 3 different variations of the model, each modified to solve a certain task:
	
[Binary Sentiment Classification](https://github.com/egeersu/LSTMN/blob/master/models/Binary%20Sentiment%20Classification.ipynb)
		
[Fine-Grained Sentiment Classification](https://github.com/egeersu/LSTMN/blob/master/models/Fine-Grained%20Sentiment%20Classification.ipynb)
	
[Natural Language Inference](https://github.com/egeersu/LSTMN/blob/master/models/Natural%20Language%20Inference.ipynb)
	
### Data

[Stanford Sentiment Treebank](https://nlp.stanford.edu/sentiment): [Labels](https://raw.githubusercontent.com/egeersu/LSTMN/master/data/sentiment%20analysis/labels.txt), [Sentences.](https://raw.githubusercontent.com/egeersu/LSTMN/master/data/sentiment%20analysis/sentences.txt)

[The Stanford Natural Language Inference (SNLI) Corpus](https://nlp.stanford.edu/projects/snli/): [JSON File](https://nlp.stanford.edu/projects/snli/snli_1.0.zip)


### Pre-trained Weights
	
[binarysentiment.jld2](https://drive.google.com/file/d/1Yt0-RFg8Vskb4CUKZ3WJuZ-WKFQEXgGy/view?usp=sharing)
	
[fine-grained.jld2](https://drive.google.com/file/d/1STso_03bVUOGoZKLBnlPmx6Q6yeoB5wp/view?usp=sharing)
	
[inference-weights.jld2](https://drive.google.com/file/d/1FvtMoDDW5FgKpTzhg9TVbHl5FtNYEkoJ/view?usp=sharing)

Weights can be read via Knet.load(). Check out the model notebooks to see how it is used. 
