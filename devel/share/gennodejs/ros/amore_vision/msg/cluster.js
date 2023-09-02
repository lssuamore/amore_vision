// Auto-generated. Do not edit!

// (in-package amore_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let depth_points = require('./depth_points.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class cluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.raw_cluster = null;
      this.num_points = null;
      this.centroid = null;
      this.label = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('raw_cluster')) {
        this.raw_cluster = initObj.raw_cluster
      }
      else {
        this.raw_cluster = [];
      }
      if (initObj.hasOwnProperty('num_points')) {
        this.num_points = initObj.num_points
      }
      else {
        this.num_points = 0;
      }
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cluster
    // Serialize message field [raw_cluster]
    // Serialize the length for message field [raw_cluster]
    bufferOffset = _serializer.uint32(obj.raw_cluster.length, buffer, bufferOffset);
    obj.raw_cluster.forEach((val) => {
      bufferOffset = depth_points.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [num_points]
    bufferOffset = _serializer.int32(obj.num_points, buffer, bufferOffset);
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.centroid, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = std_msgs.msg.String.serialize(obj.label, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cluster
    let len;
    let data = new cluster(null);
    // Deserialize message field [raw_cluster]
    // Deserialize array length for message field [raw_cluster]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.raw_cluster = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.raw_cluster[i] = depth_points.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [num_points]
    data.num_points = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.raw_cluster.length;
    length += std_msgs.msg.String.getMessageSize(object.label);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/cluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa742a7a0d63a1e1274fe5ece59d103c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    depth_points[] raw_cluster
    int32 num_points
    geometry_msgs/Point32 centroid
    std_msgs/String label
    float32 distance
    ================================================================================
    MSG: amore_vision/depth_points
    float32[4] labeled_point
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
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cluster(null);
    if (msg.raw_cluster !== undefined) {
      resolved.raw_cluster = new Array(msg.raw_cluster.length);
      for (let i = 0; i < resolved.raw_cluster.length; ++i) {
        resolved.raw_cluster[i] = depth_points.Resolve(msg.raw_cluster[i]);
      }
    }
    else {
      resolved.raw_cluster = []
    }

    if (msg.num_points !== undefined) {
      resolved.num_points = msg.num_points;
    }
    else {
      resolved.num_points = 0
    }

    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Point32.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Point32()
    }

    if (msg.label !== undefined) {
      resolved.label = std_msgs.msg.String.Resolve(msg.label)
    }
    else {
      resolved.label = new std_msgs.msg.String()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = cluster;
