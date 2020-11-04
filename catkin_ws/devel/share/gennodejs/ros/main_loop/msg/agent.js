// Auto-generated. Do not edit!

// (in-package main_loop.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class agent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.emergency = null;
      this.my_pos_x = null;
      this.my_pos_y = null;
      this.my_degree = null;
      this.enemy1_x = null;
      this.enemy1_y = null;
      this.enemy2_x = null;
      this.enemy2_y = null;
      this.ally_x = null;
      this.ally_y = null;
      this.servo_state = null;
      this.stepper = null;
      this.hand = null;
      this.status = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = [];
      }
      if (initObj.hasOwnProperty('my_pos_x')) {
        this.my_pos_x = initObj.my_pos_x
      }
      else {
        this.my_pos_x = 0;
      }
      if (initObj.hasOwnProperty('my_pos_y')) {
        this.my_pos_y = initObj.my_pos_y
      }
      else {
        this.my_pos_y = 0;
      }
      if (initObj.hasOwnProperty('my_degree')) {
        this.my_degree = initObj.my_degree
      }
      else {
        this.my_degree = 0;
      }
      if (initObj.hasOwnProperty('enemy1_x')) {
        this.enemy1_x = initObj.enemy1_x
      }
      else {
        this.enemy1_x = 0;
      }
      if (initObj.hasOwnProperty('enemy1_y')) {
        this.enemy1_y = initObj.enemy1_y
      }
      else {
        this.enemy1_y = 0;
      }
      if (initObj.hasOwnProperty('enemy2_x')) {
        this.enemy2_x = initObj.enemy2_x
      }
      else {
        this.enemy2_x = 0;
      }
      if (initObj.hasOwnProperty('enemy2_y')) {
        this.enemy2_y = initObj.enemy2_y
      }
      else {
        this.enemy2_y = 0;
      }
      if (initObj.hasOwnProperty('ally_x')) {
        this.ally_x = initObj.ally_x
      }
      else {
        this.ally_x = 0;
      }
      if (initObj.hasOwnProperty('ally_y')) {
        this.ally_y = initObj.ally_y
      }
      else {
        this.ally_y = 0;
      }
      if (initObj.hasOwnProperty('servo_state')) {
        this.servo_state = initObj.servo_state
      }
      else {
        this.servo_state = 0;
      }
      if (initObj.hasOwnProperty('stepper')) {
        this.stepper = initObj.stepper
      }
      else {
        this.stepper = 0;
      }
      if (initObj.hasOwnProperty('hand')) {
        this.hand = initObj.hand
      }
      else {
        this.hand = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type agent
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _arraySerializer.bool(obj.emergency, buffer, bufferOffset, null);
    // Serialize message field [my_pos_x]
    bufferOffset = _serializer.int32(obj.my_pos_x, buffer, bufferOffset);
    // Serialize message field [my_pos_y]
    bufferOffset = _serializer.int32(obj.my_pos_y, buffer, bufferOffset);
    // Serialize message field [my_degree]
    bufferOffset = _serializer.int32(obj.my_degree, buffer, bufferOffset);
    // Serialize message field [enemy1_x]
    bufferOffset = _serializer.int32(obj.enemy1_x, buffer, bufferOffset);
    // Serialize message field [enemy1_y]
    bufferOffset = _serializer.int32(obj.enemy1_y, buffer, bufferOffset);
    // Serialize message field [enemy2_x]
    bufferOffset = _serializer.int32(obj.enemy2_x, buffer, bufferOffset);
    // Serialize message field [enemy2_y]
    bufferOffset = _serializer.int32(obj.enemy2_y, buffer, bufferOffset);
    // Serialize message field [ally_x]
    bufferOffset = _serializer.int32(obj.ally_x, buffer, bufferOffset);
    // Serialize message field [ally_y]
    bufferOffset = _serializer.int32(obj.ally_y, buffer, bufferOffset);
    // Serialize message field [servo_state]
    bufferOffset = _serializer.int32(obj.servo_state, buffer, bufferOffset);
    // Serialize message field [stepper]
    bufferOffset = _serializer.int32(obj.stepper, buffer, bufferOffset);
    // Serialize message field [hand]
    bufferOffset = _serializer.int32(obj.hand, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type agent
    let len;
    let data = new agent(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [my_pos_x]
    data.my_pos_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [my_pos_y]
    data.my_pos_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [my_degree]
    data.my_degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy1_x]
    data.enemy1_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy1_y]
    data.enemy1_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy2_x]
    data.enemy2_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enemy2_y]
    data.enemy2_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ally_x]
    data.ally_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ally_y]
    data.ally_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [servo_state]
    data.servo_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stepper]
    data.stepper = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hand]
    data.hand = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.emergency.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main_loop/agent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92681a13a8cbeccba49e2d6d6d4c723f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool[] emergency
    int32 my_pos_x
    int32 my_pos_y
    int32 my_degree
    int32 enemy1_x
    int32 enemy1_y 
    int32 enemy2_x
    int32 enemy2_y
    int32 ally_x
    int32 ally_y
    int32 servo_state
    int32 stepper
    int32 hand
    int32 status
    float32 time 
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new agent(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = []
    }

    if (msg.my_pos_x !== undefined) {
      resolved.my_pos_x = msg.my_pos_x;
    }
    else {
      resolved.my_pos_x = 0
    }

    if (msg.my_pos_y !== undefined) {
      resolved.my_pos_y = msg.my_pos_y;
    }
    else {
      resolved.my_pos_y = 0
    }

    if (msg.my_degree !== undefined) {
      resolved.my_degree = msg.my_degree;
    }
    else {
      resolved.my_degree = 0
    }

    if (msg.enemy1_x !== undefined) {
      resolved.enemy1_x = msg.enemy1_x;
    }
    else {
      resolved.enemy1_x = 0
    }

    if (msg.enemy1_y !== undefined) {
      resolved.enemy1_y = msg.enemy1_y;
    }
    else {
      resolved.enemy1_y = 0
    }

    if (msg.enemy2_x !== undefined) {
      resolved.enemy2_x = msg.enemy2_x;
    }
    else {
      resolved.enemy2_x = 0
    }

    if (msg.enemy2_y !== undefined) {
      resolved.enemy2_y = msg.enemy2_y;
    }
    else {
      resolved.enemy2_y = 0
    }

    if (msg.ally_x !== undefined) {
      resolved.ally_x = msg.ally_x;
    }
    else {
      resolved.ally_x = 0
    }

    if (msg.ally_y !== undefined) {
      resolved.ally_y = msg.ally_y;
    }
    else {
      resolved.ally_y = 0
    }

    if (msg.servo_state !== undefined) {
      resolved.servo_state = msg.servo_state;
    }
    else {
      resolved.servo_state = 0
    }

    if (msg.stepper !== undefined) {
      resolved.stepper = msg.stepper;
    }
    else {
      resolved.stepper = 0
    }

    if (msg.hand !== undefined) {
      resolved.hand = msg.hand;
    }
    else {
      resolved.hand = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = agent;
