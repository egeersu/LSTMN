using Pkg
Pkg.add("Pkg")
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("DelimitedFiles")
Pkg.add("Knet")
Pkg.add("Statistics")
Pkg.add("Random")
using Knet
using CSV
using DataFrames
using DelimitedFiles, Statistics, Random

test_df = CSV.File("test_data.csv") |> DataFrame
test_sentences = test_df.Sentence
test_labels = test_df.Sentiment
size(test_sentences), size(test_labels)

function mapx(label)
    if label == "very neg" return 1; end;
    if label == "neg" return 2; end;
    if label == "neu" return 3; end;
    if label == "pos" return 4; end;
    if label == "very pos" return 5; end;
end

test_labels = (label->mapx(label)).(test_labels);

train_df = CSV.File("train_data.csv") |> DataFrame
train_sentences = train_df.Sentence
train_labels = train_df.Score
size(train_sentences), size(train_labels)

val_df = CSV.File("val_data.csv") |> DataFrame
val_sentences = val_df.Sentence
val_labels = val_df.Sentiment
size(val_sentences), size(val_sentences)

dtst = minibatch(test_sentences, test_labels, 10);

struct Chain
    layers
    Chain(layers...) = new(layers)
end

(c::Chain)(x) = (for l in c.layers; x = l(x); end; x)
(c::Chain)(x,y) = nll(c(x),y)
(c::Chain)(d::Knet.Data) = mean(c(x,y) for (x,y) in d)

function array_to_matrix(a1)
    out = randn(length(a1), 5)
    for i in 1:length(a1)
        out[i,:] = a1[i]
    end
    permutedims(out)
end;

struct toylayer; w; end
toylayer(i::Int) = toylayer(param(i))
(t::toylayer)(x) = array_to_matrix(rand([[1,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1]], length(x)))


LSTMN = Chain(toylayer(10))
println(accuracy(LSTMN, dtst))
println(LSTMN(dtst))


