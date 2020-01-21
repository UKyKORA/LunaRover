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

class DigArmSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_speed = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigArmSetting
    // Serialize message field [max_speed]
    bufferOffset = _serializer.int32(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigArmSetting
    let len;
    let data = new DigArmSetting(null);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_msgs/DigArmSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '000b6f5563447cd704349a21ac608512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 max_speed # max speed for the actuator arm
    int32 position # position we want it at
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigArmSetting(null);
    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    return resolved;
    }
};

module.exports = DigArmSetting;
