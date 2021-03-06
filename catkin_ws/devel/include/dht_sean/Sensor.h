// Generated by gencpp from file dht_sean/Sensor.msg
// DO NOT EDIT!


#ifndef DHT_SEAN_MESSAGE_SENSOR_H
#define DHT_SEAN_MESSAGE_SENSOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dht_sean
{
template <class ContainerAllocator>
struct Sensor_
{
  typedef Sensor_<ContainerAllocator> Type;

  Sensor_()
    : temperature(0)
    , moisture(0)  {
    }
  Sensor_(const ContainerAllocator& _alloc)
    : temperature(0)
    , moisture(0)  {
    }



   typedef int64_t _temperature_type;
  _temperature_type temperature;

   typedef int64_t _moisture_type;
  _moisture_type moisture;




  typedef boost::shared_ptr< ::dht_sean::Sensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dht_sean::Sensor_<ContainerAllocator> const> ConstPtr;

}; // struct Sensor_

typedef ::dht_sean::Sensor_<std::allocator<void> > Sensor;

typedef boost::shared_ptr< ::dht_sean::Sensor > SensorPtr;
typedef boost::shared_ptr< ::dht_sean::Sensor const> SensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dht_sean::Sensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dht_sean::Sensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dht_sean

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dht_sean': ['/home/ubuntu/duckietown/catkin_ws/src/arg_nctu/sean/dht_sean/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dht_sean::Sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dht_sean::Sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dht_sean::Sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dht_sean::Sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dht_sean::Sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dht_sean::Sensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dht_sean::Sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cd13addcb81162b9f24c9f3df17eb541";
  }

  static const char* value(const ::dht_sean::Sensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcd13addcb81162b9ULL;
  static const uint64_t static_value2 = 0xf24c9f3df17eb541ULL;
};

template<class ContainerAllocator>
struct DataType< ::dht_sean::Sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dht_sean/Sensor";
  }

  static const char* value(const ::dht_sean::Sensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dht_sean::Sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 temperature\n\
int64 moisture\n\
";
  }

  static const char* value(const ::dht_sean::Sensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dht_sean::Sensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.temperature);
      stream.next(m.moisture);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Sensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dht_sean::Sensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dht_sean::Sensor_<ContainerAllocator>& v)
  {
    s << indent << "temperature: ";
    Printer<int64_t>::stream(s, indent + "  ", v.temperature);
    s << indent << "moisture: ";
    Printer<int64_t>::stream(s, indent + "  ", v.moisture);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DHT_SEAN_MESSAGE_SENSOR_H
