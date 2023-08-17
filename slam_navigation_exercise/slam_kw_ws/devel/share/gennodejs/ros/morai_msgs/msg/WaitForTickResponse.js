// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EgoVehicleStatus = require('./EgoVehicleStatus.js');

//-----------------------------------------------------------

class WaitForTickResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tick_status = null;
      this.pause_status = null;
      this.frame = null;
      this.vehicle_status = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('tick_status')) {
        this.tick_status = initObj.tick_status
      }
      else {
        this.tick_status = false;
      }
      if (initObj.hasOwnProperty('pause_status')) {
        this.pause_status = initObj.pause_status
      }
      else {
        this.pause_status = false;
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('vehicle_status')) {
        this.vehicle_status = initObj.vehicle_status
      }
      else {
        this.vehicle_status = new EgoVehicleStatus();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaitForTickResponse
    // Serialize message field [tick_status]
    bufferOffset = _serializer.bool(obj.tick_status, buffer, bufferOffset);
    // Serialize message field [pause_status]
    bufferOffset = _serializer.bool(obj.pause_status, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    // Serialize message field [vehicle_status]
    bufferOffset = EgoVehicleStatus.serialize(obj.vehicle_status, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaitForTickResponse
    let len;
    let data = new WaitForTickResponse(null);
    // Deserialize message field [tick_status]
    data.tick_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pause_status]
    data.pause_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [vehicle_status]
    data.vehicle_status = EgoVehicleStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EgoVehicleStatus.getMessageSize(object.vehicle_status);
    length += _getByteLength(object.time);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/WaitForTickResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c80ca1ddc5a285c8be87fef734111b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool tick_status
    bool pause_status
    uint64 frame
    
    EgoVehicleStatus vehicle_status
    string time
    
    ================================================================================
    MSG: morai_msgs/EgoVehicleStatus
    Header header
    int32 unique_id
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 position
    geometry_msgs/Vector3 velocity
    
    float64 heading
    float32 accel
    float32 brake
    float32 wheel_angle
    
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
    const resolved = new WaitForTickResponse(null);
    if (msg.tick_status !== undefined) {
      resolved.tick_status = msg.tick_status;
    }
    else {
      resolved.tick_status = false
    }

    if (msg.pause_status !== undefined) {
      resolved.pause_status = msg.pause_status;
    }
    else {
      resolved.pause_status = false
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.vehicle_status !== undefined) {
      resolved.vehicle_status = EgoVehicleStatus.Resolve(msg.vehicle_status)
    }
    else {
      resolved.vehicle_status = new EgoVehicleStatus()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    return resolved;
    }
};

module.exports = WaitForTickResponse;
