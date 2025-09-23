
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */

#ifndef __ME_PL_CHANNELS_H__
#define __ME_PL_CHANNELS_H__
//#include "logging.h"
#include "uint128.h"
#include "me_pl_interfaces.h"

class _ME_to_PL_base_channel: public ME_to_PL_Interface,
		public sc_core::sc_channel {

public:
	_ME_to_PL_base_channel(sc_core::sc_module_name nm) :
			sc_core::sc_channel(nm) {
	}

	uint32_t get32() {
		bool tlast;
		return get32(tlast);
	}

	uint32_t get32(bool &tlast) {
		if (data_buffer.size() < 1) {
			_handle_receive(); //Get new data when buffer is empty
		}
		uint32_t data = data_buffer.front().first;
		tlast = data_buffer.front().second;
		data_buffer.pop();
		return data;
	}

	void get64(uint32_t &data0, uint32_t &data1, bool &tlast) {
		if (data_buffer.size() < 2)
			_handle_receive(); //Get new data when buffer is empty

		data0 = data_buffer.front().first;
		data_buffer.pop();
		data1 = data_buffer.front().first;
		tlast = data_buffer.front().second;
		data_buffer.pop();
	}

	uint64_t get64(bool &tlast) {
		uint32_t data0, data1;
		uint64_t result;
		get64(data0, data1, tlast);
		result = ((uint64_t) data1 << 32) | data0;
		return result;
	}

	uint64_t get64() {
		bool tlast;
		return get64(tlast);
	}

	sc_dt::sc_biguint<128> get128(bool &tlast) {
		uint32_t data0, data1, data2, data3;
		sc_dt::sc_biguint<128> result;
		uint128_t temp_result;
		get64(data0, data1, tlast);
		get64(data2, data3, tlast);
		temp_result[0] = data0;
		temp_result[1] = data1;
		temp_result[2] = data2;
		temp_result[3] = data3;
		result = temp_result;
		return result;
	}

	sc_dt::sc_biguint<128> get128() {
		bool tlast;
		return get128(tlast);
	}

	std::vector<uint32_t> get_vector(int length, bool &tlast) {
		std::vector<uint32_t> result;
		int i = 0;
		while (i < length && tlast == false) {
			result.push_back(get32(tlast));
			i++;
		}
		return result;
	}

	std::vector<uint32_t> get_vector(int length) {
		std::vector<uint32_t> result;
		for (int i = 0; i < length; i++) {
			result.push_back(get32());
		}
		return result;
	}

protected:
	std::queue<std::pair<uint32_t, bool> > data_buffer;

private:
	virtual void _handle_receive() {

	}
};

class ME_to_PL_32bit: public _ME_to_PL_base_channel {
public:
	MEStream64_get_port in_port;

	ME_to_PL_32bit(sc_core::sc_module_name nm) :
			_ME_to_PL_base_channel(nm) {
	}

private:
	void _handle_receive() {
		MEStreamData64 d64;
		d64 = in_port->get();
		data_buffer.push(std::make_pair(d64.data[0], d64.tlast));
	}
};

class ME_to_PL_64bit: public _ME_to_PL_base_channel {
public:
	MEStream64_get_port in_port;

	ME_to_PL_64bit(sc_core::sc_module_name nm) :
			_ME_to_PL_base_channel(nm) {
	}
private:
	void _handle_receive() {
		MEStreamData64 d64;
		d64 = in_port->get();
		if (d64.tlast) {
			if (d64.tkeep) {
				data_buffer.push(std::make_pair(d64.data[0], false));
				data_buffer.push(std::make_pair(d64.data[1], true));
			} else {
				data_buffer.push(std::make_pair(d64.data[0], true));
			}
		} else {
			data_buffer.push(std::make_pair(d64.data[0], false));
			data_buffer.push(std::make_pair(d64.data[1], false));
		}
	}
};

class ME_to_PL_128bit: public _ME_to_PL_base_channel {
public:
	MEStream64_get_port in_port0;
	MEStream64_get_port in_port1;

	ME_to_PL_128bit(sc_core::sc_module_name nm) :
			_ME_to_PL_base_channel(nm) {
	}
private:
	void _handle_receive() {
		MEStreamData64 d64_0;
		MEStreamData64 d64_1;
		d64_0 = in_port0->get();
		int valid_samples = 0;
		bool final_tlast = true;

		d64_1 = in_port1->get();

		std::vector<uint32_t> data = { d64_0.data[0], d64_0.data[1],
				d64_1.data[0], d64_1.data[1] };

		if (d64_0.tlast == false && d64_1.tlast == false) {
			valid_samples = 4;
			final_tlast = false;
		}

		if (d64_0.tlast == true) {
			if (d64_0.tkeep == true) {
				valid_samples = 2;
			} else {
				valid_samples = 1;
			}
		} else if (d64_1.tlast == true) {
			if (d64_0.tkeep == true) {
				valid_samples = 4;
			} else {
				valid_samples = 3;
			}
		}

		for (int i = 0; i < valid_samples - 1; i++) {
			data_buffer.push(std::make_pair(data[i], false));
		}

		data_buffer.push(std::make_pair(data[valid_samples - 1], final_tlast));
	}
};

