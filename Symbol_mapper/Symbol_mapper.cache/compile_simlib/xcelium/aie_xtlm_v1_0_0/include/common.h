
#ifndef __COMMON_H__
#define __COMMON_H__


#include "xtlm.h"

class axis_initiator_socket_creator
{
    public:
        axis_initiator_socket_creator(unsigned int width):m_width(width) {}

        xtlm::xtlm_axis_initiator_socket*
            operator()(const char* name, size_t i) {
            return new xtlm::xtlm_axis_initiator_socket(name, m_width);
        }

    private:
        unsigned int m_width;
};

class axis_initiator_util_creator
{
    public:
        axis_initiator_util_creator(unsigned int width,
                xtlm::axis::granularity grn)
            : m_width(width), granularity(grn) {}

        xtlm::xtlm_axis_initiator_socket_util*
            operator()(const char* name, size_t i) {
            return new xtlm::xtlm_axis_initiator_socket_util(name, granularity, m_width);
        }

    private:
        unsigned int m_width;
         xtlm::axis::granularity granularity;
};

class axis_target_socket_creator
{
    public:
        axis_target_socket_creator(unsigned int width):m_width(width) {}

        xtlm::xtlm_axis_target_socket*
            operator()(const char* name, size_t i) {
            return new xtlm::xtlm_axis_target_socket(name, m_width);
        }

    private:
        unsigned int m_width;
};

class axis_target_util_creator
{
    public:
        axis_target_util_creator(unsigned int width,
                xtlm::axis::granularity grn)
            : m_width(width), granularity(grn) {}

        xtlm::xtlm_axis_target_socket_util*
            operator()(const char* name, size_t i) {
            return new xtlm::xtlm_axis_target_socket_util(
                    name, granularity, m_width);
        }

    private:
        unsigned int m_width;
         xtlm::axis::granularity granularity;
};

class aximm_target_socket_creator
{
    public:
        aximm_target_socket_creator(unsigned int width):m_width(width) {}

        xtlm::xtlm_aximm_target_socket*
            operator()(const char* name, size_t i) {
            return new xtlm::xtlm_aximm_target_socket(name, m_width);
        }

    private:
        unsigned int m_width;
};

class aximm_initiator_socket_creator
{
    public:
        aximm_initiator_socket_creator(unsigned int width):m_width(width) {}

        xtlm::xtlm_aximm_initiator_socket*
            operator()(const char* name, size_t i) {
            return new xtlm::xtlm_aximm_initiator_socket(name, m_width);
        }

    private:
        unsigned int m_width;
};
#endif


