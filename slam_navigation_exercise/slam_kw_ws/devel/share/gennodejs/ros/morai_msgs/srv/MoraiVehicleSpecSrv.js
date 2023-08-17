// Auto-generated. Do not edit!

// (in-package morai_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleSpecIndex = require('../msg/VehicleSpecIndex.js');

//-----------------------------------------------------------

let VehicleSpec = require('../msg/VehicleSpec.js');

//-----------------------------------------------------------

class MoraiVehicleSpecSrvRequest {
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
        this.request = new VehicleSpecIndex();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiVehicleSpecSrvRequest
    // Serialize message field [request]
    bufferOffset = VehicleSpecIndex.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiVehicleSpecSrvRequest
    let len;
    let data = new MoraiVehicleSpecSrvRequest(null);
    // Deserialize message field [request]
    data.request = VehicleSpecIndex.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiVehicleSpecSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f60eb9d45044f97584dc4dc33ff04f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehicleSpecIndex request
    
    ================================================================================
    MSG: morai_msgs/VehicleSpecIndex
    int32 unique_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiVehicleSpecSrvRequest(null);
    if (msg.request !== undefined) {
      resolved.request = VehicleSpecIndex.Resolve(msg.request)
    }
    else {
      resolved.request = new VehicleSpecIndex()
    }

    return resolved;
    }
};

class MoraiVehicleSpecSrvResponse {
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
        this.response = new VehicleSpec();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiVehicleSpecSrvResponse
    // Serialize message field [response]
    bufferOffset = VehicleSpec.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiVehicleSpecSrvResponse
    let len;
    let data = new MoraiVehicleSpecSrvResponse(null);
    // Deserialize message field [response]
    data.response = VehicleSpec.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morai_msgs/MoraiVehicleSpecSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20ea4a8f870d4f05648663666ca87567';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehicleSpec response
    
    
    ================================================================================
    MSG: morai_msgs/VehicleSpec
    geometry_msgs/Vector3 size
    float32 wheel_base
    float64 max_steering
    
    float32 overhang 
    float32 rear_overhang
    
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
    const resolved = new MoraiVehicleSpecSrvResponse(null);
    if (msg.response !== undefined) {
      resolved.response = VehicleSpec.Resolve(msg.response)
    }
    else {
      resolved.response = new VehicleSpec()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoraiVehicleSpecSrvRequest,
  Response: MoraiVehicleSpecSrvResponse,
  md5sum() { return '00e763d6a7313045c7676986f63a8fd8'; },
  datatype() { return 'morai_msgs/MoraiVehicleSpecSrv'; }
};
