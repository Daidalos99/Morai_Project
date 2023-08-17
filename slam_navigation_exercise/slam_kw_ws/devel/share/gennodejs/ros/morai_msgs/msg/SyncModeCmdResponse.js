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

class SyncModeCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user_id = null;
      this.frame = null;
      this.result = null;
      this.time_step = null;
    }
    else {
      if (initObj.hasOwnProperty('user_id')) {
        this.user_id = initObj.user_id
      }
      else {
        this.user_id = '';
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('time_step')) {
        this.time_step = initObj.time_step
      }
      else {
        this.time_step = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncModeCmdResponse
    // Serialize message field [user_id]
    bufferOffset = _serializer.string(obj.user_id, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [time_step]
    bufferOffset = _serializer.uint32(obj.time_step, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncModeCmdResponse
    let len;
    let data = new SyncModeCmdResponse(null);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_step]
    data.time_step = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.user_id);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SyncModeCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea7255c2910d9b74a04977095711f9e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string user_id
    uint64 frame
    bool result
    uint32 time_step
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncModeCmdResponse(null);
    if (msg.user_id !== undefined) {
      resolved.user_id = msg.user_id;
    }
    else {
      resolved.user_id = ''
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.time_step !== undefined) {
      resolved.time_step = msg.time_step;
    }
    else {
      resolved.time_step = 0
    }

    return resolved;
    }
};

module.exports = SyncModeCmdResponse;
