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

class MoraiTLIndex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idx = null;
    }
    else {
      if (initObj.hasOwnProperty('idx')) {
        this.idx = initObj.idx
      }
      else {
        this.idx = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiTLIndex
    // Serialize message field [idx]
    bufferOffset = _serializer.string(obj.idx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiTLIndex
    let len;
    let data = new MoraiTLIndex(null);
    // Deserialize message field [idx]
    data.idx = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.idx);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MoraiTLIndex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71e0c15635f115962468861139afa95e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string idx
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiTLIndex(null);
    if (msg.idx !== undefined) {
      resolved.idx = msg.idx;
    }
    else {
      resolved.idx = ''
    }

    return resolved;
    }
};

module.exports = MoraiTLIndex;
