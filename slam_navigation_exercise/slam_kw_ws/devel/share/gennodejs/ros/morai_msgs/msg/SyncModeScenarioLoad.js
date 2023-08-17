// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SyncModeScenarioLoad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.file_name = null;
      this.load_network_connection_data = null;
      this.delete_all = null;
      this.load_ego_vehicle_data = null;
      this.load_surrounding_vehicle_data = null;
      this.load_pedestrian_data = null;
      this.load_obstacle_data = null;
      this.set_pause = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
      if (initObj.hasOwnProperty('load_network_connection_data')) {
        this.load_network_connection_data = initObj.load_network_connection_data
      }
      else {
        this.load_network_connection_data = false;
      }
      if (initObj.hasOwnProperty('delete_all')) {
        this.delete_all = initObj.delete_all
      }
      else {
        this.delete_all = false;
      }
      if (initObj.hasOwnProperty('load_ego_vehicle_data')) {
        this.load_ego_vehicle_data = initObj.load_ego_vehicle_data
      }
      else {
        this.load_ego_vehicle_data = false;
      }
      if (initObj.hasOwnProperty('load_surrounding_vehicle_data')) {
        this.load_surrounding_vehicle_data = initObj.load_surrounding_vehicle_data
      }
      else {
        this.load_surrounding_vehicle_data = false;
      }
      if (initObj.hasOwnProperty('load_pedestrian_data')) {
        this.load_pedestrian_data = initObj.load_pedestrian_data
      }
      else {
        this.load_pedestrian_data = false;
      }
      if (initObj.hasOwnProperty('load_obstacle_data')) {
        this.load_obstacle_data = initObj.load_obstacle_data
      }
      else {
        this.load_obstacle_data = false;
      }
      if (initObj.hasOwnProperty('set_pause')) {
        this.set_pause = initObj.set_pause
      }
      else {
        this.set_pause = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncModeScenarioLoad
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    // Serialize message field [load_network_connection_data]
    bufferOffset = _serializer.bool(obj.load_network_connection_data, buffer, bufferOffset);
    // Serialize message field [delete_all]
    bufferOffset = _serializer.bool(obj.delete_all, buffer, bufferOffset);
    // Serialize message field [load_ego_vehicle_data]
    bufferOffset = _serializer.bool(obj.load_ego_vehicle_data, buffer, bufferOffset);
    // Serialize message field [load_surrounding_vehicle_data]
    bufferOffset = _serializer.bool(obj.load_surrounding_vehicle_data, buffer, bufferOffset);
    // Serialize message field [load_pedestrian_data]
    bufferOffset = _serializer.bool(obj.load_pedestrian_data, buffer, bufferOffset);
    // Serialize message field [load_obstacle_data]
    bufferOffset = _serializer.bool(obj.load_obstacle_data, buffer, bufferOffset);
    // Serialize message field [set_pause]
    bufferOffset = _serializer.bool(obj.set_pause, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncModeScenarioLoad
    let len;
    let data = new SyncModeScenarioLoad(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [load_network_connection_data]
    data.load_network_connection_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [delete_all]
    data.delete_all = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [load_ego_vehicle_data]
    data.load_ego_vehicle_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [load_surrounding_vehicle_data]
    data.load_surrounding_vehicle_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [load_pedestrian_data]
    data.load_pedestrian_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [load_obstacle_data]
    data.load_obstacle_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_pause]
    data.set_pause = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.file_name);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SyncModeScenarioLoad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18d7884b2197b3f6a512fde8a7dedc57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 frame
    
    string file_name
    bool load_network_connection_data
    bool delete_all
    bool load_ego_vehicle_data
    bool load_surrounding_vehicle_data
    bool load_pedestrian_data
    bool load_obstacle_data
    bool set_pause
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncModeScenarioLoad(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    if (msg.load_network_connection_data !== undefined) {
      resolved.load_network_connection_data = msg.load_network_connection_data;
    }
    else {
      resolved.load_network_connection_data = false
    }

    if (msg.delete_all !== undefined) {
      resolved.delete_all = msg.delete_all;
    }
    else {
      resolved.delete_all = false
    }

    if (msg.load_ego_vehicle_data !== undefined) {
      resolved.load_ego_vehicle_data = msg.load_ego_vehicle_data;
    }
    else {
      resolved.load_ego_vehicle_data = false
    }

    if (msg.load_surrounding_vehicle_data !== undefined) {
      resolved.load_surrounding_vehicle_data = msg.load_surrounding_vehicle_data;
    }
    else {
      resolved.load_surrounding_vehicle_data = false
    }

    if (msg.load_pedestrian_data !== undefined) {
      resolved.load_pedestrian_data = msg.load_pedestrian_data;
    }
    else {
      resolved.load_pedestrian_data = false
    }

    if (msg.load_obstacle_data !== undefined) {
      resolved.load_obstacle_data = msg.load_obstacle_data;
    }
    else {
      resolved.load_obstacle_data = false
    }

    if (msg.set_pause !== undefined) {
      resolved.set_pause = msg.set_pause;
    }
    else {
      resolved.set_pause = false
    }

    return resolved;
    }
};

module.exports = SyncModeScenarioLoad;
