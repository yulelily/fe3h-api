# FE3H API
A Fire Emblem: Three Houses API designed to query for gameplay relevant information of playable characters in Fire Emblem: Three Houses. FE3H API is written in Java with the Spring Boot framework and MySQL database.

## Characters
FE3H API includes the following playable characters (DLC included):
- Alois
- Anna
- Annette
- Ashe
- Balthus
- Bernadetta
- Byleth
- Caspar
- Catherine
- Claude
- Constance
- Cyril
- Dedue
- Dimitri
- Dorothea
- Edelgard
- Felix
- Ferdinand
- Flayn
- Gilbert
- Hanneman
- Hapi
- Hilda
- Hubert
- Ignatz
- Ingrid
- Jeritza
- Leonie
- Linhardt
- Lorenz
- Lysithea
- Manuela
- Marianne
- Mercedes
- Petra
- Raphael
- Seteth
- Shamir
- Sylvain
- Yuri

## Query Output
Querying the database through this API will return the following information about a character:
- Base Skill Levels
- Base Stats
- Birthday
- Character Growth Rates
- Crests (including second crest, if applicable)
- Default Classes (for out-of-house recruitments)
- Dependent Abilites
- Dependent Combat Arts
- House Affiliation
- Skill Boons, Banes, and Budding Talents
- Spells List (Reason)
- Spells List (Faith)

## Queries & Curl
There are seven built-in functions for querying, which can be accessed with curl through bash/fetch through JavaScript, the returned output is in JSON.

### /unit
Returns information on every character in database, takes no parameters.

### /unit/{id}
Returns information on character with corresponding id in the parameter. A sample output:
```
{
    "_links": {
        "all": {
            "href": "http://localhost:8080/unit",
            "rel": "unit"
        },
        "self": {
            "href": "http://localhost:8080/unit/1",
            "rel": "self"
        }
    },
    "baseSkillLevels": {
        "authority": "D",
        "axe": "E",
        "bow": "D",
        "brawl": "E",
        "faith": "E",
        "flying": "E+",
        "heavyArmor": "E",
        "lance": "E",
        "reason": "E",
        "riding": "E+",
        "sword": "E+"
    },
    "baseStats": {
        "baseCha": "8",
        "baseDef": "6",
        "baseDex": "8",
        "baseHp": "26",
        "baseLck": "7",
        "baseMag": "5",
        "baseRes": "4",
        "baseSpd": "8",
        "baseStr": "11"
    },
    "birthday": "7/24",
    "boonsBanesBudding": {
        "authority": "Boon",
        "axe": "None",
        "bow": "Boon",
        "brawl": "None",
        "budding": "Axe",
        "buddingTalent": "Diamond Axe",
        "faith": "Bane",
        "flying": "Boon",
        "heavyArmor": "None",
        "lance": "Bane",
        "reason": "None",
        "riding": "None",
        "sword": "Boon"
    },
    "defaultClasses": {
        "beginnerClass": "Noble",
        "intermediateClass": "Noble",
        "startingClass": "Noble"
    },
    "dependentAbilities": {
        "A": "Battalion Wrath",
        "C": "Battalion Desperation",
        "C+": "Model Leader",
        "S": "Rally Charm"
    },
    "dependentCombatArts": {
        "A": [
            "Finesse Blade",
            "Encloser"
        ],
        "C+": [
            "Bane of Monsters",
            "Monster Blast"
        ]
    },
    "faithSpells": {
        "A": "Silence",
        "C": "Recover",
        "D": "Heal",
        "D+": "Nosferatu"
    },
    "firstCrest": "Minor Crest of Riegan",
    "fullName": "Claude von Riegan",
    "growthRates": {
        "growthRateCha": "55",
        "growthRateDef": "30",
        "growthRateDex": "60",
        "growthRateHp": "35",
        "growthRateLck": "45",
        "growthRateMag": "25",
        "growthRateRes": "25",
        "growthRateSpd": "55",
        "growthRateStr": "40"
    },
    "house": "Golden Deer",
    "name": "Claude",
    "reasonSpells": {
        "A": "Excalibur",
        "B": "Cutting Gale",
        "C": "Sagittae",
        "D": "Wind"
    },
    "secondCrest": "None"
}
```

### /find/name/{name}
Returns information on character with corresponding name in the parameter. Querying the database by name is not case-sensitive, but only first names are used, (ie. query with "Claude" and not "Claude von Riegan").

### /find/ability/{ability name}
Returns information on character(s) who have the corresponding dependent ability in the parameter. Querying the database by ability is not case-sensitive, escape spaces with "%20", and abilities will be returned with their requirement skill level specified.

The available dependent abilities to query for are:
- Battalion Desperation
- Battalion Renewal
- Battalion Vantage
- Battalion Wrath
- Mastermind
- Model Leader
- Rally Charm
- Rally Defense
- Rally Dexterity
- Rally Luck
- Rally Magic
- Rally Movement
- Rally Resistance
- Rally Speed
- Rally Strength

### /find/combatart/{combat art name}
Returns information on character(s) who have the corresponding dependent combat art in the parameter. Querying the database by combat art is not case-sensitive, escape spaces with "%20", and combat arts will be returned with their requirement skill level specified.

The available dependent combat arts to query for are:
- Armored Strike
- Bane of Monsters
- Bombard
- Break Shot
- Deadeye
- Diamond Axe
- Draining Blow
- Encloser
- Exhaustive Strike
- Finesse Blade
- Focused Strike
- Frozen Lance
- Glowing Ember
- Haze Slice
- Heavy Draw
- Hexblade
- Hit and Run
- Lance Jab
- Lightning Axe
- Mighty Blow
- Monster Blast
- Monster Breaker
- Monster Crusher
- Monster Piercer
- Mystic Blow
- Nimble Combo
- One-Two Punch
- Point-Blank Volley
- Schism Shot
- Shatter Slash
- Soulblade
- Spike
- Swift Strikes
- Sunder
- Vengeance
- Waning Shot
- Ward Arrow
- Wild Abandon
- Windsweep

### /find/reasonspell/{reason spell name}
Returns information on character(s) who have the corresponding reason spell in the parameter in their spell list. Querying the database by spell is not case-sensitive, escape spaces with "%20", and spells will be returned with their requirement skill level specified.

The available reason spells to query for are:
- Agnea's Arrow
- Banshee
- Blizzard
- Bolganone
- Bolting
- Cutting Gale
- Dark Spikes
- Death
- Excalibur
- Fimbulvetr
- Hades
- Fire
- Luna
- Meteor
- Miasma
- Mire
- Ragnarok
- Sagittae
- Swarm
- Thoron
- Thunder
- Wind

### /find/faithspell/{faith spell name}
Returns information on character(s) who have the corresponding faith spell in the parameter in their spell list. Querying the database by spell is not case-sensitive, escape spaces with "%20", and spells will be returned with their requirement skill level specified.

Note that all characters learn "Heal" at Faith skill level D, and "Nosferatu" at Faith skill level D+.
The available faith spells to query for are:
- Abraxas
- Aura
- Fortify
- Heal
- Nosferatu
- Physic
- Recover
- Rescue
- Restore
- Seraphim
- Silence
- Ward
- Warp

## To Use
Clone the repository and compile the project as a JAR or use gradle ("./gradlew bootRun" or "./gradlew build"), import the SQL file, and optionally use the Dockerfile.

If encountering any issues or bugs, please let me know. Thanks!