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

class GhostMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.rotation = null;
      this.velocity = null;
      this.steering_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GhostMessage
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rotation, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float64(obj.steering_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GhostMessage
    let len;
    let data = new GhostMessage(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/GhostMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b0cee621629137441e1a9fb4484359a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 position
    geometry_msgs/Vector3 rotation
    float64 velocity
    float64 steering_angle
    
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
    const resolved = new GhostMessage(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = geometry_msgs.msg.Vector3.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0.0
    }

    return resolved;
    }
};

module.exports = GhostMessage;
