// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class EgoVehicleStatusExtended {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.unique_id = null;
      this.acceleration = null;
      this.position = null;
      this.velocity = null;
      this.heading = null;
      this.accel = null;
      this.brake = null;
      this.wheel_angle = null;
      this.wheel_angle_speed = null;
      this.FL_wheel_speed = null;
      this.FR_wheel_speed = null;
      this.RL_wheel_speed = null;
      this.RR_wheel_speed = null;
      this.yaw_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('unique_id')) {
        this.unique_id = initObj.unique_id
      }
      else {
        this.unique_id = 0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
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
      if (initObj.hasOwnProperty('wheel_angle')) {
        this.wheel_angle = initObj.wheel_angle
      }
      else {
        this.wheel_angle = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_angle_speed')) {
        this.wheel_angle_speed = initObj.wheel_angle_speed
      }
      else {
        this.wheel_angle_speed = 0.0;
      }
      if (initObj.hasOwnProperty('FL_wheel_speed')) {
        this.FL_wheel_speed = initObj.FL_wheel_speed
      }
      else {
        this.FL_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('FR_wheel_speed')) {
        this.FR_wheel_speed = initObj.FR_wheel_speed
      }
      else {
        this.FR_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('RL_wheel_speed')) {
        this.RL_wheel_speed = initObj.RL_wheel_speed
      }
      else {
        this.RL_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('RR_wheel_speed')) {
        this.RR_wheel_speed = initObj.RR_wheel_speed
      }
      else {
        this.RR_wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EgoVehicleStatusExtended
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [unique_id]
    bufferOffset = _serializer.int32(obj.unique_id, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = _serializer.float32(obj.accel, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float32(obj.brake, buffer, bufferOffset);
    // Serialize message field [wheel_angle]
    bufferOffset = _serializer.float32(obj.wheel_angle, buffer, bufferOffset);
    // Serialize message field [wheel_angle_speed]
    bufferOffset = _serializer.float32(obj.wheel_angle_speed, buffer, bufferOffset);
    // Serialize message field [FL_wheel_speed]
    bufferOffset = _serializer.float32(obj.FL_wheel_speed, buffer, bufferOffset);
    // Serialize message field [FR_wheel_speed]
    bufferOffset = _serializer.float32(obj.FR_wheel_speed, buffer, bufferOffset);
    // Serialize message field [RL_wheel_speed]
    bufferOffset = _serializer.float32(obj.RL_wheel_speed, buffer, bufferOffset);
    // Serialize message field [RR_wheel_speed]
    bufferOffset = _serializer.float32(obj.RR_wheel_speed, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float32(obj.yaw_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EgoVehicleStatusExtended
    let len;
    let data = new EgoVehicleStatusExtended(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [unique_id]
    data.unique_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_angle]
    data.wheel_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_angle_speed]
    data.wheel_angle_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [FL_wheel_speed]
    data.FL_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [FR_wheel_speed]
    data.FR_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RL_wheel_speed]
    data.RL_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RR_wheel_speed]
    data.RR_wheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/EgoVehicleStatusExtended';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29e0d7add02c73a8dd83ba3c46d6bb17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 unique_id
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 position
    geometry_msgs/Vector3 velocity
    
    float64 heading
    float32 accel
    float32 brake
    float32 wheel_angle
    
    float32 wheel_angle_speed
    float32 FL_wheel_speed
    float32 FR_wheel_speed
    float32 RL_wheel_speed
    float32 RR_wheel_speed
    float32 yaw_rate
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
    const resolved = new EgoVehicleStatusExtended(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.unique_id !== undefined) {
      resolved.unique_id = msg.unique_id;
    }
    else {
      resolved.unique_id = 0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
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

    if (msg.wheel_angle !== undefined) {
      resolved.wheel_angle = msg.wheel_angle;
    }
    else {
      resolved.wheel_angle = 0.0
    }

    if (msg.wheel_angle_speed !== undefined) {
      resolved.wheel_angle_speed = msg.wheel_angle_speed;
    }
    else {
      resolved.wheel_angle_speed = 0.0
    }

    if (msg.FL_wheel_speed !== undefined) {
      resolved.FL_wheel_speed = msg.FL_wheel_speed;
    }
    else {
      resolved.FL_wheel_speed = 0.0
    }

    if (msg.FR_wheel_speed !== undefined) {
      resolved.FR_wheel_speed = msg.FR_wheel_speed;
    }
    else {
      resolved.FR_wheel_speed = 0.0
    }

    if (msg.RL_wheel_speed !== undefined) {
      resolved.RL_wheel_speed = msg.RL_wheel_speed;
    }
    else {
      resolved.RL_wheel_speed = 0.0
    }

    if (msg.RR_wheel_speed !== undefined) {
      resolved.RR_wheel_speed = msg.RR_wheel_speed;
    }
    else {
      resolved.RR_wheel_speed = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    return resolved;
    }
};

module.exports = EgoVehicleStatusExtended;
