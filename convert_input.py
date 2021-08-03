import pickle
import sys
import json

DEFAULT_INPUT = {'method': 'column_names'}


def main():
    input_path = sys.argv[1]

    with open(input_path, 'r') as f:
        input_json = json.load(f)


if __name__ == '__main__':
    main()
