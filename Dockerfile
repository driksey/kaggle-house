# 1. Utiliser une image de base scientifique avec Python et Jupyter déjà prêts
FROM quay.io/jupyter/pytorch-notebook:python-3.11.8

# 2. Définir ton répertoire de travail dans le conteneur
WORKDIR /home/jovyan/work

# 3. Copier le fichier requirements.txt (liste de tes librairies Python)
COPY requirements.txt .

# 4. Installer les librairies depuis requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copier tout le projet dans le conteneur
COPY . .

# 6. Exposer le port de Jupyter
EXPOSE 8888
