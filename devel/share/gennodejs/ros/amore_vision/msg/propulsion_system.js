// Auto-generated. Do not edit!

// (in-package amore_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class propulsion_system {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goal_position = null;
      this.goal_psi = null;
      this.usv_position = null;
      this.usv_psi = null;
      this.usv_latitude = null;
      this.usv_longitude = null;
      this.e_xy_allowed = null;
      this.e_psi_allowed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('goal_psi')) {
        this.goal_psi = initObj.goal_psi
      }
      else {
        this.goal_psi = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('usv_position')) {
        this.usv_position = initObj.usv_position
      }
      else {
        this.usv_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('usv_psi')) {
        this.usv_psi = initObj.usv_psi
      }
      else {
        this.usv_psi = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('usv_latitude')) {
        this.usv_latitude = initObj.usv_latitude
      }
      else {
        this.usv_latitude = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('usv_longitude')) {
        this.usv_longitude = initObj.usv_longitude
      }
      else {
        this.usv_longitude = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('e_xy_allowed')) {
        this.e_xy_allowed = initObj.e_xy_allowed
      }
      else {
        this.e_xy_allowed = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('e_psi_allowed')) {
        this.e_psi_allowed = initObj.e_psi_allowed
      }
      else {
        this.e_psi_allowed = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type propulsion_system
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [goal_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [goal_psi]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.goal_psi, buffer, bufferOffset);
    // Serialize message field [usv_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.usv_position, buffer, bufferOffset);
    // Serialize message field [usv_psi]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.usv_psi, buffer, bufferOffset);
    // Serialize message field [usv_latitude]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.usv_latitude, buffer, bufferOffset);
    // Serialize message field [usv_longitude]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.usv_longitude, buffer, bufferOffset);
    // Serialize message field [e_xy_allowed]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.e_xy_allowed, buffer, bufferOffset);
    // Serialize message field [e_psi_allowed]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.e_psi_allowed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type propulsion_system
    let len;
    let data = new propulsion_system(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_position]
    data.goal_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_psi]
    data.goal_psi = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [usv_position]
    data.usv_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [usv_psi]
    data.usv_psi = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [usv_latitude]
    data.usv_latitude = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [usv_longitude]
    data.usv_longitude = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [e_xy_allowed]
    data.e_xy_allowed = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [e_psi_allowed]
    data.e_psi_allowed = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/propulsion_system';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71d621936073a6985aace9a419610593';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Point goal_position
    std_msgs/Float64 goal_psi
    geometry_msgs/Point usv_position
    std_msgs/Float64 usv_psi
    std_msgs/Float64 usv_latitude
    std_msgs/Float64 usv_longitude
    std_msgs/Float64 e_xy_allowed
    std_msgs/Float64 e_psi_allowed
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new propulsion_system(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.goal_position !== undefined) {
      resolved.goal_position = geometry_msgs.msg.Point.Resolve(msg.goal_position)
    }
    else {
      resolved.goal_position = new geometry_msgs.msg.Point()
    }

    if (msg.goal_psi !== undefined) {
      resolved.goal_psi = std_msgs.msg.Float64.Resolve(msg.goal_psi)
    }
    else {
      resolved.goal_psi = new std_msgs.msg.Float64()
    }

    if (msg.usv_position !== undefined) {
      resolved.usv_position = geometry_msgs.msg.Point.Resolve(msg.usv_position)
    }
    else {
      resolved.usv_position = new geometry_msgs.msg.Point()
    }

    if (msg.usv_psi !== undefined) {
      resolved.usv_psi = std_msgs.msg.Float64.Resolve(msg.usv_psi)
    }
    else {
      resolved.usv_psi = new std_msgs.msg.Float64()
    }

    if (msg.usv_latitude !== undefined) {
      resolved.usv_latitude = std_msgs.msg.Float64.Resolve(msg.usv_latitude)
    }
    else {
      resolved.usv_latitude = new std_msgs.msg.Float64()
    }

    if (msg.usv_longitude !== undefined) {
      resolved.usv_longitude = std_msgs.msg.Float64.Resolve(msg.usv_longitude)
    }
    else {
      resolved.usv_longitude = new std_msgs.msg.Float64()
    }

    if (msg.e_xy_allowed !== undefined) {
      resolved.e_xy_allowed = std_msgs.msg.Float64.Resolve(msg.e_xy_allowed)
    }
    else {
      resolved.e_xy_allowed = new std_msgs.msg.Float64()
    }

    if (msg.e_psi_allowed !== undefined) {
      resolved.e_psi_allowed = std_msgs.msg.Float64.Resolve(msg.e_psi_allowed)
    }
    else {
      resolved.e_psi_allowed = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = propulsion_system;
