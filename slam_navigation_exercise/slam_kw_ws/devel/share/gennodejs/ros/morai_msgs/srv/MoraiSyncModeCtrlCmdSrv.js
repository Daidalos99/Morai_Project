// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncModeCtrlCmd = require('../msg/SyncModeCtrlCmd.js');

//-----------------------------------------------------------

let SyncModeResultResponse = require('../msg/SyncModeResultResponse.js');

//-----------------------------------------------------------

class MoraiSyncModeCtrlCmdSrvRequest {
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
        this.request = new SyncModeCtrlCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeCtrlCmdSrvRequest
    // Serialize message field [request]
    bufferOffset = SyncModeCtrlCmd.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeCtrlCmdSrvRequest
    let len;
    let data = new MoraiSyncModeCtrlCmdSrvRequest(null);
    // Deserialize message field [request]
    data.request = SyncModeCtrlCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 53;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeCtrlCmdSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4539c3d613ecfaef53b3f25e1055d24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeCtrlCmd request
    
    ================================================================================
    MSG: morai_msgs/SyncModeCtrlCmd
    uint64 frame
    
    CtrlCmd command
    
    bool sensor_capture
    
    ================================================================================
    MSG: morai_msgs/CtrlCmd
    int32 longlCmdType
    
    float64 accel
    float64 brake
    float64 steering
    
    float64 velocity
    float64 acceleration
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeCtrlCmdSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = SyncModeCtrlCmd.Resolve(msg.request)
    }
    else {
      resolved.request = new SyncModeCtrlCmd()
    }

    return resolved;
    }
};

class MoraiSyncModeCtrlCmdSrvResponse {
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
        this.response = new SyncModeResultResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeCtrlCmdSrvResponse
    // Serialize message field [response]
    bufferOffset = SyncModeResultResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeCtrlCmdSrvResponse
    let len;
    let data = new MoraiSyncModeCtrlCmdSrvResponse(null);
    // Deserialize message field [response]
    data.response = SyncModeResultResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeCtrlCmdSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4039c80fa74cc3be5f583706bf97e6b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeResultResponse response
    
    
    ================================================================================
    MSG: morai_msgs/SyncModeResultResponse
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeCtrlCmdSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = SyncModeResultResponse.Resolve(msg.response)
    }
    else {
      resolved.response = new SyncModeResultResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoraiSyncModeCtrlCmdSrvRequest,
  Response: MoraiSyncModeCtrlCmdSrvResponse,
  md5sum() { return '1a537319e4c18b20b4792b07c454053f'; },
  datatype() { return 'morai_msgs/MoraiSyncModeCtrlCmdSrv'; }
};
