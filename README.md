# Qualité Code Source

Ce repository contient les cours, les exercices et les sources du module Qualité Code Source du Bachelor CSI.

Le support de cours est disponible dans le dossier `./doc/build/pdf` au format PDF.

## Programme

Les cours couvrent normalement le programme suivant :

1. Tests unitaires

    * Intégration des tests unitaires dans un projet
    * Assertions simples, interprétation des messages de retour
    * Gestion des exceptions
    * Tests utilisant des jeux de données

2. Bonnes pratiques

    * Formatage du code source (indentation, CamelCase)
    * Nomenclature du code
    * Génération de la documentation
    * Organisation du code d’un projet

3. Versionning (GIT)

    * Comprendre le versioning (dépôt, instantanés, fichiers à ignorer)
    * Commandes de base de GIT (annuler des actions, manipuler l’historique, les branches)
    * Gestion des dépôts de code source

4. Plateforme d’intégration et de livraisons continues

    * Mise en place d’un serveur d’intégration continue
    * Gestion de des tâches
    * Automatisation des tests unitaires et d’intégration
    * Génération et interprétation de rapports
    * Déploiement de la version validée

## Compétences

Ils permettent normalement d'acquérir les compétences suivantes :

* Maîtriser la création et l’exécution de tests unitaires avec un framework de tests unitaires
* Mettre en place une démarche d’amélioration de la qualité du code
* Utiliser une plateforme d’intégration et de livraison continue

## Installation

Pytest means Python, it's a framework to test Python using Python.
First create a virtual environment.

```bash
python3 -m venv venv
```

Then activate it.

```bash
source venv/bin/activate
```

Then install pytest and other dependencies of that project.

```bash
pip install -r requirements.txt
```


## Build the documentation

This README is just a help, the complete documentation is available in the `doc` folder as a LaTex source.
To build it to a PDF it required `LuaLaTex`.
Dependencies can be installed on Ubuntu with the following command :

```bash
sudo apt install sudo apt install texlive-luatex texlive-latex-base texlive-latex-recommended texlive-pictures texlive-latex-extra fonts-ebgaramond
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