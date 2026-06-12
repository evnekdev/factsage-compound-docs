meta:
  id: database
  file-extension: cdb
  endian: le
  
seq:
  - id: chunks
    type: chunk
    repeat: until
    repeat-until: _io.eof
types:
  chunk:
    seq:
      - id: block_id
        type: u1
      - id: body
        size: 255
        type:
          switch-on: block_id
          cases:
            '9': header_chunk
            '1': compound_chunk
            '7': phase_chunk
            '2': cp_chunk
              
  header_chunk:
    seq:
    - id: padding1
      type: u1
    - id: magic2
      type: str
      size: 4
      encoding: 'ascii'
    - id: padding2
      size: 2
    - id: date
      type: u8
    - id: read_flag
      type: u1
    - id: unknown1
      size: 11
    - id: comment
      type: str
      encoding: 'ascii'
      size: 80
    - id: padding3
      size: 136
    - id: unknown2
      size: 12
  
  compound_chunk:
    seq:
    - id: element_id_1
      type: u1
    - id: element_id_2
      type: u1
    - id: element_id_3
      type: u1
    - id: element_id_4
      type: u1
    - id: element_id_5
      type: u1
    - id: element_id_6
      type: u1
    - id: element_id_7
      type: u1
    - id: padding_coeff
      type: u1
    - id: element_coeff_1
      type: u1
    - id: element_coeff_2
      type: u1
    - id: element_coeff_3
      type: u1
    - id: element_coeff_4
      type: u1
    - id: element_coeff_5
      type: u1
    - id: element_coeff_6
      type: u1
    - id: element_coeff_7
      type: u1
    - id: charge
      type: u1
    - id: compound_entry_number
      type: u1
    - id: ref1
      type: u2
    - id: ref2
      type: u2
    - id: timestamp1
      size: 8
    - id: unknown1
      size: 2
    - id: compound_name
      type: str
      encoding: 'ascii'
      size: 40
    - id: reserved_string_1
      type: str
      encoding: 'ascii'
      size: 40
    - id: formula_name
      type: str
      encoding: 'ascii'
      size: 40
    - id: unknown
      size: 12
    - id: reserved_string_2
      type: str
      encoding: 'ascii'
      size: 12
    - id: coeff_real_1
      type: f8
    - id: coeff_real_2
      type: f8
    - id: coeff_real_3
      type: f8
    - id: coeff_real_4
      type: f8
    - id: coeff_real_5
      type: f8
    - id: coeff_real_6
      type: f8
    - id: coeff_real_7
      type: f8
    - id: padding_final
      size: 24
  
  phase_chunk:
    seq:
    - id: element_id_1
      type: u1
    - id: element_id_2
      type: u1
    - id: element_id_3
      type: u1
    - id: element_id_4
      type: u1
    - id: element_id_5
      type: u1
    - id: element_id_6
      type: u1
    - id: element_id_7
      type: u1
    - id: padding_coeff
      type: u1
    - id: element_coeff_1
      type: u1
    - id: element_coeff_2
      type: u1
    - id: element_coeff_3
      type: u1
    - id: element_coeff_4
      type: u1
    - id: element_coeff_5
      type: u1
    - id: element_coeff_6
      type: u1
    - id: element_coeff_7
      type: u1
    - id: charge
      type: u1
    - id: compound_entry_number
      type: u1
    - id: ref1
      type: u2
    - id: ref2
      type: u2
    - id: timestamp1
      size: 8
    - id: unknown1
      size: 2
    - id: enthalpy
      type: f8
    - id: entropy
      type: f8
    - id: inknown2
      size: 8
    - id: density
      type: f8
    - id: therm_exp_c1
      type: f4
    - id: therm_exp_c2
      type: f4
    - id: therm_exp_c3
      type: f4
    - id: therm_exp_c4
      type: f4
    - id: compress_c1
      type: f4
    - id: compress_c2
      type: f4
    - id: compress_c3
      type: f4
    - id: compress_c4
      type: f4
    - id: bulk_mod_derv_c1
      type: f4
    - id: bulk_mod_derv_c2
      type: f4
    - id: temp_magn
      type: f4
    - id: moment_magn
      type: f4
    - id: p_factor
      type: f4
    - id: padding1
      size: 20
    - id: phase_name
      type: str
      encoding: 'ascii'
      size: 40
    - id: padding2
      size: 80 
  
  cp_chunk:
    seq:
    - id: element_id_1
      type: u1
    - id: element_id_2
      type: u1
    - id: element_id_3
      type: u1
    - id: element_id_4
      type: u1
    - id: element_id_5
      type: u1
    - id: element_id_6
      type: u1
    - id: element_id_7
      type: u1
    - id: padding_coeff
      type: u1
    - id: element_coeff_1
      type: u1
    - id: element_coeff_2
      type: u1
    - id: element_coeff_3
      type: u1
    - id: element_coeff_4
      type: u1
    - id: element_coeff_5
      type: u1
    - id: element_coeff_6
      type: u1
    - id: element_coeff_7
      type: u1
    - id: charge
      type: u1
    - id: compound_entry_number
      type: u1
    - id: ref1
      type: u2
    - id: ref2
      type: u2
    - id: timestamp1
      size: 8
    - id: unknown1
      size: 2
    - id: enthalpy
      type: f8
    - id: entropy
      type: f8
    - id: unknown2
      size: 8
    - id: temp_lower
      type: f8
    - id: temp_upper
      type: f8
    - id: cp_a
      type: f8
    - id: cp_b
      type: f8
    - id: cp_c
      type: f8
    - id: cp_d
      type: f8
    - id: cp_e
      type: f8
    - id: cp_f
      type: f8
    - id: cp_g
      type: f8
    - id: cp_h
      type: f8
    - id: power_a
      type: f8
    - id: power_b
      type: f8
    - id: power_c
      type: f8
    - id: power_d
      type: f8
    - id: power_e
      type: f8
    - id: power_f
      type: f8
    - id: power_g
      type: f8
    - id: power_h
      type: f8
    - id: padding_remaining
      size: 56
