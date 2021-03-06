// Generated by gencpp from file ground_projection/EstimateHomographyResponse.msg
// DO NOT EDIT!


#ifndef GROUND_PROJECTION_MESSAGE_ESTIMATEHOMOGRAPHYRESPONSE_H
#define GROUND_PROJECTION_MESSAGE_ESTIMATEHOMOGRAPHYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ground_projection
{
template <class ContainerAllocator>
struct EstimateHomographyResponse_
{
  typedef EstimateHomographyResponse_<ContainerAllocator> Type;

  EstimateHomographyResponse_()
    : homography()  {
    }
  EstimateHomographyResponse_(const ContainerAllocator& _alloc)
    : homography(_alloc)  {
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _homography_type;
  _homography_type homography;




  typedef boost::shared_ptr< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EstimateHomographyResponse_

typedef ::ground_projection::EstimateHomographyResponse_<std::allocator<void> > EstimateHomographyResponse;

typedef boost::shared_ptr< ::ground_projection::EstimateHomographyResponse > EstimateHomographyResponsePtr;
typedef boost::shared_ptr< ::ground_projection::EstimateHomographyResponse const> EstimateHomographyResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ground_projection

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'duckietown_msgs': ['/home/ubuntu/duckietown/catkin_ws/src/duckietown_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5891e13cbfb0399924e8d5e7e53d283a";
  }

  static const char* value(const ::ground_projection::EstimateHomographyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5891e13cbfb03999ULL;
  static const uint64_t static_value2 = 0x24e8d5e7e53d283aULL;
};

template<class ContainerAllocator>
struct DataType< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ground_projection/EstimateHomographyResponse";
  }

  static const char* value(const ::ground_projection::EstimateHomographyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
float32[] homography\n\
";
  }

  static const char* value(const ::ground_projection::EstimateHomographyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.homography);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct EstimateHomographyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ground_projection::EstimateHomographyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ground_projection::EstimateHomographyResponse_<ContainerAllocator>& v)
  {
    s << indent << "homography[]" << std::endl;
    for (size_t i = 0; i < v.homography.size(); ++i)
    {
      s << indent << "  homography[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.homography[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GROUND_PROJECTION_MESSAGE_ESTIMATEHOMOGRAPHYRESPONSE_H
