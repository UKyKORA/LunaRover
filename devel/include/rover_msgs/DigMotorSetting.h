// Generated by gencpp from file rover_msgs/DigMotorSetting.msg
// DO NOT EDIT!


#ifndef ROVER_MSGS_MESSAGE_DIGMOTORSETTING_H
#define ROVER_MSGS_MESSAGE_DIGMOTORSETTING_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rover_msgs
{
template <class ContainerAllocator>
struct DigMotorSetting_
{
  typedef DigMotorSetting_<ContainerAllocator> Type;

  DigMotorSetting_()
    : speed(0)
    , max_current(0.0)  {
    }
  DigMotorSetting_(const ContainerAllocator& _alloc)
    : speed(0)
    , max_current(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _speed_type;
  _speed_type speed;

   typedef float _max_current_type;
  _max_current_type max_current;





  typedef boost::shared_ptr< ::rover_msgs::DigMotorSetting_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover_msgs::DigMotorSetting_<ContainerAllocator> const> ConstPtr;

}; // struct DigMotorSetting_

typedef ::rover_msgs::DigMotorSetting_<std::allocator<void> > DigMotorSetting;

typedef boost::shared_ptr< ::rover_msgs::DigMotorSetting > DigMotorSettingPtr;
typedef boost::shared_ptr< ::rover_msgs::DigMotorSetting const> DigMotorSettingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover_msgs::DigMotorSetting_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rover_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/home/joshashley/ros_catkin_ws/install_isolated/share/std_msgs/cmake/../msg'], 'rover_msgs': ['/home/joshashley/Projects/LunaRover/src/rover_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover_msgs::DigMotorSetting_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_msgs::DigMotorSetting_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_msgs::DigMotorSetting_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a59919c66a0b26d5009855b4eeaf211";
  }

  static const char* value(const ::rover_msgs::DigMotorSetting_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a59919c66a0b26dULL;
  static const uint64_t static_value2 = 0x5009855b4eeaf211ULL;
};

template<class ContainerAllocator>
struct DataType< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover_msgs/DigMotorSetting";
  }

  static const char* value(const ::rover_msgs::DigMotorSetting_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 speed # dig speed\n"
"float32 max_current # max current we want the arm to draw\n"
;
  }

  static const char* value(const ::rover_msgs::DigMotorSetting_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
      stream.next(m.max_current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigMotorSetting_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover_msgs::DigMotorSetting_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover_msgs::DigMotorSetting_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speed);
    s << indent << "max_current: ";
    Printer<float>::stream(s, indent + "  ", v.max_current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_MSGS_MESSAGE_DIGMOTORSETTING_H
