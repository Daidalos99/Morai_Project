// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncModeRemoveObject = require('../msg/SyncModeRemoveObject.js');

//-----------------------------------------------------------

let SyncModeResultResponse = require('../msg/SyncModeResultResponse.js');

//-----------------------------------------------------------

class MoraiSyncModeRemoveObjectSrvRequest {
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
        this.request = new SyncModeRemoveObject();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeRemoveObjectSrvRequest
    // Serialize message field [request]
    bufferOffset = SyncModeRemoveObject.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeRemoveObjectSrvRequest
    let len;
    let data = new MoraiSyncModeRemoveObjectSrvRequest(null);
    // Deserialize message field [request]
    data.request = SyncModeRemoveObject.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeRemoveObjectSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f29d91eaba9c9b9e22406f170d281a6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeRemoveObject request
    
    ================================================================================
    MSG: morai_msgs/SyncModeRemoveObject
    int32 unique_id
    uint64 frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeRemoveObjectSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = SyncModeRemoveObject.Resolve(msg.request)
    }
    else {
      resolved.request = new SyncModeRemoveObject()
    }

    return resolved;
    }
};

class MoraiSyncModeRemoveObjectSrvResponse {
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
    // Serializes a message object of type MoraiSyncModeRemoveObjectSrvResponse
    // Serialize message field [response]
    bufferOffset = SyncModeResultResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeRemoveObjectSrvResponse
    let len;
    let data = new MoraiSyncModeRemoveObjectSrvResponse(null);
    // Deserialize message field [response]
    data.response = SyncModeResultResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeRemoveObjectSrvResponse';
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
    const resolved = new MoraiSyncModeRemoveObjectSrvResponse(null);
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
  Request: MoraiSyncModeRemoveObjectSrvRequest,
  Response: MoraiSyncModeRemoveObjectSrvResponse,
  md5sum() { return 'd499baec7083a3731b7e7fc183807dce'; },
  datatype() { return 'morai_msgs/MoraiSyncModeRemoveObjectSrv'; }
};
