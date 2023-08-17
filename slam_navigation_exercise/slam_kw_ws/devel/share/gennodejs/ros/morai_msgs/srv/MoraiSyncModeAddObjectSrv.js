// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncModeAddObject = require('../msg/SyncModeAddObject.js');

//-----------------------------------------------------------

let SyncModeResultResponse = require('../msg/SyncModeResultResponse.js');

//-----------------------------------------------------------

class MoraiSyncModeAddObjectSrvRequest {
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
        this.request = new SyncModeAddObject();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiSyncModeAddObjectSrvRequest
    // Serialize message field [request]
    bufferOffset = SyncModeAddObject.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeAddObjectSrvRequest
    let len;
    let data = new MoraiSyncModeAddObjectSrvRequest(null);
    // Deserialize message field [request]
    data.request = SyncModeAddObject.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SyncModeAddObject.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeAddObjectSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb4f1edddd253d5c956e50cd7a1565cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SyncModeAddObject request
    
    ================================================================================
    MSG: morai_msgs/SyncModeAddObject
    string name
    geometry_msgs/Vector3 position
    float64 heading
    uint64 frame
    
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
    const resolved = new MoraiSyncModeAddObjectSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = SyncModeAddObject.Resolve(msg.request)
    }
    else {
      resolved.request = new SyncModeAddObject()
    }

    return resolved;
    }
};

class MoraiSyncModeAddObjectSrvResponse {
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
    // Serializes a message object of type MoraiSyncModeAddObjectSrvResponse
    // Serialize message field [response]
    bufferOffset = SyncModeResultResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiSyncModeAddObjectSrvResponse
    let len;
    let data = new MoraiSyncModeAddObjectSrvResponse(null);
    // Deserialize message field [response]
    data.response = SyncModeResultResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiSyncModeAddObjectSrvResponse';
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
    const resolved = new MoraiSyncModeAddObjectSrvResponse(null);
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
  Request: MoraiSyncModeAddObjectSrvRequest,
  Response: MoraiSyncModeAddObjectSrvResponse,
  md5sum() { return 'c1fef4ccdc9874029ce22686c7e98f83'; },
  datatype() { return 'morai_msgs/MoraiSyncModeAddObjectSrv'; }
};
