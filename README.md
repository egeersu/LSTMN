## Long-Short-Term-Memory-Networks for Machine Reading
Implementation of [Long-Short-Term-Memory-Networks](https://arxiv.org/abs/1601.06733) using Julia and [Knet.](https://github.com/egeersu/Knet.jl)

Term Project for [Comp541: Deep Learning](https://sites.google.com/a/ku.edu.tr/comp541/)

### Models

There are 3 different variations of the model, each modified to solve a certain task:
	
	Binary Sentiment Classification
	
	Fine-Grained Sentiment Classification
	
	Natural Language Inference
	
### Data

The data is available at:
	
	sentiment analysis
	
	inference

### Pre-trained Weights

Model weights can be downloaded through the following links: 
	
	lstm46.jld2
	
	binarysentiment.jld2
	
	fine-grained.jld2
	
	inference-weights.jld2

Weights can be read via Knet.load(). Check out the model notebooks to see how it is used. 

init.txt: direct links to download data and embeddings (make sure they are downloaded into the models folder)
