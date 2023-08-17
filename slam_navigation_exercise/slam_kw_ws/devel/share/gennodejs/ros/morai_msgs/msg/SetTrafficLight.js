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

class SetTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trafficLightIndex = null;
      this.trafficLightStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('trafficLightIndex')) {
        this.trafficLightIndex = initObj.trafficLightIndex
      }
      else {
        this.trafficLightIndex = '';
      }
      if (initObj.hasOwnProperty('trafficLightStatus')) {
        this.trafficLightStatus = initObj.trafficLightStatus
      }
      else {
        this.trafficLightStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTrafficLight
    // Serialize message field [trafficLightIndex]
    bufferOffset = _serializer.string(obj.trafficLightIndex, buffer, bufferOffset);
    // Serialize message field [trafficLightStatus]
    bufferOffset = _serializer.int16(obj.trafficLightStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTrafficLight
    let len;
    let data = new SetTrafficLight(null);
    // Deserialize message field [trafficLightIndex]
    data.trafficLightIndex = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trafficLightStatus]
    data.trafficLightStatus = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.trafficLightIndex);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SetTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd27357f4982612d0e2067eb726f8617';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string trafficLightIndex
    int16 trafficLightStatus
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTrafficLight(null);
    if (msg.trafficLightIndex !== undefined) {
      resolved.trafficLightIndex = msg.trafficLightIndex;
    }
    else {
      resolved.trafficLightIndex = ''
    }

    if (msg.trafficLightStatus !== undefined) {
      resolved.trafficLightStatus = msg.trafficLightStatus;
    }
    else {
      resolved.trafficLightStatus = 0
    }

    return resolved;
    }
};

module.exports = SetTrafficLight;
