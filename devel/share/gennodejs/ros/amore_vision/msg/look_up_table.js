// Auto-generated. Do not edit!

// (in-package amore_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let buoy = require('./buoy.js');

//-----------------------------------------------------------

class look_up_table {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.labeled_buoy_list = null;
    }
    else {
      if (initObj.hasOwnProperty('labeled_buoy_list')) {
        this.labeled_buoy_list = initObj.labeled_buoy_list
      }
      else {
        this.labeled_buoy_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type look_up_table
    // Serialize message field [labeled_buoy_list]
    // Serialize the length for message field [labeled_buoy_list]
    bufferOffset = _serializer.uint32(obj.labeled_buoy_list.length, buffer, bufferOffset);
    obj.labeled_buoy_list.forEach((val) => {
      bufferOffset = buoy.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type look_up_table
    let len;
    let data = new look_up_table(null);
    // Deserialize message field [labeled_buoy_list]
    // Deserialize array length for message field [labeled_buoy_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.labeled_buoy_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.labeled_buoy_list[i] = buoy.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.labeled_buoy_list.forEach((val) => {
      length += buoy.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/look_up_table';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a566061cda1f744e70300cded2a4c97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    buoy[] labeled_buoy_list
    ================================================================================
    MSG: amore_vision/buoy
    geometry_msgs/Point32 centroid
    string color
    string label
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new look_up_table(null);
    if (msg.labeled_buoy_list !== undefined) {
      resolved.labeled_buoy_list = new Array(msg.labeled_buoy_list.length);
      for (let i = 0; i < resolved.labeled_buoy_list.length; ++i) {
        resolved.labeled_buoy_list[i] = buoy.Resolve(msg.labeled_buoy_list[i]);
      }
    }
    else {
      resolved.labeled_buoy_list = []
    }

    return resolved;
    }
};

module.exports = look_up_table;
