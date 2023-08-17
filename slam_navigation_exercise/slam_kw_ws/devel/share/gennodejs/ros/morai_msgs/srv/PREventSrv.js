// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PREvent = require('../msg/PREvent.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PREventSrvRequest {
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
        this.request = new PREvent();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PREventSrvRequest
    // Serialize message field [request]
    bufferOffset = PREvent.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PREventSrvRequest
    let len;
    let data = new PREventSrvRequest(null);
    // Deserialize message field [request]
    data.request = PREvent.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/PREventSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f69a8c90835694a1fc97b37f6cb5687c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PREvent request
    
    ================================================================================
    MSG: morai_msgs/PREvent
    bool mountVehicle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PREventSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = PREvent.Resolve(msg.request)
    }
    else {
      resolved.request = new PREvent()
    }

    return resolved;
    }
};

class PREventSrvResponse {
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
        this.response = new PREvent();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PREventSrvResponse
    // Serialize message field [response]
    bufferOffset = PREvent.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PREventSrvResponse
    let len;
    let data = new PREventSrvResponse(null);
    // Deserialize message field [response]
    data.response = PREvent.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/PREventSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab9ee7cacf0c9bbfd2d3187b7dd6f3fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PREvent response
    
    
    ================================================================================
    MSG: morai_msgs/PREvent
    bool mountVehicle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PREventSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = PREvent.Resolve(msg.response)
    }
    else {
      resolved.response = new PREvent()
    }

    return resolved;
    }
};

module.exports = {
  Request: PREventSrvRequest,
  Response: PREventSrvResponse,
  md5sum() { return 'a5cf1a2f9ad9d91c7dbbba6c3b888bda'; },
  datatype() { return 'morai_msgs/PREventSrv'; }
};
