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

class control_efforts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t_x = null;
      this.t_x_P = null;
      this.t_x_I = null;
      this.t_x_D = null;
      this.t_y = null;
      this.t_y_P = null;
      this.t_y_I = null;
      this.t_y_D = null;
      this.m_z = null;
      this.m_z_P = null;
      this.m_z_I = null;
      this.m_z_D = null;
    }
    else {
      if (initObj.hasOwnProperty('t_x')) {
        this.t_x = initObj.t_x
      }
      else {
        this.t_x = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_x_P')) {
        this.t_x_P = initObj.t_x_P
      }
      else {
        this.t_x_P = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_x_I')) {
        this.t_x_I = initObj.t_x_I
      }
      else {
        this.t_x_I = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_x_D')) {
        this.t_x_D = initObj.t_x_D
      }
      else {
        this.t_x_D = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_y')) {
        this.t_y = initObj.t_y
      }
      else {
        this.t_y = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_y_P')) {
        this.t_y_P = initObj.t_y_P
      }
      else {
        this.t_y_P = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_y_I')) {
        this.t_y_I = initObj.t_y_I
      }
      else {
        this.t_y_I = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('t_y_D')) {
        this.t_y_D = initObj.t_y_D
      }
      else {
        this.t_y_D = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('m_z')) {
        this.m_z = initObj.m_z
      }
      else {
        this.m_z = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('m_z_P')) {
        this.m_z_P = initObj.m_z_P
      }
      else {
        this.m_z_P = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('m_z_I')) {
        this.m_z_I = initObj.m_z_I
      }
      else {
        this.m_z_I = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('m_z_D')) {
        this.m_z_D = initObj.m_z_D
      }
      else {
        this.m_z_D = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_efforts
    // Serialize message field [t_x]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_x, buffer, bufferOffset);
    // Serialize message field [t_x_P]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_x_P, buffer, bufferOffset);
    // Serialize message field [t_x_I]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_x_I, buffer, bufferOffset);
    // Serialize message field [t_x_D]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_x_D, buffer, bufferOffset);
    // Serialize message field [t_y]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_y, buffer, bufferOffset);
    // Serialize message field [t_y_P]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_y_P, buffer, bufferOffset);
    // Serialize message field [t_y_I]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_y_I, buffer, bufferOffset);
    // Serialize message field [t_y_D]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.t_y_D, buffer, bufferOffset);
    // Serialize message field [m_z]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.m_z, buffer, bufferOffset);
    // Serialize message field [m_z_P]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.m_z_P, buffer, bufferOffset);
    // Serialize message field [m_z_I]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.m_z_I, buffer, bufferOffset);
    // Serialize message field [m_z_D]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.m_z_D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_efforts
    let len;
    let data = new control_efforts(null);
    // Deserialize message field [t_x]
    data.t_x = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_x_P]
    data.t_x_P = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_x_I]
    data.t_x_I = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_x_D]
    data.t_x_D = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_y]
    data.t_y = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_y_P]
    data.t_y_P = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_y_I]
    data.t_y_I = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_y_D]
    data.t_y_D = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [m_z]
    data.m_z = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [m_z_P]
    data.m_z_P = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [m_z_I]
    data.m_z_I = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [m_z_D]
    data.m_z_D = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/control_efforts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '925fe81e944ee95c22ed3341a39c98ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 t_x
    	std_msgs/Float32 t_x_P
    	std_msgs/Float32 t_x_I
    	std_msgs/Float32 t_x_D
    std_msgs/Float32 t_y
    	std_msgs/Float32 t_y_P
    	std_msgs/Float32 t_y_I
    	std_msgs/Float32 t_y_D
    std_msgs/Float32 m_z
    	std_msgs/Float32 m_z_P
    	std_msgs/Float32 m_z_I
    	std_msgs/Float32 m_z_D
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_efforts(null);
    if (msg.t_x !== undefined) {
      resolved.t_x = std_msgs.msg.Float32.Resolve(msg.t_x)
    }
    else {
      resolved.t_x = new std_msgs.msg.Float32()
    }

    if (msg.t_x_P !== undefined) {
      resolved.t_x_P = std_msgs.msg.Float32.Resolve(msg.t_x_P)
    }
    else {
      resolved.t_x_P = new std_msgs.msg.Float32()
    }

    if (msg.t_x_I !== undefined) {
      resolved.t_x_I = std_msgs.msg.Float32.Resolve(msg.t_x_I)
    }
    else {
      resolved.t_x_I = new std_msgs.msg.Float32()
    }

    if (msg.t_x_D !== undefined) {
      resolved.t_x_D = std_msgs.msg.Float32.Resolve(msg.t_x_D)
    }
    else {
      resolved.t_x_D = new std_msgs.msg.Float32()
    }

    if (msg.t_y !== undefined) {
      resolved.t_y = std_msgs.msg.Float32.Resolve(msg.t_y)
    }
    else {
      resolved.t_y = new std_msgs.msg.Float32()
    }

    if (msg.t_y_P !== undefined) {
      resolved.t_y_P = std_msgs.msg.Float32.Resolve(msg.t_y_P)
    }
    else {
      resolved.t_y_P = new std_msgs.msg.Float32()
    }

    if (msg.t_y_I !== undefined) {
      resolved.t_y_I = std_msgs.msg.Float32.Resolve(msg.t_y_I)
    }
    else {
      resolved.t_y_I = new std_msgs.msg.Float32()
    }

    if (msg.t_y_D !== undefined) {
      resolved.t_y_D = std_msgs.msg.Float32.Resolve(msg.t_y_D)
    }
    else {
      resolved.t_y_D = new std_msgs.msg.Float32()
    }

    if (msg.m_z !== undefined) {
      resolved.m_z = std_msgs.msg.Float32.Resolve(msg.m_z)
    }
    else {
      resolved.m_z = new std_msgs.msg.Float32()
    }

    if (msg.m_z_P !== undefined) {
      resolved.m_z_P = std_msgs.msg.Float32.Resolve(msg.m_z_P)
    }
    else {
      resolved.m_z_P = new std_msgs.msg.Float32()
    }

    if (msg.m_z_I !== undefined) {
      resolved.m_z_I = std_msgs.msg.Float32.Resolve(msg.m_z_I)
    }
    else {
      resolved.m_z_I = new std_msgs.msg.Float32()
    }

    if (msg.m_z_D !== undefined) {
      resolved.m_z_D = std_msgs.msg.Float32.Resolve(msg.m_z_D)
    }
    else {
      resolved.m_z_D = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = control_efforts;
