# Inlämning 1

## Del A: Miljö och arkitektur

### 1. Starta MySQL som Docker-container och importera Laboration1.sql

```
docker run --name mysql-lab1 -e MYSQL_ROOT_PASSWORD=<lösenord> -p 3306:3306 -d mysql
```

- Drog in Laboration1.sql i IntelliJ-projektet.
- Körde filen (Run) mot MySQL-containern via IntelliJs databasflik.
- Med anslutning till localhost:3306.

### 2. SHOW TABLES och DESCRIBE, primärnyckel

```
SHOW TABLES;
DESCRIBE account;
DESCRIBE moon_mission;
```

Primärnyckeln är `user_id` i `account` och `mission_id` i `moon_mission`.

### 3. Var körs MySQL-servern och klienten, hur kommunicerar de och vilken port?

MySQL-servern körs i en Docker-container på min dator, och klienten är IntelliJ, som också körs på min dator.

IntelliJ ansluter till servern via localhost på port 3306.

Porten på min dator är kopplad till containerns port 3306 med -p 3306:3306, så det som skickas till localhost:3306 hamnar i MySQL-containern.

## Del C: SQL eller NoSQL?

### 15. Banköverföringar mellan konton

SQL. Det är mer pålitligt, eftersom en överföring måste antingen gå igenom helt eller inte alls. Det finns heller inget behov av att vara flexibel eller göra snabba ändringar.

### 16. Inloggningssessioner i en webbshop med automatisk utgång efter 30 minuter

NoSQL. Sessioner ska gå ut automatiskt efter 30 minuter, och det kan många NoSQL-databaser göra genom att ge varje session en utgångstid.

### 17. Produktkatalog där olika produkttyper har helt olika attribut

NoSQL. Produkttyperna har helt olika attribut, och i en dokumentdatabas kan varje produkt ha sina egna fält. I SQL hade det blivit många tabeller eller många tomma kolumner.


