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

class MapSpec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plane_coordinate_system = null;
      this.utm_num = null;
      this.utm_offset = null;
      this.ellipse = null;
      this.central_latitude = null;
      this.central_meridian = null;
      this.scale_factor = null;
      this.false_easting = null;
      this.false_northing = null;
    }
    else {
      if (initObj.hasOwnProperty('plane_coordinate_system')) {
        this.plane_coordinate_system = initObj.plane_coordinate_system
      }
      else {
        this.plane_coordinate_system = 0;
      }
      if (initObj.hasOwnProperty('utm_num')) {
        this.utm_num = initObj.utm_num
      }
      else {
        this.utm_num = 0;
      }
      if (initObj.hasOwnProperty('utm_offset')) {
        this.utm_offset = initObj.utm_offset
      }
      else {
        this.utm_offset = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ellipse')) {
        this.ellipse = initObj.ellipse
      }
      else {
        this.ellipse = '';
      }
      if (initObj.hasOwnProperty('central_latitude')) {
        this.central_latitude = initObj.central_latitude
      }
      else {
        this.central_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('central_meridian')) {
        this.central_meridian = initObj.central_meridian
      }
      else {
        this.central_meridian = 0.0;
      }
      if (initObj.hasOwnProperty('scale_factor')) {
        this.scale_factor = initObj.scale_factor
      }
      else {
        this.scale_factor = 0.0;
      }
      if (initObj.hasOwnProperty('false_easting')) {
        this.false_easting = initObj.false_easting
      }
      else {
        this.false_easting = 0.0;
      }
      if (initObj.hasOwnProperty('false_northing')) {
        this.false_northing = initObj.false_northing
      }
      else {
        this.false_northing = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapSpec
    // Serialize message field [plane_coordinate_system]
    bufferOffset = _serializer.int32(obj.plane_coordinate_system, buffer, bufferOffset);
    // Serialize message field [utm_num]
    bufferOffset = _serializer.int32(obj.utm_num, buffer, bufferOffset);
    // Serialize message field [utm_offset]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.utm_offset, buffer, bufferOffset);
    // Serialize message field [ellipse]
    bufferOffset = _serializer.string(obj.ellipse, buffer, bufferOffset);
    // Serialize message field [central_latitude]
    bufferOffset = _serializer.float64(obj.central_latitude, buffer, bufferOffset);
    // Serialize message field [central_meridian]
    bufferOffset = _serializer.float64(obj.central_meridian, buffer, bufferOffset);
    // Serialize message field [scale_factor]
    bufferOffset = _serializer.float64(obj.scale_factor, buffer, bufferOffset);
    // Serialize message field [false_easting]
    bufferOffset = _serializer.float64(obj.false_easting, buffer, bufferOffset);
    // Serialize message field [false_northing]
    bufferOffset = _serializer.float64(obj.false_northing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapSpec
    let len;
    let data = new MapSpec(null);
    // Deserialize message field [plane_coordinate_system]
    data.plane_coordinate_system = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [utm_num]
    data.utm_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [utm_offset]
    data.utm_offset = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ellipse]
    data.ellipse = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [central_latitude]
    data.central_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [central_meridian]
    data.central_meridian = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [scale_factor]
    data.scale_factor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [false_easting]
    data.false_easting = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [false_northing]
    data.false_northing = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ellipse);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MapSpec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff26999f16fc5ab8e3788072433240e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 plane_coordinate_system
    int32 utm_num
    
    geometry_msgs/Vector3 utm_offset
    
    string ellipse
    float64 central_latitude
    float64 central_meridian
    float64 scale_factor
    float64 false_easting
    float64 false_northing
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
    const resolved = new MapSpec(null);
    if (msg.plane_coordinate_system !== undefined) {
      resolved.plane_coordinate_system = msg.plane_coordinate_system;
    }
    else {
      resolved.plane_coordinate_system = 0
    }

    if (msg.utm_num !== undefined) {
      resolved.utm_num = msg.utm_num;
    }
    else {
      resolved.utm_num = 0
    }

    if (msg.utm_offset !== undefined) {
      resolved.utm_offset = geometry_msgs.msg.Vector3.Resolve(msg.utm_offset)
    }
    else {
      resolved.utm_offset = new geometry_msgs.msg.Vector3()
    }

    if (msg.ellipse !== undefined) {
      resolved.ellipse = msg.ellipse;
    }
    else {
      resolved.ellipse = ''
    }

    if (msg.central_latitude !== undefined) {
      resolved.central_latitude = msg.central_latitude;
    }
    else {
      resolved.central_latitude = 0.0
    }

    if (msg.central_meridian !== undefined) {
      resolved.central_meridian = msg.central_meridian;
    }
    else {
      resolved.central_meridian = 0.0
    }

    if (msg.scale_factor !== undefined) {
      resolved.scale_factor = msg.scale_factor;
    }
    else {
      resolved.scale_factor = 0.0
    }

    if (msg.false_easting !== undefined) {
      resolved.false_easting = msg.false_easting;
    }
    else {
      resolved.false_easting = 0.0
    }

    if (msg.false_northing !== undefined) {
      resolved.false_northing = msg.false_northing;
    }
    else {
      resolved.false_northing = 0.0
    }

    return resolved;
    }
};

module.exports = MapSpec;
