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

class IntscnTL {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.idx = null;
      this.state = null;
      this.delta_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('idx')) {
        this.idx = initObj.idx
      }
      else {
        this.idx = [];
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
      if (initObj.hasOwnProperty('delta_time')) {
        this.delta_time = initObj.delta_time
      }
      else {
        this.delta_time = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntscnTL
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [idx]
    bufferOffset = _arraySerializer.string(obj.idx, buffer, bufferOffset, null);
    // Serialize message field [state]
    bufferOffset = _arraySerializer.int32(obj.state, buffer, bufferOffset, null);
    // Serialize message field [delta_time]
    bufferOffset = _arraySerializer.float32(obj.delta_time, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntscnTL
    let len;
    let data = new IntscnTL(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [idx]
    data.idx = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [state]
    data.state = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [delta_time]
    data.delta_time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.idx.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.state.length;
    length += 4 * object.delta_time.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/IntscnTL';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f2b14b75fa52122ddd11e92b22c6939';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string[] idx
    int32[] state
    float32[] delta_time
    
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
    const resolved = new IntscnTL(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.idx !== undefined) {
      resolved.idx = msg.idx;
    }
    else {
      resolved.idx = []
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    if (msg.delta_time !== undefined) {
      resolved.delta_time = msg.delta_time;
    }
    else {
      resolved.delta_time = []
    }

    return resolved;
    }
};

module.exports = IntscnTL;
