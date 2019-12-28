# Self hosted Editor (for Pair Programing)

## Share code

Copy code (which you want to share over cloud into `program` folder)

## Run using docker

```
docker build -t editor .

docker run -v ${PWD}/program:/app/program --name my-editor -p 3000:3000 -d editor:latest
```

## Share it using ngrok

```
./ngrok http 3000
```

_[More Detail about ngrok](https://ngrok.com/)_
