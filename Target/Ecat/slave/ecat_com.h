#pragma once

#include <inttypes.h>

#define PDO_BYTES_SIZE 42
#define PDO_WORDS_SIZE 21

typedef struct {
    uint16_t controlword;
    int8_t op_mode;
    int16_t target_torque;
    int32_t target_position;
    int32_t target_velocity;
    int32_t offset_torque;
    uint32_t tuning_command;
    uint8_t digital_output1;
     padding_entry_automatically_added;
    uint8_t digital_output2;
     padding_entry_automatically_added;
    uint8_t digital_output3;
     padding_entry_automatically_added;
    uint8_t digital_output4;
     padding_entry_automatically_added;
    uint32_t user_mosi;
    uint16_t statusword;
    int8_t op_mode_display;
    int32_t position_value;
    int32_t velocity_value;
    int16_t torque_value;
    int32_t secondary_position_value;
    int32_t secondary_velocity_value;
    uint16_t analog_input1;
    uint16_t analog_input2;
    uint16_t analog_input3;
    uint16_t analog_input4;
    uint32_t tuning_status;
    uint8_t digital_input1;
     padding_entry_automatically_added;
    uint8_t digital_input2;
     padding_entry_automatically_added;
    uint8_t digital_input3;
     padding_entry_automatically_added;
    uint8_t digital_input4;
     padding_entry_automatically_added;
    uint32_t user_miso;
} Ecat_InOut_t;

/*
 * PDO message handling
 */
int ecom_pdo_handler(chanend pdo_out, chanend pdo_in, Ecat_InOut_t &inout);
int ecom_pdo_receive(chanend c, Ecat_InOut_t &inout);
int ecom_pdo_send(chanend c, Ecat_InOut_t &inout);

/*
 * SDO message handling
 */
int ecom_sdo_get(chanend c, uint16_t index, uint8_t subindex, uint32_t &value);
int ecom_sdo_set(chanend c, uint16_t index, uint8_t subindex, uint32_t value);