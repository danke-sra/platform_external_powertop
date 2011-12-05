LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := debug
LOCAL_STATIC_LIBRARIES := libstlport_static \
			  libnl_2 \
			  libpci_static \

LOCAL_MODULE := powertop

LOCAL_CPPFLAGS += -DDISABLE_NCURSES -DDISABLE_I18N -DDISABLE_TRYCATCH \
		-DCONFIG_LIBNL20 -DTRUE=1 -DFALSE=0

LOCAL_CFLAGS += -DCONFIG_LIBNL20

LOCAL_C_INCLUDES += external/stlport/stlport/ external/stlport/stlport/stl \
			external/stlport/stlport/using/h/ \
			bionic external/libnl-headers/ external/pciutils/include

LOCAL_SRC_FILES += \
	parameters/parameters.cpp \
	parameters/persistent.cpp \
	parameters/learn.cpp \
	process/powerconsumer.cpp \
	process/work.cpp \
	process/process.cpp \
	process/timer.cpp \
	process/device.cpp \
	process/interrupt.cpp \
	process/do_process.cpp \
	cpu/intel_cpus.cpp \
	cpu/cpu.cpp \
	cpu/cpu_linux.cpp \
	cpu/cpudevice.cpp \
	cpu/cpu_core.cpp \
	cpu/cpu_package.cpp \
	cpu/abstract_cpu.cpp \
	measurement/measurement.cpp \
	measurement/acpi.cpp \
	measurement/extech.cpp \
	measurement/power_supply.cpp \
	display.cpp \
	html.cpp \
	main.cpp \
	tuning/tuning.cpp \
	tuning/usb.cpp \
	tuning/bluetooth.cpp \
	tuning/ethernet.cpp \
	tuning/runtime.cpp \
	tuning/iw.c \
	tuning/iw.h \
	tuning/tunable.cpp \
	tuning/sysfs.cpp \
	tuning/cpufreq.cpp \
	tuning/wifi.cpp \
	perf/perf_bundle.cpp \
	perf/perf.cpp \
	devices/thinkpad-fan.cpp \
	devices/alsa.cpp \
	devices/runtime_pm.cpp \
	devices/usb.cpp \
	devices/ahci.cpp \
	devices/rfkill.cpp \
	devices/thinkpad-light.cpp \
	devices/i915-gpu.cpp \
	devices/backlight.cpp \
	devices/network.cpp \
	devices/device.cpp \
	devlist.cpp \
	calibrate/calibrate.cpp \
	lib.cpp \

include $(BUILD_EXECUTABLE)
