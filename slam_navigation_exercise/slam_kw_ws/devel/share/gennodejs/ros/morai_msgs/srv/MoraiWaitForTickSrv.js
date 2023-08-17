// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaitForTick = require('../msg/WaitForTick.js');

//-----------------------------------------------------------

let WaitForTickResponse = require('../msg/WaitForTickResponse.js');

//-----------------------------------------------------------

class MoraiWaitForTickSrvRequest {
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
        this.request = new WaitForTick();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiWaitForTickSrvRequest
    // Serialize message field [request]
    bufferOffset = WaitForTick.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiWaitForTickSrvRequest
    let len;
    let data = new MoraiWaitForTickSrvRequest(null);
    // Deserialize message field [request]
    data.request = WaitForTick.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WaitForTick.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiWaitForTickSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77331daf5459fbd0382fad85fbd00b0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WaitForTick request
    
    ================================================================================
    MSG: morai_msgs/WaitForTick
    string user_id
    uint64 frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiWaitForTickSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = WaitForTick.Resolve(msg.request)
    }
    else {
      resolved.request = new WaitForTick()
    }

    return resolved;
    }
};

class MoraiWaitForTickSrvResponse {
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
        this.response = new WaitForTickResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiWaitForTickSrvResponse
    // Serialize message field [response]
    bufferOffset = WaitForTickResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiWaitForTickSrvResponse
    let len;
    let data = new MoraiWaitForTickSrvResponse(null);
    // Deserialize message field [response]
    data.response = WaitForTickResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WaitForTickResponse.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiWaitForTickSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a65d07fc271c103e2d424e3d6894b352';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WaitForTickResponse response
    
    
    ================================================================================
    MSG: morai_msgs/WaitForTickResponse
    bool tick_status
    bool pause_status
    uint64 frame
    
    EgoVehicleStatus vehicle_status
    string time
    
    ================================================================================
    MSG: morai_msgs/EgoVehicleStatus
    Header header
    int32 unique_id
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 position
    geometry_msgs/Vector3 velocity
    
    float64 heading
    float32 accel
    float32 brake
    float32 wheel_angle
    
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiWaitForTickSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = WaitForTickResponse.Resolve(msg.response)
    }
    else {
      resolved.response = new WaitForTickResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoraiWaitForTickSrvRequest,
  Response: MoraiWaitForTickSrvResponse,
  md5sum() { return '1faebcf9c4d5c1360e198f99611eacb5'; },
  datatype() { return 'morai_msgs/MoraiWaitForTickSrv'; }
};
