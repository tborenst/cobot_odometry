/* Auto-generated by genmsg_cpp for file /home/tborenst/cobot/odometry_listener/srv/fovis_odometry.srv */
#ifndef ODOMETRY_LISTENER_SERVICE_FOVIS_ODOMETRY_H
#define ODOMETRY_LISTENER_SERVICE_FOVIS_ODOMETRY_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace odometry_listener
{
template <class ContainerAllocator>
struct fovis_odometryRequest_ {
  typedef fovis_odometryRequest_<ContainerAllocator> Type;

  fovis_odometryRequest_()
  {
  }

  fovis_odometryRequest_(const ContainerAllocator& _alloc)
  {
  }


  typedef boost::shared_ptr< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct fovis_odometryRequest
typedef  ::odometry_listener::fovis_odometryRequest_<std::allocator<void> > fovis_odometryRequest;

typedef boost::shared_ptr< ::odometry_listener::fovis_odometryRequest> fovis_odometryRequestPtr;
typedef boost::shared_ptr< ::odometry_listener::fovis_odometryRequest const> fovis_odometryRequestConstPtr;


template <class ContainerAllocator>
struct fovis_odometryResponse_ {
  typedef fovis_odometryResponse_<ContainerAllocator> Type;

  fovis_odometryResponse_()
  : X(0.0)
  , Y(0.0)
  , R(0.0)
  {
  }

  fovis_odometryResponse_(const ContainerAllocator& _alloc)
  : X(0.0)
  , Y(0.0)
  , R(0.0)
  {
  }

  typedef double _X_type;
  double X;

  typedef double _Y_type;
  double Y;

  typedef double _R_type;
  double R;


  typedef boost::shared_ptr< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct fovis_odometryResponse
typedef  ::odometry_listener::fovis_odometryResponse_<std::allocator<void> > fovis_odometryResponse;

typedef boost::shared_ptr< ::odometry_listener::fovis_odometryResponse> fovis_odometryResponsePtr;
typedef boost::shared_ptr< ::odometry_listener::fovis_odometryResponse const> fovis_odometryResponseConstPtr;

struct fovis_odometry
{

typedef fovis_odometryRequest Request;
typedef fovis_odometryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct fovis_odometry
} // namespace odometry_listener

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const  ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "odometry_listener/fovis_odometryRequest";
  }

  static const char* value(const  ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
";
  }

  static const char* value(const  ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "48f9ecff202410b4091f28b4c838b809";
  }

  static const char* value(const  ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x48f9ecff202410b4ULL;
  static const uint64_t static_value2 = 0x091f28b4c838b809ULL;
};

template<class ContainerAllocator>
struct DataType< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "odometry_listener/fovis_odometryResponse";
  }

  static const char* value(const  ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float64 X\n\
float64 Y\n\
float64 R\n\
\n\
\n\
";
  }

  static const char* value(const  ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::odometry_listener::fovis_odometryRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct fovis_odometryRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::odometry_listener::fovis_odometryResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.X);
    stream.next(m.Y);
    stream.next(m.R);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct fovis_odometryResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<odometry_listener::fovis_odometry> {
  static const char* value() 
  {
    return "48f9ecff202410b4091f28b4c838b809";
  }

  static const char* value(const odometry_listener::fovis_odometry&) { return value(); } 
};

template<>
struct DataType<odometry_listener::fovis_odometry> {
  static const char* value() 
  {
    return "odometry_listener/fovis_odometry";
  }

  static const char* value(const odometry_listener::fovis_odometry&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<odometry_listener::fovis_odometryRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "48f9ecff202410b4091f28b4c838b809";
  }

  static const char* value(const odometry_listener::fovis_odometryRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<odometry_listener::fovis_odometryRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "odometry_listener/fovis_odometry";
  }

  static const char* value(const odometry_listener::fovis_odometryRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<odometry_listener::fovis_odometryResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "48f9ecff202410b4091f28b4c838b809";
  }

  static const char* value(const odometry_listener::fovis_odometryResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<odometry_listener::fovis_odometryResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "odometry_listener/fovis_odometry";
  }

  static const char* value(const odometry_listener::fovis_odometryResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // ODOMETRY_LISTENER_SERVICE_FOVIS_ODOMETRY_H

