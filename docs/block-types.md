# Block types

## HEADER Block (ID 09)

| **TYPE** | **SIZE, BYTES** | **DESCRIPTION** |
|---|---|---|
| CHUNK_ID | 1 | Block identifier |
| PADDING1 | 1 | Filler type      |
| MAGIC    | 4 | Unique combination for Compound Module to make sure it is actually the proper file type. |
| PADDING2 | 2 | Filler type      |
| DATE     | 8 | Last change data, Windows OLE format. |
| READ_ONLY| 1 | Nonzero if the database is write-protected (usually official databases). |
| UNKNOWN1 | 11 | ??? |
| COMMENT  | 90 | Database description         |
| PADDING3 | 136| Filler type                  |
| UNKNOWN2 | 12 | ??? |

## COMPOUND Block (ID 01)

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