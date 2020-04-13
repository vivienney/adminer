# Adminer / Adminer Editor / Adminer Custom

> Database management in a single PHP file.

You should take a look to the official github profile (https://github.com/vrana/adminer).

![Adminer](https://rawgit.com/vivienney/adminer/master/.docs/assets/adminer.png)

## Prologue

There are few variants of this adminer image based on Alpine Linux:

- full (mysql, pgsql, sqlite, mongo)
- mysql (only)
- pgsql (only)
- mongo (only)

## Usage

```sh
docker run \
    --rm
    -p 8000:80
    vivienney/adminer:full
```

By default container is running with `MEMORY=256M` (memory_limit) and `UPLOAD=2048M` (upload_max_filesize, post_max_size). You can override it.

```sh
docker run \
    --rm
    -p 8000:80
    -e MEMORY=512M
    -e UPLOAD=4096M
    vivienney/adminer:full
```

## Versions

| Image                        | Technologies                          | Size | Docker Hub                                              |
|------------------------------|---------------------------------------|------|---------------------------------------------------------|
| vivienney/adminer            | MySQL / PostgreSQL / MongoDB / Sqlite | 12mb | [link](https://hub.docker.com/r/vivienney/adminer/tags/)|
| vivienney/adminer:full       | MySQL / PostgreSQL / MongoDB / Sqlite | 12mb | [link](https://hub.docker.com/r/vivienney/adminer/tags/)|
| vivienney/adminer:mysql      | MySQL                                 | 9mb  | [link](https://hub.docker.com/r/vivienney/adminer/tags/)|
| vivienney/adminer:pgsql      | PostgreSQL                            | 8mb  | [link](https://hub.docker.com/r/vivienney/adminer/tags/)|
| vivienney/adminer:mongo      | MongoDB                               | 9mb  | [link](https://hub.docker.com/r/vivienney/adminer/tags/)|

## Custom

### Adminer Petamon

> Custom all-in-one configuration for Adminer with a responsive touch-friendly theme.

You should take a look to the official github profile (https://github.com/pematon/adminer-custom).

<img src="http://pematon.github.io/screenshots/adminer.png?4" width="728px" />

Three color variants included.

<img src="http://pematon.github.io/screenshots/adminer-vriants.png" width="620px" />

#### Usage

```sh
docker run \
    --rm
    -p 8000:80
    vivienney/adminer:pm
```

#### Tags

| Image                        | Technologies                          | Size | Docker Hub                                              |
|------------------------------|---------------------------------------|------|---------------------------------------------------------|
| vivienney/adminer:pm         | MySQL / PostgreSQL / MongoDB / Sqlite | 16mb | [link](https://hub.docker.com/r/vivienney/adminer/tags/)|

### Maintenance

Upgrade Adminer version to 4.7.X.

```bash
find . -type f -name Dockerfile -exec sed -i '' 's/ENV ADMINER_VERSION=.*/ENV ADMINER_VERSION=4.7.X/g' {} +
```

Upgrade Adminer Editor version to 4.7.X.

```bash
find . -type f -name Dockerfile -exec sed -i '' 's/ENV ADMINER_EDITOR_VERSION=.*/ENV ADMINER_EDITOR_VERSION=4.7.X/g' {} +
```
