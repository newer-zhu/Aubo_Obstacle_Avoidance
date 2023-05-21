// Auto-generated. Do not edit!

// (in-package aubo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ref_joint = null;
      this.pos = null;
      this.ori = null;
    }
    else {
      if (initObj.hasOwnProperty('ref_joint')) {
        this.ref_joint = initObj.ref_joint
      }
      else {
        this.ref_joint = [];
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('ori')) {
        this.ori = initObj.ori
      }
      else {
        this.ori = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKRequest
    // Serialize message field [ref_joint]
    bufferOffset = _arraySerializer.float32(obj.ref_joint, buffer, bufferOffset, null);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [ori]
    bufferOffset = _arraySerializer.float32(obj.ori, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKRequest
    let len;
    let data = new GetIKRequest(null);
    // Deserialize message field [ref_joint]
    data.ref_joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ori]
    data.ori = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ref_joint.length;
    length += 4 * object.pos.length;
    length += 4 * object.ori.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aubo_msgs/GetIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdded2a3ac2ee87cb2790fe996ec5a30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] ref_joint
    float32[] pos
    float32[] ori
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKRequest(null);
    if (msg.ref_joint !== undefined) {
      resolved.ref_joint = msg.ref_joint;
    }
    else {
      resolved.ref_joint = []
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.ori !== undefined) {
      resolved.ori = msg.ori;
    }
    else {
      resolved.ori = []
    }

    return resolved;
    }
};

class GetIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKResponse
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKResponse
    let len;
    let data = new GetIKResponse(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aubo_msgs/GetIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edecb4b6fff50f927a908742515e167a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKResponse(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIKRequest,
  Response: GetIKResponse,
  md5sum() { return 'bc7f0118878bed264062021158285cff'; },
  datatype() { return 'aubo_msgs/GetIK'; }
};
