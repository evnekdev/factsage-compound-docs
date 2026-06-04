# Index

FactSage software stores its databases in separate file formats for compounds and solutions. This document shares the lesser-known information about how Compound databases work internally, as well as provides the ways to inspect them, analyse, modify and compare outside the standard Compound Module interface. Many advanced users and people dealing with thermodynamic optimizations will find this information very useful.

Compound Module was developed by Jacques Melancon at CRCT, Ecole Polytechnique of Montreal, and apparently, was written in Delphi language.


## Binary formats vs text formats

Open-access .DAT (old FactSage) or .SLN (new FactSage) formats of Solution Module store solution models as text. This is caused by the internal demand from the database developers who heavily rely on text file versioning and comparison software (such as Beyond Compare) to manage their databases.

Binary file formats are the fastest in terms of loading into computer memory, since most of the time they structurally map to how data is laid out in computer memory (RAM). If someone is to try to open a binary database (CDB) in a text editor, they would see only a bunch of illegible symbols with occasional short strings and names appearing at some places.

## Binary data representations

All data in computers are stored as bytes. Every type (string, char, numeric) which is used when programming has its own bytes representation.

## ASCII characters

Standard English letters + numbers + punctuation marks are universally encoded using ASCII tables. This is the oldest and widely spread agreement of how characters should be mapped to bytes.

ASCII character set consists of 128 characters (equal to 2^8, all possible states of a single byte).

## Non-ASCII characters

Non-English characters and extended symbols cannot fit into the 128 limit of a single byte, therefore, various extensions of ASCII were introduced. In early 1990s-2000s there was not a general agreement what symbols should be represented by what 2-byte combinations, and many different encoding tables existed. To open a document in Russian or German, one would need to select the correct encoding scheme.

Later, non-ASCII characters have been unified using UNICODE tables and UTF-8 system (UNICODE is the set of specifications and UTF-8 is an algorithm).

## Binary representation of integers

## Binary representation of float values

## HxD viewer/editor for binary files

<https://mh-nexus.de/en/hxd/>


## Kaitai project for binary format parsing

<https://kaitai.io/>


## Compound database structure

A Kaitai parser can be downloaded [HERE.](docs/downloads/compound-database.ksy)

