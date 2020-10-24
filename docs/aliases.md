<h1>
  <img src="../src/images/icons/config-icon.png" width="24" /> <a href="../README.md"><b>dotbraga</b></a> / aliases
</h1>

I've created some useful aliases to work together with Oh My ZSH aliases. Some of them override the behavior from Oh My ZSH, like `gb` for example, that adds a `--no-pager` flag.

<br/>

<!-- TOC -->

- [Brew](#brew)
- [Docker](#docker)
- [Docker Compose](#docker-compose)
- [Git](#git)
- [Make](#make)
- [Misc](#misc)
- [Vessel](#vessel)
- [Yarn](#yarn)

<!-- /TOC -->

<br/>

### Brew

| Alias     | Command                 |
|-----------|-------------------------|
| **`b`**   | `brew`                  |
| **`bs`**  | `brew services`         |
| **`bsl`** | `brew services list`    |
| **`bsr`** | `brew services restart` |
| **`bss`** | `brew services stop`    |

### Docker

| Alias       | Command                          |
|-------------|----------------------------------|
| **`dps`**   | `docker ps`                      |
| **`dpsa`**  | `docker ps -a`                   |
| **`dstop`** | `docker stop`                    |
| **`dr`**    | `docker run`                     |
| **`drm`**   | `docker rm`                      |
| **`drma`**  | `docker rm $(docker ps -q -a)`   |
| **`drmi`**  | `docker rmi $(docker images -q)` |
| **`di`**    | `docker inspect`                 |
| **`dim`**   | `docker images`                  |
| **`dn`**    | `docker network`                 |

### Docker Compose

| Alias       | Command                                       |
|-------------|-----------------------------------------------|
| **`dc`**    | `docker-compose`                              |
| **`dcb`**   | `docker-compose build`                        |
| **`dcbn`**  | `docker-compose build --no-cache`             |
| **`dce`**   | `docker-compose exec`                         |
| **`dck`**   | `docker-compose kill`                         |
| **`dcl`**   | `docker-compose logs`                         |
| **`dcr`**   | `docker-compose kill && docker-compose up`    |
| **`dcrd`**  | `docker-compose kill && docker-compose up -d` |
| **`dcup`**  | `docker-compose up`                           |
| **`dcupd`** | `docker-compose up -d`                        |
| **`dcdn`**  | `docker-compose down`                         |

### Git

| Alias     | Command                       |
|-----------|-------------------------------|
| **`gb`**  | `git --no-pager branch`       |
| **`gba`** | `git --no-pager branch -a`    |
| **`gmn`** | `git merge --no-ff --no-edit` |
| **`gfp`** | `git fetch --all --prune`     |
| **`gcs`** | `git checkout stage`          |
| **`gpf`** | `git push -f`                 |
| **`ggc`** | `git gc`                      |

### Make

| Alias    | Command        |
|----------|----------------|
| **`m`**  | `make`         |
| **`mb`** | `make build`   |
| **`mc`** | `make clean`   |
| **`mi`** | `make install` |
| **`mr`** | `make release` |
| **`mw`** | `make watch`   |

### Misc

| Alias          | Command                                                                |
|----------------|------------------------------------------------------------------------|
| **`apt`**      | `sudo apt`                                                             |
| **`aptu`**     | `apt update && apt upgrade -V && apt autoclean && apt autoremove -V`   |
| **`apty`**     | `apt update && apt upgrade -yV && apt autoclean && apt autoremove -yV` |
| **`aptitude`** | `sudo aptitude`                                                        |
| **`dpkg`**     | `sudo dpkg`                                                            |
| **`l`**        | `LC_COLLATE=C ls -alh --color=tty --group-directories-first`           |
| **`ls`**       | `LC_COLLATE=C ls -a --color=tty --group-directories-first`             |
| **`ll`**       | `LC_COLLATE=C ls -lh --color=tty --group-directories-first`            |

### Vessel

| Alias        | Command    |
|--------------|------------|
| **`v`**      | `./vessel` |
| **`vup`**    | `v start`  |
| **`vst`**    | `v start`  |
| **`vstart`** | `v start`  |
| **`vdn`**    | `v down`   |
| **`vdown`**  | `v down`   |

### Yarn

| Alias      | Command            |
|------------|--------------------|
| **`y`**    | `yarn`             |
| **`ya`**   | `yarn add`         |
| **`yau`**  | `yarn audit`       |
| **`yb`**   | `yarn build`       |
| **`yc`**   | `yarn create`      |
| **`yd`**   | `yarn dev`         |
| **`yp`**   | `yarn prod`        |
| **`yr`**   | `yarn release`     |
| **`yrm`**  | `yarn remove`      |
| **`ys`**   | `yarn start`       |
| **`yt`**   | `yarn test`        |
| **`yw`**   | `yarn watch`       |
| **`yyau`** | `yarn; yarn audit` |
| **`yys`**  | `yarn; yarn start` |
| **`yyw`**  | `yarn; yarn watch` |
