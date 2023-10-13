test :
	Rscript -e "source('testthat.R')" || exit 0

clean :
	echo "Nettoyage des résultats et tests..."
	rm -rf results
	echo "✔︎ Nettoyage terminé. Réexécutez les scripts et les rendus Quarto."

original :
	echo "Configuration du dépôt avec les fichiers d'origine..."
	echo "  • Remplacement des fichiers de travail par les originaux..."
	Rscript -e "source('tools_tests.R'); res <- prepare_files(type = 'original')"
	echo "  • Élimination des versions compilées des documents Quarto..."
	rm -f ../analysis_notebook.html
	rm -rf ../analysis_notebook_files
	echo "  • Effacement des objets créés pour les tests..."
	rm -rf results
	echo "✔︎ Documents originaux installés."

prepare :
	echo "Préparation pour la distribution du dépôt..."
	echo "  • Vérification du mot de passe..."
	if [ ! -e ".key" ]; then echo "✗ Exécution interrompue : mot de passe introuvable !" && exit 1; fi
	echo "  • Remplacement des fichiers de travail par les originaux..."
	Rscript -e "source('tools_tests.R'); res <- prepare_files(type = 'original', remove_last_saved = TRUE)"
	echo "  • Élimination des versions compilées des documents Quarto..."
	rm -f ../analysis_notebook.html
	rm -rf ../analysis_notebook_files
	echo "  • Effacement des objets créés pour les tests..."
	rm -rf results
	echo "✔︎ Préparation terminée !"
	# Note: ceci ne fonctionne pas... il faudra encore déterminer la bonne procédure !
	#echo "Note : pensez à faire un soft reset de la branche de travail :"
	#echo "git checkout devel; git reset --soft main (ou master, selon)"
	#echo "ensuite, un commit de tout et un pull-push, enfin"
	#echo "git checkout main; git merge devel -m \"devel merged\""
	#echo "puis git branch -d devel; git push --delete origin devel"
