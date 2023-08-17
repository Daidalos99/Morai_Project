// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleCollision = require('./VehicleCollision.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleCollisionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.collisions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('collisions')) {
        this.collisions = initObj.collisions
      }
      else {
        this.collisions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCollisionData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [collisions]
    // Serialize the length for message field [collisions]
    bufferOffset = _serializer.uint32(obj.collisions.length, buffer, bufferOffset);
    obj.collisions.forEach((val) => {
      bufferOffset = VehicleCollision.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCollisionData
    let len;
    let data = new VehicleCollisionData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [collisions]
    // Deserialize array length for message field [collisions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.collisions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.collisions[i] = VehicleCollision.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.collisions.forEach((val) => {
      length += VehicleCollision.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/VehicleCollisionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a928c1718fbb672e05004cbdd1dabd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    VehicleCollision[] collisions
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: morai_msgs/VehicleCollision
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
    const resolved = new VehicleCollisionData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.collisions !== undefined) {
      resolved.collisions = new Array(msg.collisions.length);
      for (let i = 0; i < resolved.collisions.length; ++i) {
        resolved.collisions[i] = VehicleCollision.Resolve(msg.collisions[i]);
      }
    }
    else {
      resolved.collisions = []
    }

    return resolved;
    }
};

module.exports = VehicleCollisionData;
