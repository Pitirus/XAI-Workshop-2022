# XAI Workshop 2022

## Build & quickstart

### Using docker-compose & Makefile
The simplest way to build and run the project is to type the following command in the terminal:

```shell
make build-and-run
```

After first build you can use `make jupyter` to omit the build phase.


### Using docker-compose
If the Makefile doesn't work you can use docker-compose commands:

```shell
docker-compose build
docker-compose up jupyter
```

After that open the browser on page http://localhost:8888/lab/tree/xai.ipynb


### Using venv
If instead of docker you prefer to use venv:

```shell
# Create and activate venv
python3 -m venv .venv && . .venv/bin/activate
# Install requirements
pip install -r requirements.txt
# Start jupyter server
jupyter lab
```


## Adding packages
If you would like to add & install packages simply put them in the [requirements.txt](requirements.txt) file and rerun the build/install step.