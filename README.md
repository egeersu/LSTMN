## Long-Short-Term-Memory-Networks for Machine Reading
Implementation of [Long-Short-Term-Memory-Networks](https://arxiv.org/abs/1601.06733) using Julia and [Knet](https://github.com/egeersu/Knet.jl). 

Term Project for [Comp541: Deep Learning](https://sites.google.com/a/ku.edu.tr/comp541/)

models: make sure the embeddings/data/weights are in this folder, simply run from top to bottom. You can experiment with your own inputs.
	
	Binary Sentiment Classification
	
	Fine-Grained Sentiment Classification
	
	Natural Language Inference

data 
	
	sentiment analysis
	
	inference

weights.txt: model weights can be downloaded through the links provided and used via Knet.load()
	
	lstm46.jld2
	
	binarysentiment.jld2
	
	fine-grained.jld2
	
	inference-weights.jld2

init.txt: direct links to download data and embeddings (make sure they are downloaded into the models folder)
