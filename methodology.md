## methodology

The following optimizations were selected based on execution gas, considering the frequency of operations (ex. swaps are more common than pool instantiations)
Each optimization is documented in comment.md file, and its file diff is attached in patch.diff

The patched have been profiled with forge snapshot --isolate

The findings have been ordered in descending order of gas saved and amount of change to the codebase

NOTE: contracts only meant to be staticcalled in the periphery codebase (ex. Quoter(s)) have not been analyzed. They are explicitly documented to be gas inefficent as they are only meant to be ran off chain
