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
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ReplayInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ego_acc = null;
      this.ego_brake = null;
      this.ego_steer = null;
      this.orientation = null;
      this.linear_acceleration = null;
      this.angular_velocity = null;
      this.num_of_npcs = null;
      this.num_of_pedestrian = null;
      this.num_of_obstacle = null;
      this.npc_list = null;
      this.pedestrian_list = null;
      this.obstacle_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ego_acc')) {
        this.ego_acc = initObj.ego_acc
      }
      else {
        this.ego_acc = 0.0;
      }
      if (initObj.hasOwnProperty('ego_brake')) {
        this.ego_brake = initObj.ego_brake
      }
      else {
        this.ego_brake = 0.0;
      }
      if (initObj.hasOwnProperty('ego_steer')) {
        this.ego_steer = initObj.ego_steer
      }
      else {
        this.ego_steer = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('num_of_npcs')) {
        this.num_of_npcs = initObj.num_of_npcs
      }
      else {
        this.num_of_npcs = 0;
      }
      if (initObj.hasOwnProperty('num_of_pedestrian')) {
        this.num_of_pedestrian = initObj.num_of_pedestrian
      }
      else {
        this.num_of_pedestrian = 0;
      }
      if (initObj.hasOwnProperty('num_of_obstacle')) {
        this.num_of_obstacle = initObj.num_of_obstacle
      }
      else {
        this.num_of_obstacle = 0;
      }
      if (initObj.hasOwnProperty('npc_list')) {
        this.npc_list = initObj.npc_list
      }
      else {
        this.npc_list = [];
      }
      if (initObj.hasOwnProperty('pedestrian_list')) {
        this.pedestrian_list = initObj.pedestrian_list
      }
      else {
        this.pedestrian_list = [];
      }
      if (initObj.hasOwnProperty('obstacle_list')) {
        this.obstacle_list = initObj.obstacle_list
      }
      else {
        this.obstacle_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReplayInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ego_acc]
    bufferOffset = _serializer.float64(obj.ego_acc, buffer, bufferOffset);
    // Serialize message field [ego_brake]
    bufferOffset = _serializer.float64(obj.ego_brake, buffer, bufferOffset);
    // Serialize message field [ego_steer]
    bufferOffset = _serializer.float64(obj.ego_steer, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [num_of_npcs]
    bufferOffset = _serializer.int32(obj.num_of_npcs, buffer, bufferOffset);
    // Serialize message field [num_of_pedestrian]
    bufferOffset = _serializer.int32(obj.num_of_pedestrian, buffer, bufferOffset);
    // Serialize message field [num_of_obstacle]
    bufferOffset = _serializer.int32(obj.num_of_obstacle, buffer, bufferOffset);
    // Serialize message field [npc_list]
    // Serialize the length for message field [npc_list]
    bufferOffset = _serializer.uint32(obj.npc_list.length, buffer, bufferOffset);
    obj.npc_list.forEach((val) => {
      bufferOffset = ObjectStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pedestrian_list]
    // Serialize the length for message field [pedestrian_list]
    bufferOffset = _serializer.uint32(obj.pedestrian_list.length, buffer, bufferOffset);
    obj.pedestrian_list.forEach((val) => {
      bufferOffset = ObjectStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacle_list]
    // Serialize the length for message field [obstacle_list]
    bufferOffset = _serializer.uint32(obj.obstacle_list.length, buffer, bufferOffset);
    obj.obstacle_list.forEach((val) => {
      bufferOffset = ObjectStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReplayInfo
    let len;
    let data = new ReplayInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ego_acc]
    data.ego_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_brake]
    data.ego_brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_steer]
    data.ego_steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_of_npcs]
    data.num_of_npcs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_of_pedestrian]
    data.num_of_pedestrian = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_of_obstacle]
    data.num_of_obstacle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [npc_list]
    // Deserialize array length for message field [npc_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.npc_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.npc_list[i] = ObjectStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pedestrian_list]
    // Deserialize array length for message field [pedestrian_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pedestrian_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pedestrian_list[i] = ObjectStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle_list]
    // Deserialize array length for message field [obstacle_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_list[i] = ObjectStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.npc_list.forEach((val) => {
      length += ObjectStatus.getMessageSize(val);
    });
    object.pedestrian_list.forEach((val) => {
      length += ObjectStatus.getMessageSize(val);
    });
    object.obstacle_list.forEach((val) => {
      length += ObjectStatus.getMessageSize(val);
    });
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ReplayInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79280912719be2d1374fda7d2d0d3d7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 ego_acc
    float64 ego_brake
    float64 ego_steer
    
    geometry_msgs/Quaternion orientation
    
    geometry_msgs/Vector3 linear_acceleration
    
    geometry_msgs/Vector3 angular_velocity
    
    int32 num_of_npcs
    int32 num_of_pedestrian
    int32 num_of_obstacle
    
    ObjectStatus[] npc_list 
    
    ObjectStatus[] pedestrian_list
    
    ObjectStatus[] obstacle_list 
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReplayInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ego_acc !== undefined) {
      resolved.ego_acc = msg.ego_acc;
    }
    else {
      resolved.ego_acc = 0.0
    }

    if (msg.ego_brake !== undefined) {
      resolved.ego_brake = msg.ego_brake;
    }
    else {
      resolved.ego_brake = 0.0
    }

    if (msg.ego_steer !== undefined) {
      resolved.ego_steer = msg.ego_steer;
    }
    else {
      resolved.ego_steer = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.num_of_npcs !== undefined) {
      resolved.num_of_npcs = msg.num_of_npcs;
    }
    else {
      resolved.num_of_npcs = 0
    }

    if (msg.num_of_pedestrian !== undefined) {
      resolved.num_of_pedestrian = msg.num_of_pedestrian;
    }
    else {
      resolved.num_of_pedestrian = 0
    }

    if (msg.num_of_obstacle !== undefined) {
      resolved.num_of_obstacle = msg.num_of_obstacle;
    }
    else {
      resolved.num_of_obstacle = 0
    }

    if (msg.npc_list !== undefined) {
      resolved.npc_list = new Array(msg.npc_list.length);
      for (let i = 0; i < resolved.npc_list.length; ++i) {
        resolved.npc_list[i] = ObjectStatus.Resolve(msg.npc_list[i]);
      }
    }
    else {
      resolved.npc_list = []
    }

    if (msg.pedestrian_list !== undefined) {
      resolved.pedestrian_list = new Array(msg.pedestrian_list.length);
      for (let i = 0; i < resolved.pedestrian_list.length; ++i) {
        resolved.pedestrian_list[i] = ObjectStatus.Resolve(msg.pedestrian_list[i]);
      }
    }
    else {
      resolved.pedestrian_list = []
    }

    if (msg.obstacle_list !== undefined) {
      resolved.obstacle_list = new Array(msg.obstacle_list.length);
      for (let i = 0; i < resolved.obstacle_list.length; ++i) {
        resolved.obstacle_list[i] = ObjectStatus.Resolve(msg.obstacle_list[i]);
      }
    }
    else {
      resolved.obstacle_list = []
    }

    return resolved;
    }
};

module.exports = ReplayInfo;
