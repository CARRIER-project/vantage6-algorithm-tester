# vantage6-algorithm-teste


docker run -v $PWD/input.pkl:/app/input.pkl -v $PWD/test_input:/data -e INPUT_FILE=/data/input.pkl -e TOKEN_FILE=/data/token.txt -e DATABASE_URI=/data/test_db.csv dt_test
