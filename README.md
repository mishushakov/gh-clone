# gh-clone
One-line GitHub backup script

The script fetches all repositories accessible by a user (up to 10.000) to the desired destination

## Dependencies

- [curl](https://curl.haxx.se/download.html)
- [jq](https://stedolan.github.io/jq/)
- [git](https://git-scm.com/downloads)

## Installation (Manual)

### Download

```sh
git clone git@github.com:mishushakov/gh-clone.git
```

### Configure

#### Set environment variables

- `GITHUB_USERNAME` - your GitHub username
- `GITHUB_TOKEN` - your GitHub token, must have the **repos** permissions

#### Make the script executable

```sh
chmod +x ./gh-clone.sh
```

### Execute

```sh
./gh-clone.sh .
```

Second argument is the destination

Running the script again will overwrite existing backup, useful when executing with cron

## Installation (Docker)

```sh
docker run -d \
-e "GITHUB_USERNAME=<your-username>" \
-e "GITHUB_TOKEN=<your-token>" \
-v $(pwd):/gh-clone \
docker.pkg.github.com/mishushakov/gh-clone/gh-clone
```
