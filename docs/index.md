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


Unless otherwise noted, all integer values in the compound database are stored as little-endian binary integers.

An *N*-byte unsigned integer represents a value in the range 0 to 2<sup>8N</sup> − 1. The least significant byte is stored first, followed by increasingly significant bytes.

For example, the 32-bit hexadecimal value `0x12345678` is stored as:

```
78 56 34 12
```

Signed integers use two's complement representation. In this encoding, the most significant bit serves as the sign bit, allowing both positive and negative values to be represented without requiring a separate sign field.

Common integer types are:

| Type   | Size    | Range                           |
| ------ | ------- | ------------------------------- |
| int8   | 1 byte  | −128 to 127                     |
| uint8  | 1 byte  | 0 to 255                        |
| int16  | 2 bytes | −32,768 to 32,767               |
| uint16 | 2 bytes | 0 to 65,535                     |
| int32  | 4 bytes | −2,147,483,648 to 2,147,483,647 |
| uint32 | 4 bytes | 0 to 4,294,967,295              |

Multi-byte integer values are always interpreted according to the endianness specified by the format.


## Binary representation of float values

## Binary representation of floating-point values

Floating-point values are stored using the IEEE 754 binary floating-point standard.

A floating-point number is represented by three components:

* **Sign bit** – indicates whether the value is positive or negative.
* **Exponent** – determines the scale of the number.
* **Mantissa (fraction)** – stores the significant digits of the value.

The numerical value is approximately:

```
(-1)^sign × mantissa × 2^exponent
```

Two floating-point formats are commonly encountered:

| Type    | Size    | Sign  | Exponent | Fraction |
| ------- | ------- | ----- | -------- | -------- |
| float32 | 4 bytes | 1 bit | 8 bits   | 23 bits  |
| float64 | 8 bytes | 1 bit | 11 bits  | 52 bits  |

For example, the decimal value `1.0` is encoded as:

| Type    | Hexadecimal representation |
| ------- | -------------------------- |
| float32 | `3F800000`                 |
| float64 | `3FF0000000000000`         |

Floating-point values can represent a very large range of magnitudes, but most decimal values cannot be represented exactly. Consequently, small rounding errors may occur when converting between decimal and binary representations.

Unless otherwise specified, floating-point values in the compound database are stored in little-endian byte order.


## HxD viewer/editor for binary files

<https://mh-nexus.de/en/hxd/>


## Kaitai project for binary format parsing

<https://kaitai.io/>


## Compound database structure

A Kaitai parser can be downloaded [HERE.](downloads/compound-database.ksy)

