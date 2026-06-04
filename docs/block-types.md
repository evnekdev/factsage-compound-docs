# Block types

## HEADER Block (ID 09)

| **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|
| CHUNK_ID         | 1  | Block identifier (09)                                                    |
| PADDING1         | 1  | Filler type                                                              |
| MAGIC            | 4  | Unique combination for Compound Module to make sure it is actually the proper file type. |
| PADDING2         | 2  | Filler type                                                              |
| TIMESTAMP        | 8  | Last change data, Windows OLE format.                                    |
| READ_ONLY        | 1  | Nonzero if the database is write-protected (usually official databases). |
| UNKNOWN1         | 11 | ???                                                                    |
| COMMENT          | 90 | Database description                                                   |
| PADDING3         | 136| Filler type                                                            |
| UNKNOWN2         | 12 | ???                                                                    |

## COMPOUND Block (ID 01)

| **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|
| CHUNK_ID         | 1  | Block identifier (01) |
| ELEMENT_IDS      | 7  | 1-Byte integers corresponding to element ids in PD, MAX 7 elements.    |
| ELEMENT_COEFFS   | 7  | 1-Byte integers corresponding to element coefficients, MAX 7 elements. |
| CHARGE_RAW       | 1  | Formula charge.                                                        |
| ENTRY NUMBER     | 1  | Internal FactSage help.                                                |
| REFERENCE        | 2  | Internal FactSage help.                                                |
| TIMESTAMP        | 8  | Last change data, Windows OLE format.                                  |
| UNKNOWN1         | 2  | Filler type                                                            |
| COMPOUND NAME    | 40 | Name of the compound.                                                  |
| RESERVED STRING1 | 40 | ???                                                                    |
| FORMULA NAME     | 40 | Formula string.                                                        |
| UNKNOWN          | 4  | ???                                                                    |
| UNIT ENERGY      | 4  | J, cal                                                                 |
| UNIT PRESSURE    | 4  | atm, bar                                                               |
| RESERVED STRING2 | 12 | ???                                                                    |
| COEFF REAL       | 28 | Real coefficients for fractional formulas, i.g. Fe0.986O               |
| PADDING          | 24 | Filler type.                                                           |

## PHASES Block

### PHASE1 Block (ID 07)

### PHASE2 Block (ID 08)

## CP Blocks

### CP1 Block (ID 02)


### CP2 Block (ID 04)


### CP3 Block (ID 05)

### CP4 Block (ID 03)

### CP5 Block (ID 06)

## COMMENT Block (ID 10)

## KAPPA Block (ID 11)