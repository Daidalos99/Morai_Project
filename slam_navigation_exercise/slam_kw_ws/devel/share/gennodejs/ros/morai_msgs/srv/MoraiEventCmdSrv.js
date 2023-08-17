// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EventInfo = require('../msg/EventInfo.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoraiEventCmdSrvRequest {
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
        this.request = new EventInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiEventCmdSrvRequest
    // Serialize message field [request]
    bufferOffset = EventInfo.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiEventCmdSrvRequest
    let len;
    let data = new MoraiEventCmdSrvRequest(null);
    // Deserialize message field [request]
    data.request = EventInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EventInfo.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiEventCmdSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de5e52e7080efd2d8e185c1dcd1db112';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EventInfo request
    
    ================================================================================
    MSG: morai_msgs/EventInfo
    int8 option
    int32 ctrl_mode
    int32 gear
    Lamps lamps
    bool set_pause
    
    ================================================================================
    MSG: morai_msgs/Lamps
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
    const resolved = new MoraiEventCmdSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = EventInfo.Resolve(msg.request)
    }
    else {
      resolved.request = new EventInfo()
    }

    return resolved;
    }
};

class MoraiEventCmdSrvResponse {
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
        this.response = new EventInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiEventCmdSrvResponse
    // Serialize message field [response]
    bufferOffset = EventInfo.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiEventCmdSrvResponse
    let len;
    let data = new MoraiEventCmdSrvResponse(null);
    // Deserialize message field [response]
    data.response = EventInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EventInfo.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiEventCmdSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a4655da94bd0672ed74ad74e28d078b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EventInfo response
    
    
    ================================================================================
    MSG: morai_msgs/EventInfo
    int8 option
    int32 ctrl_mode
    int32 gear
    Lamps lamps
    bool set_pause
    
    ================================================================================
    MSG: morai_msgs/Lamps
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
    const resolved = new MoraiEventCmdSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = EventInfo.Resolve(msg.response)
    }
    else {
      resolved.response = new EventInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoraiEventCmdSrvRequest,
  Response: MoraiEventCmdSrvResponse,
  md5sum() { return '12515282709d0774401eb06049aedb82'; },
  datatype() { return 'morai_msgs/MoraiEventCmdSrv'; }
};
