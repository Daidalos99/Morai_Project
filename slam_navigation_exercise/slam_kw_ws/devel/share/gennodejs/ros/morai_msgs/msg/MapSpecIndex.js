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

class MapSpecIndex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.load_map_data = null;
    }
    else {
      if (initObj.hasOwnProperty('load_map_data')) {
        this.load_map_data = initObj.load_map_data
      }
      else {
        this.load_map_data = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapSpecIndex
    // Serialize message field [load_map_data]
    bufferOffset = _serializer.bool(obj.load_map_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapSpecIndex
    let len;
    let data = new MapSpecIndex(null);
    // Deserialize message field [load_map_data]
    data.load_map_data = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MapSpecIndex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '019993d4829f9fc48833727291488dc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool load_map_data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapSpecIndex(null);
    if (msg.load_map_data !== undefined) {
      resolved.load_map_data = msg.load_map_data;
    }
    else {
      resolved.load_map_data = false
    }

    return resolved;
    }
};

module.exports = MapSpecIndex;
