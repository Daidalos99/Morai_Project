// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MultiEgoSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number_of_ego_vehicle = null;
      this.camera_index = null;
      this.ego_index = null;
      this.global_position_x = null;
      this.global_position_y = null;
      this.global_position_z = null;
      this.global_roll = null;
      this.global_pitch = null;
      this.global_yaw = null;
      this.velocity = null;
      this.gear = null;
      this.ctrl_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('number_of_ego_vehicle')) {
        this.number_of_ego_vehicle = initObj.number_of_ego_vehicle
      }
      else {
        this.number_of_ego_vehicle = 0;
      }
      if (initObj.hasOwnProperty('camera_index')) {
        this.camera_index = initObj.camera_index
      }
      else {
        this.camera_index = 0;
      }
      if (initObj.hasOwnProperty('ego_index')) {
        this.ego_index = initObj.ego_index
      }
      else {
        this.ego_index = [];
      }
      if (initObj.hasOwnProperty('global_position_x')) {
        this.global_position_x = initObj.global_position_x
      }
      else {
        this.global_position_x = [];
      }
      if (initObj.hasOwnProperty('global_position_y')) {
        this.global_position_y = initObj.global_position_y
      }
      else {
        this.global_position_y = [];
      }
      if (initObj.hasOwnProperty('global_position_z')) {
        this.global_position_z = initObj.global_position_z
      }
      else {
        this.global_position_z = [];
      }
      if (initObj.hasOwnProperty('global_roll')) {
        this.global_roll = initObj.global_roll
      }
      else {
        this.global_roll = [];
      }
      if (initObj.hasOwnProperty('global_pitch')) {
        this.global_pitch = initObj.global_pitch
      }
      else {
        this.global_pitch = [];
      }
      if (initObj.hasOwnProperty('global_yaw')) {
        this.global_yaw = initObj.global_yaw
      }
      else {
        this.global_yaw = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = [];
      }
      if (initObj.hasOwnProperty('ctrl_mode')) {
        this.ctrl_mode = initObj.ctrl_mode
      }
      else {
        this.ctrl_mode = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiEgoSetting
    // Serialize message field [number_of_ego_vehicle]
    bufferOffset = _serializer.int32(obj.number_of_ego_vehicle, buffer, bufferOffset);
    // Serialize message field [camera_index]
    bufferOffset = _serializer.int32(obj.camera_index, buffer, bufferOffset);
    // Serialize message field [ego_index]
    bufferOffset = _arraySerializer.int32(obj.ego_index, buffer, bufferOffset, null);
    // Serialize message field [global_position_x]
    bufferOffset = _arraySerializer.float64(obj.global_position_x, buffer, bufferOffset, null);
    // Serialize message field [global_position_y]
    bufferOffset = _arraySerializer.float64(obj.global_position_y, buffer, bufferOffset, null);
    // Serialize message field [global_position_z]
    bufferOffset = _arraySerializer.float64(obj.global_position_z, buffer, bufferOffset, null);
    // Serialize message field [global_roll]
    bufferOffset = _arraySerializer.float32(obj.global_roll, buffer, bufferOffset, null);
    // Serialize message field [global_pitch]
    bufferOffset = _arraySerializer.float32(obj.global_pitch, buffer, bufferOffset, null);
    // Serialize message field [global_yaw]
    bufferOffset = _arraySerializer.float32(obj.global_yaw, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [gear]
    bufferOffset = _arraySerializer.int8(obj.gear, buffer, bufferOffset, null);
    // Serialize message field [ctrl_mode]
    bufferOffset = _arraySerializer.int8(obj.ctrl_mode, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiEgoSetting
    let len;
    let data = new MultiEgoSetting(null);
    // Deserialize message field [number_of_ego_vehicle]
    data.number_of_ego_vehicle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [camera_index]
    data.camera_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ego_index]
    data.ego_index = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [global_position_x]
    data.global_position_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [global_position_y]
    data.global_position_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [global_position_z]
    data.global_position_z = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [global_roll]
    data.global_roll = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [global_pitch]
    data.global_pitch = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [global_yaw]
    data.global_yaw = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [gear]
    data.gear = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [ctrl_mode]
    data.ctrl_mode = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ego_index.length;
    length += 8 * object.global_position_x.length;
    length += 8 * object.global_position_y.length;
    length += 8 * object.global_position_z.length;
    length += 4 * object.global_roll.length;
    length += 4 * object.global_pitch.length;
    length += 4 * object.global_yaw.length;
    length += 4 * object.velocity.length;
    length += object.gear.length;
    length += object.ctrl_mode.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MultiEgoSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5679503f20b811382c17da7f41e8d5d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 number_of_ego_vehicle
    int32 camera_index
    int32[] ego_index
    float64[] global_position_x
    float64[] global_position_y
    float64[] global_position_z
    float32[] global_roll
    float32[] global_pitch
    float32[] global_yaw
    float32[] velocity
    int8[] gear
    int8[] ctrl_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiEgoSetting(null);
    if (msg.number_of_ego_vehicle !== undefined) {
      resolved.number_of_ego_vehicle = msg.number_of_ego_vehicle;
    }
    else {
      resolved.number_of_ego_vehicle = 0
    }

    if (msg.camera_index !== undefined) {
      resolved.camera_index = msg.camera_index;
    }
    else {
      resolved.camera_index = 0
    }

    if (msg.ego_index !== undefined) {
      resolved.ego_index = msg.ego_index;
    }
    else {
      resolved.ego_index = []
    }

    if (msg.global_position_x !== undefined) {
      resolved.global_position_x = msg.global_position_x;
    }
    else {
      resolved.global_position_x = []
    }

    if (msg.global_position_y !== undefined) {
      resolved.global_position_y = msg.global_position_y;
    }
    else {
      resolved.global_position_y = []
    }

    if (msg.global_position_z !== undefined) {
      resolved.global_position_z = msg.global_position_z;
    }
    else {
      resolved.global_position_z = []
    }

    if (msg.global_roll !== undefined) {
      resolved.global_roll = msg.global_roll;
    }
    else {
      resolved.global_roll = []
    }

    if (msg.global_pitch !== undefined) {
      resolved.global_pitch = msg.global_pitch;
    }
    else {
      resolved.global_pitch = []
    }

    if (msg.global_yaw !== undefined) {
      resolved.global_yaw = msg.global_yaw;
    }
    else {
      resolved.global_yaw = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = []
    }

    if (msg.ctrl_mode !== undefined) {
      resolved.ctrl_mode = msg.ctrl_mode;
    }
    else {
      resolved.ctrl_mode = []
    }

    return resolved;
    }
};

module.exports = MultiEgoSetting;
