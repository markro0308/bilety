Aplikacja służąca do kupowania biletów na różne wydarzenia kulturalne realizowana w trakcie studiów.

Wykorzystane techonologie: 
	Backend: 
	Ruby on Rails v 6.1.4

	Frontend:
	HTML5 
	CSS3 
	Bootstrap4 

	Baza danych: 
	SQLite

Opis konfiguracji środowiska i uruchomienia projektu:

1. Pobieranie i instalacja Ruby 2.7.3:

    W zależności od posiadanego systemu operacyjnego należy pobrać i zainstalować Ruby w wersji 2.7.3 zgodnie z instrukcją:
        ->  https://www.ruby-lang.org/en/downloads/
   
    Jeżeli posiadamy inną wersję języka Ruby należy ją zmienić przy użyciu rbenv:
        -> https://github.com/rbenv/rbenv

2. Instalacja Ruby on Rails
    Po zainstalowaniu Ruby następnie w konsoli wpisujemy komendę:
        -> gem install rails

3. Wypakuj plik "wspolnota_mieszkaniowa.zip".
   
4. W edytorze kodu np. Visual Studio Code otwieramy folder wspolnota_mieszkaniowa.

5. Po załadowaniu projektu w edytorze uruchamiamy terminal i wpisujemy komendnę, która zaktualizuje potrzebne komponenty apliakcji:
        -> bundle install
   
6. Uruchamiamy wirtualny serwer komendą:
        -> rails s
   
7. W przeglądarce internetowej wpisujemy adres:
    -> http://localhost:3000
   
8. Dane potrzebne do utworzenia nowego wydarzenia:
username=="admin"  
password=="admin"


