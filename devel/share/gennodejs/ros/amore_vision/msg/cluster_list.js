// Auto-generated. Do not edit!

// (in-package amore_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let cluster = require('./cluster.js');

//-----------------------------------------------------------

class cluster_list {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster_list = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster_list')) {
        this.cluster_list = initObj.cluster_list
      }
      else {
        this.cluster_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cluster_list
    // Serialize message field [cluster_list]
    // Serialize the length for message field [cluster_list]
    bufferOffset = _serializer.uint32(obj.cluster_list.length, buffer, bufferOffset);
    obj.cluster_list.forEach((val) => {
      bufferOffset = cluster.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cluster_list
    let len;
    let data = new cluster_list(null);
    // Deserialize message field [cluster_list]
    // Deserialize array length for message field [cluster_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster_list[i] = cluster.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.cluster_list.forEach((val) => {
      length += cluster.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'amore_vision/cluster_list';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c64c04dd922d096b96a3d3f178bc1aaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cluster[] cluster_list
    ================================================================================
    MSG: amore_vision/cluster
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
    const resolved = new cluster_list(null);
    if (msg.cluster_list !== undefined) {
      resolved.cluster_list = new Array(msg.cluster_list.length);
      for (let i = 0; i < resolved.cluster_list.length; ++i) {
        resolved.cluster_list[i] = cluster.Resolve(msg.cluster_list[i]);
      }
    }
    else {
      resolved.cluster_list = []
    }

    return resolved;
    }
};

module.exports = cluster_list;
