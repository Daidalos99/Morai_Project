// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncModeCmd = require('../msg/SyncModeCmd.js');

//-----------------------------------------------------------

let SyncModeCmdResponse = require('../msg/SyncModeCmdResponse.js');

//-----------------------------------------------------------

class MoraiSyncModeCmdSrvRequest {
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
        this.request = new SyncModeCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeCmdSrvRequest
    // Serialize message field [request]
    bufferOffset = SyncModeCmd.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeCmdSrvRequest
    let len;
    let data = new MoraiSyncModeCmdSrvRequest(null);
    // Deserialize message field [request]
    data.request = SyncModeCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SyncModeCmd.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeCmdSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d8883f3f0d61ae36bc7cccae4a13743';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeCmd request
    
    ================================================================================
    MSG: morai_msgs/SyncModeCmd
    string user_id
    bool start_sync_mode
    uint32 time_step
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeCmdSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = SyncModeCmd.Resolve(msg.request)
    }
    else {
      resolved.request = new SyncModeCmd()
    }

    return resolved;
    }
};

class MoraiSyncModeCmdSrvResponse {
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
        this.response = new SyncModeCmdResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeCmdSrvResponse
    // Serialize message field [response]
    bufferOffset = SyncModeCmdResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeCmdSrvResponse
    let len;
    let data = new MoraiSyncModeCmdSrvResponse(null);
    // Deserialize message field [response]
    data.response = SyncModeCmdResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SyncModeCmdResponse.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeCmdSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5aeea6ec21f5f08b319408453475055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeCmdResponse response
    
    
    ================================================================================
    MSG: morai_msgs/SyncModeCmdResponse
    string user_id
    uint64 frame
    bool result
    uint32 time_step
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeCmdSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = SyncModeCmdResponse.Resolve(msg.response)
    }
    else {
      resolved.response = new SyncModeCmdResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoraiSyncModeCmdSrvRequest,
  Response: MoraiSyncModeCmdSrvResponse,
  md5sum() { return 'df0fcb0eae8a1f37d527d8331f8eb734'; },
  datatype() { return 'morai_msgs/MoraiSyncModeCmdSrv'; }
};
