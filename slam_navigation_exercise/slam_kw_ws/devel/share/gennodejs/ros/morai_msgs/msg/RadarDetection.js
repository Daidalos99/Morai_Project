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

class RadarDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detection_id = null;
      this.position = null;
      this.azimuth = null;
      this.rangerate = null;
      this.amplitude = null;
    }
    else {
      if (initObj.hasOwnProperty('detection_id')) {
        this.detection_id = initObj.detection_id
      }
      else {
        this.detection_id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('rangerate')) {
        this.rangerate = initObj.rangerate
      }
      else {
        this.rangerate = 0.0;
      }
      if (initObj.hasOwnProperty('amplitude')) {
        this.amplitude = initObj.amplitude
      }
      else {
        this.amplitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarDetection
    // Serialize message field [detection_id]
    bufferOffset = _serializer.uint16(obj.detection_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [rangerate]
    bufferOffset = _serializer.float32(obj.rangerate, buffer, bufferOffset);
    // Serialize message field [amplitude]
    bufferOffset = _serializer.float32(obj.amplitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarDetection
    let len;
    let data = new RadarDetection(null);
    // Deserialize message field [detection_id]
    data.detection_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rangerate]
    data.rangerate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [amplitude]
    data.amplitude = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/RadarDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a793982ef59c29909256d522d48cad28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message relates only to FMCW radar.  
    # All variables below are relative to the radar's frame of reference.
    # This message is not meant to be used alone but as part of a stamped or array message.
    
    # Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)
    
    uint16 detection_id                       # Index of each radar detection point
    geometry_msgs/Point position              # x, y, z position of each radar detection point
    
    float32 azimuth							  # azimuth angle of each radar detection point in Degree
    float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction
    float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new RadarDetection(null);
    if (msg.detection_id !== undefined) {
      resolved.detection_id = msg.detection_id;
    }
    else {
      resolved.detection_id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.rangerate !== undefined) {
      resolved.rangerate = msg.rangerate;
    }
    else {
      resolved.rangerate = 0.0
    }

    if (msg.amplitude !== undefined) {
      resolved.amplitude = msg.amplitude;
    }
    else {
      resolved.amplitude = 0.0
    }

    return resolved;
    }
};

module.exports = RadarDetection;
