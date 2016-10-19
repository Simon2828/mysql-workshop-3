Ex1 
mysql> select accountId, count(*) from AddressBook group by accountId order by count(*) desc;
+-----------+----------+
| accountId | count(*) |
+-----------+----------+
|         5 |       19 |
|        14 |       19 |
|        58 |       18 |
|        42 |       18 |
|         2 |       17 |
|        76 |       16 |


Which Address Book contains the most Entries?

mysql> select addressBookId, count(*) from Entry group by addressBookId order by count(*) desc;                          
+---------------+----------+
| addressBookId | count(*) |
+---------------+----------+
|            37 |       52 |
|            20 |       50 |
|            50 |       49 |
|             8 |       48 |

Ex2
How many Address Book Entries have phones starting with area code 3XX?

mysql> select count(*) from Entry where contentLineOne like '3%';
+----------+
| count(*) |
+----------+
|      115 |
+----------+


How many Address Book Entries have home phones not containing the digit 5?

mysql> select count(*) from Entry where subtype='phone' and contentLineOne not like '%5%';                                                                          
+----------+
| count(*) |
+----------+
|      212 |
+----------+

How many Address Book Entries are work phones starting with a country code?

mysql> select count(*) from Entry where type='work' and contentLineOne like '1-%';                                                                                   
+----------+
| count(*) |
+----------+
|       60 |
+----------+

Ex 3:
List all of the countries with respective occurence totals in DESC order
Country names should all appear lowercase

mysql> select count(entryId), lower (country) from Address group by country order by count(entryId) desc;                                                          
+----------------+----------------------------------------------+
| count(entryId) | lower (country)                              |
+----------------+----------------------------------------------+
|             18 | mozambique                                   |
|             16 | saint helena, ascension and tristan da cunha |
|             15 | thailand                                     |
|             15 | united states minor outlying islands         |
|             15 | andorra                                      |
|             15 | canada                                       |
|             15 | argentina                                    |
|             15 | lebanon                                      |
|             15 | wallis and futuna                            |
|             15 | curaçao                                      |
|             14 | sri lanka                                    |
|             14 | ethiopia                                     |

List all of the first names for AddressBook.name="Pharetra Ut Limited"

