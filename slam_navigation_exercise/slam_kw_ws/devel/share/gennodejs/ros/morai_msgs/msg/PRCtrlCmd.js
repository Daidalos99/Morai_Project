// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PRCtrlCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.longitudinalVelocity = null;
      this.latitudinalVelocity = null;
      this.AngularVelocity = null;
    }
    else {
      if (initObj.hasOwnProperty('longitudinalVelocity')) {
        this.longitudinalVelocity = initObj.longitudinalVelocity
      }
      else {
        this.longitudinalVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('latitudinalVelocity')) {
        this.latitudinalVelocity = initObj.latitudinalVelocity
      }
      else {
        this.latitudinalVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('AngularVelocity')) {
        this.AngularVelocity = initObj.AngularVelocity
      }
      else {
        this.AngularVelocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PRCtrlCmd
    // Serialize message field [longitudinalVelocity]
    bufferOffset = _serializer.float64(obj.longitudinalVelocity, buffer, bufferOffset);
    // Serialize message field [latitudinalVelocity]
    bufferOffset = _serializer.float64(obj.latitudinalVelocity, buffer, bufferOffset);
    // Serialize message field [AngularVelocity]
    bufferOffset = _serializer.float64(obj.AngularVelocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PRCtrlCmd
    let len;
    let data = new PRCtrlCmd(null);
    // Deserialize message field [longitudinalVelocity]
    data.longitudinalVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitudinalVelocity]
    data.latitudinalVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AngularVelocity]
    data.AngularVelocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/PRCtrlCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '538a390f152bdc3fa35e075076d8b7ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 longitudinalVelocity
    float64 latitudinalVelocity
    float64 AngularVelocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PRCtrlCmd(null);
    if (msg.longitudinalVelocity !== undefined) {
      resolved.longitudinalVelocity = msg.longitudinalVelocity;
    }
    else {
      resolved.longitudinalVelocity = 0.0
    }

    if (msg.latitudinalVelocity !== undefined) {
      resolved.latitudinalVelocity = msg.latitudinalVelocity;
    }
    else {
      resolved.latitudinalVelocity = 0.0
    }

    if (msg.AngularVelocity !== undefined) {
      resolved.AngularVelocity = msg.AngularVelocity;
    }
    else {
      resolved.AngularVelocity = 0.0
    }

    return resolved;
    }
};

module.exports = PRCtrlCmd;
