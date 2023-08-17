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

class ObjectStatusExtended {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unique_id = null;
      this.type = null;
      this.name = null;
      this.heading = null;
      this.velocity = null;
      this.acceleration = null;
      this.size = null;
      this.position = null;
      this.orientation = null;
      this.turn_signal = null;
      this.global_path_info = null;
      this.lane_departure = null;
      this.distance_left_lane = null;
      this.distance_right_lane = null;
      this.object_yaw_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('unique_id')) {
        this.unique_id = initObj.unique_id
      }
      else {
        this.unique_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('turn_signal')) {
        this.turn_signal = initObj.turn_signal
      }
      else {
        this.turn_signal = 0;
      }
      if (initObj.hasOwnProperty('global_path_info')) {
        this.global_path_info = initObj.global_path_info
      }
      else {
        this.global_path_info = [];
      }
      if (initObj.hasOwnProperty('lane_departure')) {
        this.lane_departure = initObj.lane_departure
      }
      else {
        this.lane_departure = 0;
      }
      if (initObj.hasOwnProperty('distance_left_lane')) {
        this.distance_left_lane = initObj.distance_left_lane
      }
      else {
        this.distance_left_lane = 0.0;
      }
      if (initObj.hasOwnProperty('distance_right_lane')) {
        this.distance_right_lane = initObj.distance_right_lane
      }
      else {
        this.distance_right_lane = 0.0;
      }
      if (initObj.hasOwnProperty('object_yaw_rate')) {
        this.object_yaw_rate = initObj.object_yaw_rate
      }
      else {
        this.object_yaw_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectStatusExtended
    // Serialize message field [unique_id]
    bufferOffset = _serializer.int32(obj.unique_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [turn_signal]
    bufferOffset = _serializer.int32(obj.turn_signal, buffer, bufferOffset);
    // Serialize message field [global_path_info]
    bufferOffset = _arraySerializer.string(obj.global_path_info, buffer, bufferOffset, null);
    // Serialize message field [lane_departure]
    bufferOffset = _serializer.int32(obj.lane_departure, buffer, bufferOffset);
    // Serialize message field [distance_left_lane]
    bufferOffset = _serializer.float32(obj.distance_left_lane, buffer, bufferOffset);
    // Serialize message field [distance_right_lane]
    bufferOffset = _serializer.float32(obj.distance_right_lane, buffer, bufferOffset);
    // Serialize message field [object_yaw_rate]
    bufferOffset = _serializer.float32(obj.object_yaw_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectStatusExtended
    let len;
    let data = new ObjectStatusExtended(null);
    // Deserialize message field [unique_id]
    data.unique_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_signal]
    data.turn_signal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [global_path_info]
    data.global_path_info = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [lane_departure]
    data.lane_departure = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_left_lane]
    data.distance_left_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_right_lane]
    data.distance_right_lane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [object_yaw_rate]
    data.object_yaw_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    object.global_path_info.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 172;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ObjectStatusExtended';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd017861db3d88ed9ce76f9879817437c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 unique_id
    int32 type
    string name
    float64 heading
    
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 size
    geometry_msgs/Vector3 position
    
    geometry_msgs/Quaternion orientation
    int32 turn_signal
    string[] global_path_info
    int32 lane_departure
    float32 distance_left_lane
    float32 distance_right_lane
    float32 object_yaw_rate
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectStatusExtended(null);
    if (msg.unique_id !== undefined) {
      resolved.unique_id = msg.unique_id;
    }
    else {
      resolved.unique_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.size !== undefined) {
      resolved.size = geometry_msgs.msg.Vector3.Resolve(msg.size)
    }
    else {
      resolved.size = new geometry_msgs.msg.Vector3()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.turn_signal !== undefined) {
      resolved.turn_signal = msg.turn_signal;
    }
    else {
      resolved.turn_signal = 0
    }

    if (msg.global_path_info !== undefined) {
      resolved.global_path_info = msg.global_path_info;
    }
    else {
      resolved.global_path_info = []
    }

    if (msg.lane_departure !== undefined) {
      resolved.lane_departure = msg.lane_departure;
    }
    else {
      resolved.lane_departure = 0
    }

    if (msg.distance_left_lane !== undefined) {
      resolved.distance_left_lane = msg.distance_left_lane;
    }
    else {
      resolved.distance_left_lane = 0.0
    }

    if (msg.distance_right_lane !== undefined) {
      resolved.distance_right_lane = msg.distance_right_lane;
    }
    else {
      resolved.distance_right_lane = 0.0
    }

    if (msg.object_yaw_rate !== undefined) {
      resolved.object_yaw_rate = msg.object_yaw_rate;
    }
    else {
      resolved.object_yaw_rate = 0.0
    }

    return resolved;
    }
};

module.exports = ObjectStatusExtended;
