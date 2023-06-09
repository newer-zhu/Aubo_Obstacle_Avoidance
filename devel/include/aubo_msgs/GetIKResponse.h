// Generated by gencpp from file aubo_msgs/GetIKResponse.msg
// DO NOT EDIT!


#ifndef AUBO_MSGS_MESSAGE_GETIKRESPONSE_H
#define AUBO_MSGS_MESSAGE_GETIKRESPONSE_H


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
struct GetIKResponse_
{
  typedef GetIKResponse_<ContainerAllocator> Type;

  GetIKResponse_()
    : joint()  {
    }
  GetIKResponse_(const ContainerAllocator& _alloc)
    : joint(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _joint_type;
  _joint_type joint;





  typedef boost::shared_ptr< ::aubo_msgs::GetIKResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aubo_msgs::GetIKResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetIKResponse_

typedef ::aubo_msgs::GetIKResponse_<std::allocator<void> > GetIKResponse;

typedef boost::shared_ptr< ::aubo_msgs::GetIKResponse > GetIKResponsePtr;
typedef boost::shared_ptr< ::aubo_msgs::GetIKResponse const> GetIKResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aubo_msgs::GetIKResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::aubo_msgs::GetIKResponse_<ContainerAllocator1> & lhs, const ::aubo_msgs::GetIKResponse_<ContainerAllocator2> & rhs)
{
  return lhs.joint == rhs.joint;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::aubo_msgs::GetIKResponse_<ContainerAllocator1> & lhs, const ::aubo_msgs::GetIKResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace aubo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aubo_msgs::GetIKResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aubo_msgs::GetIKResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aubo_msgs::GetIKResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "edecb4b6fff50f927a908742515e167a";
  }

  static const char* value(const ::aubo_msgs::GetIKResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xedecb4b6fff50f92ULL;
  static const uint64_t static_value2 = 0x7a908742515e167aULL;
};

template<class ContainerAllocator>
struct DataType< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aubo_msgs/GetIKResponse";
  }

  static const char* value(const ::aubo_msgs::GetIKResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] joint\n"
"\n"
;
  }

  static const char* value(const ::aubo_msgs::GetIKResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetIKResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aubo_msgs::GetIKResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aubo_msgs::GetIKResponse_<ContainerAllocator>& v)
  {
    s << indent << "joint[]" << std::endl;
    for (size_t i = 0; i < v.joint.size(); ++i)
    {
      s << indent << "  joint[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joint[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUBO_MSGS_MESSAGE_GETIKRESPONSE_H
