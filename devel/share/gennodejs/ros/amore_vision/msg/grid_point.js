// Auto-generated. Do not edit!

// (in-package amore_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class grid_point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.status = null;
      this.percent = null;
      this.min_x = null;
      this.min_y = null;
      this.max_x = null;
      this.max_y = null;
      this.grid_size = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('percent')) {
        this.percent = initObj.percent
      }
      else {
        this.percent = 0;
      }
      if (initObj.hasOwnProperty('min_x')) {
        this.min_x = initObj.min_x
      }
      else {
        this.min_x = 0;
      }
      if (initObj.hasOwnProperty('min_y')) {
        this.min_y = initObj.min_y
      }
      else {
        this.min_y = 0;
      }
      if (initObj.hasOwnProperty('max_x')) {
        this.max_x = initObj.max_x
      }
      else {
        this.max_x = 0;
      }
      if (initObj.hasOwnProperty('max_y')) {
        this.max_y = initObj.max_y
      }
      else {
        this.max_y = 0;
      }
      if (initObj.hasOwnProperty('grid_size')) {
        this.grid_size = initObj.grid_size
      }
      else {
        this.grid_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type grid_point
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [percent]
    bufferOffset = _serializer.int8(obj.percent, buffer, bufferOffset);
    // Serialize message field [min_x]
    bufferOffset = _serializer.int8(obj.min_x, buffer, bufferOffset);
    // Serialize message field [min_y]
    bufferOffset = _serializer.int8(obj.min_y, buffer, bufferOffset);
    // Serialize message field [max_x]
    bufferOffset = _serializer.int8(obj.max_x, buffer, bufferOffset);
    // Serialize message field [max_y]
    bufferOffset = _serializer.int8(obj.max_y, buffer, bufferOffset);
    // Serialize message field [grid_size]
    bufferOffset = _serializer.float32(obj.grid_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type grid_point
    let len;
    let data = new grid_point(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [percent]
    data.percent = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [min_x]
    data.min_x = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [min_y]
    data.min_y = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [max_x]
    data.max_x = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [max_y]
    data.max_y = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [grid_size]
    data.grid_size = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/grid_point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '435092f9725ac07bcd4486688f70bed6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x 
    float32 y
    int8 status
    int8 percent
    int8 min_x 
    int8 min_y
    int8 max_x 
    int8 max_y
    float32 grid_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new grid_point(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.percent !== undefined) {
      resolved.percent = msg.percent;
    }
    else {
      resolved.percent = 0
    }

    if (msg.min_x !== undefined) {
      resolved.min_x = msg.min_x;
    }
    else {
      resolved.min_x = 0
    }

    if (msg.min_y !== undefined) {
      resolved.min_y = msg.min_y;
    }
    else {
      resolved.min_y = 0
    }

    if (msg.max_x !== undefined) {
      resolved.max_x = msg.max_x;
    }
    else {
      resolved.max_x = 0
    }

    if (msg.max_y !== undefined) {
      resolved.max_y = msg.max_y;
    }
    else {
      resolved.max_y = 0
    }

    if (msg.grid_size !== undefined) {
      resolved.grid_size = msg.grid_size;
    }
    else {
      resolved.grid_size = 0.0
    }

    return resolved;
    }
};

module.exports = grid_point;
