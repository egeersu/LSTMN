## Long-Short-Term-Memory-Networks for Machine Reading
Implementation of [Long-Short-Term-Memory-Networks](https://arxiv.org/abs/1601.06733) using Julia and [Knet.](https://github.com/egeersu/Knet.jl)

Term Project for [COMP541: Deep Learning](https://sites.google.com/a/ku.edu.tr/comp541/)

### Models

There are 3 different variations of the model, each modified to solve a certain task:
	
[Binary Sentiment Classification](LSTMN/models/Binary Sentiment Classification.ipynb)
		
Fine-Grained Sentiment Classification
	
Natural Language Inference
	
### Data

The data is available at:
	
sentiment analysis
	
inference

### Pre-trained Weights
	
[binarysentiment.jld2](https://drive.google.com/file/d/1Yt0-RFg8Vskb4CUKZ3WJuZ-WKFQEXgGy/view?usp=sharing)
	
[fine-grained.jld2](https://drive.google.com/file/d/1STso_03bVUOGoZKLBnlPmx6Q6yeoB5wp/view?usp=sharing)
	
[inference-weights.jld2](https://drive.google.com/file/d/1FvtMoDDW5FgKpTzhg9TVbHl5FtNYEkoJ/view?usp=sharing)

Weights can be read via Knet.load(). Check out the model notebooks to see how it is used. 
