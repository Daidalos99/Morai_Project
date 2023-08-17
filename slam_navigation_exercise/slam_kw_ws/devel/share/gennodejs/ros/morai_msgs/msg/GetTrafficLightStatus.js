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

class GetTrafficLightStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trafficLightIndex = null;
      this.trafficLightType = null;
      this.trafficLightStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trafficLightIndex')) {
        this.trafficLightIndex = initObj.trafficLightIndex
      }
      else {
        this.trafficLightIndex = '';
      }
      if (initObj.hasOwnProperty('trafficLightType')) {
        this.trafficLightType = initObj.trafficLightType
      }
      else {
        this.trafficLightType = 0;
      }
      if (initObj.hasOwnProperty('trafficLightStatus')) {
        this.trafficLightStatus = initObj.trafficLightStatus
      }
      else {
        this.trafficLightStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrafficLightStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trafficLightIndex]
    bufferOffset = _serializer.string(obj.trafficLightIndex, buffer, bufferOffset);
    // Serialize message field [trafficLightType]
    bufferOffset = _serializer.int16(obj.trafficLightType, buffer, bufferOffset);
    // Serialize message field [trafficLightStatus]
    bufferOffset = _serializer.int16(obj.trafficLightStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrafficLightStatus
    let len;
    let data = new GetTrafficLightStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trafficLightIndex]
    data.trafficLightIndex = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trafficLightType]
    data.trafficLightType = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [trafficLightStatus]
    data.trafficLightStatus = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.trafficLightIndex);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/GetTrafficLightStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8401cc4d848efd41d190d36c9ab14ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string trafficLightIndex
    int16 trafficLightType
    int16 trafficLightStatus
    
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
    const resolved = new GetTrafficLightStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trafficLightIndex !== undefined) {
      resolved.trafficLightIndex = msg.trafficLightIndex;
    }
    else {
      resolved.trafficLightIndex = ''
    }

    if (msg.trafficLightType !== undefined) {
      resolved.trafficLightType = msg.trafficLightType;
    }
    else {
      resolved.trafficLightType = 0
    }

    if (msg.trafficLightStatus !== undefined) {
      resolved.trafficLightStatus = msg.trafficLightStatus;
    }
    else {
      resolved.trafficLightStatus = 0
    }

    return resolved;
    }
};

module.exports = GetTrafficLightStatus;
