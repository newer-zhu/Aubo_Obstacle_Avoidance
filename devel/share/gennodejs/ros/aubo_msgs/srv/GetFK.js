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

class GetFKRequest {
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
    // Serializes a message object of type GetFKRequest
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFKRequest
    let len;
    let data = new GetFKRequest(null);
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
    return 'aubo_msgs/GetFKRequest';
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
    const resolved = new GetFKRequest(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    return resolved;
    }
};

class GetFKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.ori = null;
    }
    else {
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
    // Serializes a message object of type GetFKResponse
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float32(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [ori]
    bufferOffset = _arraySerializer.float32(obj.ori, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFKResponse
    let len;
    let data = new GetFKResponse(null);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ori]
    data.ori = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos.length;
    length += 4 * object.ori.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aubo_msgs/GetFKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3654b8637ad1ff105c21ad630b0d51e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pos
    float32[] ori
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFKResponse(null);
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

module.exports = {
  Request: GetFKRequest,
  Response: GetFKResponse,
  md5sum() { return 'ce6ffdfba920b489febbc60ddc59a871'; },
  datatype() { return 'aubo_msgs/GetFK'; }
};
