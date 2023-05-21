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

class GoalPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bus = null;
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
      this.joint5 = null;
      this.joint6 = null;
    }
    else {
      if (initObj.hasOwnProperty('bus')) {
        this.bus = initObj.bus
      }
      else {
        this.bus = 0;
      }
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = 0.0;
      }
      if (initObj.hasOwnProperty('joint5')) {
        this.joint5 = initObj.joint5
      }
      else {
        this.joint5 = 0.0;
      }
      if (initObj.hasOwnProperty('joint6')) {
        this.joint6 = initObj.joint6
      }
      else {
        this.joint6 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalPoint
    // Serialize message field [bus]
    bufferOffset = _serializer.int8(obj.bus, buffer, bufferOffset);
    // Serialize message field [joint1]
    bufferOffset = _serializer.float32(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float32(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = _serializer.float32(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = _serializer.float32(obj.joint4, buffer, bufferOffset);
    // Serialize message field [joint5]
    bufferOffset = _serializer.float32(obj.joint5, buffer, bufferOffset);
    // Serialize message field [joint6]
    bufferOffset = _serializer.float32(obj.joint6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalPoint
    let len;
    let data = new GoalPoint(null);
    // Deserialize message field [bus]
    data.bus = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint5]
    data.joint5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint6]
    data.joint6 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aubo_msgs/GoalPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4f50b6b5ea74aab23aa569e10ad3edc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 bus
    float32 joint1
    float32 joint2
    float32 joint3
    float32 joint4
    float32 joint5
    float32 joint6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalPoint(null);
    if (msg.bus !== undefined) {
      resolved.bus = msg.bus;
    }
    else {
      resolved.bus = 0
    }

    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = msg.joint3;
    }
    else {
      resolved.joint3 = 0.0
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = msg.joint4;
    }
    else {
      resolved.joint4 = 0.0
    }

    if (msg.joint5 !== undefined) {
      resolved.joint5 = msg.joint5;
    }
    else {
      resolved.joint5 = 0.0
    }

    if (msg.joint6 !== undefined) {
      resolved.joint6 = msg.joint6;
    }
    else {
      resolved.joint6 = 0.0
    }

    return resolved;
    }
};

module.exports = GoalPoint;
