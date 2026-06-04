# Index

FactSage software stores its databases in separate file formats for compounds and solutions. This document shares the lesser-known information about how Compound databases work internally, as well as provides the ways to inspect them, analyse, modify and compare outside the standard Compound Module interface. Many advanced users and people dealing with thermodynamic optimizations will find this information very useful.

Compound Module was developed by Jacques Melancon at CRCT, Ecole Polytechnique of Montreal, and apparently, was written in Delphi language.


## Binary formats vs text formats

Open-access .DAT (old FactSage) or .SLN (new FactSage) formats of Solution Module store solution models as text. This is caused by the internal demand from the database developers who heavily rely on text file versioning and comparison software (such as Beyond Compare) to manage their databases.

Binary file formats are the fastest in terms of loading into computer memory, since most of the time they structurally map to how data is laid out in computer memory (RAM). If someone is to try to open a binary database (CDB) in a text editor, they would see only a bunch of illegible symbols with occasional short strings and names appearing at some places.

## Binary data representations

All data in computers are stored as bytes. Every type (string, char, numeric) which is used when programming has its own bytes representation.

## ASCII characters

Standard English letters, digits, punctuation marks, and control characters are encoded using the ASCII character set. ASCII was one of the earliest character encoding standards and remains the foundation of many modern encodings.

ASCII defines 128 characters, represented by 7-bit values ranging from 0 to 127. In practice, ASCII characters are often stored in a full byte, with the highest bit set to zero.

## Non-ASCII characters

The original ASCII character set is limited to 128 characters and cannot represent most non-English alphabets or many special symbols. To address this limitation, numerous extended character encodings were developed, including ISO-8859 variants, Windows code pages, and other regional standards.

Because different systems used different encodings, the same byte sequence could represent different characters depending on the selected code page. As a result, exchanging documents between systems often required knowing the correct encoding.

Modern software typically uses Unicode, a universal character set designed to represent characters from virtually all writing systems. Unicode code points can be stored using several encoding schemes, the most common being UTF-8, UTF-16, and UTF-32. UTF-8 is currently the dominant encoding for text files and Internet communication.

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

