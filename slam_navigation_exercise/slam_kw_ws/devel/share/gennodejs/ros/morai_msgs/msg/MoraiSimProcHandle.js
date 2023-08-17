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

class MoraiSimProcHandle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sim_process_status = null;
      this.replay_option = null;
      this.rosbag_file_name = null;
      this.replay_target_option = null;
      this.replay_speed = null;
      this.start_time = null;
    }
    else {
      if (initObj.hasOwnProperty('sim_process_status')) {
        this.sim_process_status = initObj.sim_process_status
      }
      else {
        this.sim_process_status = 0;
      }
      if (initObj.hasOwnProperty('replay_option')) {
        this.replay_option = initObj.replay_option
      }
      else {
        this.replay_option = 0;
      }
      if (initObj.hasOwnProperty('rosbag_file_name')) {
        this.rosbag_file_name = initObj.rosbag_file_name
      }
      else {
        this.rosbag_file_name = '';
      }
      if (initObj.hasOwnProperty('replay_target_option')) {
        this.replay_target_option = initObj.replay_target_option
      }
      else {
        this.replay_target_option = 0;
      }
      if (initObj.hasOwnProperty('replay_speed')) {
        this.replay_speed = initObj.replay_speed
      }
      else {
        this.replay_speed = 0;
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSimProcHandle
    // Serialize message field [sim_process_status]
    bufferOffset = _serializer.uint8(obj.sim_process_status, buffer, bufferOffset);
    // Serialize message field [replay_option]
    bufferOffset = _serializer.int16(obj.replay_option, buffer, bufferOffset);
    // Serialize message field [rosbag_file_name]
    bufferOffset = _serializer.string(obj.rosbag_file_name, buffer, bufferOffset);
    // Serialize message field [replay_target_option]
    bufferOffset = _serializer.int16(obj.replay_target_option, buffer, bufferOffset);
    // Serialize message field [replay_speed]
    bufferOffset = _serializer.int32(obj.replay_speed, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.int32(obj.start_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSimProcHandle
    let len;
    let data = new MoraiSimProcHandle(null);
    // Deserialize message field [sim_process_status]
    data.sim_process_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [replay_option]
    data.replay_option = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rosbag_file_name]
    data.rosbag_file_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [replay_target_option]
    data.replay_target_option = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [replay_speed]
    data.replay_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.rosbag_file_name);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MoraiSimProcHandle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c9175c85f14149cc98c9509a8191c60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 sim_process_status
    
    int16 replay_option
    string rosbag_file_name
    int16 replay_target_option
    
    int32 replay_speed
    int32 start_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSimProcHandle(null);
    if (msg.sim_process_status !== undefined) {
      resolved.sim_process_status = msg.sim_process_status;
    }
    else {
      resolved.sim_process_status = 0
    }

    if (msg.replay_option !== undefined) {
      resolved.replay_option = msg.replay_option;
    }
    else {
      resolved.replay_option = 0
    }

    if (msg.rosbag_file_name !== undefined) {
      resolved.rosbag_file_name = msg.rosbag_file_name;
    }
    else {
      resolved.rosbag_file_name = ''
    }

    if (msg.replay_target_option !== undefined) {
      resolved.replay_target_option = msg.replay_target_option;
    }
    else {
      resolved.replay_target_option = 0
    }

    if (msg.replay_speed !== undefined) {
      resolved.replay_speed = msg.replay_speed;
    }
    else {
      resolved.replay_speed = 0
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0
    }

    return resolved;
    }
};

module.exports = MoraiSimProcHandle;
