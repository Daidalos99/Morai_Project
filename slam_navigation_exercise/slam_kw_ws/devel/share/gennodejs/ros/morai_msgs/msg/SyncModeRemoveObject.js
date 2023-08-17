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

class SyncModeRemoveObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unique_id = null;
      this.frame = null;
    }
    else {
      if (initObj.hasOwnProperty('unique_id')) {
        this.unique_id = initObj.unique_id
      }
      else {
        this.unique_id = 0;
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
    // Serializes a message object of type SyncModeRemoveObject
    // Serialize message field [unique_id]
    bufferOffset = _serializer.int32(obj.unique_id, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncModeRemoveObject
    let len;
    let data = new SyncModeRemoveObject(null);
    // Deserialize message field [unique_id]
    data.unique_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SyncModeRemoveObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e03aa402d08096d62169318ac743ac26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 unique_id
    uint64 frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncModeRemoveObject(null);
    if (msg.unique_id !== undefined) {
      resolved.unique_id = msg.unique_id;
    }
    else {
      resolved.unique_id = 0
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

module.exports = SyncModeRemoveObject;
