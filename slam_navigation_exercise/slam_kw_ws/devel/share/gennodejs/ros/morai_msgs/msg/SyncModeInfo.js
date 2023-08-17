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

class SyncModeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.master_id = null;
      this.status = null;
      this.frame = null;
      this.can_send_tick = null;
    }
    else {
      if (initObj.hasOwnProperty('master_id')) {
        this.master_id = initObj.master_id
      }
      else {
        this.master_id = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('can_send_tick')) {
        this.can_send_tick = initObj.can_send_tick
      }
      else {
        this.can_send_tick = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncModeInfo
    // Serialize message field [master_id]
    bufferOffset = _serializer.string(obj.master_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    // Serialize message field [can_send_tick]
    bufferOffset = _serializer.bool(obj.can_send_tick, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncModeInfo
    let len;
    let data = new SyncModeInfo(null);
    // Deserialize message field [master_id]
    data.master_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [can_send_tick]
    data.can_send_tick = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.master_id);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SyncModeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d9bc8fdf24a57461d5bcf823494e818';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string master_id
    bool status
    uint64 frame
    
    bool can_send_tick
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncModeInfo(null);
    if (msg.master_id !== undefined) {
      resolved.master_id = msg.master_id;
    }
    else {
      resolved.master_id = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.can_send_tick !== undefined) {
      resolved.can_send_tick = msg.can_send_tick;
    }
    else {
      resolved.can_send_tick = false
    }

    return resolved;
    }
};

module.exports = SyncModeInfo;
