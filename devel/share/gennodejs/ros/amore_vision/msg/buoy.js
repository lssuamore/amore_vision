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

//-----------------------------------------------------------

class buoy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centroid = null;
      this.color = null;
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type buoy
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centroid, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type buoy
    let len;
    let data = new buoy(null);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color.length;
    length += object.label.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/buoy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '205d7f01bdec538ed3caf910fa5c88f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new buoy(null);
    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Point32.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Point32()
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    return resolved;
    }
};

module.exports = buoy;
