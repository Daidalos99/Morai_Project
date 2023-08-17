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

//-----------------------------------------------------------

class IntersectionControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.intersection_index = null;
      this.intersection_status = null;
      this.intersection_status_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('intersection_index')) {
        this.intersection_index = initObj.intersection_index
      }
      else {
        this.intersection_index = 0;
      }
      if (initObj.hasOwnProperty('intersection_status')) {
        this.intersection_status = initObj.intersection_status
      }
      else {
        this.intersection_status = 0;
      }
      if (initObj.hasOwnProperty('intersection_status_time')) {
        this.intersection_status_time = initObj.intersection_status_time
      }
      else {
        this.intersection_status_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntersectionControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [intersection_index]
    bufferOffset = _serializer.int32(obj.intersection_index, buffer, bufferOffset);
    // Serialize message field [intersection_status]
    bufferOffset = _serializer.int16(obj.intersection_status, buffer, bufferOffset);
    // Serialize message field [intersection_status_time]
    bufferOffset = _serializer.float32(obj.intersection_status_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionControl
    let len;
    let data = new IntersectionControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [intersection_index]
    data.intersection_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [intersection_status]
    data.intersection_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [intersection_status_time]
    data.intersection_status_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/IntersectionControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69acc500559cc08bdac17774946018e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 intersection_index
    int16 intersection_status
    float32 intersection_status_time
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntersectionControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.intersection_index !== undefined) {
      resolved.intersection_index = msg.intersection_index;
    }
    else {
      resolved.intersection_index = 0
    }

    if (msg.intersection_status !== undefined) {
      resolved.intersection_status = msg.intersection_status;
    }
    else {
      resolved.intersection_status = 0
    }

    if (msg.intersection_status_time !== undefined) {
      resolved.intersection_status_time = msg.intersection_status_time;
    }
    else {
      resolved.intersection_status_time = 0.0
    }

    return resolved;
    }
};

module.exports = IntersectionControl;
