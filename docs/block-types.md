# Block types

## HEADER Block (ID 09)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U8      | 1  | Block identifier (09)                                                    |
| PADDING1         | B1      | 1  | Filler type                                                              |
| MAGIC            | B4      | 4  | Unique combination for Compound Module to make sure it is actually the proper file type. |
| PADDING2         | B2      | 2  | Filler type                                                              |
| TIMESTAMP        | OLEDATE | 8  | Last change data, Windows OLE format.                                    |
| READ_ONLY        | B1      | 1  | Nonzero if the database is write-protected (usually official databases). |
| UNKNOWN1         | B11     | 11 | ???                                                                    |
| COMMENT          | S11     | 90 | Database description                                                   |
| PADDING3         | B136    | 136| Filler type                                                            |
| UNKNOWN2         | B12     | 12 | ???                                                                    |

## COMPOUND Block (ID 01)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U1      | 1  | Block identifier (01) |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**    |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.** |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                        |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                  |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |
| COMPOUND NAME    | S40     | 40 | Name of the compound.                                                  |
| RESERVED STRING1 | S40     | 40 | ???                                                                    |
| FORMULA NAME     | S40     | 40 | Formula string.                                                        |
| UNKNOWN          | B4      | 4  | ???                                                                    |
| UNIT ENERGY      | ???     | 4  | J, cal                                                                 |
| UNIT PRESSURE    | ???     | 4  | atm, bar                                                               |
| RESERVED STRING2 | S12     | 12 | ???                                                                    |
| COEFF REAL       | F4x7    | 28 | Real coefficients for fractional formulas, i.g. Fe0.986O               |
| PADDING          | B24     | 24 | Filler type.                                                           |

## PHASES Block

### PHASE1 Block (ID 07)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U1      | 1  | Block identifier (07) |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**    |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.** |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                        |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                  |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |


### PHASE2 Block (ID 08)

| **NAME** | **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|---|
| CHUNK_ID         | U1      | 1  | Block identifier (08) |
| **ELEMENT_IDS**      | **U1x7**    | **7**  | **1-Byte integers corresponding to element ids in PD, MAX 7 elements.**    |
| **ELEMENT_COEFFS**   | **U1x7**    | **7**  | **1-Byte integers corresponding to element coefficients, MAX 7 elements.** |
| **CHARGE_RAW**       | **I1**      | **1**  | **Formula charge.**                                                        |
| **ENTRY NUMBER**     | **U1**      | **1**  | **Internal FactSage help.**                                                |
| **REFERENCE**        | **U2**      | **2**  | **Internal FactSage help.**                                                |
| **TIMESTAMP**        | **OLEDATE** | **8**  | **Last change data, Windows OLE format.**                                  |
| **UNKNOWN1**         | **B2**      | **2**  | **Filler type.**                                                            |


## CP Blocks

### CP1 Block (ID 02)


### CP2 Block (ID 04)


### CP3 Block (ID 05)

### CP4 Block (ID 03)

### CP5 Block (ID 06)

## COMMENT Block (ID 10)

## KAPPA Block (ID 11)