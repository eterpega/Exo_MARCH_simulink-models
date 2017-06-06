#include <inttypes.h>
#include <print.h>
#include <ethercat_service.h>
#include <coecmd.h>

#include "ecat_com.h"

int ecom_pdo_handler(chanend pdo_out, chanend pdo_in, Ecat_InOut_t &inout)
{
    ecom_pdo_receive(pdo_in, inout);
    ecom_pdo_send(pdo_out, inout);

    return 0;
}

int ecom_pdo_receive(chanend c, Ecat_InOut_t &inout)
{
    uint32_t count = 0;
    c <: DATA_REQUEST;
    c :> count;

    int32_t word;
    uint8_t buffer[PDO_BYTES_SIZE] = {};

    for (int i=0; i<count; i++) {
        c :> word;
        uint16_t k = (count-i)*2-1;
        buffer[k] = word;
        buffer[k-1] = word >> 8;
    }

    inout.controlword = buffer[0] << 8 | buffer[1];
    inout.op_mode = buffer[2];
    inout.target_torque = buffer[3] << 8 | buffer[4];
    inout.target_position = buffer[5] << 24 | buffer[6] << 16 | buffer[7] << 8 | buffer[8];
    inout.target_velocity = buffer[9] << 24 | buffer[10] << 16 | buffer[11] << 8 | buffer[12];
    inout.offset_torque = buffer[13] << 24 | buffer[14] << 16 | buffer[15] << 8 | buffer[16];
    inout.tuning_command = buffer[17] << 24 | buffer[18] << 16 | buffer[19] << 8 | buffer[20];
    inout.digital_output1 = buffer[21] << -7;
    inout.padding_entry_automatically_added = buffer[21.125] << -1;
    inout.digital_output2 = buffer[22] << -7;
    inout.padding_entry_automatically_added = buffer[22.125] << -1;
    inout.digital_output3 = buffer[23] << -7;
    inout.padding_entry_automatically_added = buffer[23.125] << -1;
    inout.digital_output4 = buffer[24] << -7;
    inout.padding_entry_automatically_added = buffer[24.125] << -1;
    inout.user_mosi = buffer[25] << 24 | buffer[26] << 16 | buffer[27] << 8 | buffer[28];

    return 0;
}

int ecom_pdo_send(chanend c, Ecat_InOut_t &inout)
{
    uint8_t buffer[PDO_BYTES_SIZE] = {};

    c <: (unsigned) PDO_WORDS_SIZE;
    for (int i=0; i<PDO_WORDS_SIZE; i++) {
        c <: (unsigned) (buffer[i*2+1] << 8 | buffer[i*2]);
    }

    buffer[0] = inout.statusword;
    buffer[1] = inout.statusword >> 8;
    buffer[2] = inout.op_mode_display;
    buffer[3] = inout.position_value;
    buffer[4] = inout.position_value >> 8;
    buffer[5] = inout.position_value >> 16;
    buffer[6] = inout.position_value >> 24;
    buffer[7] = inout.velocity_value;
    buffer[8] = inout.velocity_value >> 8;
    buffer[9] = inout.velocity_value >> 16;
    buffer[10] = inout.velocity_value >> 24;
    buffer[11] = inout.torque_value;
    buffer[12] = inout.torque_value >> 8;
    buffer[13] = inout.secondary_position_value;
    buffer[14] = inout.secondary_position_value >> 8;
    buffer[15] = inout.secondary_position_value >> 16;
    buffer[16] = inout.secondary_position_value >> 24;
    buffer[17] = inout.secondary_velocity_value;
    buffer[18] = inout.secondary_velocity_value >> 8;
    buffer[19] = inout.secondary_velocity_value >> 16;
    buffer[20] = inout.secondary_velocity_value >> 24;
    buffer[21] = inout.analog_input1;
    buffer[22] = inout.analog_input1 >> 8;
    buffer[23] = inout.analog_input2;
    buffer[24] = inout.analog_input2 >> 8;
    buffer[25] = inout.analog_input3;
    buffer[26] = inout.analog_input3 >> 8;
    buffer[27] = inout.analog_input4;
    buffer[28] = inout.analog_input4 >> 8;
    buffer[29] = inout.tuning_status;
    buffer[30] = inout.tuning_status >> 8;
    buffer[31] = inout.tuning_status >> 16;
    buffer[32] = inout.tuning_status >> 24;
    buffer[33] = inout.digital_input1;
    buffer[34] = inout.padding_entry_automatically_added;
    buffer[35] = inout.digital_input2;
    buffer[36] = inout.padding_entry_automatically_added;
    buffer[37] = inout.digital_input3;
    buffer[38] = inout.padding_entry_automatically_added;
    buffer[39] = inout.digital_input4;
    buffer[40] = inout.padding_entry_automatically_added;
    buffer[41] = inout.user_miso;
    buffer[42] = inout.user_miso >> 8;
    buffer[43] = inout.user_miso >> 16;
    buffer[44] = inout.user_miso >> 24;

    return 0;
}

int ecom_sdo_get(chanend c, uint16_t index, uint8_t subindex, uint32_t &value)
{
    c <: CAN_GET_OBJECT;
    c <: CAN_OBJ_ADR(index, subindex);
    c :> value;

    return 0;
}

int ecom_sdo_set(chanend c, uint16_t index, uint8_t subindex, uint32_t value)
{
    c <: CAN_SET_OBJECT;
    c <: CAN_OBJ_ADR(index, subindex);
    c <: value;

    return 0;
}