TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

# Install kristerSupport.dbd into <top>/dbd
DBD += kristerSupport.dbd

kristerSupport_DBD += base.dbd
kristerSupport_DBD += stream.dbd
kristerSupport_DBD += asyn.dbd
kristerSupport_DBD += drvAsynIPPort.dbd

kristerSupport_DBD += calc.dbd
kristerSupport_DBD += sCalcoutRecord.dbd

# Build an IOC support library
LIBRARY_IOC += kristerSupport

kristerSupport_LIBS += stream
kristerSupport_LIBS += asyn
kristerSupport_LIBS += $(EPICS_BASE_IOC_LIBS)

# Build the IOC application
PROD_IOC = krister

# krister.dbd will be created and installed
DBD += krister.dbd

# krister.dbd will include these files:
krister_DBD += base.dbd
krister_DBD += kristerSupport.dbd
krister_DBD += asSupport.dbd
krister_DBD += devIocStats.dbd

# krister_registerRecordDeviceDriver.cpp derives from krister.dbd
krister_SRCS += krister_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
krister_SRCS_DEFAULT += kristerMain.cpp
krister_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#krister_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from our support library
krister_LIBS += stream
krister_LIBS += autosave
krister_LIBS += devIocStats
krister_LIBS += asyn
krister_LIBS += calc
krister_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

