<h1>
  <img src="../src/images/icons/config-icon.png" width="24" /> <a href="../README.md"><b>dotbraga</b></a> / aliases
</h1>

I've created some useful aliases to work together with Oh My ZSH aliases. Some of them override the behavior from Oh My ZSH, like `gb` for example, that adds a `--no-pager` flag.

<!-- TOC -->

- [Git](#git)
- [Docker](#docker)
- [Docker Compose](#docker-compose)
- [Make](#make)
- [Brew](#brew)

<!-- /TOC -->

### Git

| Alias     | Command                       |
|-----------|-------------------------------|
| **`gb`**  | `git --no-pager branch`       |
| **`gba`** | `git --no-pager branch -a`    |
| **`gmn`** | `git merge --no-ff --no-edit` |
| **`gfp`** | `git fetch --all --prune`     |
| **`gpf`** | `git push -f`                 |
| **`ggc`** | `git gc`                      |

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
| **`di`**    | `docker images`                  |

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

### Make

| Alias    | Command        |
|----------|----------------|
| **`m`**  | `make`         |
| **`mb`** | `make build`   |
| **`mc`** | `make clean`   |
| **`mi`** | `make install` |
| **`mr`** | `make release` |
| **`mw`** | `make watch`   |

### Brew

| Alias     | Command                 |
|-----------|-------------------------|
| **`b`**   | `brew`                  |
| **`bs`**  | `brew services`         |
| **`bsl`** | `brew services list`    |
| **`bsr`** | `brew services restart` |
| **`bss`** | `brew services stop`    |
