# TocTocMedoc
Code Source pour le projet de gestion , team YAKHAR.

### Logiciels requis:
1. Vous devez avoir la dernière version de wampserver installée, wampserver est un environnement de développement
qui héberge toutes les applications et les packages requis pour construire des applications web php, il inclut le serveur apache de langage php et moteurs mariadb et mysql. vous pouvez télécharger et installer le serveur Wamp en passant par ce lien :(https://sourceforge.net/projects/wampserver/).
1. Suivez le processus d'installation par défaut.
1. Démarrez wampserver en cliquant sur l'icône sur le bureau, ou dans le menu démarrer, vérifiez que tous les services sont en cours d'exécution en regardant l'icône wampserver dans le coin droit, elle devrait commencer en rouge puis devient jaune et éventuellement verte.

### importation de la base de données :
1. Ouvrez un navigateur Web et tapez localhost ou 127.0.0.1 dans la barre d'URL.
1. Vous devriez obtenir la page d'accueil par défaut de wampserver, sous "Your Aliases" cliquez sur phpmyadmin et vous obtiendrez la page de connexion, choisissez mariadb et root comme nom d'utilisateur, mot de passe est vide.
1. Vous créez 2 bases de données, la première nommée test et la seconde nommée toc_toc_medoc_3 les noms doivent correspondre aux noms des deux fichiers dans le dossier sql.
1. Dans le menu ci-dessus, choisissez "import" et importer le fichier correspondant (avec l'extension .sql) pour chaque base de données.

### Exécution de l'application Web:
1. Allez à l'emplacement d'installation de wampserver, c'est généralement: C: \ wamp64. aller dans le dossier www, créer un dossier vide qui contiendra les fichiers du site web, copier coller le contenu du dossier "toc toc medoc" à l'intérieur de celui-ci.
1. Avant d'exécuter le site Web, vous avez besoin pour créer un hôte virtuel, revenez à la page d'accueil de wampserver, cliquez sur 'ajouter un hôte virtuel', vous obtiendrez une invite avec un forum entrez le chemin du dossier du projet à l'intérieur du www et donnez un nom au site Web, puis cliquez sur créer un hôte virtuel.
1.Faites un clic droit sur l'icône du wampserver, choisissez outils, puis redémarrez DNS et attendez que l'icône du serveur de serveur passe au vert
1.Enfin, ouvrez le navigateur et tapez localhost, vous devriez voir le nom du site Web que vous avez donné dans la section 'vos hôtes virtuels' cliquez dessus et vous ouvrirez le site Web.




