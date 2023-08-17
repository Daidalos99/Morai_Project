// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MoraiTLIndex = require('../msg/MoraiTLIndex.js');

//-----------------------------------------------------------

let MoraiTLInfo = require('../msg/MoraiTLInfo.js');

//-----------------------------------------------------------

class MoraiTLInfoSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new MoraiTLIndex();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiTLInfoSrvRequest
    // Serialize message field [request]
    bufferOffset = MoraiTLIndex.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiTLInfoSrvRequest
    let len;
    let data = new MoraiTLInfoSrvRequest(null);
    // Deserialize message field [request]
    data.request = MoraiTLIndex.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MoraiTLIndex.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiTLInfoSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5e0616a2a9276c5d4842fa9a4a59f3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MoraiTLIndex request
    
    ================================================================================
    MSG: morai_msgs/MoraiTLIndex
    string idx
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiTLInfoSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = MoraiTLIndex.Resolve(msg.request)
    }
    else {
      resolved.request = new MoraiTLIndex()
    }

    return resolved;
    }
};

class MoraiTLInfoSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = new MoraiTLInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiTLInfoSrvResponse
    // Serialize message field [response]
    bufferOffset = MoraiTLInfo.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiTLInfoSrvResponse
    let len;
    let data = new MoraiTLInfoSrvResponse(null);
    // Deserialize message field [response]
    data.response = MoraiTLInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MoraiTLInfo.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiTLInfoSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2291e92767082c2c2a90c2bc596cf30f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MoraiTLInfo response
    
    
    ================================================================================
    MSG: morai_msgs/MoraiTLInfo
    Header header
    string idx
    int16 status
    
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
    const resolved = new MoraiTLInfoSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = MoraiTLInfo.Resolve(msg.response)
    }
    else {
      resolved.response = new MoraiTLInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoraiTLInfoSrvRequest,
  Response: MoraiTLInfoSrvResponse,
  md5sum() { return '45a35612e91c0d4a540073e8f137e9c5'; },
  datatype() { return 'morai_msgs/MoraiTLInfoSrv'; }
};
