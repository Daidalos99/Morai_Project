// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CtrlCmd = require('./CtrlCmd.js');

//-----------------------------------------------------------

class SyncModeCtrlCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.command = null;
      this.sensor_capture = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new CtrlCmd();
      }
      if (initObj.hasOwnProperty('sensor_capture')) {
        this.sensor_capture = initObj.sensor_capture
      }
      else {
        this.sensor_capture = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncModeCtrlCmd
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = CtrlCmd.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [sensor_capture]
    bufferOffset = _serializer.bool(obj.sensor_capture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncModeCtrlCmd
    let len;
    let data = new SyncModeCtrlCmd(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = CtrlCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_capture]
    data.sensor_capture = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SyncModeCtrlCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bde97362075e3741f862e4924f65148d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SyncModeCtrlCmd(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.command !== undefined) {
      resolved.command = CtrlCmd.Resolve(msg.command)
    }
    else {
      resolved.command = new CtrlCmd()
    }

    if (msg.sensor_capture !== undefined) {
      resolved.sensor_capture = msg.sensor_capture;
    }
    else {
      resolved.sensor_capture = false
    }

    return resolved;
    }
};

module.exports = SyncModeCtrlCmd;
