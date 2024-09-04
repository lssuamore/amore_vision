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

class ang_mag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ang = null;
      this.mag = null;
    }
    else {
      if (initObj.hasOwnProperty('ang')) {
        this.ang = initObj.ang
      }
      else {
        this.ang = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ang_mag
    // Serialize message field [ang]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.ang, buffer, bufferOffset);
    // Serialize message field [mag]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.mag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ang_mag
    let len;
    let data = new ang_mag(null);
    // Deserialize message field [ang]
    data.ang = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [mag]
    data.mag = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/ang_mag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2bc60f9ba55d7f3e348a4f6da89e008';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 ang
    std_msgs/Float32 mag
    
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
    const resolved = new ang_mag(null);
    if (msg.ang !== undefined) {
      resolved.ang = std_msgs.msg.Float32.Resolve(msg.ang)
    }
    else {
      resolved.ang = new std_msgs.msg.Float32()
    }

    if (msg.mag !== undefined) {
      resolved.mag = std_msgs.msg.Float32.Resolve(msg.mag)
    }
    else {
      resolved.mag = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = ang_mag;
