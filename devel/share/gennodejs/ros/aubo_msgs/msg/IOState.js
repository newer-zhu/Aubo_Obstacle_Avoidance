// Auto-generated. Do not edit!

// (in-package aubo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Digital = require('./Digital.js');
let Analog = require('./Analog.js');

//-----------------------------------------------------------

class IOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.digital_in_states = null;
      this.digital_out_states = null;
      this.analog_in_states = null;
      this.analog_out_states = null;
      this.tool_io_states = null;
      this.tool_ai_states = null;
      this.safety_in_states = null;
      this.safety_out_states = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = '';
      }
      if (initObj.hasOwnProperty('digital_in_states')) {
        this.digital_in_states = initObj.digital_in_states
      }
      else {
        this.digital_in_states = [];
      }
      if (initObj.hasOwnProperty('digital_out_states')) {
        this.digital_out_states = initObj.digital_out_states
      }
      else {
        this.digital_out_states = [];
      }
      if (initObj.hasOwnProperty('analog_in_states')) {
        this.analog_in_states = initObj.analog_in_states
      }
      else {
        this.analog_in_states = [];
      }
      if (initObj.hasOwnProperty('analog_out_states')) {
        this.analog_out_states = initObj.analog_out_states
      }
      else {
        this.analog_out_states = [];
      }
      if (initObj.hasOwnProperty('tool_io_states')) {
        this.tool_io_states = initObj.tool_io_states
      }
      else {
        this.tool_io_states = [];
      }
      if (initObj.hasOwnProperty('tool_ai_states')) {
        this.tool_ai_states = initObj.tool_ai_states
      }
      else {
        this.tool_ai_states = [];
      }
      if (initObj.hasOwnProperty('safety_in_states')) {
        this.safety_in_states = initObj.safety_in_states
      }
      else {
        this.safety_in_states = [];
      }
      if (initObj.hasOwnProperty('safety_out_states')) {
        this.safety_out_states = initObj.safety_out_states
      }
      else {
        this.safety_out_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOState
    // Serialize message field [stamp]
    bufferOffset = _serializer.string(obj.stamp, buffer, bufferOffset);
    // Serialize message field [digital_in_states]
    // Serialize the length for message field [digital_in_states]
    bufferOffset = _serializer.uint32(obj.digital_in_states.length, buffer, bufferOffset);
    obj.digital_in_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [digital_out_states]
    // Serialize the length for message field [digital_out_states]
    bufferOffset = _serializer.uint32(obj.digital_out_states.length, buffer, bufferOffset);
    obj.digital_out_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_in_states]
    // Serialize the length for message field [analog_in_states]
    bufferOffset = _serializer.uint32(obj.analog_in_states.length, buffer, bufferOffset);
    obj.analog_in_states.forEach((val) => {
      bufferOffset = Analog.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_out_states]
    // Serialize the length for message field [analog_out_states]
    bufferOffset = _serializer.uint32(obj.analog_out_states.length, buffer, bufferOffset);
    obj.analog_out_states.forEach((val) => {
      bufferOffset = Analog.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tool_io_states]
    // Serialize the length for message field [tool_io_states]
    bufferOffset = _serializer.uint32(obj.tool_io_states.length, buffer, bufferOffset);
    obj.tool_io_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tool_ai_states]
    // Serialize the length for message field [tool_ai_states]
    bufferOffset = _serializer.uint32(obj.tool_ai_states.length, buffer, bufferOffset);
    obj.tool_ai_states.forEach((val) => {
      bufferOffset = Analog.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [safety_in_states]
    // Serialize the length for message field [safety_in_states]
    bufferOffset = _serializer.uint32(obj.safety_in_states.length, buffer, bufferOffset);
    obj.safety_in_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [safety_out_states]
    // Serialize the length for message field [safety_out_states]
    bufferOffset = _serializer.uint32(obj.safety_out_states.length, buffer, bufferOffset);
    obj.safety_out_states.forEach((val) => {
      bufferOffset = Digital.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOState
    let len;
    let data = new IOState(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [digital_in_states]
    // Deserialize array length for message field [digital_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_in_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [digital_out_states]
    // Deserialize array length for message field [digital_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.digital_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.digital_out_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_in_states]
    // Deserialize array length for message field [analog_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_in_states[i] = Analog.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_out_states]
    // Deserialize array length for message field [analog_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_out_states[i] = Analog.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tool_io_states]
    // Deserialize array length for message field [tool_io_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tool_io_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tool_io_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tool_ai_states]
    // Deserialize array length for message field [tool_ai_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tool_ai_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tool_ai_states[i] = Analog.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [safety_in_states]
    // Deserialize array length for message field [safety_in_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.safety_in_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.safety_in_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [safety_out_states]
    // Deserialize array length for message field [safety_out_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.safety_out_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.safety_out_states[i] = Digital.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.stamp.length;
    length += 3 * object.digital_in_states.length;
    length += 3 * object.digital_out_states.length;
    length += 5 * object.analog_in_states.length;
    length += 5 * object.analog_out_states.length;
    length += 3 * object.tool_io_states.length;
    length += 5 * object.tool_ai_states.length;
    length += 3 * object.safety_in_states.length;
    length += 3 * object.safety_out_states.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aubo_msgs/IOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ec6dbb17bd90dfffb00b6e735866ab5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string stamp 
    Digital[] digital_in_states
    Digital[] digital_out_states
    Analog[] analog_in_states
    Analog[] analog_out_states
    Digital[] tool_io_states
    Analog[] tool_ai_states
    Digital[] safety_in_states
    Digital[] safety_out_states
    
    ================================================================================
    MSG: aubo_msgs/Digital
    uint8 pin
    bool flag
    bool state
    
    ================================================================================
    MSG: aubo_msgs/Analog
    uint8 pin
    float32 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = ''
    }

    if (msg.digital_in_states !== undefined) {
      resolved.digital_in_states = new Array(msg.digital_in_states.length);
      for (let i = 0; i < resolved.digital_in_states.length; ++i) {
        resolved.digital_in_states[i] = Digital.Resolve(msg.digital_in_states[i]);
      }
    }
    else {
      resolved.digital_in_states = []
    }

    if (msg.digital_out_states !== undefined) {
      resolved.digital_out_states = new Array(msg.digital_out_states.length);
      for (let i = 0; i < resolved.digital_out_states.length; ++i) {
        resolved.digital_out_states[i] = Digital.Resolve(msg.digital_out_states[i]);
      }
    }
    else {
      resolved.digital_out_states = []
    }

    if (msg.analog_in_states !== undefined) {
      resolved.analog_in_states = new Array(msg.analog_in_states.length);
      for (let i = 0; i < resolved.analog_in_states.length; ++i) {
        resolved.analog_in_states[i] = Analog.Resolve(msg.analog_in_states[i]);
      }
    }
    else {
      resolved.analog_in_states = []
    }

    if (msg.analog_out_states !== undefined) {
      resolved.analog_out_states = new Array(msg.analog_out_states.length);
      for (let i = 0; i < resolved.analog_out_states.length; ++i) {
        resolved.analog_out_states[i] = Analog.Resolve(msg.analog_out_states[i]);
      }
    }
    else {
      resolved.analog_out_states = []
    }

    if (msg.tool_io_states !== undefined) {
      resolved.tool_io_states = new Array(msg.tool_io_states.length);
      for (let i = 0; i < resolved.tool_io_states.length; ++i) {
        resolved.tool_io_states[i] = Digital.Resolve(msg.tool_io_states[i]);
      }
    }
    else {
      resolved.tool_io_states = []
    }

    if (msg.tool_ai_states !== undefined) {
      resolved.tool_ai_states = new Array(msg.tool_ai_states.length);
      for (let i = 0; i < resolved.tool_ai_states.length; ++i) {
        resolved.tool_ai_states[i] = Analog.Resolve(msg.tool_ai_states[i]);
      }
    }
    else {
      resolved.tool_ai_states = []
    }

    if (msg.safety_in_states !== undefined) {
      resolved.safety_in_states = new Array(msg.safety_in_states.length);
      for (let i = 0; i < resolved.safety_in_states.length; ++i) {
        resolved.safety_in_states[i] = Digital.Resolve(msg.safety_in_states[i]);
      }
    }
    else {
      resolved.safety_in_states = []
    }

    if (msg.safety_out_states !== undefined) {
      resolved.safety_out_states = new Array(msg.safety_out_states.length);
      for (let i = 0; i < resolved.safety_out_states.length; ++i) {
        resolved.safety_out_states[i] = Digital.Resolve(msg.safety_out_states[i]);
      }
    }
    else {
      resolved.safety_out_states = []
    }

    return resolved;
    }
};

module.exports = IOState;
