<div align="center">
<div id="header" align="center">
<img src="https://media.proglib.io/wp-uploads/2017/06/SQL.png" width="3000px"/>
</div>

<div align="left">
— to strukturalny język zapytań stworzony w celu pobierania potrzebnych informacji z bazy danych. Jeśli opisać działanie SQL prostymi słowami, specjalista tworzy zapytanie i wysyła je do bazy. Baza następnie przetwarza te informacje, „rozumie”, czego dokładnie potrzebuje specjalista, i odsyła odpowiedź.

---

### Czym są relacyjne bazy danych?

W relacyjnych bazach danych dane przechowywane są w formie tabel, są one uporządkowane i podzielone na wiersze i kolumny, co ułatwia operowanie nimi. Z angielskiego *relation* – „relacje”, co wskazuje, że obiekty w takiej bazie są powiązane określonymi relacjami.

---

### Jak działają zapytania?

Aby zrozumieć, jak dokładnie działa magia zapytań, wyobraźmy sobie drogę zapytania od użytkownika do potrzebnych danych:  
#### Użytkownik → Klient → Zapytanie → System zarządzania → Baza danych → Tabela w bazie danych

---

### Czym są klucze w bazie danych?

Klucz to najważniejsza kolumna w tabeli, dzięki której odbywa się interakcja w relacyjnej bazie danych; łączy on tabele ze sobą.

##### Klucze dzielą się na kilka typów:

+ **Klucz główny (Primary Key)** – identyfikator, taki jak indeks lub numer artykułu.  
+ **Klucz potencjalny (Candidate Key)** – inne unikalne wartości, które mogą służyć jako identyfikator.  
+ **Klucz obcy (Foreign Key)** – kolumna-odnośnik używana do łączenia dwóch tabel; każda wartość klucza obcego musi odpowiadać kluczowi głównemu w innej tabeli.

---

### Czym są operatory SQL?

Do pracy z danymi służą operatory – określone słowa lub symbole używane do wykonywania konkretnych operacji.

#### Operatory SQL dzielą się na grupy w zależności od wykonywanych zadań:

1. **DDL (Data Definition Language)** – operatory definiowania danych. Działają na obiektach, czyli całych tabelach. Jeśli potrzebne jest dodanie nowej tabeli z danymi lub usunięcie błędnej tabeli – używa się tego zestawu operatorów.

+ **CREATE** – tworzenie obiektu w bazie danych  
+ **ALTER** – zmiana obiektu  
+ **DROP** – usunięcie obiektu  

2. **DML (Data Manipulation Language)** – operatory manipulacji danymi. Działają na zawartości tabel – wierszach, atrybutach i wartościach. Za ich pomocą można wprowadzać zmiany w konkretnych danych, np. zmienić pole „Nazwisko” w wierszu pracownicy po jej zamążpójściu lub usunąć wiersz z danymi pracownika, który odszedł.

+ **SELECT** – wybór danych według warunku  
+ **INSERT** – dodanie nowych danych  
+ **UPDATE** – zmiana istniejących danych  
+ **DELETE** – usunięcie danych  

3. **DCL (Data Control Language)** – operatory kontroli dostępu do danych. Określają, którzy użytkownicy mogą wysyłać zapytania do bazy, zmieniać obiekty i wartości.

+ **GRANT** – przyznanie dostępu do obiektu  
+ **REVOKE** – odebranie wcześniej przyznanego uprawnienia  
+ **DENY** – zabronienie dostępu, mające priorytet nad uprawnieniem  

4. **TCL (Transaction Control Language)** – język sterowania transakcjami. Transakcje to zestaw poleceń wykonywanych po kolei. Jeśli wszystkie polecenia się powiodą, transakcja jest sukcesem; jeśli wystąpi błąd – transakcja jest cofana. Przykład: płatność online, gdzie bank prosi o wprowadzenie kwoty i odbiorcy, potem weryfikację i potwierdzenie, a następnie jednorazowy kod. Na każdym etapie transakcję można anulować.

+ **BEGIN TRANSACTION** – rozpoczęcie transakcji  
+ **COMMIT TRANSACTION** – zatwierdzenie zmian w transakcji  
+ **ROLLBACK TRANSACTION** – wycofanie transakcji  
+ **SAVE TRANSACTION** – określenie punktu zapisu w transakcji  

---

### Przykłady relacyjnych baz danych

+ PostgreSQL  
+ MySQL  
+ SQLite  
+ Oracle  
+ Google Cloud Spanner  

Same tabele ani baza danych nie mogą wykonywać operacji; w systemie zarządzania bazą danych (DBMS) można tworzyć nowe tabele, usuwać niepotrzebne dane, ustawiać klucze i przetwarzać zapytania. Główne zadania DBMS:

+ obsługa języków baz danych;  
+ bezpośrednie zarządzanie danymi;  
+ zarządzanie pamięcią podręczną;  
+ zarządzanie transakcjami;  
+ tworzenie kopii zapasowych i odzyskiwanie danych po awarii.  

---

### Bazy danych NoSQL

Oprócz tradycyjnych baz (SQL) istnieje inny sposób przechowywania danych, który zyskał popularność w drugiej połowie lat 2000 – bazy nierelacyjne (NoSQL). Różnią się tym, że dane nie są przechowywane w systemie wierszy i kolumn, lecz w modelu zoptymalizowanym do przechowywania określonego typu zawartości, np. dokumentów JSON, grafów lub par klucz-wartość.

W NoSQL nie używa się SQL; zapytania wykonuje się przy pomocy innych języków lub konstrukcji. W nierelacyjnych bazach danych nie ma sztywnej schemy relacji między danymi – model danych jest definiowany „w locie” przez DBMS. Pozwala to szybko dostosować bazę do rodzaju przechowywanych danych. W przypadku relacyjnej bazy do podobnego zadania trzeba byłoby uruchomić dodatkową bazę danych.  

---

### Do czego używa się baz NoSQL?

Bazy NoSQL są idealne dla nowoczesnych aplikacji, np. mobilnych, gier czy aplikacji webowych, które wymagają elastycznych, skalowalnych baz danych o wysokiej wydajności i szerokich możliwościach funkcjonalnych.

---

### Przykłady nierelacyjnych baz danych

+ Oracle NoSQL Database  
+ MongoDB  
+ Apache Cassandra  
+ Berkeley DB  
+ MemcacheDB  
+ Redis  
+ Amazon DynamoDB
