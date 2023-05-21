// Generated by gencpp from file aubo_msgs/SetPayloadRequest.msg
// DO NOT EDIT!


#ifndef AUBO_MSGS_MESSAGE_SETPAYLOADREQUEST_H
#define AUBO_MSGS_MESSAGE_SETPAYLOADREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aubo_msgs
{
template <class ContainerAllocator>
struct SetPayloadRequest_
{
  typedef SetPayloadRequest_<ContainerAllocator> Type;

  SetPayloadRequest_()
    : payload(0.0)  {
    }
  SetPayloadRequest_(const ContainerAllocator& _alloc)
    : payload(0.0)  {
  (void)_alloc;
    }



   typedef float _payload_type;
  _payload_type payload;





  typedef boost::shared_ptr< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPayloadRequest_

typedef ::aubo_msgs::SetPayloadRequest_<std::allocator<void> > SetPayloadRequest;

typedef boost::shared_ptr< ::aubo_msgs::SetPayloadRequest > SetPayloadRequestPtr;
typedef boost::shared_ptr< ::aubo_msgs::SetPayloadRequest const> SetPayloadRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator1> & lhs, const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator2> & rhs)
{
  return lhs.payload == rhs.payload;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator1> & lhs, const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace aubo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d12269f931817591aa52047629ca66ca";
  }

  static const char* value(const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd12269f931817591ULL;
  static const uint64_t static_value2 = 0xaa52047629ca66caULL;
};

template<class ContainerAllocator>
struct DataType< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aubo_msgs/SetPayloadRequest";
  }

  static const char* value(const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 payload\n"
;
  }

  static const char* value(const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.payload);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPayloadRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aubo_msgs::SetPayloadRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aubo_msgs::SetPayloadRequest_<ContainerAllocator>& v)
  {
    s << indent << "payload: ";
    Printer<float>::stream(s, indent + "  ", v.payload);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUBO_MSGS_MESSAGE_SETPAYLOADREQUEST_H
