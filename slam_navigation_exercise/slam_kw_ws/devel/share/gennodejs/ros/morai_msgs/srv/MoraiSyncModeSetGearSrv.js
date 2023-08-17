// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncModeSetGear = require('../msg/SyncModeSetGear.js');

//-----------------------------------------------------------

let SyncModeResultResponse = require('../msg/SyncModeResultResponse.js');

//-----------------------------------------------------------

class MoraiSyncModeSetGearSrvRequest {
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
        this.request = new SyncModeSetGear();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeSetGearSrvRequest
    // Serialize message field [request]
    bufferOffset = SyncModeSetGear.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeSetGearSrvRequest
    let len;
    let data = new MoraiSyncModeSetGearSrvRequest(null);
    // Deserialize message field [request]
    data.request = SyncModeSetGear.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeSetGearSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a38de95f9e9ee5e44b8b9bd7cda023a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeSetGear request
    
    ================================================================================
    MSG: morai_msgs/SyncModeSetGear
    int32 gear
    uint64 frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeSetGearSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = SyncModeSetGear.Resolve(msg.request)
    }
    else {
      resolved.request = new SyncModeSetGear()
    }

    return resolved;
    }
};

class MoraiSyncModeSetGearSrvResponse {
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
    // Serializes a message object of type MoraiSyncModeSetGearSrvResponse
    // Serialize message field [response]
    bufferOffset = SyncModeResultResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeSetGearSrvResponse
    let len;
    let data = new MoraiSyncModeSetGearSrvResponse(null);
    // Deserialize message field [response]
    data.response = SyncModeResultResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeSetGearSrvResponse';
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
    const resolved = new MoraiSyncModeSetGearSrvResponse(null);
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
  Request: MoraiSyncModeSetGearSrvRequest,
  Response: MoraiSyncModeSetGearSrvResponse,
  md5sum() { return '933dd1db4e5ca4203b1f770f04800d0a'; },
  datatype() { return 'morai_msgs/MoraiSyncModeSetGearSrv'; }
};
