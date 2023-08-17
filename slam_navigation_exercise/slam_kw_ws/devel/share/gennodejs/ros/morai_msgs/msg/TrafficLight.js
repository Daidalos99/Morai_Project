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

class TrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.light = null;
      this.num_of_light = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('light')) {
        this.light = initObj.light
      }
      else {
        this.light = 0;
      }
      if (initObj.hasOwnProperty('num_of_light')) {
        this.num_of_light = initObj.num_of_light
      }
      else {
        this.num_of_light = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLight
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [light]
    bufferOffset = _serializer.int16(obj.light, buffer, bufferOffset);
    // Serialize message field [num_of_light]
    bufferOffset = _serializer.int16(obj.num_of_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLight
    let len;
    let data = new TrafficLight(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [light]
    data.light = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [num_of_light]
    data.num_of_light = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/TrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '480e75f7f0e8a7ff951bb52c9de43c72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 light
    int16 num_of_light
    
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
    const resolved = new TrafficLight(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.light !== undefined) {
      resolved.light = msg.light;
    }
    else {
      resolved.light = 0
    }

    if (msg.num_of_light !== undefined) {
      resolved.num_of_light = msg.num_of_light;
    }
    else {
      resolved.num_of_light = 0
    }

    return resolved;
    }
};

module.exports = TrafficLight;
