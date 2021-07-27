# vantage6-algorithm-tester
## How to use
Pick the vantage6 algorithm of your choice. It could be your own docker image. We will pick 
`harbor2.vantage6.ai/testing/v6-test-py`.

Run the script as follows:
```shell
./run_algorithm.sh DOCKERFILE
```

For our example this would be:
```shell
./run_algorithm.sh harbor2.vantage6.ai/testing/v6-test-py
```

The script will supply the algorithm with the files in the `data/` directory. The default input 
is written in pickle format, but you can replace it with your own file.

The current input file contains a dict with input parameters that looks like the following:
```shell
{'method': 'column_names'}
```

The output file can be found in `data/output`.
Our algorithm outputs to pickle by default.
We can check the output in our case as follows:
```python
import pickle
with open('./data/output', 'rb') as f:
    output = pickle.load(f)
 
print(output)

# Output: ['sepal_length', 'sepal_width', 'petal_length', 'petal_width', 'class']
```

## References
- Dua, D. and Graff, C. (2019). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml].  Irvine, CA: University of California, School of Information and Computer Science.
