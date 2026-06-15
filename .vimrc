" Source https://geekeries.org/2016/12/configuration-de-vim/
" à créer dans le répertoire personnel à la racine
filetype on          " Détection du type de fichier 
syntax on            " Coloration syntaxique
set background=dark  " Adapte les couleurs pour un fond noir (idéal dans PuTTY)
set linebreak        " Coupe les lignes au dernier mot et pas au caractère (requier Wrap lines, actif par défaut)
set visualbell       " Utilisation du clignotement à la place du "beep"
set showmatch        " Surligne le mots recherchés dans le texte
set hlsearch         " Surligne tous les résultats de la recherche
set autoindent       " Auto-indentation des nouvelles lignes
set expandtab        " Remplace les "Tabulation" par des espaces
set shiftwidth=2     " (auto) Indentation de 2 espaces
set smartindent      " Active "smart-indent" (améliore l'auto-indentation, notamment en collant du texte déjà indenté)
set smarttab         " Active "smart-tabs" (améliore l'auto-indentation, Gestion des espaces en début de ligne pour l'auto-indentation)
set softtabstop=2    " Tabulation = 2 espaces
