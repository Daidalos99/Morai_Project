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

class PRStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position_X = null;
      this.position_Y = null;
      this.position_Z = null;
      this.heading = null;
      this.mountStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position_X')) {
        this.position_X = initObj.position_X
      }
      else {
        this.position_X = 0.0;
      }
      if (initObj.hasOwnProperty('position_Y')) {
        this.position_Y = initObj.position_Y
      }
      else {
        this.position_Y = 0.0;
      }
      if (initObj.hasOwnProperty('position_Z')) {
        this.position_Z = initObj.position_Z
      }
      else {
        this.position_Z = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('mountStatus')) {
        this.mountStatus = initObj.mountStatus
      }
      else {
        this.mountStatus = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PRStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position_X]
    bufferOffset = _serializer.float32(obj.position_X, buffer, bufferOffset);
    // Serialize message field [position_Y]
    bufferOffset = _serializer.float32(obj.position_Y, buffer, bufferOffset);
    // Serialize message field [position_Z]
    bufferOffset = _serializer.float32(obj.position_Z, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [mountStatus]
    bufferOffset = _serializer.bool(obj.mountStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PRStatus
    let len;
    let data = new PRStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_X]
    data.position_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_Y]
    data.position_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_Z]
    data.position_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mountStatus]
    data.mountStatus = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/PRStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3717aef8039c3cd46c25aa8ac584e9d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 position_X
    float32 position_Y
    float32 position_Z
    float64 heading
    bool mountStatus
    
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
    const resolved = new PRStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position_X !== undefined) {
      resolved.position_X = msg.position_X;
    }
    else {
      resolved.position_X = 0.0
    }

    if (msg.position_Y !== undefined) {
      resolved.position_Y = msg.position_Y;
    }
    else {
      resolved.position_Y = 0.0
    }

    if (msg.position_Z !== undefined) {
      resolved.position_Z = msg.position_Z;
    }
    else {
      resolved.position_Z = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.mountStatus !== undefined) {
      resolved.mountStatus = msg.mountStatus;
    }
    else {
      resolved.mountStatus = false
    }

    return resolved;
    }
};

module.exports = PRStatus;
