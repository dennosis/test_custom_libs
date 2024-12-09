## Running in docker-compose
```bash

# build image
docker-compose build

# create virtualenv
docker-compose run --rm python python -m venv python_env

# Install dependencies
docker-compose run --rm python pip install -r requirements.txt

# Run test libs
docker-compose run --rm python python test.py
```