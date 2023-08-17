// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class VehicleSpec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.wheel_base = null;
      this.max_steering = null;
      this.overhang = null;
      this.rear_overhang = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('wheel_base')) {
        this.wheel_base = initObj.wheel_base
      }
      else {
        this.wheel_base = 0.0;
      }
      if (initObj.hasOwnProperty('max_steering')) {
        this.max_steering = initObj.max_steering
      }
      else {
        this.max_steering = 0.0;
      }
      if (initObj.hasOwnProperty('overhang')) {
        this.overhang = initObj.overhang
      }
      else {
        this.overhang = 0.0;
      }
      if (initObj.hasOwnProperty('rear_overhang')) {
        this.rear_overhang = initObj.rear_overhang
      }
      else {
        this.rear_overhang = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleSpec
    // Serialize message field [size]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [wheel_base]
    bufferOffset = _serializer.float32(obj.wheel_base, buffer, bufferOffset);
    // Serialize message field [max_steering]
    bufferOffset = _serializer.float64(obj.max_steering, buffer, bufferOffset);
    // Serialize message field [overhang]
    bufferOffset = _serializer.float32(obj.overhang, buffer, bufferOffset);
    // Serialize message field [rear_overhang]
    bufferOffset = _serializer.float32(obj.rear_overhang, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSpec
    let len;
    let data = new VehicleSpec(null);
    // Deserialize message field [size]
    data.size = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_base]
    data.wheel_base = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steering]
    data.max_steering = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [overhang]
    data.overhang = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_overhang]
    data.rear_overhang = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/VehicleSpec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd273508226bd3615fec6992c56a9ddae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new VehicleSpec(null);
    if (msg.size !== undefined) {
      resolved.size = geometry_msgs.msg.Vector3.Resolve(msg.size)
    }
    else {
      resolved.size = new geometry_msgs.msg.Vector3()
    }

    if (msg.wheel_base !== undefined) {
      resolved.wheel_base = msg.wheel_base;
    }
    else {
      resolved.wheel_base = 0.0
    }

    if (msg.max_steering !== undefined) {
      resolved.max_steering = msg.max_steering;
    }
    else {
      resolved.max_steering = 0.0
    }

    if (msg.overhang !== undefined) {
      resolved.overhang = msg.overhang;
    }
    else {
      resolved.overhang = 0.0
    }

    if (msg.rear_overhang !== undefined) {
      resolved.rear_overhang = msg.rear_overhang;
    }
    else {
      resolved.rear_overhang = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleSpec;
