// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectStatus = require('./ObjectStatus.js');

//-----------------------------------------------------------

class VehicleCollision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.crashed_vehicles = null;
    }
    else {
      if (initObj.hasOwnProperty('crashed_vehicles')) {
        this.crashed_vehicles = initObj.crashed_vehicles
      }
      else {
        this.crashed_vehicles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCollision
    // Serialize message field [crashed_vehicles]
    // Serialize the length for message field [crashed_vehicles]
    bufferOffset = _serializer.uint32(obj.crashed_vehicles.length, buffer, bufferOffset);
    obj.crashed_vehicles.forEach((val) => {
      bufferOffset = ObjectStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCollision
    let len;
    let data = new VehicleCollision(null);
    // Deserialize message field [crashed_vehicles]
    // Deserialize array length for message field [crashed_vehicles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.crashed_vehicles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.crashed_vehicles[i] = ObjectStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.crashed_vehicles.forEach((val) => {
      length += ObjectStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/VehicleCollision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b76a1136c5fcb79b704b50b7421616cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ObjectStatus[] crashed_vehicles
    
    ================================================================================
    MSG: morai_msgs/ObjectStatus
    int32 unique_id
    int32 type
    string name
    float64 heading
    
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 size
    geometry_msgs/Vector3 position
    
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
    const resolved = new VehicleCollision(null);
    if (msg.crashed_vehicles !== undefined) {
      resolved.crashed_vehicles = new Array(msg.crashed_vehicles.length);
      for (let i = 0; i < resolved.crashed_vehicles.length; ++i) {
        resolved.crashed_vehicles[i] = ObjectStatus.Resolve(msg.crashed_vehicles[i]);
      }
    }
    else {
      resolved.crashed_vehicles = []
    }

    return resolved;
    }
};

module.exports = VehicleCollision;
