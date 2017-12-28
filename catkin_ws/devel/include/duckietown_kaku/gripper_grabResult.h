// Generated by gencpp from file duckietown_kaku/gripper_grabResult.msg
// DO NOT EDIT!


#ifndef DUCKIETOWN_KAKU_MESSAGE_GRIPPER_GRABRESULT_H
#define DUCKIETOWN_KAKU_MESSAGE_GRIPPER_GRABRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace duckietown_kaku
{
template <class ContainerAllocator>
struct gripper_grabResult_
{
  typedef gripper_grabResult_<ContainerAllocator> Type;

  gripper_grabResult_()
    : state(false)  {
    }
  gripper_grabResult_(const ContainerAllocator& _alloc)
    : state(false)  {
    }



   typedef uint8_t _state_type;
  _state_type state;




  typedef boost::shared_ptr< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> const> ConstPtr;

}; // struct gripper_grabResult_

typedef ::duckietown_kaku::gripper_grabResult_<std::allocator<void> > gripper_grabResult;

typedef boost::shared_ptr< ::duckietown_kaku::gripper_grabResult > gripper_grabResultPtr;
typedef boost::shared_ptr< ::duckietown_kaku::gripper_grabResult const> gripper_grabResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace duckietown_kaku

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'duckietown_kaku': ['/home/ubuntu/duckietown/catkin_ws/devel/share/duckietown_kaku/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "001fde3cab9e313a150416ff09c08ee4";
  }

  static const char* value(const ::duckietown_kaku::gripper_grabResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x001fde3cab9e313aULL;
  static const uint64_t static_value2 = 0x150416ff09c08ee4ULL;
};

template<class ContainerAllocator>
struct DataType< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "duckietown_kaku/gripper_grabResult";
  }

  static const char* value(const ::duckietown_kaku::gripper_grabResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the result\n\
bool state\n\
";
  }

  static const char* value(const ::duckietown_kaku::gripper_grabResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct gripper_grabResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::duckietown_kaku::gripper_grabResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::duckietown_kaku::gripper_grabResult_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUCKIETOWN_KAKU_MESSAGE_GRIPPER_GRABRESULT_H
