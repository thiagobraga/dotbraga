<h1>
  <img src="../images/icons/config-icon.png" width="24" /> <a href="../README.md"><b>dotbraga</b></a> / <a href="../docs"><b>docs</b></a> / aliases
</h1>

I've created some useful aliases to work together with Oh My Zsh aliases. Some of them override the behavior from Oh My Zsh, like `gb` for example, that adds a `--no-pager` flag.

<br/>

<!-- TOC -->

- [Brew](#brew)
- [Docker](#docker)
- [Docker applications](#docker-applications)
- [Docker Compose](#docker-compose)
- [Git](#git)
- [Kool](#kool)
- [Make](#make)
- [Misc](#misc)
- [PHP](#php)
- [Vessel](#vessel)
- [Yarn](#yarn)
- [Dotbraga](#dotbraga)

<!-- /TOC -->

<br/>

<br>

### Brew

| Alias     | Command                 |
|-----------|-------------------------|
| **`b`**   | `brew`                  |
| **`bs`**  | `brew services`         |
| **`bsl`** | `brew services list`    |
| **`bsr`** | `brew services restart` |
| **`bss`** | `brew services stop`    |

<br>

### Docker

| Alias         | Command                             |
|---------------|-------------------------------------|
| **`dps`**     | `docker ps`                         |
| **`dpsa`**    | `docker ps -a`                      |
| **`dpsaq`**   | `docker ps -a -q`                   |
| **`dpsq`**    | `docker ps -q`                      |
| **`dstart`**  | `docker star`                       |
| **`dstats`**  | `docker stats`                      |
| **`dstop`**   | `docker stop`                       |
| **`dr`**      | `docker run`                        |
| **`drm`**     | `docker rm`                         |
| **`drmf`**    | `docker rm -f`                      |
| **`drma`**    | `docker rm $(docker ps -q -a)`      |
| **`drmfa`**   | `docker rm -f $(docker ps -q -a)`   |
| **`drmi`**    | `docker rmi`                        |
| **`drmif`**   | `docker rmi -f`                     |
| **`drmiq`**   | `docker rmi $(docker images -q)`    |
| **`drmifq`**  | `docker rmi -f $(docker images -q)` |
| **`drmimg`**  | `docker rmi $(docker images -q)`    |
| **`drmfimg`** | `docker rmi -f $(docker images -q)` |
| **`di`**      | `docker inspect`                    |
| **`dim`**     | `docker images`                     |
| **`dn`**      | `docker network`                    |

<br>


### Docker applications

| Alias               | Command                                               |
|---------------------|-------------------------------------------------------|
| **`gitlab-runner`** | `docker exec -it -w $PWD gitlab-runner gitlab-runner` |
| **`phpdoc`**        | `docker run --rm -v $PWD:/data phpdoc/phpdoc:3`       |

<br>

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

<br>

### Git

| Alias        | Command                       |
|--------------|-------------------------------|
| **`gb`**     | `git --no-pager branch`       |
| **`gba`**    | `git --no-pager branch -a`    |
| **`gco`**    | `git checkout`                |
| **`gcd`**    | `git checkout develop`        |
| **`gcdm`**   | `git checkout development`    |
| **`gcs`**    | `git checkout stage`          |
| **`gcm`**    | `git checkout master`         |
| **`gcma`**   | `git checkout main`           |
| **`gcmain`** | `git checkout main`           |
| **`gstl`**   | `git --no-pager stash list`   |
| **`gmn`**    | `git merge --no-ff --no-edit` |
| **`gfp`**    | `git fetch --all --prune`     |
| **`gcs`**    | `git checkout stage`          |
| **`gpf`**    | `git push -f`                 |
| **`ggc`**    | `git gc`                      |

<br>

### Kool

| Alias      | Command                           |
|------------|-----------------------------------|
| **`k`**    | `kool`                            |
| **`ke`**   | `kool exec`                       |
| **`ka`**   | `kool exec app`                   |
| **`kea`**  | `kool exec app`                   |
| **`kr`**   | `kool run`                        |
| **`kc`**   | `kool run composer`               |
| **`krc`**  | `kool run composer`               |
| **`kcd`**  | `kool run composer dump-autoload` |
| **`krcd`** | `kool run composer dump-autoload` |
| **`kra`**  | `kool run artisan`                |
| **`km`**   | `kool run artisan migrate`        |
| **`kram`** | `kool run artisan migrate`        |
| **`ks`**   | `kool start`                      |
| **`kstp`** | `kool stop`                       |


<br>

### Make

| Alias    | Command        |
|----------|----------------|
| **`m`**  | `make`         |
| **`mb`** | `make build`   |
| **`mc`** | `make clean`   |
| **`mi`** | `make install` |
| **`mr`** | `make release` |
| **`mw`** | `make watch`   |

<br>

### Misc

| Alias          | Command                                                              |
|----------------|----------------------------------------------------------------------|
| **`apt`**      | `sudo apt`                                                           |
| **`aptu`**     | `apt update && apt upgrade -V && apt autoclean && apt autoremove -V` |
| **`aptitude`** | `sudo aptitude`                                                      |
| **`dpkg`**     | `sudo dpkg`                                                          |
| **`snap`**     | `sudo snap`                                                          |
| **`rm`**       | `/bin/rm -v`                                                         |
| **`l`**        | `LC_COLLATE=C ls -alh --color=tty --group-directories-first`         |
| **`ll`**       | `LC_COLLATE=C ls -lh --color=tty --group-directories-first`          |
| **`ls`**       | `LC_COLLATE=C ls -a --color=tty --group-directories-first`           |
| **`www`**      | `cd ${HOME}/www`                                                     |

<br>

### PHP

| Alias        | Command                                           |
|--------------|---------------------------------------------------|
| **`phpdoc`** | `docker run --rm -v $(pwd):/data phpdoc/phpdoc:3` |

<br>

### Vessel

| Alias        | Command    |
|--------------|------------|
| **`v`**      | `./vessel` |
| **`vup`**    | `v start`  |
| **`vst`**    | `v start`  |
| **`vstart`** | `v start`  |
| **`vdn`**    | `v down`   |
| **`vdown`**  | `v down`   |

<br>

### Yarn

| Alias      | Command              |
|------------|----------------------|
| **`y`**    | `yarn`               |
| **`ya`**   | `yarn add`           |
| **`yau`**  | `yarn audit`         |
| **`yb`**   | `yarn build`         |
| **`yc`**   | `yarn create`        |
| **`yd`**   | `yarn dev`           |
| **`yp`**   | `yarn prod`          |
| **`yr`**   | `yarn release`       |
| **`yrm`**  | `yarn remove`        |
| **`ys`**   | `yarn start`         |
| **`yt`**   | `yarn test`          |
| **`yw`**   | `yarn watch`         |
| **`yyau`** | `yarn && yarn audit` |
| **`yys`**  | `yarn && yarn start` |
| **`yyw`**  | `yarn && yarn watch` |

<br>

### Dotbraga

| Alias          | Command                                |
|----------------|----------------------------------------|
| **`dotbraga`** | `"${HOME}/www/braga/dotbraga"`         |
| **`dot`**      | `"${HOME}/www/braga/dotbraga/install"` |
