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

class Lamps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.turnSignal = null;
      this.emergencySignal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('turnSignal')) {
        this.turnSignal = initObj.turnSignal
      }
      else {
        this.turnSignal = 0;
      }
      if (initObj.hasOwnProperty('emergencySignal')) {
        this.emergencySignal = initObj.emergencySignal
      }
      else {
        this.emergencySignal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lamps
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [turnSignal]
    bufferOffset = _serializer.int8(obj.turnSignal, buffer, bufferOffset);
    // Serialize message field [emergencySignal]
    bufferOffset = _serializer.int8(obj.emergencySignal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lamps
    let len;
    let data = new Lamps(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [turnSignal]
    data.turnSignal = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [emergencySignal]
    data.emergencySignal = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/Lamps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5ccafcb539dda544420a20f26b1f9a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 turnSignal
    int8 emergencySignal
    
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
    const resolved = new Lamps(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.turnSignal !== undefined) {
      resolved.turnSignal = msg.turnSignal;
    }
    else {
      resolved.turnSignal = 0
    }

    if (msg.emergencySignal !== undefined) {
      resolved.emergencySignal = msg.emergencySignal;
    }
    else {
      resolved.emergencySignal = 0
    }

    return resolved;
    }
};

module.exports = Lamps;
