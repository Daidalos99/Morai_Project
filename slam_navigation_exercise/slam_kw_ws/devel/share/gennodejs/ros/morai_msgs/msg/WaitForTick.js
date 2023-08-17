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

class WaitForTick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user_id = null;
      this.frame = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaitForTick
    // Serialize message field [user_id]
    bufferOffset = _serializer.string(obj.user_id, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaitForTick
    let len;
    let data = new WaitForTick(null);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.user_id);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/WaitForTick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fc7bbc1a7fcecee1fda37b70774bdd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string user_id
    uint64 frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaitForTick(null);
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

    return resolved;
    }
};

module.exports = WaitForTick;
