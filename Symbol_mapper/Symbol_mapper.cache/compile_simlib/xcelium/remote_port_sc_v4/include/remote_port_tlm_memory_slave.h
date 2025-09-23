
/*
 * TLM remoteport glue
 *
 * Copyright (c) 2016 Xilinx Inc
 * Written by Edgar E. Iglesias
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
#include "remote_port_tlm_sc_defines.h"
#include <queue>

class REMOTEPORT_SC_API remoteport_tlm_memory_slave
	: public sc_core::sc_module, public remoteport_tlm_dev
{
        SC_HAS_PROCESS(remoteport_tlm_memory_slave);

public:
	tlm_utils::simple_target_socket<remoteport_tlm_memory_slave> sk;

        remoteport_tlm_memory_slave(sc_core::sc_module_name name);
	void tie_off(void);

private:
	tlm_utils::simple_initiator_socket<remoteport_tlm_memory_slave> *tieoff_sk;

	virtual void b_transport(tlm::tlm_generic_payload& trans,
				 sc_core::sc_time& delay);
    virtual tlm::tlm_sync_enum nb_transport_fw(tlm::tlm_generic_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& delay);
    sc_core::sc_event resp_ev, resp_done_ev,resume_thread_ev;
    std::queue<tlm::tlm_generic_payload*> p_que;
    void b_transport_thread();
    void clear_resp_method();
};


