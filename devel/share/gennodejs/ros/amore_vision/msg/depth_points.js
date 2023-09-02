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

class depth_points {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.labeled_point = null;
    }
    else {
      if (initObj.hasOwnProperty('labeled_point')) {
        this.labeled_point = initObj.labeled_point
      }
      else {
        this.labeled_point = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type depth_points
    // Check that the constant length array field [labeled_point] has the right length
    if (obj.labeled_point.length !== 4) {
      throw new Error('Unable to serialize array field labeled_point - length must be 4')
    }
    // Serialize message field [labeled_point]
    bufferOffset = _arraySerializer.float32(obj.labeled_point, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type depth_points
    let len;
    let data = new depth_points(null);
    // Deserialize message field [labeled_point]
    data.labeled_point = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/depth_points';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '242571970d31da06fb7d6fd8a07d1e48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] labeled_point
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new depth_points(null);
    if (msg.labeled_point !== undefined) {
      resolved.labeled_point = msg.labeled_point;
    }
    else {
      resolved.labeled_point = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = depth_points;
