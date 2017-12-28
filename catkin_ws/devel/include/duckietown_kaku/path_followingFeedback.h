// Generated by gencpp from file duckietown_kaku/path_followingFeedback.msg
// DO NOT EDIT!


#ifndef DUCKIETOWN_KAKU_MESSAGE_PATH_FOLLOWINGFEEDBACK_H
#define DUCKIETOWN_KAKU_MESSAGE_PATH_FOLLOWINGFEEDBACK_H


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
struct path_followingFeedback_
{
  typedef path_followingFeedback_<ContainerAllocator> Type;

  path_followingFeedback_()
    : waypoint_index(0)  {
    }
  path_followingFeedback_(const ContainerAllocator& _alloc)
    : waypoint_index(0)  {
    }



   typedef uint32_t _waypoint_index_type;
  _waypoint_index_type waypoint_index;




  typedef boost::shared_ptr< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct path_followingFeedback_

typedef ::duckietown_kaku::path_followingFeedback_<std::allocator<void> > path_followingFeedback;

typedef boost::shared_ptr< ::duckietown_kaku::path_followingFeedback > path_followingFeedbackPtr;
typedef boost::shared_ptr< ::duckietown_kaku::path_followingFeedback const> path_followingFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5c1cf10c0f9fbb21a09c9f5f1d826929";
  }

  static const char* value(const ::duckietown_kaku::path_followingFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5c1cf10c0f9fbb21ULL;
  static const uint64_t static_value2 = 0xa09c9f5f1d826929ULL;
};

template<class ContainerAllocator>
struct DataType< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "duckietown_kaku/path_followingFeedback";
  }

  static const char* value(const ::duckietown_kaku::path_followingFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define a feedback message\n\
uint32 waypoint_index\n\
";
  }

  static const char* value(const ::duckietown_kaku::path_followingFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waypoint_index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct path_followingFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::duckietown_kaku::path_followingFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::duckietown_kaku::path_followingFeedback_<ContainerAllocator>& v)
  {
    s << indent << "waypoint_index: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.waypoint_index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUCKIETOWN_KAKU_MESSAGE_PATH_FOLLOWINGFEEDBACK_H
