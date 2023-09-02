// Auto-generated. Do not edit!

// (in-package amore_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.sim_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('sim_mode')) {
        this.sim_mode = initObj.sim_mode
      }
      else {
        this.sim_mode = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type state
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [sim_mode]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.sim_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type state
    let len;
    let data = new state(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [sim_mode]
    data.sim_mode = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c394a99f8c0696814238f350b4254a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/Int32 state
    std_msgs/Bool sim_mode
    
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
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new state(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = std_msgs.msg.Int32.Resolve(msg.state)
    }
    else {
      resolved.state = new std_msgs.msg.Int32()
    }

    if (msg.sim_mode !== undefined) {
      resolved.sim_mode = std_msgs.msg.Bool.Resolve(msg.sim_mode)
    }
    else {
      resolved.sim_mode = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = state;
