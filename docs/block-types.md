# Block types

## HEADER Block (ID 09)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U8          | 1      | Block identifier (09)                                                       |
| PADDING1             | B1          | 1      | Filler type                                                                 |
| MAGIC                | B4          | 4      | Unique combination for Compound Databases.                                  |
| PADDING2             | B2          | 2      | Filler type                                                                 |
| TIMESTAMP            | OLEDATE     | 8      | Last change data, Windows OLE format.                                       |
| READ_ONLY            | B1          | 1      | Nonzero if the database is write-protected (usually official databases).    |
| UNKNOWN1             | B11         | 11     | ???                                                                         |
| COMMENT              | S11         | 90     | Database description                                                        |
| PADDING3             | B136        | 136    | Filler type                                                                 |
| UNKNOWN2             | B12         | 12     | ???                                                                         |

## COMPOUND Block (ID 01)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (01)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| COMPOUND NAME        | S40         | 40     | Name of the compound.                                                       |
| RESERVED STRING1     | S40         | 40     | ???                                                                         |
| FORMULA NAME         | S40         | 40     | Formula string.                                                             |
| UNKNOWN              | B4          | 4      | ???                                                                         |
| UNIT ENERGY          | ???         | 4      | J, cal                                                                      |
| UNIT PRESSURE        | ???         | 4      | atm, bar                                                                    |
| RESERVED STRING2     | S12         | 12     | ???                                                                         |
| COEFF REAL           | F8x7        | 28     | Real coefficients for fractional formulas, i.g. Fe0.986O                    |
| PADDING              | B24         | 24     | Filler type.                                                                |

## PHASES Block

### PHASE1 Block (ID 07)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U1      | 1  | Block identifier (07) |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |


### PHASE2 Block (ID 08)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U1      | 1  | Block identifier (08) |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| TRANSITION ENTHALPY  |   F8        |   8    |                                                                             |
| TRANSITION TEMPERATURE|  F8        |   8    |                                                                             |
| PHASEID RAW PARENT   |   U4        |   4    |                                                                             |
| PHASEID RAW          |   U4        |   4    |                                                                             |
| DENSITY RAW          |   F8        |   8    |                                                                             |
| T EXPANSION COEFFS   |   F4x4      |   16   |                                                                             |
| COMPRESSIBILITY COEFFS|  F4x4      |   16   |                                                                             |
| BULK MODULUS DERIV   |   F4x2      |   16   |                                                                             |
| TEMPERATURE MAGN     |   F4        |   4    |                                                                             |
| MOMENT MAGN          |   F4        |   4    |                                                                             |
| PFACTOR              |   F4        |   4    |                                                                             |
| PADDING              |   B20       |  20    |                                                                             |
| PHASE NAME           |   S40       |  40    |                                                                             |
| PADDING              |   B80       |  80    |                                                                             |


## CP Blocks

### CP1 Block (ID 02)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (02)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| ENTHALPY             | F8          |   8    | Enthalpy at the lower end of the interval?                                  |
| ENTROPY              | F8          |   8    | Entropy  at the lower end of the interval?                                  |
| PHASEID RAW          | U4          |   4    | ???                                                                         |
| UNKNOWN1             | B4          |   4    | ???                                                                         |
| TMIN                 | F8          |   8    | Minimum interval temperature, K.                                            |
| TMAX                 | F8          |   8    | Maximum interval temperature, K.                                            |
| CP COEFFS            | F8x8        |   64   | Heat capacity coefficients.                                                 |
| CP POWERS            | F8x8        |   64   | Heat capacity powers.                                                       |
| PADDING              | B56         |   56   | Filler type.                                                                |

