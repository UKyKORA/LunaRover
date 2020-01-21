// Auto-generated. Do not edit!

// (in-package rover_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DigMotorSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.max_current = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('max_current')) {
        this.max_current = initObj.max_current
      }
      else {
        this.max_current = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigMotorSetting
    // Serialize message field [speed]
    bufferOffset = _serializer.int32(obj.speed, buffer, bufferOffset);
    // Serialize message field [max_current]
    bufferOffset = _serializer.float32(obj.max_current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigMotorSetting
    let len;
    let data = new DigMotorSetting(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_current]
    data.max_current = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_msgs/DigMotorSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a59919c66a0b26d5009855b4eeaf211';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 speed # dig speed
    float32 max_current # max current we want the arm to draw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigMotorSetting(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.max_current !== undefined) {
      resolved.max_current = msg.max_current;
    }
    else {
      resolved.max_current = 0.0
    }

    return resolved;
    }
};

module.exports = DigMotorSetting;
