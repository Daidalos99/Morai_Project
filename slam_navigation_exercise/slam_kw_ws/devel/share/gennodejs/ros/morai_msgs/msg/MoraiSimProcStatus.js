// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MoraiSimProcStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latest_command_time = null;
      this.command_result = null;
      this.current_mode = null;
      this.current_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latest_command_time')) {
        this.latest_command_time = initObj.latest_command_time
      }
      else {
        this.latest_command_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('command_result')) {
        this.command_result = initObj.command_result
      }
      else {
        this.command_result = 0;
      }
      if (initObj.hasOwnProperty('current_mode')) {
        this.current_mode = initObj.current_mode
      }
      else {
        this.current_mode = 0;
      }
      if (initObj.hasOwnProperty('current_status')) {
        this.current_status = initObj.current_status
      }
      else {
        this.current_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSimProcStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latest_command_time]
    bufferOffset = _serializer.time(obj.latest_command_time, buffer, bufferOffset);
    // Serialize message field [command_result]
    bufferOffset = _serializer.uint8(obj.command_result, buffer, bufferOffset);
    // Serialize message field [current_mode]
    bufferOffset = _serializer.uint8(obj.current_mode, buffer, bufferOffset);
    // Serialize message field [current_status]
    bufferOffset = _serializer.uint8(obj.current_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSimProcStatus
    let len;
    let data = new MoraiSimProcStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latest_command_time]
    data.latest_command_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [command_result]
    data.command_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_mode]
    data.current_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_status]
    data.current_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MoraiSimProcStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '533bc73de5b186ff7b72acd2d1130c9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    time latest_command_time
    uint8 command_result
    uint8 current_mode
    uint8 current_status
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSimProcStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latest_command_time !== undefined) {
      resolved.latest_command_time = msg.latest_command_time;
    }
    else {
      resolved.latest_command_time = {secs: 0, nsecs: 0}
    }

    if (msg.command_result !== undefined) {
      resolved.command_result = msg.command_result;
    }
    else {
      resolved.command_result = 0
    }

    if (msg.current_mode !== undefined) {
      resolved.current_mode = msg.current_mode;
    }
    else {
      resolved.current_mode = 0
    }

    if (msg.current_status !== undefined) {
      resolved.current_status = msg.current_status;
    }
    else {
      resolved.current_status = 0
    }

    return resolved;
    }
};

module.exports = MoraiSimProcStatus;
