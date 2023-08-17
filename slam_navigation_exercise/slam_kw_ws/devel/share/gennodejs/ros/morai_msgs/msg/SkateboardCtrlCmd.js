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

class SkateboardCtrlCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.longlCmdType = null;
      this.accel = null;
      this.brake = null;
      this.steering = null;
      this.steering_rear = null;
      this.velocity = null;
      this.acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('longlCmdType')) {
        this.longlCmdType = initObj.longlCmdType
      }
      else {
        this.longlCmdType = 0;
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = 0.0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
      if (initObj.hasOwnProperty('steering_rear')) {
        this.steering_rear = initObj.steering_rear
      }
      else {
        this.steering_rear = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SkateboardCtrlCmd
    // Serialize message field [longlCmdType]
    bufferOffset = _serializer.int32(obj.longlCmdType, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = _serializer.float64(obj.accel, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float64(obj.brake, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float64(obj.steering, buffer, bufferOffset);
    // Serialize message field [steering_rear]
    bufferOffset = _serializer.float64(obj.steering_rear, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float64(obj.acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SkateboardCtrlCmd
    let len;
    let data = new SkateboardCtrlCmd(null);
    // Deserialize message field [longlCmdType]
    data.longlCmdType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_rear]
    data.steering_rear = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SkateboardCtrlCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '742885cbb88147e68ea9b3a4d3bda873';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 longlCmdType
    
    float64 accel
    float64 brake
    float64 steering
    float64 steering_rear
    
    float64 velocity
    float64 acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SkateboardCtrlCmd(null);
    if (msg.longlCmdType !== undefined) {
      resolved.longlCmdType = msg.longlCmdType;
    }
    else {
      resolved.longlCmdType = 0
    }

    if (msg.accel !== undefined) {
      resolved.accel = msg.accel;
    }
    else {
      resolved.accel = 0.0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    if (msg.steering_rear !== undefined) {
      resolved.steering_rear = msg.steering_rear;
    }
    else {
      resolved.steering_rear = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    return resolved;
    }
};

module.exports = SkateboardCtrlCmd;
