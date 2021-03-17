#!../../bin/linux-x86_64/krister
############################################################################
< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/proto")
############################################################################
cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/krister.dbd")
krister_registerRecordDeviceDriver(pdbbase)

# MOXA hostname and port number:
drvAsynIPPortConfigure("SER1", "hallb-moxa99:4001")

## debugging...
#asynSetTraceMask("SER1",-1,0x09)
#asynSetTraceIOMask("SER1",-1,0x02)

## Load record instances
#dbLoadRecords("db/krister.db", "P=B_DET_,R=MOELLER1_,PORT=SER1,ADDR=1")
dbLoadRecords("db/krister.db", "P=B_MOLLER_,R=HELMHOLTZ_,PORT=SER1,ADDR=1")

cd "${TOP}/iocBoot/${IOC}"

dbl > pv.list
iocInit

