## Utility `Tmux-env`

## Goals

Small tool to help configure a collaborative environment – using [`tmux`](/cli-labx/atelier-tmux/README.md) – to play during [CLI's workshop at the LabX](https://www.labx.fr/) (Bordeaux' hackerspace).

## Preamble

> This document has been written for members and attendees at [CLI's workshop organized at the LabX](https://www.labx.fr/)  (Bordeaux' hackerspace) and to an audience with an **intermediate level** in CLI.
> 
> Obviously, some concepts are simplified to fit the audience. 

Far from being error-proof, we welcome feedback, submit any suggestion to the author(s) or the group via : 

* Mail : [dev+clilabx@edouard-lopez.com](dev+clilabx@edouard-lopez.com) ;
* Twitter : [@edouard_lopez](https://twitter.com/edouard_lopez) ;
* IRC : #giroll ou #labx ;
* by coming to drink a beer at [Giroll](http://giroll.org/), or at the [LabX](www.labx.fr/).

## Usage

```bash
make
```

## Available Tasks

### `show-info`
Summarize detected informations.
```bash
make show-info
```

### `create-cli-user`
Create a user to host `tmux` session.
```bash
make create-cli-user
```

### `revoke-access`
f you want to revoke access to your machine, remove the user.
```bash
make revoke-access
```

### `install-requirements`
Install SSH, tmux, and others utility
```bash
make install-requirements
```

### `add-ssh-config`

Add a section in `~/.ssh/config` to allow ssh connection with only `ssh cli@labx`.

| Parameter  | Default | Status | Description |
| ------------- | ------------- | ------------- | ------------- |
| `HOSTNAME` | _labx_ | **required** | **_string_**. Nom de l’hôte. |
| `PORT` | _22_ | **required** | **_integer_**. |

```bash
make add-ssh-config
```
