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



## Wykonanie:

* Host: Arch Linux, Vagrant 2.2.4, Vbox 6.04, Docker CE 18.09.3
* Dla Vagranta użyłem obrazu Ubuntu 16.04.
* Dla Jenkinsa stworzyłem obraz dziedziczący po oficjalnym jenkinsowym.
* Playbook uruchamia 2 role: pierwsza do stawiania dockera, druga do stawiania jenkinsa.
* Część zmiennych domyślnych i tak wpisałem explicite, bo zwykle tak mi wygodniej.
* Hasła wrzuciłem do Vaulta.
* Użyłem plugina do automatycznej wstępnej konfiguracji Jenkinsa, ale czegoś tak żle udokumentowanego nie widziałem od dawna,
tym samym setup Jenkinsa robi się niepełny (trzeba kliknąć X przy pierwszym odpaleniu z web).
* Joba Jenkinsowego tworzę skryptem korzystającym z CLI, cron jest wrzucony w /etc/cron.d
* Musiałem dodać pauzę przed zaciąganiem CLI bo Jenkins nie wstawał na czas.
* Http 8080 wyprowadzone na zewnątrz coby Jenkins działał przez przeglądarkę hosta.
* PS: #uMnieDziała
