// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NpcGhostInfo = require('./NpcGhostInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NpcGhostCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.npc_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('npc_list')) {
        this.npc_list = initObj.npc_list
      }
      else {
        this.npc_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NpcGhostCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [npc_list]
    // Serialize the length for message field [npc_list]
    bufferOffset = _serializer.uint32(obj.npc_list.length, buffer, bufferOffset);
    obj.npc_list.forEach((val) => {
      bufferOffset = NpcGhostInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NpcGhostCmd
    let len;
    let data = new NpcGhostCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [npc_list]
    // Deserialize array length for message field [npc_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.npc_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.npc_list[i] = NpcGhostInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.npc_list.forEach((val) => {
      length += NpcGhostInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/NpcGhostCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f46c55a2e9ac85bf40936cf393bdb14d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    NpcGhostInfo[] npc_list
    
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
    MSG: morai_msgs/NpcGhostInfo
    int32 unique_id
    string name
    
    geometry_msgs/Vector3 position
    geometry_msgs/Vector3 rpy
    
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
    const resolved = new NpcGhostCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.npc_list !== undefined) {
      resolved.npc_list = new Array(msg.npc_list.length);
      for (let i = 0; i < resolved.npc_list.length; ++i) {
        resolved.npc_list[i] = NpcGhostInfo.Resolve(msg.npc_list[i]);
      }
    }
    else {
      resolved.npc_list = []
    }

    return resolved;
    }
};

module.exports = NpcGhostCmd;
