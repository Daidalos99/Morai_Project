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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CollisionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.global_offset_x = null;
      this.global_offset_y = null;
      this.global_offset_z = null;
      this.collision_object = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('global_offset_x')) {
        this.global_offset_x = initObj.global_offset_x
      }
      else {
        this.global_offset_x = 0.0;
      }
      if (initObj.hasOwnProperty('global_offset_y')) {
        this.global_offset_y = initObj.global_offset_y
      }
      else {
        this.global_offset_y = 0.0;
      }
      if (initObj.hasOwnProperty('global_offset_z')) {
        this.global_offset_z = initObj.global_offset_z
      }
      else {
        this.global_offset_z = 0.0;
      }
      if (initObj.hasOwnProperty('collision_object')) {
        this.collision_object = initObj.collision_object
      }
      else {
        this.collision_object = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [global_offset_x]
    bufferOffset = _serializer.float64(obj.global_offset_x, buffer, bufferOffset);
    // Serialize message field [global_offset_y]
    bufferOffset = _serializer.float64(obj.global_offset_y, buffer, bufferOffset);
    // Serialize message field [global_offset_z]
    bufferOffset = _serializer.float64(obj.global_offset_z, buffer, bufferOffset);
    // Serialize message field [collision_object]
    // Serialize the length for message field [collision_object]
    bufferOffset = _serializer.uint32(obj.collision_object.length, buffer, bufferOffset);
    obj.collision_object.forEach((val) => {
      bufferOffset = ObjectStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionData
    let len;
    let data = new CollisionData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_offset_x]
    data.global_offset_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_offset_y]
    data.global_offset_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_offset_z]
    data.global_offset_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [collision_object]
    // Deserialize array length for message field [collision_object]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.collision_object = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.collision_object[i] = ObjectStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.collision_object.forEach((val) => {
      length += ObjectStatus.getMessageSize(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/CollisionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f56c53bee30cea28ebfdf412c3c25678';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 global_offset_x
    float64 global_offset_y
    float64 global_offset_z
    
    ObjectStatus[] collision_object
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
    const resolved = new CollisionData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.global_offset_x !== undefined) {
      resolved.global_offset_x = msg.global_offset_x;
    }
    else {
      resolved.global_offset_x = 0.0
    }

    if (msg.global_offset_y !== undefined) {
      resolved.global_offset_y = msg.global_offset_y;
    }
    else {
      resolved.global_offset_y = 0.0
    }

    if (msg.global_offset_z !== undefined) {
      resolved.global_offset_z = msg.global_offset_z;
    }
    else {
      resolved.global_offset_z = 0.0
    }

    if (msg.collision_object !== undefined) {
      resolved.collision_object = new Array(msg.collision_object.length);
      for (let i = 0; i < resolved.collision_object.length; ++i) {
        resolved.collision_object[i] = ObjectStatus.Resolve(msg.collision_object[i]);
      }
    }
    else {
      resolved.collision_object = []
    }

    return resolved;
    }
};

module.exports = CollisionData;
