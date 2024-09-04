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

class vision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_avoid = null;
      this.x_avoid = null;
      this.y_avoid = null;
      this.quantity_avoid = null;
      this.object_classify = null;
      this.x_classify = null;
      this.y_classify = null;
      this.quantity_classify = null;
    }
    else {
      if (initObj.hasOwnProperty('object_avoid')) {
        this.object_avoid = initObj.object_avoid
      }
      else {
        this.object_avoid = '';
      }
      if (initObj.hasOwnProperty('x_avoid')) {
        this.x_avoid = initObj.x_avoid
      }
      else {
        this.x_avoid = [];
      }
      if (initObj.hasOwnProperty('y_avoid')) {
        this.y_avoid = initObj.y_avoid
      }
      else {
        this.y_avoid = [];
      }
      if (initObj.hasOwnProperty('quantity_avoid')) {
        this.quantity_avoid = initObj.quantity_avoid
      }
      else {
        this.quantity_avoid = 0;
      }
      if (initObj.hasOwnProperty('object_classify')) {
        this.object_classify = initObj.object_classify
      }
      else {
        this.object_classify = [];
      }
      if (initObj.hasOwnProperty('x_classify')) {
        this.x_classify = initObj.x_classify
      }
      else {
        this.x_classify = [];
      }
      if (initObj.hasOwnProperty('y_classify')) {
        this.y_classify = initObj.y_classify
      }
      else {
        this.y_classify = [];
      }
      if (initObj.hasOwnProperty('quantity_classify')) {
        this.quantity_classify = initObj.quantity_classify
      }
      else {
        this.quantity_classify = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vision
    // Serialize message field [object_avoid]
    bufferOffset = _serializer.string(obj.object_avoid, buffer, bufferOffset);
    // Serialize message field [x_avoid]
    bufferOffset = _arraySerializer.float32(obj.x_avoid, buffer, bufferOffset, null);
    // Serialize message field [y_avoid]
    bufferOffset = _arraySerializer.float32(obj.y_avoid, buffer, bufferOffset, null);
    // Serialize message field [quantity_avoid]
    bufferOffset = _serializer.int32(obj.quantity_avoid, buffer, bufferOffset);
    // Serialize message field [object_classify]
    bufferOffset = _arraySerializer.string(obj.object_classify, buffer, bufferOffset, null);
    // Serialize message field [x_classify]
    bufferOffset = _arraySerializer.float32(obj.x_classify, buffer, bufferOffset, null);
    // Serialize message field [y_classify]
    bufferOffset = _arraySerializer.float32(obj.y_classify, buffer, bufferOffset, null);
    // Serialize message field [quantity_classify]
    bufferOffset = _serializer.int32(obj.quantity_classify, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vision
    let len;
    let data = new vision(null);
    // Deserialize message field [object_avoid]
    data.object_avoid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x_avoid]
    data.x_avoid = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_avoid]
    data.y_avoid = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [quantity_avoid]
    data.quantity_avoid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_classify]
    data.object_classify = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [x_classify]
    data.x_classify = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_classify]
    data.y_classify = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [quantity_classify]
    data.quantity_classify = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_avoid.length;
    length += 4 * object.x_avoid.length;
    length += 4 * object.y_avoid.length;
    object.object_classify.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.x_classify.length;
    length += 4 * object.y_classify.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/vision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a1cd59d7d13b9f729c9d5dfe01965f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_avoid
    float32[] x_avoid
    float32[] y_avoid
    int32 quantity_avoid
    string[] object_classify
    float32[] x_classify
    float32[] y_classify
    int32 quantity_classify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vision(null);
    if (msg.object_avoid !== undefined) {
      resolved.object_avoid = msg.object_avoid;
    }
    else {
      resolved.object_avoid = ''
    }

    if (msg.x_avoid !== undefined) {
      resolved.x_avoid = msg.x_avoid;
    }
    else {
      resolved.x_avoid = []
    }

    if (msg.y_avoid !== undefined) {
      resolved.y_avoid = msg.y_avoid;
    }
    else {
      resolved.y_avoid = []
    }

    if (msg.quantity_avoid !== undefined) {
      resolved.quantity_avoid = msg.quantity_avoid;
    }
    else {
      resolved.quantity_avoid = 0
    }

    if (msg.object_classify !== undefined) {
      resolved.object_classify = msg.object_classify;
    }
    else {
      resolved.object_classify = []
    }

    if (msg.x_classify !== undefined) {
      resolved.x_classify = msg.x_classify;
    }
    else {
      resolved.x_classify = []
    }

    if (msg.y_classify !== undefined) {
      resolved.y_classify = msg.y_classify;
    }
    else {
      resolved.y_classify = []
    }

    if (msg.quantity_classify !== undefined) {
      resolved.quantity_classify = msg.quantity_classify;
    }
    else {
      resolved.quantity_classify = 0
    }

    return resolved;
    }
};

module.exports = vision;
