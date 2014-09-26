## Utilitaire `Tmux-env`

## Objectifs

Petit outil pour mettre en place un environnement collaboratif – avec [`tmux`](/cli-labx/atelier-tmux/README.md) – lors des [ateliers CLI organisés au LabX](https://www.labx.fr/) (_hackerspace_ de Bordeaux).

## Préambule

> Ce document s'adresse aux participants des [ateliers CLI organisés au LabX](https://www.labx.fr/) (_hackerspace_ de Bordeaux) et à un **publique intermédiaire**.
> 
> Il est évident que certains concepts sont simplifiés pour s'adapter au public. 

Si toutefois vous trouvez des erreurs, merci de les signaler aux auteurs ou au groupe via : 

* Mail : [dev+clilabx@edouard-lopez.com](dev+clilabx@edouard-lopez.com) ;
* Twitter : [@edouard_lopez](https://twitter.com/edouard_lopez) ;
* IRC : #giroll ou #labx ;
* en venant discuter à [Giroll](http://giroll.org/), au [LabX](www.labx.fr/).

## Usage

```bash
make
```

## Tâches disponibles

### `show-info`
Résume les informations détectées.
```bash
make show-info
```

### `create-cli-user`
Créé un utilisateur pour accueillir les sessions `tmux`.
```bash
make create-cli-user
```

### `revoke-access`
Pour révoquer les accès à votre machine, supprimer l'utilisateur.
```bash
make revoke-access
```

### `install-requirements`
Installation des pré-requis et autres outils (serveur `ssh`, `tmux`, etc.).
```bash
make install-requirements
```

### `add-ssh-config`
Ajout d'une section dans le fichier `~/.ssh/config`, de façon à permettre les connections avec seulement `ssh cli@labx`.

| Parameter  | Default | Status | Description |
| ------------- | ------------- | ------------- | ------------- |
| `HOSTNAME` | _labx_ | **required** | **_string_**. Nom de l’hôte. |
| `PORT` | _22_ | **required** | **_integer_**. |

```bash
make add-ssh-config
```
