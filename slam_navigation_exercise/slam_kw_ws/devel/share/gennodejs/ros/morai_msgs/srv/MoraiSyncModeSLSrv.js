// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncModeScenarioLoad = require('../msg/SyncModeScenarioLoad.js');

//-----------------------------------------------------------

let SyncModeResultResponse = require('../msg/SyncModeResultResponse.js');

//-----------------------------------------------------------

class MoraiSyncModeSLSrvRequest {
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
        this.request = new SyncModeScenarioLoad();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeSLSrvRequest
    // Serialize message field [request]
    bufferOffset = SyncModeScenarioLoad.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeSLSrvRequest
    let len;
    let data = new MoraiSyncModeSLSrvRequest(null);
    // Deserialize message field [request]
    data.request = SyncModeScenarioLoad.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SyncModeScenarioLoad.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeSLSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07e8f745426533fb49f742915157b88e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeScenarioLoad request
    
    ================================================================================
    MSG: morai_msgs/SyncModeScenarioLoad
    uint64 frame
    
    string file_name
    bool load_network_connection_data
    bool delete_all
    bool load_ego_vehicle_data
    bool load_surrounding_vehicle_data
    bool load_pedestrian_data
    bool load_obstacle_data
    bool set_pause
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiSyncModeSLSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = SyncModeScenarioLoad.Resolve(msg.request)
    }
    else {
      resolved.request = new SyncModeScenarioLoad()
    }

    return resolved;
    }
};

class MoraiSyncModeSLSrvResponse {
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
    // Serializes a message object of type MoraiSyncModeSLSrvResponse
    // Serialize message field [response]
    bufferOffset = SyncModeResultResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeSLSrvResponse
    let len;
    let data = new MoraiSyncModeSLSrvResponse(null);
    // Deserialize message field [response]
    data.response = SyncModeResultResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeSLSrvResponse';
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
    const resolved = new MoraiSyncModeSLSrvResponse(null);
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
  Request: MoraiSyncModeSLSrvRequest,
  Response: MoraiSyncModeSLSrvResponse,
  md5sum() { return '892af6bb455c083a88752e9286fb2b85'; },
  datatype() { return 'morai_msgs/MoraiSyncModeSLSrv'; }
};
