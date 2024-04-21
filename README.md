# Mise en Production et déploiement

Ce repository contient les cours, les exercices et les sources du module Mise en Production et déploiement de Mastère
MS2D et ERIS.

Le support de cours est disponible dans le dossier `./doc/build/pdf` au format PDF.

## Programme

Les cours couvrent normalement le programme suivant :

1. Mise en exploitation des ressources matérielles et logicielles

    * Vérification des configurations
    * Déploiement des applications
    * Automatisation des procédures de déploiement
    * Élaborer les bilans de l’exploitation
    * Prévoir les évolutions de l’infrastructure

2. Indicateurs et mesure de performances – Systèmes / Réseau et web

    * Centralisation des journaux et exploitation des logs avec syslogd
    * Analyse du trafic réseau avec MRTG
    * Analyse des journaux de type d’Apache Web Server avec Analog
    * Consolidation d’indicateur de qualité avec rrdtool
    * Création de page HTML de type tableau de bord avec rrdtool – Tableau de bord
    * Gestion d’incidents et actions correctives

## Compétences

Ils permettent normalement d'acquérir les compétences suivantes :

* Préparer l’environnement et déployer le progiciel ou la solution.

## Installation

Nothing to install at the moment.

## Build the documentation

This README is just a help, the complete documentation is available in the `doc` folder as a LaTex source.
To build it to a PDF it required `LuaLaTex`.
Dependencies can be installed on Ubuntu with the following command :

```bash
sudo apt install sudo apt install texlive-luatex texlive-latex-base texlive-latex-recommended texlive-pictures texlive-fonts-extra texlive-latex-extra fonts-ebgaramond
```

Then build the PDF documentation :

```bash
/usr/bin/bash compile-latex.sh
```

To compress the PDF, install `ghostscript` :

 ```bash
 sudo apt install ghostscript
 ```

And run the following command :

```bash
/usr/bin/bash compress-pdf.sh
```

To compress images, install `pngcrush` and `jpegoptim` using the following command :

```bash
sudo apt install pngcrush jpegoptim
```

Then run the following command :

```bash
/usr/bin/bash compress-image.sh
```

Check the LaTex syntax in an active virtual environment :

```bash
/usr/bin/bash checkmytex.sh
```

Automation using Ansible :

```bash
apt install ansible-core
```

## VM passwords

login : `chrichri`

password : `RF8hpN1@W2`