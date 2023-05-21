// Auto-generated. Do not edit!

// (in-package aubo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TraPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bus = null;
      this.num_of_trapoint = null;
      this.trapoints = null;
    }
    else {
      if (initObj.hasOwnProperty('bus')) {
        this.bus = initObj.bus
      }
      else {
        this.bus = 0;
      }
      if (initObj.hasOwnProperty('num_of_trapoint')) {
        this.num_of_trapoint = initObj.num_of_trapoint
      }
      else {
        this.num_of_trapoint = 0;
      }
      if (initObj.hasOwnProperty('trapoints')) {
        this.trapoints = initObj.trapoints
      }
      else {
        this.trapoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TraPoint
    // Serialize message field [bus]
    bufferOffset = _serializer.int8(obj.bus, buffer, bufferOffset);
    // Serialize message field [num_of_trapoint]
    bufferOffset = _serializer.int32(obj.num_of_trapoint, buffer, bufferOffset);
    // Serialize message field [trapoints]
    bufferOffset = _arraySerializer.float32(obj.trapoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TraPoint
    let len;
    let data = new TraPoint(null);
    // Deserialize message field [bus]
    data.bus = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [num_of_trapoint]
    data.num_of_trapoint = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trapoints]
    data.trapoints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.trapoints.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aubo_msgs/TraPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58b7060898c2855ab033e4f3ac0333d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 bus
    int32 num_of_trapoint
    float32[] trapoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TraPoint(null);
    if (msg.bus !== undefined) {
      resolved.bus = msg.bus;
    }
    else {
      resolved.bus = 0
    }

    if (msg.num_of_trapoint !== undefined) {
      resolved.num_of_trapoint = msg.num_of_trapoint;
    }
    else {
      resolved.num_of_trapoint = 0
    }

    if (msg.trapoints !== undefined) {
      resolved.trapoints = msg.trapoints;
    }
    else {
      resolved.trapoints = []
    }

    return resolved;
    }
};

module.exports = TraPoint;
