Zadanie rekrutacyjne do Bitbar:

Stwórz projekt w oparciu o narzędzie Vagrant https://www.vagrantup.com/
Oraz napisz taką konfigurację, bazując na przykładzie z dokumentacji:
https://www.vagrantup.com/docs/provisioning/ansible.html
Byłoby to łatwiej przetestować.

Kroki:
System w oparciu o dowolną dystrybucję linux-a 
Provisioning stworzony w oparciu o Ansible https://www.ansible.com/
Provisioning powinien instalować serwer Jenkins https://jenkins.io/
Stworzyć/skopiować (przez ansible) prosty skrypt bash-owy który cyklicznie, co 5 minut tworzy nowe przykładowe zadanie “Job” w serwerze jenkinsa używając jenkins klienta (Jenkins CLI).
Skrypt powinien być uruchomiony jako serwis bądź dodany do crona.
Kod wynikowy należy umieścić w repozytorium kodu https://github.com/


Dodatkowym atutem byłoby użycie kontenerów Dockera https://www.docker.com/ dla serwera Jenkins i/lub skryptu tworzącego “Joby”