### CP2 Block (ID 04)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (04)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| ENTHALPY             | F8          |   8    | Enthalpy at the lower end of the interval?                                  |
| ENTROPY              | F8          |   8    | Entropy  at the lower end of the interval?                                  |
| PHASEID RAW          | U4          |   4    | ???                                                                         |
| UNKNOWN1             | B4          |   4    | ???                                                                         |
| TMIN                 | F8          |   8    | Minimum interval temperature, K.                                            |
| TMAX                 | F8          |   8    | Maximum interval temperature, K.                                            |
| CP COEFFS            | F8x8        |   64   | Heat capacity coefficients.                                                 |
| CP POWERS            | F8x8        |   64   | Heat capacity powers.                                                       |
| PADDING              | B56         |   56   | Filler type.                                                                |

### CP3 Block (ID 05)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (05)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| ENTHALPY             | F8          |   8    | Enthalpy at the lower end of the interval?                                  |
| ENTROPY              | F8          |   8    | Entropy  at the lower end of the interval?                                  |
| PHASEID RAW          | U4          |   4    | ???                                                                         |
| UNKNOWN1             | B4          |   4    | ???                                                                         |
| TMIN                 | F8          |   8    | Minimum interval temperature, K.                                            |
| TMAX                 | F8          |   8    | Maximum interval temperature, K.                                            |
| CP COEFFS            | F8x8        |   64   | Heat capacity coefficients.                                                 |
| CP POWERS            | F8x8        |   64   | Heat capacity powers.                                                       |
| PADDING              | B56         |   56   | Filler type.                                                                |

### CP4 Block (ID 03)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (03)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| ENTHALPY             | F8          |   8    | Enthalpy at the lower end of the interval?                                  |
| ENTROPY              | F8          |   8    | Entropy  at the lower end of the interval?                                  |
| PHASEID RAW          | U4          |   4    | ???                                                                         |
| UNKNOWN1             | B4          |   4    | ???                                                                         |
| TMIN                 | F8          |   8    | Minimum interval temperature, K.                                            |
| TMAX                 | F8          |   8    | Maximum interval temperature, K.                                            |
| CP COEFFS            | F8x8        |   64   | Heat capacity coefficients.                                                 |
| CP POWERS            | F8x8        |   64   | Heat capacity powers.                                                       |
| PADDING              | B56         |   56   | Filler type.                                                                |

### CP5 Block (ID 06)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (06)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| ENTHALPY             | F8          |   8    | Enthalpy at the lower end of the interval?                                  |
| ENTROPY              | F8          |   8    | Entropy  at the lower end of the interval?                                  |
| PHASEID RAW          | U4          |   4    | ???                                                                         |
| UNKNOWN1             | B4          |   4    | ???                                                                         |
| TMIN                 | F8          |   8    | Minimum interval temperature, K.                                            |
| TMAX                 | F8          |   8    | Maximum interval temperature, K.                                            |
| CP COEFFS            | F8x8        |   64   | Heat capacity coefficients.                                                 |
| CP POWERS            | F8x8        |   64   | Heat capacity powers.                                                       |
| PADDING              | B56         |   56   | Filler type.                                                                |

## COMMENT Block (ID 10)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID             | U1          |   1    | Block identifier (10)                                                       |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| COMMENT              | S80         |  80    | Comment string.                                                             |
| PADDING              | B144        | 144    | Filler type.                                                                |

## KAPPA Block (ID 11)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U1      | 1  | Block identifier (11) |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**     |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.**  |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                         |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                 |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                 |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                   |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| TMIN                 | F8          | 8      | Minimum interval temperature.                                               |
| TMAX                 | F8          | 8      | Maximum interval temperature.                                               |
| PHASEID RAW          | U4          | 4      | ???.                                                                        |
| F1T COEFF            | F8x10       | 80     | ???.                                                                        |
| F1T POWER            | F4x8        | 32     | ???.                                                                        |
| F2P COEFF            | F8x3        | 24     | ???.                                                                        |
| F2P POWER            | F4x2        | 8      | ???.                                                                        |
| F3T COEFF            | F8x5        | 40     | ???.                                                                        |
| F3T POWER            | F4x3        | 12     | ???.                                                                        |
| PADDING              | B4          | 4      | Filler type.                                                                |
