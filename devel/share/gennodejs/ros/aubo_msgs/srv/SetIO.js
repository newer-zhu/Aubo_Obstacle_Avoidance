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

class SetIORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fun = null;
      this.pin = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('fun')) {
        this.fun = initObj.fun
      }
      else {
        this.fun = 0;
      }
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIORequest
    // Serialize message field [fun]
    bufferOffset = _serializer.int8(obj.fun, buffer, bufferOffset);
    // Serialize message field [pin]
    bufferOffset = _serializer.int8(obj.pin, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.float32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIORequest
    let len;
    let data = new SetIORequest(null);
    // Deserialize message field [fun]
    data.fun = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pin]
    data.pin = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aubo_msgs/SetIORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90bfa84517e13b8c5bee48efbf6df45f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 FUN_SET_RobotBoardUserDO = 1
    int8 FUN_SET_RobotBoardUserAO = 2
    int8 FUN_SET_ToolDigitalIO = 3
    int8 FUN_SET_RobotToolAO = 4
    int8 FUN_SET_ToolPowerType = 5
    int8 fun
    int8 pin
    float32 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIORequest(null);
    if (msg.fun !== undefined) {
      resolved.fun = msg.fun;
    }
    else {
      resolved.fun = 0
    }

    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0.0
    }

    return resolved;
    }
};

// Constants for message
SetIORequest.Constants = {
  FUN_SET_ROBOTBOARDUSERDO: 1,
  FUN_SET_ROBOTBOARDUSERAO: 2,
  FUN_SET_TOOLDIGITALIO: 3,
  FUN_SET_ROBOTTOOLAO: 4,
  FUN_SET_TOOLPOWERTYPE: 5,
}

class SetIOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIOResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIOResponse
    let len;
    let data = new SetIOResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aubo_msgs/SetIOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIOResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetIORequest,
  Response: SetIOResponse,
  md5sum() { return '344aecce520e21c4db398a398eb12110'; },
  datatype() { return 'aubo_msgs/SetIO'; }
};
