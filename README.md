# Self hosted Editor (for Pair Programing)

## Share code

Copy code (which you want to share over cloud into `program` folder)

## Clone code

```
git clone git@github.com:AdiechaHK/pair-programing.git
```
Move to that project directory
```
cd pair-programing
```

## Program folder

```
mkdir program
```
Once your `program` folder is created you can put existing code there which you wish to work with.


## Run using docker

```
docker build -t editor .

docker run -v ${PWD}/program:/app/program --name my-editor -p 3000:3000 -d editor:latest
```

## Share it using ngrok

```
./ngrok http 3000
```
then you will get live link for it, add `#/app/program` to it after opening live link, that will open your `program` folder as project folder.

_[More Detail about ngrok](https://ngrok.com/)_