class _PL_to_ME_base_channel: public PL_to_ME_Interface,
		public sc_core::sc_channel {

public:
	_PL_to_ME_base_channel(sc_core::sc_module_name nm) :
			sc_core::sc_channel(nm) {
	}

	void put32(uint32_t data, bool tlast) {
		data_buffer.push(std::make_pair(data, tlast));

		_handle_send();
	}

	void put64(uint64_t data, bool tlast) {
		data_buffer.push(
				std::make_pair((uint32_t) ((data & 0xFFFFFFFF00000000) >> 32),
						false));
		data_buffer.push(
				std::make_pair((uint32_t) (data & 0x00000000FFFFFFFF), tlast));
		_handle_send();
	}

	void put64(uint32_t data0, uint32_t data1, bool tlast) {
		data_buffer.push(std::make_pair(data0, false));
		data_buffer.push(std::make_pair(data1, tlast));
		_handle_send();
	}

	void put128(sc_dt::sc_biguint<128> data, bool tlast) {
		uint128_t temp_result = data;

		data_buffer.push(std::make_pair(temp_result[0], false));
		data_buffer.push(std::make_pair(temp_result[1], false));
		data_buffer.push(std::make_pair(temp_result[2], false));
		data_buffer.push(std::make_pair(temp_result[3], tlast));
		_handle_send();
	}

	void put_vector(std::vector<uint32_t> data, bool tlast) {
		for (int i = 0; i < data.size() - 1; i++) {
			data_buffer.push(std::make_pair(data[i], false));
		}
		data_buffer.push(std::make_pair(data.back(), tlast));
		_handle_send();
	}

protected:
	std::queue<std::pair<uint32_t, bool> > data_buffer;

private:
	virtual void _handle_send() {
	}

};

class PL_to_ME_32bit: public _PL_to_ME_base_channel {
public:
	MEStream64_put_port out_port;

	PL_to_ME_32bit(sc_core::sc_module_name nm) :
			_PL_to_ME_base_channel(nm) {
	}

private:
	void _handle_send() {
		MEStreamData64 d64(NO_STREAM_DATA, NO_STREAM_DATA, false, false);

		while (data_buffer.empty() == false) {
			d64.data[0] = data_buffer.front().first;
			d64.tlast = data_buffer.front().second;
			data_buffer.pop();
			out_port->put(d64);
		}
	}
};

class PL_to_ME_64bit: public _PL_to_ME_base_channel {
public:
	MEStream64_put_port out_port;

	PL_to_ME_64bit(sc_core::sc_module_name nm) :
			_PL_to_ME_base_channel(nm) {
	}
private:
	void _handle_send() {
		MEStreamData64 d64(0, 0, false, false);
		do {
			if (data_buffer.size() > 1) {
				d64.data[0] = data_buffer.front().first;
				data_buffer.pop();
				d64.data[1] = data_buffer.front().first;
				d64.tlast = data_buffer.front().second;
				data_buffer.pop();
				d64.tkeep = true;
				out_port->put(d64);
			} else {
				if (data_buffer.front().second == true) {
					d64.data[0] = data_buffer.front().first;
					data_buffer.pop();
					d64.data[1] = NO_STREAM_DATA;
					d64.tlast = true;
					d64.tkeep = false;
					out_port->put(d64);
				}
			}
		} while (data_buffer.size() > 1);
	}
};

class PL_to_ME_128bit: public _PL_to_ME_base_channel {
public:
	MEStream64_put_port out_port0;
	MEStream64_put_port out_port1;

	PL_to_ME_128bit(sc_core::sc_module_name nm) :
			_PL_to_ME_base_channel(nm) {
	}
private:
	void _handle_send() {
		bool repeat;
		do {
			std::vector<uint32_t> data(4, NO_STREAM_DATA);
			int to_send = 0;
			bool tlast = 0;
			repeat = 0;
			while (tlast == false and to_send < 4) {
				data[to_send] = data_buffer.front().first;
				tlast = data_buffer.front().second;
				data_buffer.pop();
				to_send++;
			}
			bool tkeep0(false), tkeep1(false), tlast0(false), tlast1(false);
			if (tlast == true) {
				switch (to_send) {
				case 1:
					tlast0 = true;
					tkeep0 = false;
					break;
				case 2:
					tlast0 = true;
					tkeep0 = true;
					break;
				case 3:
					tlast1 = true;
					tkeep1 = false;
					break;
				case 4:
					tlast1 = true;
					tkeep1 = true;
					break;
				default:
					SC_REPORT_ERROR("PL_to_ME_128bit ",
							"Invalid number of samples to send, greater than 4");
					break;
				}
			}
			MEStreamData64 d64_0(data[0], data[1], tlast0, tkeep0);
			MEStreamData64 d64_1(data[2], data[3], tlast1, tkeep1);
			out_port0->put(d64_0);
			out_port1->put(d64_1);
			if (data_buffer.size() > 3)
				repeat = true;

			else {
				for (int i = 0; i < std::min((int) (data_buffer.size()), 3);
						i++) {
					if (data_buffer.front().second == true)
						repeat = true;

					std::pair<uint32_t, bool> temp = data_buffer.front();
					data_buffer.pop();
					data_buffer.push(temp);
				}
			}
		} while (repeat);
	}
};
#endif // __ME_PL_CHANNELS_H__


