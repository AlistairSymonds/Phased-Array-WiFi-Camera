#include <stdlib.h>
#include "Vpawc_tb.h"
#include "verilated.h"
#include <verilated_vcd_c.h>

template<class MODULE> 
class TESTBENCH {
	// Need to add a new class variable
	VerilatedVcdC	*m_trace;
	unsigned long	m_tickcount;
	MODULE	*m_core;
	public:
	TESTBENCH(void) {
		// According to the Verilator spec, you *must* call
		// traceEverOn before calling any of the tracing functions
		// within Verilator.
		Verilated::traceEverOn(true);
		m_core = new MODULE;
		m_tickcount = 0l;
	}

	virtual unsigned long getTickCount(){
		return m_tickcount;
	}

	virtual ~TESTBENCH(void) {
		delete m_core;
		m_core = NULL;
	}

	virtual void reset(void) {
		m_core->resetn = 0;
		// Make sure any inheritance gets applied
		this->tick();
		m_core->resetn = 1;
	}

	// Open/create a trace file
	virtual	void opentrace(const char *vcdname) {
		if (!m_trace) {
			m_trace = new VerilatedVcdC;
			m_core->trace(m_trace, 99);
			m_trace->open(vcdname);
		}
	}

	// Close a trace file
	virtual void close(void) {
		if (m_trace) {
			m_trace->close();
			m_trace = NULL;
		}
	}

	virtual void tick(void) {
		// Make sure the tickcount is greater than zero before
		// we do this
		m_tickcount++;

		// Allow any combinatorial logic to settle before we tick
		// the clock.  This becomes necessary in the case where
		// we may have modified or adjusted the inputs prior to
		// coming into here, since we need all combinatorial logic
		// to be settled before we call for a clock tick.
		//
		m_core->clk = 0;
		m_core->eval();

		//
		// Here's the new item:
		//
		//	Dump values to our trace file
		//
        int trace = 1;
		if(trace) m_trace->dump(10*m_tickcount-2);

		// Repeat for the positive edge of the clock
		m_core->clk = 1;
		m_core->eval();
		if(trace) m_trace->dump(10*m_tickcount);

		// Now the negative edge
		m_core->clk = 0;
		m_core->eval();
		if (m_trace) {
			// This portion, though, is a touch different.
			// After dumping our values as they exist on the
			// negative clock edge ...
			m_trace->dump(10*m_tickcount+5);
			//
			// We'll also need to make sure we flush any I/O to
			// the trace file, so that we can use the assert()
			// function between now and the next tick if we want to.
			m_trace->flush();
		}
	}

	virtual bool done(void) { 
		if (Verilated::gotFinish()){
			return 1;
		}
		
		if (m_tickcount > 10000) {
			printf("Exiting due to tick limit exceeded\n");
			return 1;
		}

		return 0;
	}
};




int main(int argc, char **argv) {
	Verilated::commandArgs(argc, argv);
	TESTBENCH<Vpawc_tb> *tb = new TESTBENCH<Vpawc_tb>();
    tb->opentrace("trace.vcd");
	while(!tb->done()) {
		if (tb->getTickCount() < 10){
			printf("Holding DUT in reset\n");
			tb->reset();
		}
		tb->tick();
	} exit(EXIT_SUCCESS);
}