mysql> select AddressBook.name, Entry.firstName from AddressBook  join Entry on AddressBook.id = Entry.addressBookId where AddressBook.name = "Pharetra Ut Limited";
+---------------------+-------------+
| name                | firstName   |
+---------------------+-------------+
| Pharetra Ut Limited | Zelenia     |
| Pharetra Ut Limited | Abdul       |
| Pharetra Ut Limited | Idola       |
| Pharetra Ut Limited | Illana      |
| Pharetra Ut Limited | Winifred    |
| Pharetra Ut Limited | Buckminster |
| Pharetra Ut Limited | Heidi       |
| Pharetra Ut Limited | Nell        |
| Pharetra Ut Limited | Ciara       |
| Pharetra Ut Limited | Sylvia      |
| Pharetra Ut Limited | Caryn       |
| Pharetra Ut Limited | Dieter      |
| Pharetra Ut Limited | Jamalia     |
| Pharetra Ut Limited | Herrod      |
| Pharetra Ut Limited | Unity       |
| Pharetra Ut Limited | Pascale     |
| Pharetra Ut Limited | Colton      |
| Pharetra Ut Limited | Jamal       |
| Pharetra Ut Limited | Abel        |
| Pharetra Ut Limited | Zena        |
| Pharetra Ut Limited | Prescott    |
| Pharetra Ut Limited | Idona       |
| Pharetra Ut Limited | Paloma      |
| Pharetra Ut Limited | Neve        |
| Pharetra Ut Limited | Kyla        |
| Pharetra Ut Limited | Kimberley   |
| Pharetra Ut Limited | Jillian     |
| Pharetra Ut Limited | Addison     |
| Pharetra Ut Limited | Jacqueline  |
| Pharetra Ut Limited | Sasha       |
| Pharetra Ut Limited | Lee         |
| Pharetra Ut Limited | Salvador    |
| Pharetra Ut Limited | Yoko        |
| Pharetra Ut Limited | Stacy       |
| Pharetra Ut Limited | Halee       |
| Pharetra Ut Limited | Blythe      |
| Pharetra Ut Limited | Tad         |
| Pharetra Ut Limited | Haley       |
| Pharetra Ut Limited | Lara        |
| Pharetra Ut Limited | Summer      |
| Pharetra Ut Limited | Latifah     |
| Pharetra Ut Limited | Faith       |
| Pharetra Ut Limited | Stacey      |
| Pharetra Ut Limited | Jennifer    |
| Pharetra Ut Limited | Fulton      |
| Pharetra Ut Limited | Colin       |
| Pharetra Ut Limited | Thane       |
| Pharetra Ut Limited | Caryn       |
| Pharetra Ut Limited | Bo          |
| Pharetra Ut Limited | Jamal       |
| Pharetra Ut Limited | Amena       |
| Pharetra Ut Limited | Melanie     |
| Pharetra Ut Limited | Driscoll    |
| Pharetra Ut Limited | Gareth      |
| Pharetra Ut Limited | Colt        |
| Pharetra Ut Limited | Martha      |
| Pharetra Ut Limited | Sierra      |
| Pharetra Ut Limited | Nita        |
| Pharetra Ut Limited | Celeste     |
| Pharetra Ut Limited | Kathleen    |
| Pharetra Ut Limited | Samuel      |
| Pharetra Ut Limited | Aaron       |
| Pharetra Ut Limited | Cheyenne    |
| Pharetra Ut Limited | Brett       |
| Pharetra Ut Limited | Rebekah     |
| Pharetra Ut Limited | Zelenia     |
| Pharetra Ut Limited | Abdul       |
| Pharetra Ut Limited | Idola       |
| Pharetra Ut Limited | Illana      |
| Pharetra Ut Limited | Winifred    |
| Pharetra Ut Limited | Buckminster |
| Pharetra Ut Limited | Heidi       |
| Pharetra Ut Limited | Nell        |
| Pharetra Ut Limited | Ciara       |
| Pharetra Ut Limited | Sylvia      |
| Pharetra Ut Limited | Caryn       |
| Pharetra Ut Limited | Dieter      |
| Pharetra Ut Limited | Jamalia     |
| Pharetra Ut Limited | Herrod      |
| Pharetra Ut Limited | Unity       |
| Pharetra Ut Limited | Pascale     |
| Pharetra Ut Limited | Colton      |
| Pharetra Ut Limited | Jamal       |
| Pharetra Ut Limited | Abel        |
| Pharetra Ut Limited | Zena        |
| Pharetra Ut Limited | Prescott    |
| Pharetra Ut Limited | Idona       |
| Pharetra Ut Limited | Paloma      |
| Pharetra Ut Limited | Neve        |
| Pharetra Ut Limited | Kyla        |
| Pharetra Ut Limited | Kimberley   |
| Pharetra Ut Limited | Jillian     |
| Pharetra Ut Limited | Addison     |
| Pharetra Ut Limited | Jacqueline  |
| Pharetra Ut Limited | Sasha       |
| Pharetra Ut Limited | Lee         |
| Pharetra Ut Limited | Salvador    |
| Pharetra Ut Limited | Yoko        |
| Pharetra Ut Limited | Stacy       |
| Pharetra Ut Limited | Halee       |
| Pharetra Ut Limited | Blythe      |
| Pharetra Ut Limited | Tad         |
| Pharetra Ut Limited | Haley       |
| Pharetra Ut Limited | Lara        |
| Pharetra Ut Limited | Summer      |
| Pharetra Ut Limited | Latifah     |
| Pharetra Ut Limited | Faith       |
| Pharetra Ut Limited | Stacey      |
| Pharetra Ut Limited | Jennifer    |
| Pharetra Ut Limited | Fulton      |
| Pharetra Ut Limited | Colin       |
| Pharetra Ut Limited | Thane       |
| Pharetra Ut Limited | Caryn       |
| Pharetra Ut Limited | Bo          |
| Pharetra Ut Limited | Jamal       |
| Pharetra Ut Limited | Amena       |
| Pharetra Ut Limited | Melanie     |
| Pharetra Ut Limited | Driscoll    |
| Pharetra Ut Limited | Gareth      |
| Pharetra Ut Limited | Colt        |
| Pharetra Ut Limited | Martha      |
| Pharetra Ut Limited | Sierra      |
| Pharetra Ut Limited | Nita        |
| Pharetra Ut Limited | Celeste     |
| Pharetra Ut Limited | Kathleen    |
| Pharetra Ut Limited | Samuel      |
| Pharetra Ut Limited | Aaron       |
| Pharetra Ut Limited | Cheyenne    |
| Pharetra Ut Limited | Brett       |
| Pharetra Ut Limited | Rebekah     |

Ex5
List all of the emails associated to AddressBook.id = 100

mysql> select AddressBook.id, Account.email from Account join AddressBook on Account.id=AddressBook.accountId where AddressBook.id = 100;
+-----+----------------------------------+
| id  | email                            |
+-----+----------------------------------+
| 100 | dapibus.quam@interdumligulaeu.ca |
+-----+----------------------------------+

Ex6
List all of the phone numbers for Jenkins, Charlotte

mysql> select Entry.firstName, Entry.lastName, Phone.content from Entry join Phone on Phone.entryId=Entry.id where Entry.firstName='Charlotte' and Entry.lastName='Jenkins';
+-----------+----------+----------------+
| firstName | lastName | content        |
+-----------+----------+----------------+
| Charlotte | Jenkins  | (110) 167-3420 |
| Charlotte | Jenkins  | (605) 175-1334 |
+-----------+----------+----------------+

Ex7
List all possible domain name values for ElectronicMail (email@domain.name)

mysql> select distinct substring_index(content, '@', -1) from ElectronicMail;                                                                                      
+-----------------------------------+
| substring_index(content, '@', -1) |
+-----------------------------------+
| dictumplacerat.com                |
| magnaetipsum.org                  |
| loremutaliquam.com                |
| semperdui.com                     |


Ex8
List how many phones were landlines, cellular and fax for entries with birthdates between October 1950 and October 1960

mysql> select count(Phone.subtype) from Entry join Phone on Entry.id= Phone.entryId where (Entry.birthday between '1950-10-00' and '1960-10-00');
+----------------------+
| count(Phone.subtype) |
+----------------------+
|                  442 |
+----------------------+


Ex9
List all of the cities within the countries of Canada, Austria, Isle of Man, Ireland and Japan.








