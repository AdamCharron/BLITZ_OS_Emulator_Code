! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_ResumeChildAfterFork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.export	_P_Kernel_SerialHandlerFunction
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_serialHasBeenInitialized
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1756
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_186:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_185:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_184:
	.word	13			! length
	.ascii	"SerialHandler"
	.align
_StringConst_183:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_182:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_181:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_180:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_179:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_178:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_177:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_176:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_175:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_174:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_173:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_172:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_171:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_170:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_169:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_168:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_167:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_166:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_165:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_164:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_163:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_162:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_161:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_160:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_159:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_158:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_157:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_156:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_155:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_154:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_153:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_152:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_151:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_150:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_149:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_148:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_147:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_146:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_144:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_143:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_142:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_141:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_140:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_139:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_138:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_137:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_136:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_135:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_134:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_133:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_132:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_131:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_130:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_129:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_117:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_116:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_115:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_114:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_113:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_112:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_111:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_110:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_109:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_108:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_107:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_106:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_105:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_104:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_101:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_100:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_96:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_94:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_93:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_92:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_90:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_89:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_88:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_87:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_86:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_85:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_84:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_83:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_81:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"i"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_78:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_77:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_76:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_75:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_68:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_67:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_66:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_64:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_63:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_62:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_61:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_60:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_58:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_57:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_56:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_54:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_52:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_49:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_44:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_43:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_42:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_41:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
_StringConst_40:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_39:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_38:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_37:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_36:
	.word	2			! length
	.ascii	"\n\n"
	.align
_StringConst_35:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_34:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_33:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_32:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_31:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_30:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_23:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xf05cd80a,r4		! myHashVal = -262350838
	cmp	r3,r4
	be	_Label_194
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_194:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_195
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_195
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_195
_Label_195:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_4401:
	push	r0
	sub	r1,1,r1
	bne	_Label_4401
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_196 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_196  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_4402:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4402
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_200 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_201 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_200  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   _temp_202 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_203 = _temp_202 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_203 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_4403:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4403
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_205 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_206 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_205  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_207 = _function_193_IdleFunction
	set	_function_193_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_208 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_209
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_210
	.word	-12
	.word	4
	.word	_Label_211
	.word	-16
	.word	4
	.word	_Label_212
	.word	-20
	.word	4
	.word	_Label_213
	.word	-24
	.word	4
	.word	_Label_214
	.word	-28
	.word	4
	.word	_Label_215
	.word	-32
	.word	4
	.word	_Label_216
	.word	-36
	.word	4
	.word	_Label_217
	.word	-40
	.word	4
	.word	_Label_218
	.word	-44
	.word	4
	.word	_Label_219
	.word	-48
	.word	4
	.word	_Label_220
	.word	-52
	.word	4
	.word	_Label_221
	.word	-56
	.word	4
	.word	_Label_222
	.word	-60
	.word	4
	.word	0
_Label_209:
	.ascii	"InitializeScheduler\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_193_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4404:
	push	r0
	sub	r1,1,r1
	bne	_Label_4404
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_223:
!	jmp	_Label_224
_Label_224:
	mov	43,r13		! source line 43
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0IF",r10
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   _temp_228 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_226 else goto _Label_227
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_227
	jmp	_Label_226
_Label_226:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_229
_Label_227:
! ELSE...
	mov	48,r13		! source line 48
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_229:
! END WHILE...
	jmp	_Label_223
_Label_225:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_IdleFunction:
	.word	_sourceFileName
	.word	_Label_230
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_231
	.word	8
	.word	4
	.word	_Label_232
	.word	-12
	.word	4
	.word	_Label_233
	.word	-16
	.word	4
	.word	0
_Label_230:
	.ascii	"IdleFunction\0"
	.align
_Label_231:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_233:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_4405:
	push	r0
	sub	r1,1,r1
	bne	_Label_4405
	mov	55,r13		! source line 55
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_236 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_236 ) then goto _Label_235		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_235
!	jmp	_Label_234
_Label_234:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_238 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_238 [0 ] into _temp_239
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_237 = _temp_239		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_235:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_240 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_240 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0WH",r10
_Label_241:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_245 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_244  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_244 then goto _Label_243 else goto _Label_242
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_242
	jmp	_Label_243
_Label_242:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_246 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_247 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_241
_Label_243:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_250 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_250 ) then goto _Label_249		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_249
!	jmp	_Label_248
_Label_248:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_252 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_252 [0 ] into _temp_253
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_251 = _temp_253		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_254 = *_temp_255  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_254) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = _temp_254 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_249:
! RETURN STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_257
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_258
	.word	8
	.word	4
	.word	_Label_259
	.word	-16
	.word	4
	.word	_Label_260
	.word	-20
	.word	4
	.word	_Label_261
	.word	-24
	.word	4
	.word	_Label_262
	.word	-28
	.word	4
	.word	_Label_263
	.word	-32
	.word	4
	.word	_Label_264
	.word	-36
	.word	4
	.word	_Label_265
	.word	-40
	.word	4
	.word	_Label_266
	.word	-44
	.word	4
	.word	_Label_267
	.word	-48
	.word	4
	.word	_Label_268
	.word	-52
	.word	4
	.word	_Label_269
	.word	-9
	.word	1
	.word	_Label_270
	.word	-56
	.word	4
	.word	_Label_271
	.word	-60
	.word	4
	.word	_Label_272
	.word	-64
	.word	4
	.word	_Label_273
	.word	-68
	.word	4
	.word	_Label_274
	.word	-72
	.word	4
	.word	_Label_275
	.word	-76
	.word	4
	.word	_Label_276
	.word	-80
	.word	4
	.word	0
_Label_257:
	.ascii	"Run\0"
	.align
_Label_258:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_269:
	.byte	'C'
	.ascii	"_temp_244\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_275:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_276:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_277 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_278 = _function_192_ThreadPrintShort
	set	_function_192_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_279 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_278  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_280
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_281
	.word	-12
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	0
_Label_280:
	.ascii	"PrintReadyList\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_284:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	113,r13		! source line 113
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_285  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_287 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_286 = *_temp_287  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	127,r13		! source line 127
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_288 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_289
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_290
	.word	-12
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	_Label_294
	.word	-28
	.word	4
	.word	_Label_295
	.word	-32
	.word	4
	.word	0
_Label_289:
	.ascii	"ThreadStartMain\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_294:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_295:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
	mov	134,r13		! source line 134
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_296 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_297 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	152,r13		! source line 152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_298
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	0
_Label_298:
	.ascii	"ThreadFinish\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_301:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
	mov	157,r13		! source line 157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_302 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_304		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_304
!	jmp	_Label_303
_Label_303:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_305 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_306 = *_temp_307  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_304:
! CALL STATEMENT...
!   _temp_308 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_309 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_310 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_311
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_312
	.word	8
	.word	4
	.word	_Label_313
	.word	-12
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	_Label_316
	.word	-24
	.word	4
	.word	_Label_317
	.word	-28
	.word	4
	.word	_Label_318
	.word	-32
	.word	4
	.word	_Label_319
	.word	-36
	.word	4
	.word	_Label_320
	.word	-40
	.word	4
	.word	0
_Label_311:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_312:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_320:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_322		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	196,r13		! source line 196
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_323
_Label_322:
! ELSE...
	mov	199,r13		! source line 199
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_323:
! RETURN STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_324
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_324:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_325:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_326:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_192_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
	mov	641,r13		! source line 641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_330		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_330
!   _temp_329 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_331
_Label_330:
!   _temp_329 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_331:
!   if _temp_329 then goto _Label_328 else goto _Label_327
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_327
	jmp	_Label_328
_Label_327:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_332 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_328:
! CALL STATEMENT...
!   _temp_333 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_335 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_334 = *_temp_335  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_336 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	656,r13		! source line 656
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_345 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_344 = *_temp_345  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_339
	cmp	r1,2
	be	_Label_340
	cmp	r1,3
	be	_Label_341
	cmp	r1,4
	be	_Label_342
	cmp	r1,5
	be	_Label_343
	jmp	_Label_337
! CASE 1...
_Label_339:
! CALL STATEMENT...
!   _temp_346 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_338
! CASE 2...
_Label_340:
! CALL STATEMENT...
!   _temp_347 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_338
! CASE 3...
_Label_341:
! CALL STATEMENT...
!   _temp_348 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_338
! CASE 4...
_Label_342:
! CALL STATEMENT...
!   _temp_349 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_338
! CASE 5...
_Label_343:
! CALL STATEMENT...
!   _temp_350 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_338
! DEFAULT CASE...
_Label_337:
! CALL STATEMENT...
!   _temp_351 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	673,r13		! source line 673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_338:
! CALL STATEMENT...
!   _temp_352 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_353 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_354 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_355
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_356
	.word	8
	.word	4
	.word	_Label_357
	.word	-16
	.word	4
	.word	_Label_358
	.word	-20
	.word	4
	.word	_Label_359
	.word	-24
	.word	4
	.word	_Label_360
	.word	-28
	.word	4
	.word	_Label_361
	.word	-32
	.word	4
	.word	_Label_362
	.word	-36
	.word	4
	.word	_Label_363
	.word	-40
	.word	4
	.word	_Label_364
	.word	-44
	.word	4
	.word	_Label_365
	.word	-48
	.word	4
	.word	_Label_366
	.word	-52
	.word	4
	.word	_Label_367
	.word	-56
	.word	4
	.word	_Label_368
	.word	-60
	.word	4
	.word	_Label_369
	.word	-64
	.word	4
	.word	_Label_370
	.word	-68
	.word	4
	.word	_Label_371
	.word	-72
	.word	4
	.word	_Label_372
	.word	-76
	.word	4
	.word	_Label_373
	.word	-9
	.word	1
	.word	_Label_374
	.word	-80
	.word	4
	.word	0
_Label_355:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_356:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_373:
	.byte	'C'
	.ascii	"_temp_329\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_191_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
	mov	1016,r13		! source line 1016
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_375 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1021,r13		! source line 1021
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_376
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_377
	.word	8
	.word	4
	.word	_Label_378
	.word	-12
	.word	4
	.word	0
_Label_376:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_377:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	15,r1
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
	mov	1026,r13		! source line 1026
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_380 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_379 = *_temp_380  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_379) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_381 = _temp_379 + 28
	load	[r14+-52],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_381 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_382 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: PCB = *_temp_382  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_383 = PCB + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_383 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_384 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_384 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_385 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_385 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1043,r13		! source line 1043
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_387 = PCB + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_386 = _temp_387		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_388 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_386  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0SE",r10
!   _temp_389 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=PCB  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_390
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_391
	.word	8
	.word	4
	.word	_Label_392
	.word	-12
	.word	4
	.word	_Label_393
	.word	-16
	.word	4
	.word	_Label_394
	.word	-20
	.word	4
	.word	_Label_395
	.word	-24
	.word	4
	.word	_Label_396
	.word	-28
	.word	4
	.word	_Label_397
	.word	-32
	.word	4
	.word	_Label_398
	.word	-36
	.word	4
	.word	_Label_399
	.word	-40
	.word	4
	.word	_Label_400
	.word	-44
	.word	4
	.word	_Label_401
	.word	-48
	.word	4
	.word	_Label_402
	.word	-52
	.word	4
	.word	_Label_403
	.word	-56
	.word	4
	.word	_Label_404
	.word	-60
	.word	4
	.word	0
_Label_390:
	.ascii	"ProcessFinish\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_404:
	.byte	'P'
	.ascii	"PCB\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
	mov	1522,r13		! source line 1522
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_405:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
	mov	1540,r13		! source line 1540
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0IF",r10
!   _temp_409 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_410 = _temp_409 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_408 = *_temp_410  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_408 == 0 then goto _Label_407		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_407
!	jmp	_Label_406
_Label_406:
! THEN...
	mov	1555,r13		! source line 1555
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0SE",r10
!   _temp_412 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_413 = _temp_412 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_411 = *_temp_413  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_411) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_407:
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_414
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_415
	.word	-12
	.word	4
	.word	_Label_416
	.word	-16
	.word	4
	.word	_Label_417
	.word	-20
	.word	4
	.word	_Label_418
	.word	-24
	.word	4
	.word	_Label_419
	.word	-28
	.word	4
	.word	_Label_420
	.word	-32
	.word	4
	.word	0
_Label_414:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	3,r1
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
	mov	1562,r13		! source line 1562
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_421 else goto _Label_422
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_422
	jmp	_Label_421
_Label_421:
! THEN...
	mov	1573,r13		! source line 1573
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0SE",r10
!   _temp_423 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_424 = _temp_423 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_422:
! RETURN STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_425
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_426
	.word	-12
	.word	4
	.word	_Label_427
	.word	-16
	.word	4
	.word	0
_Label_425:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
	mov	1578,r13		! source line 1578
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_428 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_429
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_430
	.word	-12
	.word	4
	.word	0
_Label_429:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
	mov	1590,r13		! source line 1590
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_431 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1597,r13		! source line 1597
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_432
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_433
	.word	-12
	.word	4
	.word	0
_Label_432:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
	mov	1602,r13		! source line 1602
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_434 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1609,r13		! source line 1609
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_435
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_436
	.word	-12
	.word	4
	.word	0
_Label_435:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
	mov	1614,r13		! source line 1614
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_437 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1621,r13		! source line 1621
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_438
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_439
	.word	-12
	.word	4
	.word	0
_Label_438:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
	mov	1626,r13		! source line 1626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_440 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_441
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_442
	.word	-12
	.word	4
	.word	0
_Label_441:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
	mov	1638,r13		! source line 1638
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_443 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_444
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_445
	.word	-12
	.word	4
	.word	0
_Label_444:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
	mov	1650,r13		! source line 1650
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_446 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1657,r13		! source line 1657
	mov	"\0\0CA",r10
	call	_function_190_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_447
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_448
	.word	-12
	.word	4
	.word	0
_Label_447:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_190_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
	mov	1662,r13		! source line 1662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_449 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_450 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_453 = *_temp_454  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_453 == 0 then goto _Label_452		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_452
!	jmp	_Label_451
_Label_451:
! THEN...
	mov	1673,r13		! source line 1673
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_455 = *_temp_456  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_457
_Label_452:
! ELSE...
	mov	1675,r13		! source line 1675
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_458 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1675,r13		! source line 1675
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_457:
! SEND STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_459
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_460
	.word	8
	.word	4
	.word	_Label_461
	.word	-12
	.word	4
	.word	_Label_462
	.word	-16
	.word	4
	.word	_Label_463
	.word	-20
	.word	4
	.word	_Label_464
	.word	-24
	.word	4
	.word	_Label_465
	.word	-28
	.word	4
	.word	_Label_466
	.word	-32
	.word	4
	.word	_Label_467
	.word	-36
	.word	4
	.word	0
_Label_459:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_460:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
	mov	1688,r13		! source line 1688
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1709,r13		! source line 1709
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4426
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_468
_Label_4426:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_468
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_468
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_482,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_482:
	jmp	_Label_474	! 1:	
	jmp	_Label_481	! 2:	
	jmp	_Label_471	! 3:	
	jmp	_Label_470	! 4:	
	jmp	_Label_473	! 5:	
	jmp	_Label_472	! 6:	
	jmp	_Label_475	! 7:	
	jmp	_Label_476	! 8:	
	jmp	_Label_477	! 9:	
	jmp	_Label_478	! 10:	
	jmp	_Label_479	! 11:	
	jmp	_Label_480	! 12:	
! CASE 4...
_Label_470:
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_483  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_483  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_471:
! CALL STATEMENT...
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_472:
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_484  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_473:
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_485  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_485  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_474:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_475:
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1723,r13		! source line 1723
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_486  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_486  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_476:
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1725,r13		! source line 1725
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_487  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_487  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_477:
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_488  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_488  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_478:
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_489  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_489  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_479:
! RETURN STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_490  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_490  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_480:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_481:
! CALL STATEMENT...
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_468:
! CALL STATEMENT...
!   _temp_491 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_492 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1742,r13		! source line 1742
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_469:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_493
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_494
	.word	8
	.word	4
	.word	_Label_495
	.word	12
	.word	4
	.word	_Label_496
	.word	16
	.word	4
	.word	_Label_497
	.word	20
	.word	4
	.word	_Label_498
	.word	24
	.word	4
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	_Label_505
	.word	-36
	.word	4
	.word	_Label_506
	.word	-40
	.word	4
	.word	_Label_507
	.word	-44
	.word	4
	.word	_Label_508
	.word	-48
	.word	4
	.word	0
_Label_493:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_494:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_497:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
	mov	1749,r13		! source line 1749
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_509
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_510
	.word	8
	.word	4
	.word	0
_Label_509:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_511 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1761,r13		! source line 1761
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_4429:
	push	r0
	sub	r1,1,r1
	bne	_Label_4429
	mov	1766,r13		! source line 1766
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_514
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_514:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	124,r1
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
	mov	1774,r13		! source line 1774
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-480,r4
	mov	23,r3
_Label_4431:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4431
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
	mov	1791,r13		! source line 1791
	mov	"\0\0SE",r10
!   _temp_516 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-364]
!   Send message GetANewThread
	load	[r14+-364],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-372]
! ASSIGNMENT STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_517 = newThread + 72
	load	[r14+-372],r1
	add	r1,72,r1
	store	r1,[r14+-360]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-352]
!   Data Move: _temp_518 = *_temp_519  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   Data Move: *_temp_517 = _temp_518  (sizeInBytes=4)
	load	[r14+-356],r1
	load	[r14+-360],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_520 = newThread + 76
	load	[r14+-372],r1
	add	r1,76,r1
	store	r1,[r14+-348]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_522 = _P_Kernel_currentThread + 76
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-340]
!   Data Move: _temp_521 = *_temp_522  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-344]
!   Data Move: *_temp_520 = _temp_521  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r14+-348],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
	mov	1795,r13		! source line 1795
	mov	"\0\0SE",r10
!   _temp_523 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-336]
!   Send message GetANewProcess
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_524 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: *_temp_524 = newPCB  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r14+-332],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-376],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_525 = newPCB + 16
	load	[r14+-376],r1
	add	r1,16,r1
	store	r1,[r14+-328]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_528 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-316]
!   Data Move: _temp_527 = *_temp_528  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_527) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_529 = _temp_527 + 12
	load	[r14+-320],r1
	add	r1,12,r1
	store	r1,[r14+-312]
!   Data Move: _temp_526 = *_temp_529  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   Data Move: *_temp_525 = _temp_526  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-328],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-376],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_530 = newPCB + 24
	load	[r14+-376],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_530 = newThread  (sizeInBytes=4)
	load	[r14+-372],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-380]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_532 = newThread + 4096
	load	[r14+-372],r1
	add	r1,4096,r1
	store	r1,[r14+-300]
!   Move address of _temp_532 [0 ] into _temp_533
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-300],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-296]
!   _temp_531 = _temp_533		(4 bytes)
	load	[r14+-296],r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-380]
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = newThread + 68
	load	[r14+-372],r1
	add	r1,68,r1
	store	r1,[r14+-292]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = newThread + 88
	load	[r14+-372],r1
	add	r1,88,r1
	store	r1,[r14+-284]
!   Move address of _temp_536 [999 ] into _temp_537
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-284],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-280]
!   _temp_535 = _temp_537		(4 bytes)
	load	[r14+-280],r1
	store	r1,[r14+-288]
!   Data Move: *_temp_534 = _temp_535  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r14+-292],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0SE",r10
!   _temp_538 = &newAddrSpace
	add	r14,-480,r1
	store	r1,[r14+-276]
!   Send message Init
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_539 = *_temp_540  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_539) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_541 = _temp_539 + 32
	load	[r14+-272],r1
	add	r1,32,r1
	store	r1,[r14+-264]
!   Data Move: *_temp_541 = newAddrSpace  (sizeInBytes=92)
	add	r14,-480,r5
	load	[r14+-264],r4
	mov	23,r3
_Label_4432:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4432
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_543 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_542 = *_temp_543  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_542) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = _temp_542 + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-252]
!   _temp_545 = _temp_544 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Data Move: numberFramesNeeded = *_temp_545  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-384]
! SEND STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_547 = *_temp_548  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_547) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_549 = _temp_547 + 32
	load	[r14+-240],r1
	add	r1,32,r1
	store	r1,[r14+-232]
!   _temp_546 = _temp_549		(4 bytes)
	load	[r14+-232],r1
	store	r1,[r14+-244]
!   _temp_550 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_546  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberFramesNeeded  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0SE",r10
!   _temp_551 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-224]
!   _temp_552 = _temp_551 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Send message Lock
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_557 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
!   Calculate and save the FOR-LOOP ending value
!   _temp_558 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-212]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_557  (sizeInBytes=4)
	load	[r14+-216],r1
	store	r1,[r14+-388]
_Label_553:
!   Perform the FOR-LOOP termination test
!   if i > _temp_558 then goto _Label_556		
	load	[r14+-388],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_556
_Label_554:
	mov	1812,r13		! source line 1812
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_560 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_559 = *_temp_560  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_559) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = _temp_559 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-200]
!   Move address of _temp_561 [i ] into _temp_562
!     make sure index expr is >= 0
	load	[r14+-388],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-200],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-196]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_564 = *_temp_565  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_564) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _temp_564 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_566 [i ] into _temp_567
!     make sure index expr is >= 0
	load	[r14+-388],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: _temp_563 = *_temp_567  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   Data Move: *_temp_562 = _temp_563  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-196],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_571 = *_temp_572  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_571) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = _temp_571 + 124
	load	[r14+-168],r1
	add	r1,124,r1
	store	r1,[r14+-160]
!   Move address of _temp_573 [i ] into _temp_574
!     make sure index expr is >= 0
	load	[r14+-388],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Data Move: _temp_570 = *_temp_574  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_570) then goto _Label_569
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_569
!	jmp	_Label_568
_Label_568:
! THEN...
	mov	1815,r13		! source line 1815
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_576 = *_temp_577  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_576) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = _temp_576 + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-140]
!   Move address of _temp_578 [i ] into _temp_579
!     make sure index expr is >= 0
	load	[r14+-388],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Data Move: _temp_575 = *_temp_579  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_575) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = _temp_575 + 24
	load	[r14+-152],r1
	add	r1,24,r1
	store	r1,[r14+-132]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_584 = *_temp_585  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _temp_584 + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-108]
!   Move address of _temp_586 [i ] into _temp_587
!     make sure index expr is >= 0
	load	[r14+-388],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Data Move: _temp_583 = *_temp_587  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_583) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _temp_583 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-100]
!   Data Move: _temp_582 = *_temp_588  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   _temp_581 = _temp_582 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   Data Move: *_temp_580 = _temp_581  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r14+-132],r2
	store	r1,[r2]
! END IF...
_Label_569:
!   Increment the FOR-LOOP index variable and jump back
_Label_555:
!   i = i + 1
	load	[r14+-388],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
	jmp	_Label_553
! END FOR
_Label_556:
! SEND STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0SE",r10
!   _temp_589 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   _temp_590 = _temp_589 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Send message Unlock
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! FOR STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_595 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_596 = numberFramesNeeded - 1		(int)
	load	[r14+-384],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_595  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-388]
_Label_591:
!   Perform the FOR-LOOP termination test
!   if i > _temp_596 then goto _Label_594		
	load	[r14+-388],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_594
_Label_592:
	mov	1820,r13		! source line 1820
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_597 = *_temp_598  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _temp_597 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=oldFrameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-484]
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
	mov	1822,r13		! source line 1822
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newFrameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-488]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newFrameAddr  sizeInBytes=4
	load	[r14+-488],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldFrameAddr  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0IF",r10
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_603 else goto _Label_604
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_604
	jmp	_Label_603
_Label_603:
! THEN...
	mov	1825,r13		! source line 1825
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_608 = *_temp_609  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_608) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _temp_608 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_611
_Label_604:
! ELSE...
	mov	1827,r13		! source line 1827
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = newThread + 4160
	load	[r14+-372],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_612 = *_temp_613  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_612) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _temp_612 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_611:
!   Increment the FOR-LOOP index variable and jump back
_Label_593:
!   i = i + 1
	load	[r14+-388],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
	jmp	_Label_591
! END FOR
_Label_594:
! ASSIGNMENT STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0AS",r10
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-492]
! SEND STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   _temp_615 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_615  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-492],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-372],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-376],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newPCB + 12
	load	[r14+-376],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_616 = *_temp_617  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_616  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_618
	.word	0		! total size of parameters
	.word	496		! frame size = 496
	.word	_Label_619
	.word	-12
	.word	4
	.word	_Label_620
	.word	-16
	.word	4
	.word	_Label_621
	.word	-20
	.word	4
	.word	_Label_622
	.word	-24
	.word	4
	.word	_Label_623
	.word	-28
	.word	4
	.word	_Label_624
	.word	-32
	.word	4
	.word	_Label_625
	.word	-36
	.word	4
	.word	_Label_626
	.word	-40
	.word	4
	.word	_Label_627
	.word	-44
	.word	4
	.word	_Label_628
	.word	-48
	.word	4
	.word	_Label_629
	.word	-52
	.word	4
	.word	_Label_630
	.word	-56
	.word	4
	.word	_Label_631
	.word	-60
	.word	4
	.word	_Label_632
	.word	-64
	.word	4
	.word	_Label_633
	.word	-68
	.word	4
	.word	_Label_634
	.word	-72
	.word	4
	.word	_Label_635
	.word	-76
	.word	4
	.word	_Label_636
	.word	-80
	.word	4
	.word	_Label_637
	.word	-84
	.word	4
	.word	_Label_638
	.word	-88
	.word	4
	.word	_Label_639
	.word	-92
	.word	4
	.word	_Label_640
	.word	-96
	.word	4
	.word	_Label_641
	.word	-100
	.word	4
	.word	_Label_642
	.word	-104
	.word	4
	.word	_Label_643
	.word	-108
	.word	4
	.word	_Label_644
	.word	-112
	.word	4
	.word	_Label_645
	.word	-116
	.word	4
	.word	_Label_646
	.word	-120
	.word	4
	.word	_Label_647
	.word	-124
	.word	4
	.word	_Label_648
	.word	-128
	.word	4
	.word	_Label_649
	.word	-132
	.word	4
	.word	_Label_650
	.word	-136
	.word	4
	.word	_Label_651
	.word	-140
	.word	4
	.word	_Label_652
	.word	-144
	.word	4
	.word	_Label_653
	.word	-148
	.word	4
	.word	_Label_654
	.word	-152
	.word	4
	.word	_Label_655
	.word	-156
	.word	4
	.word	_Label_656
	.word	-160
	.word	4
	.word	_Label_657
	.word	-164
	.word	4
	.word	_Label_658
	.word	-168
	.word	4
	.word	_Label_659
	.word	-172
	.word	4
	.word	_Label_660
	.word	-176
	.word	4
	.word	_Label_661
	.word	-180
	.word	4
	.word	_Label_662
	.word	-184
	.word	4
	.word	_Label_663
	.word	-188
	.word	4
	.word	_Label_664
	.word	-192
	.word	4
	.word	_Label_665
	.word	-196
	.word	4
	.word	_Label_666
	.word	-200
	.word	4
	.word	_Label_667
	.word	-204
	.word	4
	.word	_Label_668
	.word	-208
	.word	4
	.word	_Label_669
	.word	-212
	.word	4
	.word	_Label_670
	.word	-216
	.word	4
	.word	_Label_671
	.word	-220
	.word	4
	.word	_Label_672
	.word	-224
	.word	4
	.word	_Label_673
	.word	-228
	.word	4
	.word	_Label_674
	.word	-232
	.word	4
	.word	_Label_675
	.word	-236
	.word	4
	.word	_Label_676
	.word	-240
	.word	4
	.word	_Label_677
	.word	-244
	.word	4
	.word	_Label_678
	.word	-248
	.word	4
	.word	_Label_679
	.word	-252
	.word	4
	.word	_Label_680
	.word	-256
	.word	4
	.word	_Label_681
	.word	-260
	.word	4
	.word	_Label_682
	.word	-264
	.word	4
	.word	_Label_683
	.word	-268
	.word	4
	.word	_Label_684
	.word	-272
	.word	4
	.word	_Label_685
	.word	-276
	.word	4
	.word	_Label_686
	.word	-280
	.word	4
	.word	_Label_687
	.word	-284
	.word	4
	.word	_Label_688
	.word	-288
	.word	4
	.word	_Label_689
	.word	-292
	.word	4
	.word	_Label_690
	.word	-296
	.word	4
	.word	_Label_691
	.word	-300
	.word	4
	.word	_Label_692
	.word	-304
	.word	4
	.word	_Label_693
	.word	-308
	.word	4
	.word	_Label_694
	.word	-312
	.word	4
	.word	_Label_695
	.word	-316
	.word	4
	.word	_Label_696
	.word	-320
	.word	4
	.word	_Label_697
	.word	-324
	.word	4
	.word	_Label_698
	.word	-328
	.word	4
	.word	_Label_699
	.word	-332
	.word	4
	.word	_Label_700
	.word	-336
	.word	4
	.word	_Label_701
	.word	-340
	.word	4
	.word	_Label_702
	.word	-344
	.word	4
	.word	_Label_703
	.word	-348
	.word	4
	.word	_Label_704
	.word	-352
	.word	4
	.word	_Label_705
	.word	-356
	.word	4
	.word	_Label_706
	.word	-360
	.word	4
	.word	_Label_707
	.word	-364
	.word	4
	.word	_Label_708
	.word	-368
	.word	4
	.word	_Label_709
	.word	-372
	.word	4
	.word	_Label_710
	.word	-376
	.word	4
	.word	_Label_711
	.word	-380
	.word	4
	.word	_Label_712
	.word	-384
	.word	4
	.word	_Label_713
	.word	-388
	.word	4
	.word	_Label_714
	.word	-480
	.word	92
	.word	_Label_715
	.word	-484
	.word	4
	.word	_Label_716
	.word	-488
	.word	4
	.word	_Label_717
	.word	-492
	.word	4
	.word	0
_Label_618:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_709:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_710:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_711:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_712:
	.byte	'I'
	.ascii	"numberFramesNeeded\0"
	.align
_Label_713:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_714:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"oldFrameAddr\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"newFrameAddr\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_P_Kernel_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ResumeChildAfterFork,r1
	push	r1
	mov	18,r1
_Label_4433:
	push	r0
	sub	r1,1,r1
	bne	_Label_4433
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_719 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_718 = *_temp_719  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_718) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_720 = _temp_718 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Send message SetToThisPageTable
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_722 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-44]
!   Move address of _temp_722 [0 ] into _temp_723
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_721 = _temp_723		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_724 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_724 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_725 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_725 [999 ] into _temp_726
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   initSystemStackTop = _temp_726		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-68]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_728 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_728 [14 ] into _temp_729
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_727 = *_temp_729  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_730 = initSystemStackTop		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldUserPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_730  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_731
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_732
	.word	8
	.word	4
	.word	_Label_733
	.word	-12
	.word	4
	.word	_Label_734
	.word	-16
	.word	4
	.word	_Label_735
	.word	-20
	.word	4
	.word	_Label_736
	.word	-24
	.word	4
	.word	_Label_737
	.word	-28
	.word	4
	.word	_Label_738
	.word	-32
	.word	4
	.word	_Label_739
	.word	-36
	.word	4
	.word	_Label_740
	.word	-40
	.word	4
	.word	_Label_741
	.word	-44
	.word	4
	.word	_Label_742
	.word	-48
	.word	4
	.word	_Label_743
	.word	-52
	.word	4
	.word	_Label_744
	.word	-56
	.word	4
	.word	_Label_745
	.word	-60
	.word	4
	.word	_Label_746
	.word	-64
	.word	4
	.word	_Label_747
	.word	-68
	.word	4
	.word	0
_Label_731:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_747:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	30,r1
_Label_4434:
	push	r0
	sub	r1,1,r1
	bne	_Label_4434
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_752 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_753 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_752  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_748:
!   Perform the FOR-LOOP termination test
!   if i > _temp_753 then goto _Label_751		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_751
_Label_749:
	mov	1877,r13		! source line 1877
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0IF",r10
!   _temp_757 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_758 = _temp_757 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_758 [i ] into _temp_759
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_760 = _temp_759 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_756 = *_temp_760  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_756 != processID then goto _Label_755		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_755
!	jmp	_Label_754
_Label_754:
! THEN...
	mov	1879,r13		! source line 1879
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   _temp_765 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_766 = _temp_765 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_766 [i ] into _temp_767
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_768 = _temp_767 + 20
	load	[r14+-72],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_764 = *_temp_768  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_764 == 3 then goto _Label_762		(int)
	load	[r14+-84],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_762
!	jmp	_Label_763
_Label_763:
!   _temp_770 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_771 = _temp_770 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_771 [i ] into _temp_772
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_773 = _temp_772 + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   Data Move: _temp_769 = *_temp_773  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_775 = *_temp_776  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_775) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = _temp_775 + 12
	load	[r14+-40],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_774 = *_temp_777  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_769 != _temp_774 then goto _Label_762		(int)
	load	[r14+-64],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bne	_Label_762
!	jmp	_Label_761
_Label_761:
! THEN...
	mov	1880,r13		! source line 1880
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
	mov	1880,r13		! source line 1880
	mov	"\0\0SE",r10
!   _temp_779 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_780 = _temp_779 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_780 [i ] into _temp_781
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_778 = _temp_781		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_782 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_778  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=returnVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0RE",r10
!   ReturnResult: returnVal  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_762:
! END IF...
_Label_755:
!   Increment the FOR-LOOP index variable and jump back
_Label_750:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_748
! END FOR
_Label_751:
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_783
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_784
	.word	8
	.word	4
	.word	_Label_785
	.word	-12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	_Label_787
	.word	-20
	.word	4
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-28
	.word	4
	.word	_Label_790
	.word	-32
	.word	4
	.word	_Label_791
	.word	-36
	.word	4
	.word	_Label_792
	.word	-40
	.word	4
	.word	_Label_793
	.word	-44
	.word	4
	.word	_Label_794
	.word	-48
	.word	4
	.word	_Label_795
	.word	-52
	.word	4
	.word	_Label_796
	.word	-56
	.word	4
	.word	_Label_797
	.word	-60
	.word	4
	.word	_Label_798
	.word	-64
	.word	4
	.word	_Label_799
	.word	-68
	.word	4
	.word	_Label_800
	.word	-72
	.word	4
	.word	_Label_801
	.word	-76
	.word	4
	.word	_Label_802
	.word	-80
	.word	4
	.word	_Label_803
	.word	-84
	.word	4
	.word	_Label_804
	.word	-88
	.word	4
	.word	_Label_805
	.word	-92
	.word	4
	.word	_Label_806
	.word	-96
	.word	4
	.word	_Label_807
	.word	-100
	.word	4
	.word	_Label_808
	.word	-104
	.word	4
	.word	_Label_809
	.word	-108
	.word	4
	.word	_Label_810
	.word	-112
	.word	4
	.word	_Label_811
	.word	-116
	.word	4
	.word	_Label_812
	.word	-120
	.word	4
	.word	0
_Label_783:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_811:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_812:
	.byte	'I'
	.ascii	"returnVal\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	69,r1
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
	mov	1892,r13		! source line 1892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-224,r4
	mov	23,r3
_Label_4436:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4436
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0SE",r10
!   _temp_814 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-124]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   _temp_815 = &strBuffer
	add	r14,-268,r1
	store	r1,[r14+-120]
!   _temp_816 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_818 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_817 = *_temp_818  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_817) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_819 = _temp_817 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_815  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_816  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0IF",r10
!   if temp >= 0 then goto _Label_821		(int)
	load	[r14+-244],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	1909,r13		! source line 1909
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_822 = &strBuffer
	add	r14,-268,r1
	store	r1,[r14+-100]
!   _temp_823 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_822  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0IF",r10
!   if intIsZero (newOpenFile) then goto _Label_824
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_824
	jmp	_Label_825
_Label_824:
! THEN...
	mov	1914,r13		! source line 1914
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_825:
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_826 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-92]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_826  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! SEND STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0SE",r10
!   _temp_827 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=newOpenFile  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_829		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_829
!	jmp	_Label_828
_Label_828:
! THEN...
	mov	1921,r13		! source line 1921
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_829:
! SEND STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_831 = *_temp_832  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_831) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_833 = _temp_831 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_830 = _temp_833		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-84]
!   _temp_834 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_830  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_835 = *_temp_836  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_835) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _temp_835 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_837 = newAddrSpace  (sizeInBytes=92)
	add	r14,-224,r5
	load	[r14+-56],r4
	mov	23,r3
_Label_4437:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4437
! SEND STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_839 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_838 = *_temp_839  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_838) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_840 = _temp_838 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_842 = *_temp_843  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_842) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _temp_842 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   _temp_845 = _temp_844 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_841 = *_temp_845  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   InitUserStackTop = _temp_841 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_846 [999 ] into _temp_847
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   initSystemStackTop = _temp_847		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_848 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_848 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_849
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_850
	.word	8
	.word	4
	.word	_Label_851
	.word	-12
	.word	4
	.word	_Label_852
	.word	-16
	.word	4
	.word	_Label_853
	.word	-20
	.word	4
	.word	_Label_854
	.word	-24
	.word	4
	.word	_Label_855
	.word	-28
	.word	4
	.word	_Label_856
	.word	-32
	.word	4
	.word	_Label_857
	.word	-36
	.word	4
	.word	_Label_858
	.word	-40
	.word	4
	.word	_Label_859
	.word	-44
	.word	4
	.word	_Label_860
	.word	-48
	.word	4
	.word	_Label_861
	.word	-52
	.word	4
	.word	_Label_862
	.word	-56
	.word	4
	.word	_Label_863
	.word	-60
	.word	4
	.word	_Label_864
	.word	-64
	.word	4
	.word	_Label_865
	.word	-68
	.word	4
	.word	_Label_866
	.word	-72
	.word	4
	.word	_Label_867
	.word	-76
	.word	4
	.word	_Label_868
	.word	-80
	.word	4
	.word	_Label_869
	.word	-84
	.word	4
	.word	_Label_870
	.word	-88
	.word	4
	.word	_Label_871
	.word	-92
	.word	4
	.word	_Label_872
	.word	-96
	.word	4
	.word	_Label_873
	.word	-100
	.word	4
	.word	_Label_874
	.word	-104
	.word	4
	.word	_Label_875
	.word	-108
	.word	4
	.word	_Label_876
	.word	-112
	.word	4
	.word	_Label_877
	.word	-116
	.word	4
	.word	_Label_878
	.word	-120
	.word	4
	.word	_Label_879
	.word	-124
	.word	4
	.word	_Label_880
	.word	-128
	.word	4
	.word	_Label_881
	.word	-132
	.word	4
	.word	_Label_882
	.word	-224
	.word	92
	.word	_Label_883
	.word	-228
	.word	4
	.word	_Label_884
	.word	-232
	.word	4
	.word	_Label_885
	.word	-236
	.word	4
	.word	_Label_886
	.word	-240
	.word	4
	.word	_Label_887
	.word	-244
	.word	4
	.word	_Label_888
	.word	-268
	.word	24
	.word	0
_Label_849:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_850:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_881:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_882:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_883:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_885:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_886:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_887:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_888:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	17,r1
_Label_4438:
	push	r0
	sub	r1,1,r1
	bne	_Label_4438
	mov	1945,r13		! source line 1945
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0AS",r10
	mov	1952,r13		! source line 1952
	mov	"\0\0SE",r10
!   _temp_889 = &strBuffer
	add	r14,-60,r1
	store	r1,[r14+-32]
!   _temp_890 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_891 = *_temp_892  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_891) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = _temp_891 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_889  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_890  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0IF",r10
!   if temp == -1 then goto _Label_895		(int)
	load	[r14+-36],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_895
!	jmp	_Label_894
_Label_894:
! END IF...
_Label_895:
! CALL STATEMENT...
!   _temp_896 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_897
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_898
	.word	8
	.word	4
	.word	_Label_899
	.word	-12
	.word	4
	.word	_Label_900
	.word	-16
	.word	4
	.word	_Label_901
	.word	-20
	.word	4
	.word	_Label_902
	.word	-24
	.word	4
	.word	_Label_903
	.word	-28
	.word	4
	.word	_Label_904
	.word	-32
	.word	4
	.word	_Label_905
	.word	-36
	.word	4
	.word	_Label_906
	.word	-60
	.word	24
	.word	0
_Label_897:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_898:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_905:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_906:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	52,r1
_Label_4439:
	push	r0
	sub	r1,1,r1
	bne	_Label_4439
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
	mov	1970,r13		! source line 1970
	mov	"\0\0SE",r10
!   _temp_907 = &strBuffer
	add	r14,-200,r1
	store	r1,[r14+-164]
!   _temp_908 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_910 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_909 = *_temp_910  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_909) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = _temp_909 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=_temp_907  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_908  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=temp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0IF",r10
!   if temp != -1 then goto _Label_913		(int)
	load	[r14+-168],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_913
!	jmp	_Label_912
_Label_912:
! THEN...
	mov	1972,r13		! source line 1972
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_913:
! IF STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0IF",r10
!   if temp <= 20 then goto _Label_915		(int)
	load	[r14+-168],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_915
!	jmp	_Label_914
_Label_914:
! THEN...
	mov	1976,r13		! source line 1976
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_915:
! FOR STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_920 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_921 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_920  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-172]
_Label_916:
!   Perform the FOR-LOOP termination test
!   if i > _temp_921 then goto _Label_919		
	load	[r14+-172],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_919
_Label_917:
	mov	1979,r13		! source line 1979
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_926 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_925 = *_temp_926  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_925) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_927 = _temp_925 + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-124]
!   Move address of _temp_927 [i ] into _temp_928
!     make sure index expr is >= 0
	load	[r14+-172],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_924 = *_temp_928  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_924) then goto _Label_922
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_922
	jmp	_Label_923
_Label_922:
! THEN...
	mov	1981,r13		! source line 1981
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   _temp_931 = &strBuffer
	add	r14,-200,r1
	store	r1,[r14+-116]
!   _temp_932 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_932  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_929 else goto _Label_930
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_930
	jmp	_Label_929
_Label_929:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_933 = *_temp_934  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_933) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _temp_933 + 124
	load	[r14+-108],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Move address of _temp_935 [i ] into _temp_936
!     make sure index expr is >= 0
	load	[r14+-172],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_938 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_939 = _temp_938 + 772
	load	[r14+-88],r1
	add	r1,772,r1
	store	r1,[r14+-84]
!   _temp_937 = _temp_939		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-92]
!   Data Move: *_temp_936 = _temp_937  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_941 = *_temp_942  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_941) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = _temp_941 + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_943 [i ] into _temp_944
!     make sure index expr is >= 0
	load	[r14+-172],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_940 = *_temp_944  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_945 = _temp_940 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_945 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_930:
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
	mov	1986,r13		! source line 1986
	mov	"\0\0SE",r10
!   _temp_946 = &strBuffer
	add	r14,-200,r1
	store	r1,[r14+-56]
!   _temp_947 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_946  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0IF",r10
!   if intIsZero (newFile) then goto _Label_948
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_948
	jmp	_Label_949
_Label_948:
! THEN...
	mov	1988,r13		! source line 1988
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_949:
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_950 = *_temp_951  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_950) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = _temp_950 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_952 [i ] into _temp_953
!     make sure index expr is >= 0
	load	[r14+-172],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: *_temp_953 = newFile  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_956 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_955 = *_temp_956  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_955) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_957 = _temp_955 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_957 [i ] into _temp_958
!     make sure index expr is >= 0
	load	[r14+-172],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_954 = *_temp_958  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_954) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = _temp_954 + 12
	load	[r14+-32],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_959 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_923:
!   Increment the FOR-LOOP index variable and jump back
_Label_918:
!   i = i + 1
	load	[r14+-172],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
	jmp	_Label_916
! END FOR
_Label_919:
! RETURN STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,212,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_960
	.word	4		! total size of parameters
	.word	208		! frame size = 208
	.word	_Label_961
	.word	8
	.word	4
	.word	_Label_962
	.word	-12
	.word	4
	.word	_Label_963
	.word	-16
	.word	4
	.word	_Label_964
	.word	-20
	.word	4
	.word	_Label_965
	.word	-24
	.word	4
	.word	_Label_966
	.word	-28
	.word	4
	.word	_Label_967
	.word	-32
	.word	4
	.word	_Label_968
	.word	-36
	.word	4
	.word	_Label_969
	.word	-40
	.word	4
	.word	_Label_970
	.word	-44
	.word	4
	.word	_Label_971
	.word	-48
	.word	4
	.word	_Label_972
	.word	-52
	.word	4
	.word	_Label_973
	.word	-56
	.word	4
	.word	_Label_974
	.word	-60
	.word	4
	.word	_Label_975
	.word	-64
	.word	4
	.word	_Label_976
	.word	-68
	.word	4
	.word	_Label_977
	.word	-72
	.word	4
	.word	_Label_978
	.word	-76
	.word	4
	.word	_Label_979
	.word	-80
	.word	4
	.word	_Label_980
	.word	-84
	.word	4
	.word	_Label_981
	.word	-88
	.word	4
	.word	_Label_982
	.word	-92
	.word	4
	.word	_Label_983
	.word	-96
	.word	4
	.word	_Label_984
	.word	-100
	.word	4
	.word	_Label_985
	.word	-104
	.word	4
	.word	_Label_986
	.word	-108
	.word	4
	.word	_Label_987
	.word	-112
	.word	4
	.word	_Label_988
	.word	-116
	.word	4
	.word	_Label_989
	.word	-120
	.word	4
	.word	_Label_990
	.word	-124
	.word	4
	.word	_Label_991
	.word	-128
	.word	4
	.word	_Label_992
	.word	-132
	.word	4
	.word	_Label_993
	.word	-136
	.word	4
	.word	_Label_994
	.word	-140
	.word	4
	.word	_Label_995
	.word	-144
	.word	4
	.word	_Label_996
	.word	-148
	.word	4
	.word	_Label_997
	.word	-152
	.word	4
	.word	_Label_998
	.word	-156
	.word	4
	.word	_Label_999
	.word	-160
	.word	4
	.word	_Label_1000
	.word	-164
	.word	4
	.word	_Label_1001
	.word	-168
	.word	4
	.word	_Label_1002
	.word	-172
	.word	4
	.word	_Label_1003
	.word	-176
	.word	4
	.word	_Label_1004
	.word	-200
	.word	24
	.word	0
_Label_960:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_961:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_1002:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1003:
	.byte	'P'
	.ascii	"newFile\0"
	.align
_Label_1004:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	136,r1
_Label_4440:
	push	r0
	sub	r1,1,r1
	bne	_Label_4440
	mov	2000,r13		! source line 2000
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-532]
! IF STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1010		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1010
	jmp	_Label_1005
_Label_1010:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1013 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-476]
!   Data Move: _temp_1012 = *_temp_1013  (sizeInBytes=4)
	load	[r14+-476],r1
	load	[r1],r1
	store	r1,[r14+-480]
!   if intIsZero (_temp_1012) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1014 = _temp_1012 + 124
	load	[r14+-480],r1
	add	r1,124,r1
	store	r1,[r14+-472]
!   Data Move: _temp_1011 = *_temp_1014  (sizeInBytes=4)
	load	[r14+-472],r1
	load	[r1],r1
	store	r1,[r14+-484]
!   if fileDesc <= _temp_1011 then goto _Label_1009		(int)
	load	[r14+8],r1
	load	[r14+-484],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1009
	jmp	_Label_1005
_Label_1009:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1017 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-460]
!   Data Move: _temp_1016 = *_temp_1017  (sizeInBytes=4)
	load	[r14+-460],r1
	load	[r1],r1
	store	r1,[r14+-464]
!   if intIsZero (_temp_1016) then goto _runtimeErrorNullPointer
	load	[r14+-464],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1018 = _temp_1016 + 124
	load	[r14+-464],r1
	add	r1,124,r1
	store	r1,[r14+-456]
!   Move address of _temp_1018 [fileDesc ] into _temp_1019
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-456],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-452]
!   Data Move: _temp_1015 = *_temp_1019  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r1],r1
	store	r1,[r14+-468]
!   if intIsZero (_temp_1015) then goto _Label_1005
	load	[r14+-468],r1
	cmp	r1,r0
	be	_Label_1005
!	jmp	_Label_1008
_Label_1008:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1024 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-440]
!   Data Move: _temp_1023 = *_temp_1024  (sizeInBytes=4)
	load	[r14+-440],r1
	load	[r1],r1
	store	r1,[r14+-444]
!   if intIsZero (_temp_1023) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1025 = _temp_1023 + 124
	load	[r14+-444],r1
	add	r1,124,r1
	store	r1,[r14+-436]
!   Move address of _temp_1025 [fileDesc ] into _temp_1026
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-436],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-432]
!   Data Move: _temp_1022 = *_temp_1026  (sizeInBytes=4)
	load	[r14+-432],r1
	load	[r1],r1
	store	r1,[r14+-448]
!   if intIsZero (_temp_1022) then goto _Label_1007
	load	[r14+-448],r1
	cmp	r1,r0
	be	_Label_1007
!	jmp	_Label_1021
_Label_1021:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-416]
!   Data Move: _temp_1029 = *_temp_1030  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-420]
!   if intIsZero (_temp_1029) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _temp_1029 + 124
	load	[r14+-420],r1
	add	r1,124,r1
	store	r1,[r14+-412]
!   Move address of _temp_1031 [fileDesc ] into _temp_1032
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-412],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-408]
!   Data Move: _temp_1028 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r1],r1
	store	r1,[r14+-424]
!   if intIsZero (_temp_1028) then goto _runtimeErrorNullPointer
	load	[r14+-424],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _temp_1028 + 20
	load	[r14+-424],r1
	add	r1,20,r1
	store	r1,[r14+-404]
!   Data Move: _temp_1027 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-404],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1027) then goto _Label_1020
	load	[r14+-428],r1
	cmp	r1,r0
	be	_Label_1020
	jmp	_Label_1007
_Label_1020:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1036 = *_temp_1037  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-392]
!   if intIsZero (_temp_1036) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1038 = _temp_1036 + 124
	load	[r14+-392],r1
	add	r1,124,r1
	store	r1,[r14+-384]
!   Move address of _temp_1038 [fileDesc ] into _temp_1039
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-384],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-380]
!   Data Move: _temp_1035 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-380],r1
	load	[r1],r1
	store	r1,[r14+-396]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-396],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _temp_1035 + 12
	load	[r14+-396],r1
	add	r1,12,r1
	store	r1,[r14+-376]
!   Data Move: _temp_1034 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-400]
!   if _temp_1034 == 2 then goto _Label_1007		(int)
	load	[r14+-400],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1007
	jmp	_Label_1005
_Label_1007:
!   if sizeInBytes >= 0 then goto _Label_1006		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1006
!	jmp	_Label_1005
_Label_1005:
! THEN...
	mov	2026,r13		! source line 2026
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1006:
! IF STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1046 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1045 = *_temp_1046  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1045) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1047 = _temp_1045 + 124
	load	[r14+-364],r1
	add	r1,124,r1
	store	r1,[r14+-356]
!   Move address of _temp_1047 [fileDesc ] into _temp_1048
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-352]
!   Data Move: _temp_1044 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_1044) then goto _runtimeErrorNullPointer
	load	[r14+-368],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = _temp_1044 + 12
	load	[r14+-368],r1
	add	r1,12,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1043 = *_temp_1049  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-372]
!   if _temp_1043 != 2 then goto _Label_1042		(int)
	load	[r14+-372],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1042
!	jmp	_Label_1041
_Label_1041:
! THEN...
	mov	2031,r13		! source line 2031
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-488],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-488],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-504]
! WHILE STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0WH",r10
_Label_1050:
!	jmp	_Label_1051
_Label_1051:
	mov	2036,r13		! source line 2036
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-500],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! IF STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0IF",r10
!   _temp_1055 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-504],r1
	load	[r14+-508],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-344]
!   if _temp_1055 <= sizeInBytes then goto _Label_1054		(int)
	load	[r14+-344],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1054
!	jmp	_Label_1053
_Label_1053:
! THEN...
	mov	2039,r13		! source line 2039
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-504],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! END IF...
_Label_1054:
! IF STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1057		(int)
	load	[r14+-508],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1057
!	jmp	_Label_1056
_Label_1056:
! THEN...
	mov	2043,r13		! source line 2043
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0BR",r10
	jmp	_Label_1052
! END IF...
_Label_1057:
! IF STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1062		(int)
	load	[r14+-496],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1062
	jmp	_Label_1058
_Label_1062:
!   if virtPage <= 512 then goto _Label_1061		(int)
	load	[r14+-496],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1061
	jmp	_Label_1058
_Label_1061:
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-336]
!   Data Move: _temp_1064 = *_temp_1065  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _temp_1064 + 32
	load	[r14+-340],r1
	add	r1,32,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-332],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1063  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   if _temp_1063 then goto _Label_1060 else goto _Label_1058
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_1058
	jmp	_Label_1060
_Label_1060:
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-324]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 32
	load	[r14+-328],r1
	add	r1,32,r1
	store	r1,[r14+-320]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1067  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_1067 then goto _Label_1059 else goto _Label_1058
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1058
	jmp	_Label_1059
_Label_1058:
! THEN...
	mov	2049,r13		! source line 2049
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1059:
! SEND STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-312]
!   Data Move: _temp_1071 = *_temp_1072  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_1071) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = _temp_1071 + 32
	load	[r14+-316],r1
	add	r1,32,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-308],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1074 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1074) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = _temp_1074 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1078 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1078) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1080 = _temp_1078 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1077  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-292]
!   destAddr = _temp_1077 + offset		(int)
	load	[r14+-292],r1
	load	[r14+-500],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! IF STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1081
	load	[r14+-492],r1
	cmp	r1,r0
	be	_Label_1081
	jmp	_Label_1082
_Label_1081:
! THEN...
	mov	2060,r13		! source line 2060
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-504],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1082:
! FOR STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1087 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1088 = thisChunkSize - 1		(int)
	load	[r14+-508],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1087  (sizeInBytes=4)
	load	[r14+-276],r1
	store	r1,[r14+-528]
_Label_1083:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1088 then goto _Label_1086		
	load	[r14+-528],r1
	load	[r14+-272],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1086
_Label_1084:
	mov	2063,r13		! source line 2063
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   _temp_1089 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-268]
!   Send message GetChar
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newChar  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-504],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-504]
! IF STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0IF",r10
!   _temp_1093 = newChar XOR 13		(bool)
	loadb	[r14+-16],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_1093 then goto _Label_1092 else goto _Label_1090
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1090
	jmp	_Label_1092
_Label_1092:
!   _temp_1094 = newChar XOR 10		(bool)
	loadb	[r14+-16],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1094 then goto _Label_1091 else goto _Label_1090
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1090
	jmp	_Label_1091
_Label_1090:
! THEN...
	mov	2068,r13		! source line 2068
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   _temp_1095 = destAddr + index		(int)
	load	[r14+-492],r1
	load	[r14+-528],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
!   if intIsZero (_temp_1095) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1095 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-264],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-504],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1091:
! IF STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0IF",r10
!   _temp_1098 = charToInt (newChar)
	loadb	[r14+-16],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-260]
!   if _temp_1098 != 4 then goto _Label_1097		(int)
	load	[r14+-260],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1097
!	jmp	_Label_1096
_Label_1096:
! THEN...
	mov	2073,r13		! source line 2073
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0RE",r10
!   _temp_1099 = copiedSoFar - 1		(int)
	load	[r14+-504],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
!   ReturnResult: _temp_1099  (sizeInBytes=4)
	load	[r14+-256],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1097:
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   _temp_1100 = destAddr + index		(int)
	load	[r14+-492],r1
	load	[r14+-528],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
!   if intIsZero (_temp_1100) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1100 = newChar  (sizeInBytes=1)
	loadb	[r14+-16],r1
	load	[r14+-252],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1085:
!   index = index + 1
	load	[r14+-528],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-528]
	jmp	_Label_1083
! END FOR
_Label_1086:
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-496],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-500]
! IF STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1102		(int)
	load	[r14+-504],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1102
!	jmp	_Label_1101
_Label_1101:
! THEN...
	mov	2088,r13		! source line 2088
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0BR",r10
	jmp	_Label_1052
! END IF...
_Label_1102:
! END WHILE...
	jmp	_Label_1050
_Label_1052:
! RETURN STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-504],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1042:
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1105 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1104 = *_temp_1105  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1104) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1106 = _temp_1104 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_1106 [fileDesc ] into _temp_1107
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-232]
!   Data Move: _temp_1103 = *_temp_1107  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1103) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1108 = _temp_1103 + 16
	load	[r14+-248],r1
	add	r1,16,r1
	store	r1,[r14+-228]
!   Data Move: initialPosition = *_temp_1108  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-520]
! FOR STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1113 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-224]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1114 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-220]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1113  (sizeInBytes=4)
	load	[r14+-224],r1
	store	r1,[r14+-524]
_Label_1109:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1114 then goto _Label_1112		
	load	[r14+-524],r1
	load	[r14+-220],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1112
_Label_1110:
	mov	2096,r13		! source line 2096
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-488],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-488],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1116 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1116) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1118 = _temp_1116 + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   Move address of _temp_1118 [fileDesc ] into _temp_1119
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-200]
!   Data Move: _temp_1115 = *_temp_1119  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_1115) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1120 = _temp_1115 + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-196]
!   Data Move: *_temp_1120 = initialPosition  (sizeInBytes=4)
	load	[r14+-520],r1
	load	[r14+-196],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1123 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1122 = *_temp_1123  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1122) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1124 = _temp_1122 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_1124 [fileDesc ] into _temp_1125
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: _temp_1121 = *_temp_1125  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1121) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = _temp_1121 + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: nextPosInFile = *_temp_1126  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-512]
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1129 = *_temp_1130  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1129) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = _temp_1129 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_1131 [fileDesc ] into _temp_1132
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Data Move: _temp_1128 = *_temp_1132  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1128) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1133 = _temp_1128 + 20
	load	[r14+-164],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1127 = *_temp_1133  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1127) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1134 = _temp_1127 + 24
	load	[r14+-168],r1
	add	r1,24,r1
	store	r1,[r14+-140]
!   Data Move: sizeOfFile = *_temp_1134  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-516]
! WHILE STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0WH",r10
_Label_1135:
!	jmp	_Label_1136
_Label_1136:
	mov	2106,r13		! source line 2106
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-500],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! IF STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0IF",r10
!   _temp_1140 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-512],r1
	load	[r14+-508],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if _temp_1140 <= sizeOfFile then goto _Label_1139		(int)
	load	[r14+-136],r1
	load	[r14+-516],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1139
!	jmp	_Label_1138
_Label_1138:
! THEN...
	mov	2111,r13		! source line 2111
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-516],r1
	load	[r14+-512],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! END IF...
_Label_1139:
! IF STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0IF",r10
!   _temp_1143 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-504],r1
	load	[r14+-508],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1143 <= sizeInBytes then goto _Label_1142		(int)
	load	[r14+-132],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1142
!	jmp	_Label_1141
_Label_1141:
! THEN...
	mov	2114,r13		! source line 2114
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-504],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-508]
! END IF...
_Label_1142:
! IF STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1145		(int)
	load	[r14+-508],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1145
!	jmp	_Label_1144
_Label_1144:
! THEN...
	mov	2119,r13		! source line 2119
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0BR",r10
	jmp	_Label_1137
! END IF...
_Label_1145:
! IF STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1150		(int)
	load	[r14+-496],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1150
	jmp	_Label_1146
_Label_1150:
!   if virtPage <= 512 then goto _Label_1149		(int)
	load	[r14+-496],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1149
	jmp	_Label_1146
_Label_1149:
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1152 = *_temp_1153  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1152) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1154 = _temp_1152 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1151  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1151 then goto _Label_1148 else goto _Label_1146
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1146
	jmp	_Label_1148
_Label_1148:
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1157 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1156 = *_temp_1157  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1156) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1158 = _temp_1156 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1155  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1155 then goto _Label_1147 else goto _Label_1146
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1146
	jmp	_Label_1147
_Label_1146:
! THEN...
	mov	2124,r13		! source line 2124
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1147:
! IF STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0IF",r10
!   if i != 2 then goto _Label_1160		(int)
	load	[r14+-524],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1160
!	jmp	_Label_1159
_Label_1159:
! THEN...
	mov	2130,r13		! source line 2130
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1161 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1161) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _temp_1161 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1164 = *_temp_1165  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1164) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1166 = _temp_1164 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1168 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1168) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _temp_1168 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1167  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   destAddr = _temp_1167 + offset		(int)
	load	[r14+-80],r1
	load	[r14+-500],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
! IF STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1171
	load	[r14+-492],r1
	cmp	r1,r0
	be	_Label_1171
	jmp	_Label_1172
_Label_1171:
! THEN...
	mov	2136,r13		! source line 2136
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-504],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1172:
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1174 = *_temp_1175  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1174) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1176 = _temp_1174 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_1176 [fileDesc ] into _temp_1177
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_1173 = *_temp_1177  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_1178 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1173  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-492],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
! IF STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0IF",r10
!   if readStatus then goto _Label_1180 else goto _Label_1179
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1179
	jmp	_Label_1180
_Label_1179:
! THEN...
	mov	2141,r13		! source line 2141
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1180:
! END IF...
_Label_1160:
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-512],r1
	load	[r14+-508],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-512]
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1182 = *_temp_1183  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1182) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1184 = _temp_1182 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1184 [fileDesc ] into _temp_1185
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1181 = *_temp_1185  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1181) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1186 = _temp_1181 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1186 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-512],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-504],r1
	load	[r14+-508],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-496],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-500]
! IF STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1188		(int)
	load	[r14+-504],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1188
!	jmp	_Label_1187
_Label_1187:
! THEN...
	mov	2154,r13		! source line 2154
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0BR",r10
	jmp	_Label_1137
! END IF...
_Label_1188:
! END WHILE...
	jmp	_Label_1135
_Label_1137:
!   Increment the FOR-LOOP index variable and jump back
_Label_1111:
!   i = i + 1
	load	[r14+-524],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-524]
	jmp	_Label_1109
! END FOR
_Label_1112:
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-504],r1
	store	r1,[r14+8]
	add	r15,548,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1189
	.word	12		! total size of parameters
	.word	544		! frame size = 544
	.word	_Label_1190
	.word	8
	.word	4
	.word	_Label_1191
	.word	12
	.word	4
	.word	_Label_1192
	.word	16
	.word	4
	.word	_Label_1193
	.word	-20
	.word	4
	.word	_Label_1194
	.word	-24
	.word	4
	.word	_Label_1195
	.word	-28
	.word	4
	.word	_Label_1196
	.word	-32
	.word	4
	.word	_Label_1197
	.word	-36
	.word	4
	.word	_Label_1198
	.word	-40
	.word	4
	.word	_Label_1199
	.word	-44
	.word	4
	.word	_Label_1200
	.word	-48
	.word	4
	.word	_Label_1201
	.word	-52
	.word	4
	.word	_Label_1202
	.word	-56
	.word	4
	.word	_Label_1203
	.word	-60
	.word	4
	.word	_Label_1204
	.word	-64
	.word	4
	.word	_Label_1205
	.word	-68
	.word	4
	.word	_Label_1206
	.word	-72
	.word	4
	.word	_Label_1207
	.word	-76
	.word	4
	.word	_Label_1208
	.word	-80
	.word	4
	.word	_Label_1209
	.word	-84
	.word	4
	.word	_Label_1210
	.word	-88
	.word	4
	.word	_Label_1211
	.word	-92
	.word	4
	.word	_Label_1212
	.word	-96
	.word	4
	.word	_Label_1213
	.word	-100
	.word	4
	.word	_Label_1214
	.word	-104
	.word	4
	.word	_Label_1215
	.word	-108
	.word	4
	.word	_Label_1216
	.word	-112
	.word	4
	.word	_Label_1217
	.word	-116
	.word	4
	.word	_Label_1218
	.word	-9
	.word	1
	.word	_Label_1219
	.word	-120
	.word	4
	.word	_Label_1220
	.word	-124
	.word	4
	.word	_Label_1221
	.word	-128
	.word	4
	.word	_Label_1222
	.word	-10
	.word	1
	.word	_Label_1223
	.word	-132
	.word	4
	.word	_Label_1224
	.word	-136
	.word	4
	.word	_Label_1225
	.word	-140
	.word	4
	.word	_Label_1226
	.word	-144
	.word	4
	.word	_Label_1227
	.word	-148
	.word	4
	.word	_Label_1228
	.word	-152
	.word	4
	.word	_Label_1229
	.word	-156
	.word	4
	.word	_Label_1230
	.word	-160
	.word	4
	.word	_Label_1231
	.word	-164
	.word	4
	.word	_Label_1232
	.word	-168
	.word	4
	.word	_Label_1233
	.word	-172
	.word	4
	.word	_Label_1234
	.word	-176
	.word	4
	.word	_Label_1235
	.word	-180
	.word	4
	.word	_Label_1236
	.word	-184
	.word	4
	.word	_Label_1237
	.word	-188
	.word	4
	.word	_Label_1238
	.word	-192
	.word	4
	.word	_Label_1239
	.word	-196
	.word	4
	.word	_Label_1240
	.word	-200
	.word	4
	.word	_Label_1241
	.word	-204
	.word	4
	.word	_Label_1242
	.word	-208
	.word	4
	.word	_Label_1243
	.word	-212
	.word	4
	.word	_Label_1244
	.word	-216
	.word	4
	.word	_Label_1245
	.word	-220
	.word	4
	.word	_Label_1246
	.word	-224
	.word	4
	.word	_Label_1247
	.word	-228
	.word	4
	.word	_Label_1248
	.word	-232
	.word	4
	.word	_Label_1249
	.word	-236
	.word	4
	.word	_Label_1250
	.word	-240
	.word	4
	.word	_Label_1251
	.word	-244
	.word	4
	.word	_Label_1252
	.word	-248
	.word	4
	.word	_Label_1253
	.word	-252
	.word	4
	.word	_Label_1254
	.word	-256
	.word	4
	.word	_Label_1255
	.word	-260
	.word	4
	.word	_Label_1256
	.word	-264
	.word	4
	.word	_Label_1257
	.word	-11
	.word	1
	.word	_Label_1258
	.word	-12
	.word	1
	.word	_Label_1259
	.word	-268
	.word	4
	.word	_Label_1260
	.word	-272
	.word	4
	.word	_Label_1261
	.word	-276
	.word	4
	.word	_Label_1262
	.word	-280
	.word	4
	.word	_Label_1263
	.word	-284
	.word	4
	.word	_Label_1264
	.word	-288
	.word	4
	.word	_Label_1265
	.word	-292
	.word	4
	.word	_Label_1266
	.word	-296
	.word	4
	.word	_Label_1267
	.word	-300
	.word	4
	.word	_Label_1268
	.word	-304
	.word	4
	.word	_Label_1269
	.word	-308
	.word	4
	.word	_Label_1270
	.word	-312
	.word	4
	.word	_Label_1271
	.word	-316
	.word	4
	.word	_Label_1272
	.word	-320
	.word	4
	.word	_Label_1273
	.word	-324
	.word	4
	.word	_Label_1274
	.word	-328
	.word	4
	.word	_Label_1275
	.word	-13
	.word	1
	.word	_Label_1276
	.word	-332
	.word	4
	.word	_Label_1277
	.word	-336
	.word	4
	.word	_Label_1278
	.word	-340
	.word	4
	.word	_Label_1279
	.word	-14
	.word	1
	.word	_Label_1280
	.word	-344
	.word	4
	.word	_Label_1281
	.word	-348
	.word	4
	.word	_Label_1282
	.word	-352
	.word	4
	.word	_Label_1283
	.word	-356
	.word	4
	.word	_Label_1284
	.word	-360
	.word	4
	.word	_Label_1285
	.word	-364
	.word	4
	.word	_Label_1286
	.word	-368
	.word	4
	.word	_Label_1287
	.word	-372
	.word	4
	.word	_Label_1288
	.word	-376
	.word	4
	.word	_Label_1289
	.word	-380
	.word	4
	.word	_Label_1290
	.word	-384
	.word	4
	.word	_Label_1291
	.word	-388
	.word	4
	.word	_Label_1292
	.word	-392
	.word	4
	.word	_Label_1293
	.word	-396
	.word	4
	.word	_Label_1294
	.word	-400
	.word	4
	.word	_Label_1295
	.word	-404
	.word	4
	.word	_Label_1296
	.word	-408
	.word	4
	.word	_Label_1297
	.word	-412
	.word	4
	.word	_Label_1298
	.word	-416
	.word	4
	.word	_Label_1299
	.word	-420
	.word	4
	.word	_Label_1300
	.word	-424
	.word	4
	.word	_Label_1301
	.word	-428
	.word	4
	.word	_Label_1302
	.word	-432
	.word	4
	.word	_Label_1303
	.word	-436
	.word	4
	.word	_Label_1304
	.word	-440
	.word	4
	.word	_Label_1305
	.word	-444
	.word	4
	.word	_Label_1306
	.word	-448
	.word	4
	.word	_Label_1307
	.word	-452
	.word	4
	.word	_Label_1308
	.word	-456
	.word	4
	.word	_Label_1309
	.word	-460
	.word	4
	.word	_Label_1310
	.word	-464
	.word	4
	.word	_Label_1311
	.word	-468
	.word	4
	.word	_Label_1312
	.word	-472
	.word	4
	.word	_Label_1313
	.word	-476
	.word	4
	.word	_Label_1314
	.word	-480
	.word	4
	.word	_Label_1315
	.word	-484
	.word	4
	.word	_Label_1316
	.word	-15
	.word	1
	.word	_Label_1317
	.word	-488
	.word	4
	.word	_Label_1318
	.word	-492
	.word	4
	.word	_Label_1319
	.word	-496
	.word	4
	.word	_Label_1320
	.word	-500
	.word	4
	.word	_Label_1321
	.word	-504
	.word	4
	.word	_Label_1322
	.word	-508
	.word	4
	.word	_Label_1323
	.word	-512
	.word	4
	.word	_Label_1324
	.word	-516
	.word	4
	.word	_Label_1325
	.word	-520
	.word	4
	.word	_Label_1326
	.word	-524
	.word	4
	.word	_Label_1327
	.word	-528
	.word	4
	.word	_Label_1328
	.word	-16
	.word	1
	.word	_Label_1329
	.word	-532
	.word	4
	.word	0
_Label_1189:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1190:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1191:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1218:
	.byte	'C'
	.ascii	"_temp_1155\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1222:
	.byte	'C'
	.ascii	"_temp_1151\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1257:
	.byte	'C'
	.ascii	"_temp_1094\0"
	.align
_Label_1258:
	.byte	'C'
	.ascii	"_temp_1093\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1275:
	.byte	'C'
	.ascii	"_temp_1067\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1279:
	.byte	'C'
	.ascii	"_temp_1063\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1316:
	.byte	'B'
	.ascii	"readStatus\0"
	.align
_Label_1317:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1319:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1320:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1321:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1322:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1323:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1324:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1325:
	.byte	'I'
	.ascii	"initialPosition\0"
	.align
_Label_1326:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1327:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1328:
	.byte	'C'
	.ascii	"newChar\0"
	.align
_Label_1329:
	.byte	'I'
	.ascii	"oldInt\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	122,r1
_Label_4441:
	push	r0
	sub	r1,1,r1
	bne	_Label_4441
	mov	2165,r13		! source line 2165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1335		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1335
	jmp	_Label_1330
_Label_1335:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _temp_1337 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Data Move: _temp_1336 = *_temp_1339  (sizeInBytes=4)
	load	[r14+-420],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if fileDesc <= _temp_1336 then goto _Label_1334		(int)
	load	[r14+8],r1
	load	[r14+-432],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1334
	jmp	_Label_1330
_Label_1334:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1342 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-408]
!   Data Move: _temp_1341 = *_temp_1342  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if intIsZero (_temp_1341) then goto _runtimeErrorNullPointer
	load	[r14+-412],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = _temp_1341 + 124
	load	[r14+-412],r1
	add	r1,124,r1
	store	r1,[r14+-404]
!   Move address of _temp_1343 [fileDesc ] into _temp_1344
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-404],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-400]
!   Data Move: _temp_1340 = *_temp_1344  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-416]
!   if intIsZero (_temp_1340) then goto _Label_1330
	load	[r14+-416],r1
	cmp	r1,r0
	be	_Label_1330
!	jmp	_Label_1333
_Label_1333:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1348 = *_temp_1349  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-392]
!   if intIsZero (_temp_1348) then goto _runtimeErrorNullPointer
	load	[r14+-392],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = _temp_1348 + 124
	load	[r14+-392],r1
	add	r1,124,r1
	store	r1,[r14+-384]
!   Move address of _temp_1350 [fileDesc ] into _temp_1351
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-384],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-380]
!   Data Move: _temp_1347 = *_temp_1351  (sizeInBytes=4)
	load	[r14+-380],r1
	load	[r1],r1
	store	r1,[r14+-396]
!   if intIsZero (_temp_1347) then goto _Label_1332
	load	[r14+-396],r1
	cmp	r1,r0
	be	_Label_1332
!	jmp	_Label_1346
_Label_1346:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-364]
!   Data Move: _temp_1354 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   if intIsZero (_temp_1354) then goto _runtimeErrorNullPointer
	load	[r14+-368],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1356 = _temp_1354 + 124
	load	[r14+-368],r1
	add	r1,124,r1
	store	r1,[r14+-360]
!   Move address of _temp_1356 [fileDesc ] into _temp_1357
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-360],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-356]
!   Data Move: _temp_1353 = *_temp_1357  (sizeInBytes=4)
	load	[r14+-356],r1
	load	[r1],r1
	store	r1,[r14+-372]
!   if intIsZero (_temp_1353) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1358 = _temp_1353 + 20
	load	[r14+-372],r1
	add	r1,20,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1352 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-376]
!   if intIsZero (_temp_1352) then goto _Label_1345
	load	[r14+-376],r1
	cmp	r1,r0
	be	_Label_1345
	jmp	_Label_1332
_Label_1345:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-336]
!   Data Move: _temp_1361 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_1361) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = _temp_1361 + 124
	load	[r14+-340],r1
	add	r1,124,r1
	store	r1,[r14+-332]
!   Move address of _temp_1363 [fileDesc ] into _temp_1364
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-328]
!   Data Move: _temp_1360 = *_temp_1364  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-344]
!   if intIsZero (_temp_1360) then goto _runtimeErrorNullPointer
	load	[r14+-344],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1365 = _temp_1360 + 12
	load	[r14+-344],r1
	add	r1,12,r1
	store	r1,[r14+-324]
!   Data Move: _temp_1359 = *_temp_1365  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if _temp_1359 == 2 then goto _Label_1332		(int)
	load	[r14+-348],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1332
	jmp	_Label_1330
_Label_1332:
!   if sizeInBytes >= 0 then goto _Label_1331		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1331
!	jmp	_Label_1330
_Label_1330:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1331:
! IF STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1371 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1370 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if intIsZero (_temp_1370) then goto _runtimeErrorNullPointer
	load	[r14+-312],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _temp_1370 + 124
	load	[r14+-312],r1
	add	r1,124,r1
	store	r1,[r14+-304]
!   Move address of _temp_1372 [fileDesc ] into _temp_1373
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-304],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-300]
!   Data Move: _temp_1369 = *_temp_1373  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_1369) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1374 = _temp_1369 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_1368 = *_temp_1374  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if _temp_1368 != 2 then goto _Label_1367		(int)
	load	[r14+-320],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1367
!	jmp	_Label_1366
_Label_1366:
! THEN...
	mov	2194,r13		! source line 2194
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
! WHILE STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0WH",r10
_Label_1375:
!	jmp	_Label_1376
_Label_1376:
	mov	2199,r13		! source line 2199
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! IF STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   _temp_1380 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
!   if _temp_1380 <= sizeInBytes then goto _Label_1379		(int)
	load	[r14+-292],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1379
!	jmp	_Label_1378
_Label_1378:
! THEN...
	mov	2202,r13		! source line 2202
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1379:
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1382		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1382
!	jmp	_Label_1381
_Label_1381:
! THEN...
	mov	2206,r13		! source line 2206
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0BR",r10
	jmp	_Label_1377
! END IF...
_Label_1382:
! IF STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1386		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1386
	jmp	_Label_1383
_Label_1386:
!   if virtPage <= 512 then goto _Label_1385		(int)
	load	[r14+-444],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1385
	jmp	_Label_1383
_Label_1385:
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1389 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1388 = *_temp_1389  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1388) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1390 = _temp_1388 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1387  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1387 then goto _Label_1384 else goto _Label_1383
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1383
	jmp	_Label_1384
_Label_1383:
! THEN...
	mov	2211,r13		! source line 2211
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1384:
! SEND STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1391 = *_temp_1392  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1391) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _temp_1391 + 32
	load	[r14+-276],r1
	add	r1,32,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1395 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1395) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = _temp_1395 + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   destAddr = _temp_1394 + offset		(int)
	load	[r14+-264],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! IF STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1398
	load	[r14+-440],r1
	cmp	r1,r0
	be	_Label_1398
	jmp	_Label_1399
_Label_1398:
! THEN...
	mov	2220,r13		! source line 2220
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1399:
! FOR STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1404 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-248]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1405 = thisChunkSize - 1		(int)
	load	[r14+-456],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1404  (sizeInBytes=4)
	load	[r14+-248],r1
	store	r1,[r14+-476]
_Label_1400:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1405 then goto _Label_1403		
	load	[r14+-476],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1403
_Label_1401:
	mov	2223,r13		! source line 2223
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   _temp_1406 = destAddr + index		(int)
	load	[r14+-440],r1
	load	[r14+-476],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
!   if intIsZero (_temp_1406) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: nextChar = *_temp_1406  (sizeInBytes=1)
	load	[r14+-240],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
! IF STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0IF",r10
!   _temp_1409 = charToInt (nextChar)
	loadb	[r14+-13],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-236]
!   if _temp_1409 != 4 then goto _Label_1408		(int)
	load	[r14+-236],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1408
!	jmp	_Label_1407
_Label_1407:
! THEN...
	mov	2227,r13		! source line 2227
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1408:
! IF STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0IF",r10
!   _temp_1412 = nextChar XOR 10		(bool)
	loadb	[r14+-13],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1412 then goto _Label_1411 else goto _Label_1410
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1410
	jmp	_Label_1411
_Label_1410:
! THEN...
	mov	2231,r13		! source line 2231
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_1413 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1411:
! SEND STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   _temp_1414 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=12  value=nextChar  sizeInBytes=1
	loadb	[r14+-13],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-452],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
!   Increment the FOR-LOOP index variable and jump back
_Label_1402:
!   index = index + 1
	load	[r14+-476],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
	jmp	_Label_1400
! END FOR
_Label_1403:
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! END WHILE...
	jmp	_Label_1375
_Label_1377:
! RETURN STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1367:
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1416 = *_temp_1417  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1416) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = _temp_1416 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-212]
!   Move address of _temp_1418 [fileDesc ] into _temp_1419
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-208]
!   Data Move: _temp_1415 = *_temp_1419  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1415) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1420 = _temp_1415 + 16
	load	[r14+-224],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: initialPosition = *_temp_1420  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-468]
! FOR STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1425 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-200]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1426 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-196]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1425  (sizeInBytes=4)
	load	[r14+-200],r1
	store	r1,[r14+-472]
_Label_1421:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1426 then goto _Label_1424		
	load	[r14+-472],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1424
_Label_1422:
	mov	2257,r13		! source line 2257
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-436],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1428 = *_temp_1429  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1428) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1430 = _temp_1428 + 124
	load	[r14+-188],r1
	add	r1,124,r1
	store	r1,[r14+-180]
!   Move address of _temp_1430 [fileDesc ] into _temp_1431
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: _temp_1427 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1427) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1432 = _temp_1427 + 16
	load	[r14+-192],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: *_temp_1432 = initialPosition  (sizeInBytes=4)
	load	[r14+-468],r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1434 = *_temp_1435  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1434) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = _temp_1434 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1436 [fileDesc ] into _temp_1437
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Data Move: _temp_1433 = *_temp_1437  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1433) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1438 = _temp_1433 + 16
	load	[r14+-168],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: nextPosInFile = *_temp_1438  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1442 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1441 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1441) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = _temp_1441 + 124
	load	[r14+-136],r1
	add	r1,124,r1
	store	r1,[r14+-128]
!   Move address of _temp_1443 [fileDesc ] into _temp_1444
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1440 = *_temp_1444  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1440) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1445 = _temp_1440 + 20
	load	[r14+-140],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1439 = *_temp_1445  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1439) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1446 = _temp_1439 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-116]
!   Data Move: sizeOfFile = *_temp_1446  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-464]
! WHILE STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0WH",r10
_Label_1447:
!	jmp	_Label_1448
_Label_1448:
	mov	2267,r13		! source line 2267
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! IF STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0IF",r10
!   _temp_1452 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-460],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if _temp_1452 <= sizeOfFile then goto _Label_1451		(int)
	load	[r14+-112],r1
	load	[r14+-464],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1451
!	jmp	_Label_1450
_Label_1450:
! THEN...
	mov	2272,r13		! source line 2272
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-464],r1
	load	[r14+-460],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1451:
! IF STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0IF",r10
!   _temp_1455 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1455 <= sizeInBytes then goto _Label_1454		(int)
	load	[r14+-108],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1454
!	jmp	_Label_1453
_Label_1453:
! THEN...
	mov	2275,r13		! source line 2275
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! END IF...
_Label_1454:
! IF STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1457		(int)
	load	[r14+-456],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1457
!	jmp	_Label_1456
_Label_1456:
! THEN...
	mov	2280,r13		! source line 2280
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0BR",r10
	jmp	_Label_1449
! END IF...
_Label_1457:
! IF STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1461		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1461
	jmp	_Label_1458
_Label_1461:
!   if virtPage <= 512 then goto _Label_1460		(int)
	load	[r14+-444],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1460
	jmp	_Label_1458
_Label_1460:
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1464 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1463 = *_temp_1464  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1463) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1465 = _temp_1463 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1462  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1462 then goto _Label_1459 else goto _Label_1458
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1458
	jmp	_Label_1459
_Label_1458:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1459:
! IF STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0IF",r10
!   if i != 2 then goto _Label_1467		(int)
	load	[r14+-472],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1467
!	jmp	_Label_1466
_Label_1466:
! THEN...
	mov	2291,r13		! source line 2291
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1469 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1468 = *_temp_1469  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1468) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1470 = _temp_1468 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1473 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1472 = *_temp_1473  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1472) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1474 = _temp_1472 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1471  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   destAddr = _temp_1471 + offset		(int)
	load	[r14+-80],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
! IF STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1475
	load	[r14+-440],r1
	cmp	r1,r0
	be	_Label_1475
	jmp	_Label_1476
_Label_1475:
! THEN...
	mov	2295,r13		! source line 2295
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1476:
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1478 = *_temp_1479  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1478) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1480 = _temp_1478 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_1480 [fileDesc ] into _temp_1481
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_1477 = *_temp_1481  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_1482 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1477  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=writeStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
! IF STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0IF",r10
!   if writeStatus then goto _Label_1484 else goto _Label_1483
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1483
	jmp	_Label_1484
_Label_1483:
! THEN...
	mov	2300,r13		! source line 2300
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1484:
! END IF...
_Label_1467:
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-460],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1487 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1486 = *_temp_1487  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1486) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1488 = _temp_1486 + 124
	load	[r14+-36],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1488 [fileDesc ] into _temp_1489
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1485 = *_temp_1489  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1485) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1490 = _temp_1485 + 16
	load	[r14+-40],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1490 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-460],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-456],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! IF STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1492		(int)
	load	[r14+-452],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1492
!	jmp	_Label_1491
_Label_1491:
! THEN...
	mov	2313,r13		! source line 2313
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0BR",r10
	jmp	_Label_1449
! END IF...
_Label_1492:
! END WHILE...
	jmp	_Label_1447
_Label_1449:
!   Increment the FOR-LOOP index variable and jump back
_Label_1423:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1421
! END FOR
_Label_1424:
! RETURN STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1493
	.word	12		! total size of parameters
	.word	488		! frame size = 488
	.word	_Label_1494
	.word	8
	.word	4
	.word	_Label_1495
	.word	12
	.word	4
	.word	_Label_1496
	.word	16
	.word	4
	.word	_Label_1497
	.word	-20
	.word	4
	.word	_Label_1498
	.word	-24
	.word	4
	.word	_Label_1499
	.word	-28
	.word	4
	.word	_Label_1500
	.word	-32
	.word	4
	.word	_Label_1501
	.word	-36
	.word	4
	.word	_Label_1502
	.word	-40
	.word	4
	.word	_Label_1503
	.word	-44
	.word	4
	.word	_Label_1504
	.word	-48
	.word	4
	.word	_Label_1505
	.word	-52
	.word	4
	.word	_Label_1506
	.word	-56
	.word	4
	.word	_Label_1507
	.word	-60
	.word	4
	.word	_Label_1508
	.word	-64
	.word	4
	.word	_Label_1509
	.word	-68
	.word	4
	.word	_Label_1510
	.word	-72
	.word	4
	.word	_Label_1511
	.word	-76
	.word	4
	.word	_Label_1512
	.word	-80
	.word	4
	.word	_Label_1513
	.word	-84
	.word	4
	.word	_Label_1514
	.word	-88
	.word	4
	.word	_Label_1515
	.word	-92
	.word	4
	.word	_Label_1516
	.word	-96
	.word	4
	.word	_Label_1517
	.word	-100
	.word	4
	.word	_Label_1518
	.word	-104
	.word	4
	.word	_Label_1519
	.word	-9
	.word	1
	.word	_Label_1520
	.word	-108
	.word	4
	.word	_Label_1521
	.word	-112
	.word	4
	.word	_Label_1522
	.word	-116
	.word	4
	.word	_Label_1523
	.word	-120
	.word	4
	.word	_Label_1524
	.word	-124
	.word	4
	.word	_Label_1525
	.word	-128
	.word	4
	.word	_Label_1526
	.word	-132
	.word	4
	.word	_Label_1527
	.word	-136
	.word	4
	.word	_Label_1528
	.word	-140
	.word	4
	.word	_Label_1529
	.word	-144
	.word	4
	.word	_Label_1530
	.word	-148
	.word	4
	.word	_Label_1531
	.word	-152
	.word	4
	.word	_Label_1532
	.word	-156
	.word	4
	.word	_Label_1533
	.word	-160
	.word	4
	.word	_Label_1534
	.word	-164
	.word	4
	.word	_Label_1535
	.word	-168
	.word	4
	.word	_Label_1536
	.word	-172
	.word	4
	.word	_Label_1537
	.word	-176
	.word	4
	.word	_Label_1538
	.word	-180
	.word	4
	.word	_Label_1539
	.word	-184
	.word	4
	.word	_Label_1540
	.word	-188
	.word	4
	.word	_Label_1541
	.word	-192
	.word	4
	.word	_Label_1542
	.word	-196
	.word	4
	.word	_Label_1543
	.word	-200
	.word	4
	.word	_Label_1544
	.word	-204
	.word	4
	.word	_Label_1545
	.word	-208
	.word	4
	.word	_Label_1546
	.word	-212
	.word	4
	.word	_Label_1547
	.word	-216
	.word	4
	.word	_Label_1548
	.word	-220
	.word	4
	.word	_Label_1549
	.word	-224
	.word	4
	.word	_Label_1550
	.word	-228
	.word	4
	.word	_Label_1551
	.word	-232
	.word	4
	.word	_Label_1552
	.word	-10
	.word	1
	.word	_Label_1553
	.word	-236
	.word	4
	.word	_Label_1554
	.word	-240
	.word	4
	.word	_Label_1555
	.word	-244
	.word	4
	.word	_Label_1556
	.word	-248
	.word	4
	.word	_Label_1557
	.word	-252
	.word	4
	.word	_Label_1558
	.word	-256
	.word	4
	.word	_Label_1559
	.word	-260
	.word	4
	.word	_Label_1560
	.word	-264
	.word	4
	.word	_Label_1561
	.word	-268
	.word	4
	.word	_Label_1562
	.word	-272
	.word	4
	.word	_Label_1563
	.word	-276
	.word	4
	.word	_Label_1564
	.word	-280
	.word	4
	.word	_Label_1565
	.word	-284
	.word	4
	.word	_Label_1566
	.word	-288
	.word	4
	.word	_Label_1567
	.word	-11
	.word	1
	.word	_Label_1568
	.word	-292
	.word	4
	.word	_Label_1569
	.word	-296
	.word	4
	.word	_Label_1570
	.word	-300
	.word	4
	.word	_Label_1571
	.word	-304
	.word	4
	.word	_Label_1572
	.word	-308
	.word	4
	.word	_Label_1573
	.word	-312
	.word	4
	.word	_Label_1574
	.word	-316
	.word	4
	.word	_Label_1575
	.word	-320
	.word	4
	.word	_Label_1576
	.word	-324
	.word	4
	.word	_Label_1577
	.word	-328
	.word	4
	.word	_Label_1578
	.word	-332
	.word	4
	.word	_Label_1579
	.word	-336
	.word	4
	.word	_Label_1580
	.word	-340
	.word	4
	.word	_Label_1581
	.word	-344
	.word	4
	.word	_Label_1582
	.word	-348
	.word	4
	.word	_Label_1583
	.word	-352
	.word	4
	.word	_Label_1584
	.word	-356
	.word	4
	.word	_Label_1585
	.word	-360
	.word	4
	.word	_Label_1586
	.word	-364
	.word	4
	.word	_Label_1587
	.word	-368
	.word	4
	.word	_Label_1588
	.word	-372
	.word	4
	.word	_Label_1589
	.word	-376
	.word	4
	.word	_Label_1590
	.word	-380
	.word	4
	.word	_Label_1591
	.word	-384
	.word	4
	.word	_Label_1592
	.word	-388
	.word	4
	.word	_Label_1593
	.word	-392
	.word	4
	.word	_Label_1594
	.word	-396
	.word	4
	.word	_Label_1595
	.word	-400
	.word	4
	.word	_Label_1596
	.word	-404
	.word	4
	.word	_Label_1597
	.word	-408
	.word	4
	.word	_Label_1598
	.word	-412
	.word	4
	.word	_Label_1599
	.word	-416
	.word	4
	.word	_Label_1600
	.word	-420
	.word	4
	.word	_Label_1601
	.word	-424
	.word	4
	.word	_Label_1602
	.word	-428
	.word	4
	.word	_Label_1603
	.word	-432
	.word	4
	.word	_Label_1604
	.word	-12
	.word	1
	.word	_Label_1605
	.word	-436
	.word	4
	.word	_Label_1606
	.word	-440
	.word	4
	.word	_Label_1607
	.word	-444
	.word	4
	.word	_Label_1608
	.word	-448
	.word	4
	.word	_Label_1609
	.word	-452
	.word	4
	.word	_Label_1610
	.word	-456
	.word	4
	.word	_Label_1611
	.word	-460
	.word	4
	.word	_Label_1612
	.word	-464
	.word	4
	.word	_Label_1613
	.word	-468
	.word	4
	.word	_Label_1614
	.word	-472
	.word	4
	.word	_Label_1615
	.word	-476
	.word	4
	.word	_Label_1616
	.word	-13
	.word	1
	.word	0
_Label_1493:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1494:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1495:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1496:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1519:
	.byte	'C'
	.ascii	"_temp_1462\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1552:
	.byte	'C'
	.ascii	"_temp_1412\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1567:
	.byte	'C'
	.ascii	"_temp_1387\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1604:
	.byte	'B'
	.ascii	"writeStatus\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1609:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1610:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1611:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1612:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"initialPosition\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1616:
	.byte	'C'
	.ascii	"nextChar\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	39,r1
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
	mov	2324,r13		! source line 2324
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1619		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1619
	jmp	_Label_1617
_Label_1619:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1621 = *_temp_1622  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1621) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = _temp_1621 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1620 = *_temp_1623  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if fileDesc <= _temp_1620 then goto _Label_1618		(int)
	load	[r14+8],r1
	load	[r14+-156],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1618
!	jmp	_Label_1617
_Label_1617:
! THEN...
	mov	2334,r13		! source line 2334
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1618:
! IF STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1629 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1628 = *_temp_1629  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1628) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1630 = _temp_1628 + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-124]
!   Move address of _temp_1630 [fileDesc ] into _temp_1631
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1627 = *_temp_1631  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1627) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1632 = _temp_1627 + 12
	load	[r14+-136],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1626 = *_temp_1632  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if _temp_1626 == 2 then goto _Label_1625		(int)
	load	[r14+-140],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1625
!	jmp	_Label_1624
_Label_1624:
! THEN...
	mov	2338,r13		! source line 2338
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1625:
! SEND STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_1633 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-112]
!   _temp_1634 = _temp_1633 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1635 = *_temp_1636  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1635) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = _temp_1635 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1637 [fileDesc ] into _temp_1638
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: open = *_temp_1638  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1639
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_1639
!	jmp	_Label_1642
_Label_1642:
!   if newCurrentPos >= -1 then goto _Label_1641		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1641
	jmp	_Label_1639
_Label_1641:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1645 = open + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1644 = *_temp_1645  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1644) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1646 = _temp_1644 + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1643 = *_temp_1646  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if newCurrentPos <= _temp_1643 then goto _Label_1640		(int)
	load	[r14+12],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1640
!	jmp	_Label_1639
_Label_1639:
! THEN...
	mov	2344,r13		! source line 2344
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0SE",r10
!   _temp_1647 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   _temp_1648 = _temp_1647 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Send message Unlock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1640:
! IF STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1650		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1650
!	jmp	_Label_1649
_Label_1649:
! THEN...
	mov	2349,r13		! source line 2349
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1651 = open + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1654 = open + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1653 = *_temp_1654  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1653) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = _temp_1653 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1652 = *_temp_1655  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1651 = _temp_1652  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0SE",r10
!   _temp_1656 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1657 = _temp_1656 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0RE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1659 = open + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1658 = *_temp_1659  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1658  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1650:
! ASSIGNMENT STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1660 = open + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1660 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0SE",r10
!   _temp_1661 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   _temp_1662 = _temp_1661 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message Unlock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0RE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1664 = open + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1663 = *_temp_1664  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_1663  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1665
	.word	8		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_1666
	.word	8
	.word	4
	.word	_Label_1667
	.word	12
	.word	4
	.word	_Label_1668
	.word	-12
	.word	4
	.word	_Label_1669
	.word	-16
	.word	4
	.word	_Label_1670
	.word	-20
	.word	4
	.word	_Label_1671
	.word	-24
	.word	4
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-32
	.word	4
	.word	_Label_1674
	.word	-36
	.word	4
	.word	_Label_1675
	.word	-40
	.word	4
	.word	_Label_1676
	.word	-44
	.word	4
	.word	_Label_1677
	.word	-48
	.word	4
	.word	_Label_1678
	.word	-52
	.word	4
	.word	_Label_1679
	.word	-56
	.word	4
	.word	_Label_1680
	.word	-60
	.word	4
	.word	_Label_1681
	.word	-64
	.word	4
	.word	_Label_1682
	.word	-68
	.word	4
	.word	_Label_1683
	.word	-72
	.word	4
	.word	_Label_1684
	.word	-76
	.word	4
	.word	_Label_1685
	.word	-80
	.word	4
	.word	_Label_1686
	.word	-84
	.word	4
	.word	_Label_1687
	.word	-88
	.word	4
	.word	_Label_1688
	.word	-92
	.word	4
	.word	_Label_1689
	.word	-96
	.word	4
	.word	_Label_1690
	.word	-100
	.word	4
	.word	_Label_1691
	.word	-104
	.word	4
	.word	_Label_1692
	.word	-108
	.word	4
	.word	_Label_1693
	.word	-112
	.word	4
	.word	_Label_1694
	.word	-116
	.word	4
	.word	_Label_1695
	.word	-120
	.word	4
	.word	_Label_1696
	.word	-124
	.word	4
	.word	_Label_1697
	.word	-128
	.word	4
	.word	_Label_1698
	.word	-132
	.word	4
	.word	_Label_1699
	.word	-136
	.word	4
	.word	_Label_1700
	.word	-140
	.word	4
	.word	_Label_1701
	.word	-144
	.word	4
	.word	_Label_1702
	.word	-148
	.word	4
	.word	_Label_1703
	.word	-152
	.word	4
	.word	_Label_1704
	.word	-156
	.word	4
	.word	_Label_1705
	.word	-160
	.word	4
	.word	0
_Label_1665:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1705:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	49,r1
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
	mov	2360,r13		! source line 2360
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1710		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1710
	jmp	_Label_1706
_Label_1710:
!   if fileDesc < 10 then goto _Label_1709		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1709
	jmp	_Label_1706
_Label_1709:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1712 = *_temp_1713  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1712) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1714 = _temp_1712 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-184]
!   Move address of _temp_1714 [fileDesc ] into _temp_1715
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: _temp_1711 = *_temp_1715  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1711) then goto _Label_1706
	load	[r14+-196],r1
	cmp	r1,r0
	be	_Label_1706
!	jmp	_Label_1708
_Label_1708:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1720 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1719 = *_temp_1720  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1719) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1721 = _temp_1719 + 124
	load	[r14+-172],r1
	add	r1,124,r1
	store	r1,[r14+-164]
!   Move address of _temp_1721 [fileDesc ] into _temp_1722
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   Data Move: _temp_1718 = *_temp_1722  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1718) then goto _Label_1707
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_1707
!	jmp	_Label_1717
_Label_1717:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1726 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1725 = *_temp_1726  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1725) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1727 = _temp_1725 + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-140]
!   Move address of _temp_1727 [fileDesc ] into _temp_1728
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Data Move: _temp_1724 = *_temp_1728  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1729 = _temp_1724 + 20
	load	[r14+-152],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1723 = *_temp_1729  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1723) then goto _Label_1716
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_1716
	jmp	_Label_1707
_Label_1716:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1733 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1732 = *_temp_1733  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1732) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1734 = _temp_1732 + 124
	load	[r14+-120],r1
	add	r1,124,r1
	store	r1,[r14+-112]
!   Move address of _temp_1734 [fileDesc ] into _temp_1735
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Data Move: _temp_1731 = *_temp_1735  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1731) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1736 = _temp_1731 + 12
	load	[r14+-124],r1
	add	r1,12,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1730 = *_temp_1736  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if _temp_1730 == 2 then goto _Label_1707		(int)
	load	[r14+-128],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1707
!	jmp	_Label_1706
_Label_1706:
! THEN...
	mov	2370,r13		! source line 2370
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1737
_Label_1707:
! ELSE...
	mov	2372,r13		! source line 2372
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1743 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1742 = *_temp_1743  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1742) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1744 = _temp_1742 + 124
	load	[r14+-92],r1
	add	r1,124,r1
	store	r1,[r14+-84]
!   Move address of _temp_1744 [fileDesc ] into _temp_1745
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_1741 = *_temp_1745  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1741) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1746 = _temp_1741 + 12
	load	[r14+-96],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1740 = *_temp_1746  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if _temp_1740 != 1 then goto _Label_1739		(int)
	load	[r14+-100],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1739
!	jmp	_Label_1738
_Label_1738:
! THEN...
	mov	2373,r13		! source line 2373
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1749 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1748 = *_temp_1749  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1748) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1750 = _temp_1748 + 124
	load	[r14+-68],r1
	add	r1,124,r1
	store	r1,[r14+-60]
!   Move address of _temp_1750 [fileDesc ] into _temp_1751
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_1747 = *_temp_1751  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1752 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1747  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1755 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1754 = *_temp_1755  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1754) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1756 = _temp_1754 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1756 [fileDesc ] into _temp_1757
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1753 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1758 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1753  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END IF...
_Label_1739:
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1760 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1759 = *_temp_1760  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1759) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1761 = _temp_1759 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1761 [fileDesc ] into _temp_1762
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_1762 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1737:
! RETURN STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1763
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1764
	.word	8
	.word	4
	.word	_Label_1765
	.word	-12
	.word	4
	.word	_Label_1766
	.word	-16
	.word	4
	.word	_Label_1767
	.word	-20
	.word	4
	.word	_Label_1768
	.word	-24
	.word	4
	.word	_Label_1769
	.word	-28
	.word	4
	.word	_Label_1770
	.word	-32
	.word	4
	.word	_Label_1771
	.word	-36
	.word	4
	.word	_Label_1772
	.word	-40
	.word	4
	.word	_Label_1773
	.word	-44
	.word	4
	.word	_Label_1774
	.word	-48
	.word	4
	.word	_Label_1775
	.word	-52
	.word	4
	.word	_Label_1776
	.word	-56
	.word	4
	.word	_Label_1777
	.word	-60
	.word	4
	.word	_Label_1778
	.word	-64
	.word	4
	.word	_Label_1779
	.word	-68
	.word	4
	.word	_Label_1780
	.word	-72
	.word	4
	.word	_Label_1781
	.word	-76
	.word	4
	.word	_Label_1782
	.word	-80
	.word	4
	.word	_Label_1783
	.word	-84
	.word	4
	.word	_Label_1784
	.word	-88
	.word	4
	.word	_Label_1785
	.word	-92
	.word	4
	.word	_Label_1786
	.word	-96
	.word	4
	.word	_Label_1787
	.word	-100
	.word	4
	.word	_Label_1788
	.word	-104
	.word	4
	.word	_Label_1789
	.word	-108
	.word	4
	.word	_Label_1790
	.word	-112
	.word	4
	.word	_Label_1791
	.word	-116
	.word	4
	.word	_Label_1792
	.word	-120
	.word	4
	.word	_Label_1793
	.word	-124
	.word	4
	.word	_Label_1794
	.word	-128
	.word	4
	.word	_Label_1795
	.word	-132
	.word	4
	.word	_Label_1796
	.word	-136
	.word	4
	.word	_Label_1797
	.word	-140
	.word	4
	.word	_Label_1798
	.word	-144
	.word	4
	.word	_Label_1799
	.word	-148
	.word	4
	.word	_Label_1800
	.word	-152
	.word	4
	.word	_Label_1801
	.word	-156
	.word	4
	.word	_Label_1802
	.word	-160
	.word	4
	.word	_Label_1803
	.word	-164
	.word	4
	.word	_Label_1804
	.word	-168
	.word	4
	.word	_Label_1805
	.word	-172
	.word	4
	.word	_Label_1806
	.word	-176
	.word	4
	.word	_Label_1807
	.word	-180
	.word	4
	.word	_Label_1808
	.word	-184
	.word	4
	.word	_Label_1809
	.word	-188
	.word	4
	.word	_Label_1810
	.word	-192
	.word	4
	.word	_Label_1811
	.word	-196
	.word	4
	.word	0
_Label_1763:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1764:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_189_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4444:
	push	r0
	sub	r1,1,r1
	bne	_Label_4444
	mov	2970,r13		! source line 2970
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1812 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1812  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0AS",r10
!   _temp_1813 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1813) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1815) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1814 = *_temp_1815  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1813 = _temp_1814  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0AS",r10
!   _temp_1816 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1816) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1818 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1818) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1817 = *_temp_1818  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1816 = _temp_1817  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0AS",r10
!   _temp_1819 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1819) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1821 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1821) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1820 = *_temp_1821  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1819 = _temp_1820  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1822
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1823
	.word	8
	.word	4
	.word	_Label_1824
	.word	12
	.word	4
	.word	_Label_1825
	.word	-16
	.word	4
	.word	_Label_1826
	.word	-9
	.word	1
	.word	_Label_1827
	.word	-20
	.word	4
	.word	_Label_1828
	.word	-24
	.word	4
	.word	_Label_1829
	.word	-10
	.word	1
	.word	_Label_1830
	.word	-28
	.word	4
	.word	_Label_1831
	.word	-32
	.word	4
	.word	_Label_1832
	.word	-11
	.word	1
	.word	_Label_1833
	.word	-36
	.word	4
	.word	_Label_1834
	.word	-12
	.word	1
	.word	_Label_1835
	.word	-40
	.word	4
	.word	_Label_1836
	.word	-44
	.word	4
	.word	0
_Label_1822:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1823:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1824:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1826:
	.byte	'C'
	.ascii	"_temp_1820\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1829:
	.byte	'C'
	.ascii	"_temp_1817\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1832:
	.byte	'C'
	.ascii	"_temp_1814\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1834:
	.byte	'C'
	.ascii	"_temp_1812\0"
	.align
_Label_1835:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1836:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_188_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_printFCB,r1
	push	r1
	mov	3,r1
_Label_4445:
	push	r0
	sub	r1,1,r1
	bne	_Label_4445
	mov	2980,r13		! source line 2980
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1838 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1837 = *_temp_1838  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1837  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2981,r13		! source line 2981
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_printFCB:
	.word	_sourceFileName
	.word	_Label_1839
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1840
	.word	8
	.word	4
	.word	_Label_1841
	.word	-12
	.word	4
	.word	_Label_1842
	.word	-16
	.word	4
	.word	0
_Label_1839:
	.ascii	"printFCB\0"
	.align
_Label_1840:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_187_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_printOpen,r1
	push	r1
	mov	4,r1
_Label_4446:
	push	r0
	sub	r1,1,r1
	bne	_Label_4446
	mov	2985,r13		! source line 2985
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1843 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1844 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1845 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_printOpen:
	.word	_sourceFileName
	.word	_Label_1846
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1847
	.word	8
	.word	4
	.word	_Label_1848
	.word	-12
	.word	4
	.word	_Label_1849
	.word	-16
	.word	4
	.word	_Label_1850
	.word	-20
	.word	4
	.word	0
_Label_1846:
	.ascii	"printOpen\0"
	.align
_Label_1847:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
	mov	3250,r13		! source line 3250
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3256,r13		! source line 3256
	mov	"\0\0AS",r10
	mov	3256,r13		! source line 3256
	mov	"\0\0SE",r10
!   _temp_1851 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
!   _temp_1852 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1852  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_1853 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1853  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_1854
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1855
	.word	-12
	.word	4
	.word	_Label_1856
	.word	-16
	.word	4
	.word	_Label_1857
	.word	-20
	.word	4
	.word	_Label_1858
	.word	-24
	.word	4
	.word	0
_Label_1854:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1858:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
	mov	3272,r13		! source line 3272
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3281,r13		! source line 3281
	mov	"\0\0AS",r10
	mov	3281,r13		! source line 3281
	mov	"\0\0SE",r10
!   _temp_1859 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	3282,r13		! source line 3282
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1860 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1860 = newPCB  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3283,r13		! source line 3283
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1861 = newPCB + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1861 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3285,r13		! source line 3285
	mov	"\0\0AS",r10
	mov	3285,r13		! source line 3285
	mov	"\0\0SE",r10
!   _temp_1862 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-60]
!   _temp_1863 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1862  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	3286,r13		! source line 3286
	mov	"\0\0AS",r10
	mov	3286,r13		! source line 3286
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1865 = newPCB + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_1864 = _temp_1865		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (newOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1864  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0SE",r10
!   _temp_1866 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=newOpenFile  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3289,r13		! source line 3289
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1868 = newPCB + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_1869 = _temp_1868 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   InitUserStackTop = _temp_1867 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3290,r13		! source line 3290
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1870 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_1870 [999 ] into _temp_1871
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_1871		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	3292,r13		! source line 3292
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	3292,r13		! source line 3292
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1872 = newPCB + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3294,r13		! source line 3294
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1873 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1873 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_1874 = initSystemStackTop		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1874  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	3295,r13		! source line 3295
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_1875
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1876
	.word	-12
	.word	4
	.word	_Label_1877
	.word	-16
	.word	4
	.word	_Label_1878
	.word	-20
	.word	4
	.word	_Label_1879
	.word	-24
	.word	4
	.word	_Label_1880
	.word	-28
	.word	4
	.word	_Label_1881
	.word	-32
	.word	4
	.word	_Label_1882
	.word	-36
	.word	4
	.word	_Label_1883
	.word	-40
	.word	4
	.word	_Label_1884
	.word	-44
	.word	4
	.word	_Label_1885
	.word	-48
	.word	4
	.word	_Label_1886
	.word	-52
	.word	4
	.word	_Label_1887
	.word	-56
	.word	4
	.word	_Label_1888
	.word	-60
	.word	4
	.word	_Label_1889
	.word	-64
	.word	4
	.word	_Label_1890
	.word	-68
	.word	4
	.word	_Label_1891
	.word	-72
	.word	4
	.word	_Label_1892
	.word	-76
	.word	4
	.word	_Label_1893
	.word	-80
	.word	4
	.word	_Label_1894
	.word	-84
	.word	4
	.word	_Label_1895
	.word	-88
	.word	4
	.word	_Label_1896
	.word	-92
	.word	4
	.word	_Label_1897
	.word	-96
	.word	4
	.word	0
_Label_1875:
	.ascii	"StartUserProcess\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1892:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_1893:
	.byte	'P'
	.ascii	"newOpenFile\0"
	.align
_Label_1894:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_1895:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_1896:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1897:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_P_Kernel_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
	mov	3443,r13		! source line 3443
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3444,r13		! source line 3444
	mov	"\0\0SE",r10
!   _temp_1898 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3444,r13		! source line 3444
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1899
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1900
	.word	8
	.word	4
	.word	_Label_1901
	.word	-12
	.word	4
	.word	0
_Label_1899:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1902
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1902:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1903
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1903:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1905		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1905
!	jmp	_Label_1904
_Label_1904:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1906 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1906  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	233,r13		! source line 233
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1905:
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_1908
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	12
	.word	4
	.word	_Label_1911
	.word	-12
	.word	4
	.word	_Label_1912
	.word	-16
	.word	4
	.word	0
_Label_1908:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	241,r13		! source line 241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1914		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1914
!	jmp	_Label_1913
_Label_1913:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1915 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	247,r13		! source line 247
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1914:
! ASSIGNMENT STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1917		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1917
!	jmp	_Label_1916
_Label_1916:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_1918 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1919 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1919 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_1920 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1917:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_1921
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1923
	.word	-12
	.word	4
	.word	_Label_1924
	.word	-16
	.word	4
	.word	_Label_1925
	.word	-20
	.word	4
	.word	_Label_1926
	.word	-24
	.word	4
	.word	_Label_1927
	.word	-28
	.word	4
	.word	_Label_1928
	.word	-32
	.word	4
	.word	0
_Label_1921:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1922:
	.ascii	"Pself\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1927:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1928:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
	mov	260,r13		! source line 260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1930		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1930
!	jmp	_Label_1929
_Label_1929:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1931 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1931  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	265,r13		! source line 265
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1930:
! ASSIGNMENT STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1933		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1933
!	jmp	_Label_1932
_Label_1932:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_1934 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1933:
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1935
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1937
	.word	-12
	.word	4
	.word	_Label_1938
	.word	-16
	.word	4
	.word	_Label_1939
	.word	-20
	.word	4
	.word	0
_Label_1935:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1939:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1940
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1940:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1941
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1941:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
	mov	295,r13		! source line 295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1943
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1945
	.word	-12
	.word	4
	.word	0
_Label_1943:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1944:
	.ascii	"Pself\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1947		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1947
!	jmp	_Label_1946
_Label_1946:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1948 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1948  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1947:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1952		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1952
!   _temp_1951 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1953
_Label_1952:
!   _temp_1951 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1953:
!   if _temp_1951 then goto _Label_1950 else goto _Label_1949
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1949
	jmp	_Label_1950
_Label_1949:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1954
_Label_1950:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_1955 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1954:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1956
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1958
	.word	-16
	.word	4
	.word	_Label_1959
	.word	-9
	.word	1
	.word	_Label_1960
	.word	-20
	.word	4
	.word	_Label_1961
	.word	-24
	.word	4
	.word	0
_Label_1956:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1957:
	.ascii	"Pself\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1959:
	.byte	'C'
	.ascii	"_temp_1951\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1961:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1963		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1963
!	jmp	_Label_1962
_Label_1962:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1964 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1964  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	324,r13		! source line 324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1963:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_1965 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1967		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1967
!	jmp	_Label_1966
_Label_1966:
! THEN...
	mov	329,r13		! source line 329
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1968 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1968 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_1969 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1970
_Label_1967:
! ELSE...
	mov	333,r13		! source line 333
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1970:
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1971
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1973
	.word	-12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-32
	.word	4
	.word	0
_Label_1971:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1972:
	.ascii	"Pself\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1977:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1978:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1981		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1981
!	jmp	_Label_1980
_Label_1980:
!   _temp_1979 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1982
_Label_1981:
!   _temp_1979 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1982:
!   ReturnResult: _temp_1979  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1983
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1985
	.word	-9
	.word	1
	.word	0
_Label_1983:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1984:
	.ascii	"Pself\0"
	.align
_Label_1985:
	.byte	'C'
	.ascii	"_temp_1979\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1986
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1986:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1987
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1987:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1989
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1991
	.word	-12
	.word	4
	.word	0
_Label_1989:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1990:
	.ascii	"Pself\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
	mov	390,r13		! source line 390
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1994  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1994 then goto _Label_1993 else goto _Label_1992
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1992
	jmp	_Label_1993
_Label_1992:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1995 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	391,r13		! source line 391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1993:
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_1996 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1997
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	12
	.word	4
	.word	_Label_2000
	.word	-16
	.word	4
	.word	_Label_2001
	.word	-20
	.word	4
	.word	_Label_2002
	.word	-9
	.word	1
	.word	_Label_2003
	.word	-24
	.word	4
	.word	0
_Label_1997:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2002:
	.byte	'C'
	.ascii	"_temp_1994\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
	mov	403,r13		! source line 403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
	mov	407,r13		! source line 407
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2006  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2006 then goto _Label_2005 else goto _Label_2004
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2004
	jmp	_Label_2005
_Label_2004:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2007 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	408,r13		! source line 408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2005:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_2008 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_2010		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2010
!	jmp	_Label_2009
_Label_2009:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2011 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2011 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_2012 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2010:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_2013
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2015
	.word	12
	.word	4
	.word	_Label_2016
	.word	-16
	.word	4
	.word	_Label_2017
	.word	-20
	.word	4
	.word	_Label_2018
	.word	-24
	.word	4
	.word	_Label_2019
	.word	-28
	.word	4
	.word	_Label_2020
	.word	-9
	.word	1
	.word	_Label_2021
	.word	-32
	.word	4
	.word	_Label_2022
	.word	-36
	.word	4
	.word	0
_Label_2013:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2014:
	.ascii	"Pself\0"
	.align
_Label_2015:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2020:
	.byte	'C'
	.ascii	"_temp_2006\0"
	.align
_Label_2021:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2022:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2025  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2025 then goto _Label_2024 else goto _Label_2023
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2023
	jmp	_Label_2024
_Label_2023:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2026 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2024:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0WH",r10
_Label_2027:
!	jmp	_Label_2028
_Label_2028:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_2030 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_2031
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2031
	jmp	_Label_2032
_Label_2031:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_2029
! END IF...
_Label_2032:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2033 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2033 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_2034 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2027
_Label_2029:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_2035
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2036
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2037
	.word	12
	.word	4
	.word	_Label_2038
	.word	-16
	.word	4
	.word	_Label_2039
	.word	-20
	.word	4
	.word	_Label_2040
	.word	-24
	.word	4
	.word	_Label_2041
	.word	-28
	.word	4
	.word	_Label_2042
	.word	-9
	.word	1
	.word	_Label_2043
	.word	-32
	.word	4
	.word	_Label_2044
	.word	-36
	.word	4
	.word	0
_Label_2035:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2036:
	.ascii	"Pself\0"
	.align
_Label_2037:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2042:
	.byte	'C'
	.ascii	"_temp_2025\0"
	.align
_Label_2043:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2044:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2045
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2045:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2046
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2046:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
	mov	448,r13		! source line 448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_2047 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2047) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2047 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_2048 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2048 [0 ] into _temp_2049
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_2049 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_2050 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2050 [999 ] into _temp_2051
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_2051 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_2052 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2052 [999 ] into _temp_2053
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_2053		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_2054 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2056 = &_temp_2055
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2056 = _temp_2056 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2058:
!   Data Move: *_temp_2056 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2056 = _temp_2056 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2057 = _temp_2057 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2057) then goto _Label_2058
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2058
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2059 = &_temp_2055
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4462
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4462:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2054 = *_temp_2059  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4463:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4463
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_2060 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2062 = &_temp_2061
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2062 = _temp_2062 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2064:
!   Data Move: *_temp_2062 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2062 = _temp_2062 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2063 = _temp_2063 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2063) then goto _Label_2064
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2064
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2065 = &_temp_2061
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4464
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4464:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2060 = *_temp_2065  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4465:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4465
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_2066
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2068
	.word	12
	.word	4
	.word	_Label_2069
	.word	-12
	.word	4
	.word	_Label_2070
	.word	-16
	.word	4
	.word	_Label_2071
	.word	-20
	.word	4
	.word	_Label_2072
	.word	-84
	.word	64
	.word	_Label_2073
	.word	-88
	.word	4
	.word	_Label_2074
	.word	-92
	.word	4
	.word	_Label_2075
	.word	-96
	.word	4
	.word	_Label_2076
	.word	-100
	.word	4
	.word	_Label_2077
	.word	-156
	.word	56
	.word	_Label_2078
	.word	-160
	.word	4
	.word	_Label_2079
	.word	-164
	.word	4
	.word	_Label_2080
	.word	-168
	.word	4
	.word	_Label_2081
	.word	-172
	.word	4
	.word	_Label_2082
	.word	-176
	.word	4
	.word	_Label_2083
	.word	-180
	.word	4
	.word	_Label_2084
	.word	-184
	.word	4
	.word	_Label_2085
	.word	-188
	.word	4
	.word	0
_Label_2066:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2067:
	.ascii	"Pself\0"
	.align
_Label_2068:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_4466:
	push	r0
	sub	r1,1,r1
	bne	_Label_4466
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2086 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2086  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_2088 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2087  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_2089
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2091
	.word	12
	.word	4
	.word	_Label_2092
	.word	16
	.word	4
	.word	_Label_2093
	.word	-12
	.word	4
	.word	_Label_2094
	.word	-16
	.word	4
	.word	_Label_2095
	.word	-20
	.word	4
	.word	_Label_2096
	.word	-24
	.word	4
	.word	_Label_2097
	.word	-28
	.word	4
	.word	0
_Label_2089:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2090:
	.ascii	"Pself\0"
	.align
_Label_2091:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2092:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2096:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2097:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_4467:
	push	r0
	sub	r1,1,r1
	bne	_Label_4467
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2100 == _P_Kernel_currentThread then goto _Label_2099		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2099
!	jmp	_Label_2098
_Label_2098:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2101 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	508,r13		! source line 508
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2099:
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   _temp_2102 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_2104		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2104
!	jmp	_Label_2103
_Label_2103:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2106		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2106
!	jmp	_Label_2105
_Label_2105:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2107 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	520,r13		! source line 520
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2106:
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_2109 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2108  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_2104:
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_2110
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2112
	.word	-12
	.word	4
	.word	_Label_2113
	.word	-16
	.word	4
	.word	_Label_2114
	.word	-20
	.word	4
	.word	_Label_2115
	.word	-24
	.word	4
	.word	_Label_2116
	.word	-28
	.word	4
	.word	_Label_2117
	.word	-32
	.word	4
	.word	_Label_2118
	.word	-36
	.word	4
	.word	_Label_2119
	.word	-40
	.word	4
	.word	_Label_2120
	.word	-44
	.word	4
	.word	0
_Label_2110:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2111:
	.ascii	"Pself\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2118:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2119:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2122		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2122
!	jmp	_Label_2121
_Label_2121:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2123 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2123  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2122:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2126 == _P_Kernel_currentThread then goto _Label_2125		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2125
!	jmp	_Label_2124
_Label_2124:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2127 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2125:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_2128 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_2129
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2129
	jmp	_Label_2130
_Label_2129:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2131 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2130:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_2132
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2134
	.word	-12
	.word	4
	.word	_Label_2135
	.word	-16
	.word	4
	.word	_Label_2136
	.word	-20
	.word	4
	.word	_Label_2137
	.word	-24
	.word	4
	.word	_Label_2138
	.word	-28
	.word	4
	.word	_Label_2139
	.word	-32
	.word	4
	.word	0
_Label_2132:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2133:
	.ascii	"Pself\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2139:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_4469:
	push	r0
	sub	r1,1,r1
	bne	_Label_4469
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_2143 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2143 [0 ] into _temp_2144
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2142 = *_temp_2144  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2142 == 606348324 then goto _Label_2141		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2141
!	jmp	_Label_2140
_Label_2140:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2145 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2145  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_2146
_Label_2141:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_2150 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2150 [999 ] into _temp_2151
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2149 = *_temp_2151  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2149 == 606348324 then goto _Label_2148		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2148
!	jmp	_Label_2147
_Label_2147:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2152 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2152  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2148:
! END IF...
_Label_2146:
! RETURN STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_2153
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2154
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2155
	.word	-12
	.word	4
	.word	_Label_2156
	.word	-16
	.word	4
	.word	_Label_2157
	.word	-20
	.word	4
	.word	_Label_2158
	.word	-24
	.word	4
	.word	_Label_2159
	.word	-28
	.word	4
	.word	_Label_2160
	.word	-32
	.word	4
	.word	_Label_2161
	.word	-36
	.word	4
	.word	_Label_2162
	.word	-40
	.word	4
	.word	0
_Label_2153:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2154:
	.ascii	"Pself\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_4470:
	push	r0
	sub	r1,1,r1
	bne	_Label_4470
	mov	578,r13		! source line 578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_2163 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2163  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2164 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2164  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2165  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2166 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2166  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2167 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2167  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2173 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2172  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2173 then goto _Label_2171		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2171
_Label_2169:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2174 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2175 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2176 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2176  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2178 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2178 [i ] into _temp_2179
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_2177 = *_temp_2179  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2180 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2180  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2182 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2182 [i ] into _temp_2183
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_2181 = *_temp_2183  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2184 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2184  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2170:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2168
! END FOR
_Label_2171:
! CALL STATEMENT...
!   _temp_2185 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-116]
!   _temp_2186 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2185  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2186  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2187 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-108]
!   _temp_2189 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2189 [0 ] into _temp_2190
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_2188 = _temp_2190		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2187  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2188  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	602,r13		! source line 602
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_2193
	cmp	r1,2
	be	_Label_2194
	cmp	r1,3
	be	_Label_2195
	cmp	r1,4
	be	_Label_2196
	cmp	r1,5
	be	_Label_2197
	jmp	_Label_2191
! CASE 1...
_Label_2193:
! CALL STATEMENT...
!   _temp_2198 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2198  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_2192
! CASE 2...
_Label_2194:
! CALL STATEMENT...
!   _temp_2199 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_2192
! CASE 3...
_Label_2195:
! CALL STATEMENT...
!   _temp_2200 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_2192
! CASE 4...
_Label_2196:
! CALL STATEMENT...
!   _temp_2201 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2201  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_2192
! CASE 5...
_Label_2197:
! CALL STATEMENT...
!   _temp_2202 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_2192
! DEFAULT CASE...
_Label_2191:
! CALL STATEMENT...
!   _temp_2203 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2192:
! CALL STATEMENT...
!   _temp_2204 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2204  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2205 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2205  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2210 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2211 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2210  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2206:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2211 then goto _Label_2209		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2209
_Label_2207:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2212 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2213 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2213  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2214 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2214  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2216 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2216 [i ] into _temp_2217
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2215 = *_temp_2217  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2215  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2218 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2220 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2220 [i ] into _temp_2221
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2219 = *_temp_2221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2219  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2222 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2208:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2206
! END FOR
_Label_2209:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_2223
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2225
	.word	-12
	.word	4
	.word	_Label_2226
	.word	-16
	.word	4
	.word	_Label_2227
	.word	-20
	.word	4
	.word	_Label_2228
	.word	-24
	.word	4
	.word	_Label_2229
	.word	-28
	.word	4
	.word	_Label_2230
	.word	-32
	.word	4
	.word	_Label_2231
	.word	-36
	.word	4
	.word	_Label_2232
	.word	-40
	.word	4
	.word	_Label_2233
	.word	-44
	.word	4
	.word	_Label_2234
	.word	-48
	.word	4
	.word	_Label_2235
	.word	-52
	.word	4
	.word	_Label_2236
	.word	-56
	.word	4
	.word	_Label_2237
	.word	-60
	.word	4
	.word	_Label_2238
	.word	-64
	.word	4
	.word	_Label_2239
	.word	-68
	.word	4
	.word	_Label_2240
	.word	-72
	.word	4
	.word	_Label_2241
	.word	-76
	.word	4
	.word	_Label_2242
	.word	-80
	.word	4
	.word	_Label_2243
	.word	-84
	.word	4
	.word	_Label_2244
	.word	-88
	.word	4
	.word	_Label_2245
	.word	-92
	.word	4
	.word	_Label_2246
	.word	-96
	.word	4
	.word	_Label_2247
	.word	-100
	.word	4
	.word	_Label_2248
	.word	-104
	.word	4
	.word	_Label_2249
	.word	-108
	.word	4
	.word	_Label_2250
	.word	-112
	.word	4
	.word	_Label_2251
	.word	-116
	.word	4
	.word	_Label_2252
	.word	-120
	.word	4
	.word	_Label_2253
	.word	-124
	.word	4
	.word	_Label_2254
	.word	-128
	.word	4
	.word	_Label_2255
	.word	-132
	.word	4
	.word	_Label_2256
	.word	-136
	.word	4
	.word	_Label_2257
	.word	-140
	.word	4
	.word	_Label_2258
	.word	-144
	.word	4
	.word	_Label_2259
	.word	-148
	.word	4
	.word	_Label_2260
	.word	-152
	.word	4
	.word	_Label_2261
	.word	-156
	.word	4
	.word	_Label_2262
	.word	-160
	.word	4
	.word	_Label_2263
	.word	-164
	.word	4
	.word	_Label_2264
	.word	-168
	.word	4
	.word	_Label_2265
	.word	-172
	.word	4
	.word	_Label_2266
	.word	-176
	.word	4
	.word	_Label_2267
	.word	-180
	.word	4
	.word	_Label_2268
	.word	-184
	.word	4
	.word	_Label_2269
	.word	-188
	.word	4
	.word	_Label_2270
	.word	-192
	.word	4
	.word	_Label_2271
	.word	-196
	.word	4
	.word	0
_Label_2223:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2224:
	.ascii	"Pself\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2270:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2271:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2272
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2272:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2273
	.word	_sourceFileName
	.word	196		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2273:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_4471:
	push	r0
	sub	r1,1,r1
	bne	_Label_4471
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2274 = _StringConst_79
	set	_StringConst_79,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2274  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0SE",r10
!   _temp_2276 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45900,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_2278 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45892,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   _temp_2279 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2281 = &_temp_2280
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-4240]
!   _temp_2281 = _temp_2281 + 4
	load	[r14+-4240],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2283 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_4472:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4472
!   _temp_2283 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
	mov	10,r1
	store	r1,[r14+-4236]
_Label_2285:
!   Data Move: *_temp_2281 = _temp_2283  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4240],r4
	mov	1041,r3
_Label_4473:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4473
!   _temp_2281 = _temp_2281 + 4164
	load	[r14+-4240],r1
	add	r1,4164,r1
	store	r1,[r14+-4240]
!   _temp_2282 = _temp_2282 + -1
	load	[r14+-4236],r1
	add	r1,-1,r1
	store	r1,[r14+-4236]
!   if intNotZero (_temp_2282) then goto _Label_2285
	load	[r14+-4236],r1
	cmp	r1,r0
	bne	_Label_2285
!   Initialize the array size...
	mov	10,r1
	set	-45884,r2
	store	r1,[r14+r2]
!   _temp_2286 = &_temp_2280
	set	-45884,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	set	-45888,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4474
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4474:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2279 = *_temp_2286  (sizeInBytes=41644)
	load	[r14+-64],r5
	set	-45888,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4475:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4475
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2292 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2293 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2292  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_2288:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2293 then goto _Label_2291		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2291
_Label_2289:
	mov	708,r13		! source line 708
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_2294 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   _temp_2295 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2295 [i ] into _temp_2296
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2294  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0AS",r10
!   _temp_2297 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2297 [i ] into _temp_2298
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2299 = _temp_2298 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2299 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_2301 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2301 [i ] into _temp_2302
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2300 = _temp_2302		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2303 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2300  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2290:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_2288
! END FOR
_Label_2291:
! RETURN STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_2304
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_2305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2306
	.word	-12
	.word	4
	.word	_Label_2307
	.word	-16
	.word	4
	.word	_Label_2308
	.word	-20
	.word	4
	.word	_Label_2309
	.word	-24
	.word	4
	.word	_Label_2310
	.word	-28
	.word	4
	.word	_Label_2311
	.word	-32
	.word	4
	.word	_Label_2312
	.word	-36
	.word	4
	.word	_Label_2313
	.word	-40
	.word	4
	.word	_Label_2314
	.word	-44
	.word	4
	.word	_Label_2315
	.word	-48
	.word	4
	.word	_Label_2316
	.word	-52
	.word	4
	.word	_Label_2317
	.word	-56
	.word	4
	.word	_Label_2318
	.word	-60
	.word	4
	.word	_Label_2319
	.word	-64
	.word	4
	.word	_Label_2320
	.word	-68
	.word	4
	.word	_Label_2321
	.word	-4232
	.word	4164
	.word	_Label_2322
	.word	-4236
	.word	4
	.word	_Label_2323
	.word	-4240
	.word	4
	.word	_Label_2324
	.word	-45884
	.word	41644
	.word	_Label_2325
	.word	-45888
	.word	4
	.word	_Label_2326
	.word	-45892
	.word	4
	.word	_Label_2327
	.word	-45896
	.word	4
	.word	_Label_2328
	.word	-45900
	.word	4
	.word	_Label_2329
	.word	-45904
	.word	4
	.word	_Label_2330
	.word	-45908
	.word	4
	.word	_Label_2331
	.word	-45912
	.word	4
	.word	0
_Label_2304:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2305:
	.ascii	"Pself\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2331:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_4476:
	push	r0
	sub	r1,1,r1
	bne	_Label_4476
	mov	718,r13		! source line 718
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_2332 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2337 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2338 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2337  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2333:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2338 then goto _Label_2336		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2336
_Label_2334:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2339 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2340 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2342 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2342 [i ] into _temp_2343
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_2341 = _temp_2343		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_192_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2335:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2333
! END FOR
_Label_2336:
! CALL STATEMENT...
!   _temp_2344 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2344  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0SE",r10
!   _temp_2345 = _function_191_PrintObjectAddr
	set	_function_191_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2346 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2345  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_2347
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2348
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2349
	.word	-12
	.word	4
	.word	_Label_2350
	.word	-16
	.word	4
	.word	_Label_2351
	.word	-20
	.word	4
	.word	_Label_2352
	.word	-24
	.word	4
	.word	_Label_2353
	.word	-28
	.word	4
	.word	_Label_2354
	.word	-32
	.word	4
	.word	_Label_2355
	.word	-36
	.word	4
	.word	_Label_2356
	.word	-40
	.word	4
	.word	_Label_2357
	.word	-44
	.word	4
	.word	_Label_2358
	.word	-48
	.word	4
	.word	_Label_2359
	.word	-52
	.word	4
	.word	_Label_2360
	.word	-56
	.word	4
	.word	_Label_2361
	.word	-60
	.word	4
	.word	0
_Label_2347:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2348:
	.ascii	"Pself\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2360:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2361:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_4477:
	push	r0
	sub	r1,1,r1
	bne	_Label_4477
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_2362 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0WH",r10
_Label_2363:
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_2366 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2364 else goto _Label_2365
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2365
	jmp	_Label_2364
_Label_2364:
	mov	748,r13		! source line 748
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_2367 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2368 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2367  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2363
_Label_2365:
! ASSIGNMENT STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0AS",r10
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_2369 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2370 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2370 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0SE",r10
!   _temp_2371 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0RE",r10
!   ReturnResult: t  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_2372
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2374
	.word	-12
	.word	4
	.word	_Label_2375
	.word	-16
	.word	4
	.word	_Label_2376
	.word	-20
	.word	4
	.word	_Label_2377
	.word	-24
	.word	4
	.word	_Label_2378
	.word	-28
	.word	4
	.word	_Label_2379
	.word	-32
	.word	4
	.word	_Label_2380
	.word	-36
	.word	4
	.word	_Label_2381
	.word	-40
	.word	4
	.word	0
_Label_2372:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2373:
	.ascii	"Pself\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2381:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_4478:
	push	r0
	sub	r1,1,r1
	bne	_Label_4478
	mov	759,r13		! source line 759
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_2382 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2383 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2383 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_2384 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_2385 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2386 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2385  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_2387 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_2388
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2390
	.word	12
	.word	4
	.word	_Label_2391
	.word	-12
	.word	4
	.word	_Label_2392
	.word	-16
	.word	4
	.word	_Label_2393
	.word	-20
	.word	4
	.word	_Label_2394
	.word	-24
	.word	4
	.word	_Label_2395
	.word	-28
	.word	4
	.word	_Label_2396
	.word	-32
	.word	4
	.word	0
_Label_2388:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2389:
	.ascii	"Pself\0"
	.align
_Label_2390:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2397
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2397:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2398
	.word	_sourceFileName
	.word	217		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2398:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_4479:
	push	r0
	sub	r1,1,r1
	bne	_Label_4479
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4480:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4480
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_2400 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   _temp_2401 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2403 = &_temp_2402
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2403 = _temp_2403 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2405:
!   Data Move: *_temp_2403 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2403 = _temp_2403 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2404 = _temp_2404 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2404) then goto _Label_2405
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2405
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2406 = &_temp_2402
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4481
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4481:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2401 = *_temp_2406  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4482:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4482
! RETURN STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2407
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2408
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2409
	.word	-12
	.word	4
	.word	_Label_2410
	.word	-16
	.word	4
	.word	_Label_2411
	.word	-20
	.word	4
	.word	_Label_2412
	.word	-64
	.word	44
	.word	_Label_2413
	.word	-68
	.word	4
	.word	_Label_2414
	.word	-72
	.word	4
	.word	_Label_2415
	.word	-76
	.word	4
	.word	0
_Label_2407:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2408:
	.ascii	"Pself\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	14,r1
_Label_4483:
	push	r0
	sub	r1,1,r1
	bne	_Label_4483
	mov	795,r13		! source line 795
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2416) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0SE",r10
!   _temp_2417 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Send message Print
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2418 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CA",r10
	call	_function_192_ThreadPrintShort
! CALL STATEMENT...
!   _temp_2419 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2424 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2425 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2424  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-60]
_Label_2420:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2425 then goto _Label_2423		
	load	[r14+-60],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2423
_Label_2421:
	mov	807,r13		! source line 807
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0IF",r10
!   _temp_2429 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_2429 [i ] into _temp_2430
!     make sure index expr is >= 0
	load	[r14+-60],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_2428 = *_temp_2430  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2428 == 0 then goto _Label_2427		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2427
!	jmp	_Label_2426
_Label_2426:
! THEN...
	mov	809,r13		! source line 809
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0SE",r10
!   _temp_2432 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_2432 [i ] into _temp_2433
!     make sure index expr is >= 0
	load	[r14+-60],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2431 = *_temp_2433  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2431) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_2427:
!   Increment the FOR-LOOP index variable and jump back
_Label_2422:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2420
! END FOR
_Label_2423:
! CALL STATEMENT...
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2434
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2436
	.word	-12
	.word	4
	.word	_Label_2437
	.word	-16
	.word	4
	.word	_Label_2438
	.word	-20
	.word	4
	.word	_Label_2439
	.word	-24
	.word	4
	.word	_Label_2440
	.word	-28
	.word	4
	.word	_Label_2441
	.word	-32
	.word	4
	.word	_Label_2442
	.word	-36
	.word	4
	.word	_Label_2443
	.word	-40
	.word	4
	.word	_Label_2444
	.word	-44
	.word	4
	.word	_Label_2445
	.word	-48
	.word	4
	.word	_Label_2446
	.word	-52
	.word	4
	.word	_Label_2447
	.word	-56
	.word	4
	.word	_Label_2448
	.word	-60
	.word	4
	.word	0
_Label_2434:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2435:
	.ascii	"Pself\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2448:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_4484:
	push	r0
	sub	r1,1,r1
	bne	_Label_4484
	mov	818,r13		! source line 818
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2449 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2449  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2450  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2451 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2451  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2452 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2454		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2454
!	jmp	_Label_2453
_Label_2453:
! THEN...
	mov	828,r13		! source line 828
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2455 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2455  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2456
_Label_2454:
! ELSE...
	mov	829,r13		! source line 829
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2458		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2458
!	jmp	_Label_2457
_Label_2457:
! THEN...
	mov	830,r13		! source line 830
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2459 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2460
_Label_2458:
! ELSE...
	mov	831,r13		! source line 831
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2462		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2462
!	jmp	_Label_2461
_Label_2461:
! THEN...
	mov	832,r13		! source line 832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2463 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2463  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2464
_Label_2462:
! ELSE...
	mov	834,r13		! source line 834
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2465 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	834,r13		! source line 834
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2464:
! END IF...
_Label_2460:
! END IF...
_Label_2456:
! CALL STATEMENT...
!   _temp_2466 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2467 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2467  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2468
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2470
	.word	-12
	.word	4
	.word	_Label_2471
	.word	-16
	.word	4
	.word	_Label_2472
	.word	-20
	.word	4
	.word	_Label_2473
	.word	-24
	.word	4
	.word	_Label_2474
	.word	-28
	.word	4
	.word	_Label_2475
	.word	-32
	.word	4
	.word	_Label_2476
	.word	-36
	.word	4
	.word	_Label_2477
	.word	-40
	.word	4
	.word	_Label_2478
	.word	-44
	.word	4
	.word	_Label_2479
	.word	-48
	.word	4
	.word	0
_Label_2468:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2469:
	.ascii	"Pself\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2480
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2480:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2481
	.word	_sourceFileName
	.word	237		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2481:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	490,r1
_Label_4485:
	push	r0
	sub	r1,1,r1
	bne	_Label_4485
	mov	851,r13		! source line 851
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0AS",r10
!   _temp_2482 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1956]
!   NEW ARRAY Constructor...
!   _temp_2484 = &_temp_2483
	add	r14,-1952,r1
	store	r1,[r14+-268]
!   _temp_2484 = _temp_2484 + 4
	load	[r14+-268],r1
	add	r1,4,r1
	store	r1,[r14+-268]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2486 = zeros  (sizeInBytes=168)
	add	r14,-260,r4
	mov	42,r3
_Label_4486:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4486
!   _temp_2486 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-260]
	mov	10,r1
	store	r1,[r14+-264]
_Label_2488:
!   Data Move: *_temp_2484 = _temp_2486  (sizeInBytes=168)
	add	r14,-260,r5
	load	[r14+-268],r4
	mov	42,r3
_Label_4487:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4487
!   _temp_2484 = _temp_2484 + 168
	load	[r14+-268],r1
	add	r1,168,r1
	store	r1,[r14+-268]
!   _temp_2485 = _temp_2485 + -1
	load	[r14+-264],r1
	add	r1,-1,r1
	store	r1,[r14+-264]
!   if intNotZero (_temp_2485) then goto _Label_2488
	load	[r14+-264],r1
	cmp	r1,r0
	bne	_Label_2488
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1952]
!   _temp_2489 = &_temp_2483
	add	r14,-1952,r1
	store	r1,[r14+-88]
!   make sure array has size 10
	load	[r14+-1956],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4488
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4488:
!   make sure array has size 10
	load	[r14+-88],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2482 = *_temp_2489  (sizeInBytes=1684)
	load	[r14+-88],r5
	load	[r14+-1956],r4
	mov	421,r3
_Label_4489:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4489
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! CALL STATEMENT...
!   _temp_2491 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_2493 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_2495 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! SEND STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0SE",r10
!   _temp_2497 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2502 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2503 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2502  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1960]
_Label_2498:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2503 then goto _Label_2501		
	load	[r14+-1960],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2501
_Label_2499:
	mov	869,r13		! source line 869
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0SE",r10
!   _temp_2504 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2504 [i ] into _temp_2505
!     make sure index expr is >= 0
	load	[r14+-1960],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   _temp_2506 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2506 [i ] into _temp_2507
!     make sure index expr is >= 0
	load	[r14+-1960],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2508 = _temp_2507 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2508 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_2510 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2510 [i ] into _temp_2511
!     make sure index expr is >= 0
	load	[r14+-1960],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2509 = _temp_2511		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2512 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2509  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2500:
!   i = i + 1
	load	[r14+-1960],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1960]
	jmp	_Label_2498
! END FOR
_Label_2501:
! RETURN STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0RE",r10
	add	r15,1964,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2513
	.word	4		! total size of parameters
	.word	1960		! frame size = 1960
	.word	_Label_2514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2515
	.word	-12
	.word	4
	.word	_Label_2516
	.word	-16
	.word	4
	.word	_Label_2517
	.word	-20
	.word	4
	.word	_Label_2518
	.word	-24
	.word	4
	.word	_Label_2519
	.word	-28
	.word	4
	.word	_Label_2520
	.word	-32
	.word	4
	.word	_Label_2521
	.word	-36
	.word	4
	.word	_Label_2522
	.word	-40
	.word	4
	.word	_Label_2523
	.word	-44
	.word	4
	.word	_Label_2524
	.word	-48
	.word	4
	.word	_Label_2525
	.word	-52
	.word	4
	.word	_Label_2526
	.word	-56
	.word	4
	.word	_Label_2527
	.word	-60
	.word	4
	.word	_Label_2528
	.word	-64
	.word	4
	.word	_Label_2529
	.word	-68
	.word	4
	.word	_Label_2530
	.word	-72
	.word	4
	.word	_Label_2531
	.word	-76
	.word	4
	.word	_Label_2532
	.word	-80
	.word	4
	.word	_Label_2533
	.word	-84
	.word	4
	.word	_Label_2534
	.word	-88
	.word	4
	.word	_Label_2535
	.word	-92
	.word	4
	.word	_Label_2536
	.word	-260
	.word	168
	.word	_Label_2537
	.word	-264
	.word	4
	.word	_Label_2538
	.word	-268
	.word	4
	.word	_Label_2539
	.word	-1952
	.word	1684
	.word	_Label_2540
	.word	-1956
	.word	4
	.word	_Label_2541
	.word	-1960
	.word	4
	.word	0
_Label_2513:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2514:
	.ascii	"Pself\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_4490:
	push	r0
	sub	r1,1,r1
	bne	_Label_4490
	mov	878,r13		! source line 878
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2542 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2542  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2547 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2548 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2547  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2543:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2548 then goto _Label_2546		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2546
_Label_2544:
	mov	887,r13		! source line 887
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2549 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2550 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_2551 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2551 [i ] into _temp_2552
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2545:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2543
! END FOR
_Label_2546:
! CALL STATEMENT...
!   _temp_2553 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2553  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0SE",r10
!   _temp_2554 = _function_191_PrintObjectAddr
	set	_function_191_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2555 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2554  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2556
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2558
	.word	-12
	.word	4
	.word	_Label_2559
	.word	-16
	.word	4
	.word	_Label_2560
	.word	-20
	.word	4
	.word	_Label_2561
	.word	-24
	.word	4
	.word	_Label_2562
	.word	-28
	.word	4
	.word	_Label_2563
	.word	-32
	.word	4
	.word	_Label_2564
	.word	-36
	.word	4
	.word	_Label_2565
	.word	-40
	.word	4
	.word	_Label_2566
	.word	-44
	.word	4
	.word	_Label_2567
	.word	-48
	.word	4
	.word	_Label_2568
	.word	-52
	.word	4
	.word	_Label_2569
	.word	-56
	.word	4
	.word	0
_Label_2556:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2557:
	.ascii	"Pself\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2568:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2569:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_4491:
	push	r0
	sub	r1,1,r1
	bne	_Label_4491
	mov	901,r13		! source line 901
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2570 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2575 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2576 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2575  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2571:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2576 then goto _Label_2574		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2574
_Label_2572:
	mov	910,r13		! source line 910
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2577 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_2578 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2578 [i ] into _temp_2579
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2573:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2571
! END FOR
_Label_2574:
! CALL STATEMENT...
!   _temp_2580 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2580  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_2581 = _function_191_PrintObjectAddr
	set	_function_191_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2582 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2581  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2583
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2585
	.word	-12
	.word	4
	.word	_Label_2586
	.word	-16
	.word	4
	.word	_Label_2587
	.word	-20
	.word	4
	.word	_Label_2588
	.word	-24
	.word	4
	.word	_Label_2589
	.word	-28
	.word	4
	.word	_Label_2590
	.word	-32
	.word	4
	.word	_Label_2591
	.word	-36
	.word	4
	.word	_Label_2592
	.word	-40
	.word	4
	.word	_Label_2593
	.word	-44
	.word	4
	.word	_Label_2594
	.word	-48
	.word	4
	.word	_Label_2595
	.word	-52
	.word	4
	.word	0
_Label_2583:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2584:
	.ascii	"Pself\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2594:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2595:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_4492:
	push	r0
	sub	r1,1,r1
	bne	_Label_4492
	mov	923,r13		! source line 923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_2596 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0WH",r10
_Label_2597:
	mov	930,r13		! source line 930
	mov	"\0\0SE",r10
!   _temp_2600 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2598 else goto _Label_2599
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2599
	jmp	_Label_2598
_Label_2598:
	mov	930,r13		! source line 930
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_2601 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2602 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2601  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2597
_Label_2599:
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_2603 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2604 = PCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2604 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2605 = PCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2605 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_2606 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
!   ReturnResult: PCB  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_2607
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2609
	.word	-12
	.word	4
	.word	_Label_2610
	.word	-16
	.word	4
	.word	_Label_2611
	.word	-20
	.word	4
	.word	_Label_2612
	.word	-24
	.word	4
	.word	_Label_2613
	.word	-28
	.word	4
	.word	_Label_2614
	.word	-32
	.word	4
	.word	_Label_2615
	.word	-36
	.word	4
	.word	_Label_2616
	.word	-40
	.word	4
	.word	_Label_2617
	.word	-44
	.word	4
	.word	0
_Label_2607:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2608:
	.ascii	"Pself\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2617:
	.byte	'P'
	.ascii	"PCB\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_4493:
	push	r0
	sub	r1,1,r1
	bne	_Label_4493
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_2618 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2619 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2619 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2620 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_2621 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2622 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2621  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_2623 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2624
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2625
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2626
	.word	12
	.word	4
	.word	_Label_2627
	.word	-12
	.word	4
	.word	_Label_2628
	.word	-16
	.word	4
	.word	_Label_2629
	.word	-20
	.word	4
	.word	_Label_2630
	.word	-24
	.word	4
	.word	_Label_2631
	.word	-28
	.word	4
	.word	_Label_2632
	.word	-32
	.word	4
	.word	0
_Label_2624:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2625:
	.ascii	"Pself\0"
	.align
_Label_2626:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	46,r1
_Label_4494:
	push	r0
	sub	r1,1,r1
	bne	_Label_4494
	mov	958,r13		! source line 958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0SE",r10
!   _temp_2633 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-176]
!   Send message Lock
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2638 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-172]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2639 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-168]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2638  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+-180]
_Label_2634:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2639 then goto _Label_2637		
	load	[r14+-180],r1
	load	[r14+-168],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2637
_Label_2635:
	mov	966,r13		! source line 966
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0IF",r10
!   _temp_2644 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2644 [i ] into _temp_2645
!     make sure index expr is >= 0
	load	[r14+-180],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_2646 = _temp_2645 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2643 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2648 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2647 = *_temp_2648  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2643 != _temp_2647 then goto _Label_2641		(int)
	load	[r14+-164],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2641
!	jmp	_Label_2642
_Label_2642:
!   _temp_2650 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2650 [i ] into _temp_2651
!     make sure index expr is >= 0
	load	[r14+-180],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_2652 = _temp_2651 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_2649 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if _temp_2649 != 2 then goto _Label_2641		(int)
	load	[r14+-140],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2641
!	jmp	_Label_2640
_Label_2640:
! THEN...
	mov	968,r13		! source line 968
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
!   _temp_2653 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_2653 [i ] into _temp_2654
!     make sure index expr is >= 0
	load	[r14+-180],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   _temp_2655 = _temp_2654 + 20
	load	[r14+-120],r1
	add	r1,20,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_2655 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-116],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_2657 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_2657 [i ] into _temp_2658
!     make sure index expr is >= 0
	load	[r14+-180],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   _temp_2656 = _temp_2658		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   _temp_2659 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_2656  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2660 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_2661 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_2660  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2641:
!   Increment the FOR-LOOP index variable and jump back
_Label_2636:
!   i = i + 1
	load	[r14+-180],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
	jmp	_Label_2634
! END FOR
_Label_2637:
! FOR STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2666 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2667 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2666  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-180]
_Label_2662:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2667 then goto _Label_2665		
	load	[r14+-180],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2665
_Label_2663:
	mov	974,r13		! source line 974
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0IF",r10
!   _temp_2671 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2671 [i ] into _temp_2672
!     make sure index expr is >= 0
	load	[r14+-180],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_2673 = _temp_2672 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2670 = *_temp_2673  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_2674 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2670 != _temp_2674 then goto _Label_2669		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_2669
!	jmp	_Label_2668
_Label_2668:
! THEN...
	mov	976,r13		! source line 976
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   _temp_2676 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2676 [i ] into _temp_2677
!     make sure index expr is >= 0
	load	[r14+-180],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   proc = _temp_2677		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-184]
! END IF...
_Label_2669:
!   Increment the FOR-LOOP index variable and jump back
_Label_2664:
!   i = i + 1
	load	[r14+-180],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
	jmp	_Label_2662
! END FOR
_Label_2665:
! IF STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0IF",r10
!   if proc == 0 then goto _Label_2679		(int)
	load	[r14+-184],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2679
!	jmp	_Label_2680
_Label_2680:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2682 = proc + 20
	load	[r14+-184],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2681 = *_temp_2682  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2681 != 1 then goto _Label_2679		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2679
!	jmp	_Label_2678
_Label_2678:
! THEN...
	mov	981,r13		! source line 981
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_2683 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2684 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_2685 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2684  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_2686
_Label_2679:
! ELSE...
	mov	984,r13		! source line 984
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2687 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2687 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_2688 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2689 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2690 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2689  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2686:
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_2691 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2692
	.word	8		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_2693
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2694
	.word	12
	.word	4
	.word	_Label_2695
	.word	-12
	.word	4
	.word	_Label_2696
	.word	-16
	.word	4
	.word	_Label_2697
	.word	-20
	.word	4
	.word	_Label_2698
	.word	-24
	.word	4
	.word	_Label_2699
	.word	-28
	.word	4
	.word	_Label_2700
	.word	-32
	.word	4
	.word	_Label_2701
	.word	-36
	.word	4
	.word	_Label_2702
	.word	-40
	.word	4
	.word	_Label_2703
	.word	-44
	.word	4
	.word	_Label_2704
	.word	-48
	.word	4
	.word	_Label_2705
	.word	-52
	.word	4
	.word	_Label_2706
	.word	-56
	.word	4
	.word	_Label_2707
	.word	-60
	.word	4
	.word	_Label_2708
	.word	-64
	.word	4
	.word	_Label_2709
	.word	-68
	.word	4
	.word	_Label_2710
	.word	-72
	.word	4
	.word	_Label_2711
	.word	-76
	.word	4
	.word	_Label_2712
	.word	-80
	.word	4
	.word	_Label_2713
	.word	-84
	.word	4
	.word	_Label_2714
	.word	-88
	.word	4
	.word	_Label_2715
	.word	-92
	.word	4
	.word	_Label_2716
	.word	-96
	.word	4
	.word	_Label_2717
	.word	-100
	.word	4
	.word	_Label_2718
	.word	-104
	.word	4
	.word	_Label_2719
	.word	-108
	.word	4
	.word	_Label_2720
	.word	-112
	.word	4
	.word	_Label_2721
	.word	-116
	.word	4
	.word	_Label_2722
	.word	-120
	.word	4
	.word	_Label_2723
	.word	-124
	.word	4
	.word	_Label_2724
	.word	-128
	.word	4
	.word	_Label_2725
	.word	-132
	.word	4
	.word	_Label_2726
	.word	-136
	.word	4
	.word	_Label_2727
	.word	-140
	.word	4
	.word	_Label_2728
	.word	-144
	.word	4
	.word	_Label_2729
	.word	-148
	.word	4
	.word	_Label_2730
	.word	-152
	.word	4
	.word	_Label_2731
	.word	-156
	.word	4
	.word	_Label_2732
	.word	-160
	.word	4
	.word	_Label_2733
	.word	-164
	.word	4
	.word	_Label_2734
	.word	-168
	.word	4
	.word	_Label_2735
	.word	-172
	.word	4
	.word	_Label_2736
	.word	-176
	.word	4
	.word	_Label_2737
	.word	-180
	.word	4
	.word	_Label_2738
	.word	-184
	.word	4
	.word	0
_Label_2692:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2693:
	.ascii	"Pself\0"
	.align
_Label_2694:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2737:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2738:
	.byte	'P'
	.ascii	"proc\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	14,r1
_Label_4495:
	push	r0
	sub	r1,1,r1
	bne	_Label_4495
	mov	995,r13		! source line 995
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2739 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0WH",r10
_Label_2740:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2743 = *_temp_2744  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2743 == 2 then goto _Label_2742		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2742
!	jmp	_Label_2741
_Label_2741:
	mov	1000,r13		! source line 1000
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_2745 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2746 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2745  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2740
_Label_2742:
! ASSIGNMENT STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2747 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStat = *_temp_2747  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2748 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2748 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_2749 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2750 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2751 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2750  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2752 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0RE",r10
!   ReturnResult: exitStat  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2753
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2755
	.word	12
	.word	4
	.word	_Label_2756
	.word	-12
	.word	4
	.word	_Label_2757
	.word	-16
	.word	4
	.word	_Label_2758
	.word	-20
	.word	4
	.word	_Label_2759
	.word	-24
	.word	4
	.word	_Label_2760
	.word	-28
	.word	4
	.word	_Label_2761
	.word	-32
	.word	4
	.word	_Label_2762
	.word	-36
	.word	4
	.word	_Label_2763
	.word	-40
	.word	4
	.word	_Label_2764
	.word	-44
	.word	4
	.word	_Label_2765
	.word	-48
	.word	4
	.word	_Label_2766
	.word	-52
	.word	4
	.word	_Label_2767
	.word	-56
	.word	4
	.word	0
_Label_2753:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2754:
	.ascii	"Pself\0"
	.align
_Label_2755:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"exitStat\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2768
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2768:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2769
	.word	_sourceFileName
	.word	260		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2769:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_4496:
	push	r0
	sub	r1,1,r1
	bne	_Label_4496
	mov	1057,r13		! source line 1057
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2770 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_2772 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   _temp_2774 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0SE",r10
!   _temp_2776 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2781 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2782 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2781  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2777:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2782 then goto _Label_2780		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2780
_Label_2778:
	mov	1076,r13		! source line 1076
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2785 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2785) then goto _Label_2784
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2784
!	jmp	_Label_2783
_Label_2783:
! THEN...
	mov	1080,r13		! source line 1080
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2786 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2786  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1080,r13		! source line 1080
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2784:
!   Increment the FOR-LOOP index variable and jump back
_Label_2779:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2777
! END FOR
_Label_2780:
! RETURN STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_2787
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2789
	.word	-12
	.word	4
	.word	_Label_2790
	.word	-16
	.word	4
	.word	_Label_2791
	.word	-20
	.word	4
	.word	_Label_2792
	.word	-24
	.word	4
	.word	_Label_2793
	.word	-28
	.word	4
	.word	_Label_2794
	.word	-32
	.word	4
	.word	_Label_2795
	.word	-36
	.word	4
	.word	_Label_2796
	.word	-40
	.word	4
	.word	_Label_2797
	.word	-44
	.word	4
	.word	_Label_2798
	.word	-48
	.word	4
	.word	_Label_2799
	.word	-52
	.word	4
	.word	_Label_2800
	.word	-56
	.word	4
	.word	0
_Label_2787:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2788:
	.ascii	"Pself\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2800:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_4497:
	push	r0
	sub	r1,1,r1
	bne	_Label_4497
	mov	1087,r13		! source line 1087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_2801 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2802 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2802  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1092,r13		! source line 1092
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2803 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1093,r13		! source line 1093
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2804 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1094,r13		! source line 1094
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_2805 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_2806 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_2807
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2809
	.word	-12
	.word	4
	.word	_Label_2810
	.word	-16
	.word	4
	.word	_Label_2811
	.word	-20
	.word	4
	.word	_Label_2812
	.word	-24
	.word	4
	.word	_Label_2813
	.word	-28
	.word	4
	.word	_Label_2814
	.word	-32
	.word	4
	.word	0
_Label_2807:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2808:
	.ascii	"Pself\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_4498:
	push	r0
	sub	r1,1,r1
	bne	_Label_4498
	mov	1101,r13		! source line 1101
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_2815 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0WH",r10
_Label_2816:
!   if numberFreeFrames >= 1 then goto _Label_2818		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2818
!	jmp	_Label_2817
_Label_2817:
	mov	1112,r13		! source line 1112
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_2819 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2820 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2819  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2816
_Label_2818:
! ASSIGNMENT STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_2821 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_2822 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0AS",r10
!   _temp_2823 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2823		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_2824
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2826
	.word	-12
	.word	4
	.word	_Label_2827
	.word	-16
	.word	4
	.word	_Label_2828
	.word	-20
	.word	4
	.word	_Label_2829
	.word	-24
	.word	4
	.word	_Label_2830
	.word	-28
	.word	4
	.word	_Label_2831
	.word	-32
	.word	4
	.word	_Label_2832
	.word	-36
	.word	4
	.word	_Label_2833
	.word	-40
	.word	4
	.word	0
_Label_2824:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2825:
	.ascii	"Pself\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2832:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_4499:
	push	r0
	sub	r1,1,r1
	bne	_Label_4499
	mov	1131,r13		! source line 1131
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_2834 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0WH",r10
_Label_2835:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2837		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2837
!	jmp	_Label_2836
_Label_2836:
	mov	1134,r13		! source line 1134
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_2838 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2839 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2838  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2835
_Label_2837:
! FOR STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2844 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2845 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2844  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2840:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2845 then goto _Label_2843		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2843
_Label_2841:
	mov	1137,r13		! source line 1137
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_2846 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   _temp_2847 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2847		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_2842:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2840
! END FOR
_Label_2843:
! ASSIGNMENT STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2848 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2848 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_2849 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2850
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2852
	.word	12
	.word	4
	.word	_Label_2853
	.word	16
	.word	4
	.word	_Label_2854
	.word	-12
	.word	4
	.word	_Label_2855
	.word	-16
	.word	4
	.word	_Label_2856
	.word	-20
	.word	4
	.word	_Label_2857
	.word	-24
	.word	4
	.word	_Label_2858
	.word	-28
	.word	4
	.word	_Label_2859
	.word	-32
	.word	4
	.word	_Label_2860
	.word	-36
	.word	4
	.word	_Label_2861
	.word	-40
	.word	4
	.word	_Label_2862
	.word	-44
	.word	4
	.word	_Label_2863
	.word	-48
	.word	4
	.word	_Label_2864
	.word	-52
	.word	4
	.word	_Label_2865
	.word	-56
	.word	4
	.word	0
_Label_2850:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2851:
	.ascii	"Pself\0"
	.align
_Label_2852:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2853:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2863:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2864:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2865:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_4500:
	push	r0
	sub	r1,1,r1
	bne	_Label_4500
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_2866 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2871 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2874 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2873 = *_temp_2874  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2872 = _temp_2873 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2871  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2867:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2872 then goto _Label_2870		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2870
_Label_2868:
	mov	1152,r13		! source line 1152
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0AS",r10
!   _temp_2875 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2875 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_2876 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2869:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2867
! END FOR
_Label_2870:
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2878 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2877 = *_temp_2878  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2877		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_2879 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2880 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2879  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_2881 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2882
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2884
	.word	12
	.word	4
	.word	_Label_2885
	.word	-12
	.word	4
	.word	_Label_2886
	.word	-16
	.word	4
	.word	_Label_2887
	.word	-20
	.word	4
	.word	_Label_2888
	.word	-24
	.word	4
	.word	_Label_2889
	.word	-28
	.word	4
	.word	_Label_2890
	.word	-32
	.word	4
	.word	_Label_2891
	.word	-36
	.word	4
	.word	_Label_2892
	.word	-40
	.word	4
	.word	_Label_2893
	.word	-44
	.word	4
	.word	_Label_2894
	.word	-48
	.word	4
	.word	_Label_2895
	.word	-52
	.word	4
	.word	_Label_2896
	.word	-56
	.word	4
	.word	_Label_2897
	.word	-60
	.word	4
	.word	_Label_2898
	.word	-64
	.word	4
	.word	_Label_2899
	.word	-68
	.word	4
	.word	0
_Label_2882:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2883:
	.ascii	"Pself\0"
	.align
_Label_2884:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2897:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2898:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2899:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2900
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2900:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2901
	.word	_sourceFileName
	.word	279		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2901:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	1170,r13		! source line 1170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   _temp_2902 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2904 = &_temp_2903
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2904 = _temp_2904 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2906:
!   Data Move: *_temp_2904 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2904 = _temp_2904 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2905 = _temp_2905 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2905) then goto _Label_2906
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2906
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2907 = &_temp_2903
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4502
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4502:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2902 = *_temp_2907  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4503:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4503
! RETURN STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2908
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2910
	.word	-12
	.word	4
	.word	_Label_2911
	.word	-16
	.word	4
	.word	_Label_2912
	.word	-20
	.word	4
	.word	_Label_2913
	.word	-104
	.word	84
	.word	_Label_2914
	.word	-108
	.word	4
	.word	0
_Label_2908:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2909:
	.ascii	"Pself\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_4504:
	push	r0
	sub	r1,1,r1
	bne	_Label_4504
	mov	1180,r13		! source line 1180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2915 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2915  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2916 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2916  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2921 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2922 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2921  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2917:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2922 then goto _Label_2920		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2920
_Label_2918:
	mov	1187,r13		! source line 1187
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2923 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2923  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2925 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2925 [i ] into _temp_2926
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2924 = _temp_2926		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2924  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2927 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2927  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2929 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2929 [i ] into _temp_2930
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2928 = *_temp_2930  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2928  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2931 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2932 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2932  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2933 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2935) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2934  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2936 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2936  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0IF",r10
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2940) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2939  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2939) then goto _Label_2938
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2938
!	jmp	_Label_2937
_Label_2937:
! THEN...
	mov	1198,r13		! source line 1198
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2942) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2941  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2941  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2943
_Label_2938:
! ELSE...
	mov	1200,r13		! source line 1200
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2944 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2944  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2943:
! CALL STATEMENT...
!   _temp_2945 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2945  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1202,r13		! source line 1202
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0IF",r10
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2948) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2946 else goto _Label_2947
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2947
	jmp	_Label_2946
_Label_2946:
! THEN...
	mov	1204,r13		! source line 1204
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2949 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2949  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1204,r13		! source line 1204
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2950
_Label_2947:
! ELSE...
	mov	1206,r13		! source line 1206
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2951 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2950:
! CALL STATEMENT...
!   _temp_2952 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2952  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0IF",r10
	mov	1209,r13		! source line 1209
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2955) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2953 else goto _Label_2954
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2954
	jmp	_Label_2953
_Label_2953:
! THEN...
	mov	1210,r13		! source line 1210
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2956 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2956  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2957
_Label_2954:
! ELSE...
	mov	1212,r13		! source line 1212
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2958 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2957:
! CALL STATEMENT...
!   _temp_2959 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2959  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0IF",r10
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2962) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2960 else goto _Label_2961
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2961
	jmp	_Label_2960
_Label_2960:
! THEN...
	mov	1216,r13		! source line 1216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2963 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2963  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2964
_Label_2961:
! ELSE...
	mov	1218,r13		! source line 1218
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2964:
! CALL STATEMENT...
!   _temp_2966 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2966  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0IF",r10
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2969) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2967 else goto _Label_2968
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2968
	jmp	_Label_2967
_Label_2967:
! THEN...
	mov	1222,r13		! source line 1222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2970 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2971
_Label_2968:
! ELSE...
	mov	1224,r13		! source line 1224
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2972 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2971:
! CALL STATEMENT...
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2919:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2917
! END FOR
_Label_2920:
! RETURN STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2973
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2975
	.word	-12
	.word	4
	.word	_Label_2976
	.word	-16
	.word	4
	.word	_Label_2977
	.word	-20
	.word	4
	.word	_Label_2978
	.word	-24
	.word	4
	.word	_Label_2979
	.word	-28
	.word	4
	.word	_Label_2980
	.word	-32
	.word	4
	.word	_Label_2981
	.word	-36
	.word	4
	.word	_Label_2982
	.word	-40
	.word	4
	.word	_Label_2983
	.word	-44
	.word	4
	.word	_Label_2984
	.word	-48
	.word	4
	.word	_Label_2985
	.word	-52
	.word	4
	.word	_Label_2986
	.word	-56
	.word	4
	.word	_Label_2987
	.word	-60
	.word	4
	.word	_Label_2988
	.word	-64
	.word	4
	.word	_Label_2989
	.word	-68
	.word	4
	.word	_Label_2990
	.word	-72
	.word	4
	.word	_Label_2991
	.word	-76
	.word	4
	.word	_Label_2992
	.word	-80
	.word	4
	.word	_Label_2993
	.word	-84
	.word	4
	.word	_Label_2994
	.word	-88
	.word	4
	.word	_Label_2995
	.word	-92
	.word	4
	.word	_Label_2996
	.word	-96
	.word	4
	.word	_Label_2997
	.word	-100
	.word	4
	.word	_Label_2998
	.word	-104
	.word	4
	.word	_Label_2999
	.word	-108
	.word	4
	.word	_Label_3000
	.word	-112
	.word	4
	.word	_Label_3001
	.word	-116
	.word	4
	.word	_Label_3002
	.word	-120
	.word	4
	.word	_Label_3003
	.word	-124
	.word	4
	.word	_Label_3004
	.word	-128
	.word	4
	.word	_Label_3005
	.word	-132
	.word	4
	.word	_Label_3006
	.word	-136
	.word	4
	.word	_Label_3007
	.word	-140
	.word	4
	.word	_Label_3008
	.word	-144
	.word	4
	.word	_Label_3009
	.word	-148
	.word	4
	.word	_Label_3010
	.word	-152
	.word	4
	.word	_Label_3011
	.word	-156
	.word	4
	.word	_Label_3012
	.word	-160
	.word	4
	.word	_Label_3013
	.word	-164
	.word	4
	.word	_Label_3014
	.word	-168
	.word	4
	.word	0
_Label_2973:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2974:
	.ascii	"Pself\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	1232,r13		! source line 1232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0RE",r10
!   _temp_3017 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3017 [entry ] into _temp_3018
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3016 = *_temp_3018  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3015 = _temp_3016 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3015  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_3019
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3021
	.word	12
	.word	4
	.word	_Label_3022
	.word	-12
	.word	4
	.word	_Label_3023
	.word	-16
	.word	4
	.word	_Label_3024
	.word	-20
	.word	4
	.word	_Label_3025
	.word	-24
	.word	4
	.word	0
_Label_3019:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3020:
	.ascii	"Pself\0"
	.align
_Label_3021:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_4506:
	push	r0
	sub	r1,1,r1
	bne	_Label_4506
	mov	1242,r13		! source line 1242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0RE",r10
!   _temp_3028 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3028 [entry ] into _temp_3029
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3027 = *_temp_3029  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3026 = _temp_3027 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3026  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_3030
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3032
	.word	12
	.word	4
	.word	_Label_3033
	.word	-12
	.word	4
	.word	_Label_3034
	.word	-16
	.word	4
	.word	_Label_3035
	.word	-20
	.word	4
	.word	_Label_3036
	.word	-24
	.word	4
	.word	0
_Label_3030:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3031:
	.ascii	"Pself\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_4507:
	push	r0
	sub	r1,1,r1
	bne	_Label_4507
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   _temp_3037 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3037 [entry ] into _temp_3038
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_3042 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3042 [entry ] into _temp_3043
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3041 = *_temp_3043  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3040 = _temp_3041 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3039 = _temp_3040 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3038 = _temp_3039  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_3044
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3045
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3046
	.word	12
	.word	4
	.word	_Label_3047
	.word	16
	.word	4
	.word	_Label_3048
	.word	-12
	.word	4
	.word	_Label_3049
	.word	-16
	.word	4
	.word	_Label_3050
	.word	-20
	.word	4
	.word	_Label_3051
	.word	-24
	.word	4
	.word	_Label_3052
	.word	-28
	.word	4
	.word	_Label_3053
	.word	-32
	.word	4
	.word	_Label_3054
	.word	-36
	.word	4
	.word	0
_Label_3044:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3045:
	.ascii	"Pself\0"
	.align
_Label_3046:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_4508:
	push	r0
	sub	r1,1,r1
	bne	_Label_4508
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
!   _temp_3058 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3058 [entry ] into _temp_3059
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3057 = *_temp_3059  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3056 = _temp_3057 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3056) then goto _Label_3060
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3060
!   _temp_3055 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3061
_Label_3060:
!   _temp_3055 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3061:
!   ReturnResult: _temp_3055  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_3062
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3064
	.word	12
	.word	4
	.word	_Label_3065
	.word	-16
	.word	4
	.word	_Label_3066
	.word	-20
	.word	4
	.word	_Label_3067
	.word	-24
	.word	4
	.word	_Label_3068
	.word	-28
	.word	4
	.word	_Label_3069
	.word	-9
	.word	1
	.word	0
_Label_3062:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3063:
	.ascii	"Pself\0"
	.align
_Label_3064:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3069:
	.byte	'C'
	.ascii	"_temp_3055\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_4509:
	push	r0
	sub	r1,1,r1
	bne	_Label_4509
	mov	1270,r13		! source line 1270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0RE",r10
!   _temp_3073 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3073 [entry ] into _temp_3074
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3072 = *_temp_3074  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3071 = _temp_3072 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3071) then goto _Label_3075
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3075
!   _temp_3070 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3076
_Label_3075:
!   _temp_3070 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3076:
!   ReturnResult: _temp_3070  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_3077
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3079
	.word	12
	.word	4
	.word	_Label_3080
	.word	-16
	.word	4
	.word	_Label_3081
	.word	-20
	.word	4
	.word	_Label_3082
	.word	-24
	.word	4
	.word	_Label_3083
	.word	-28
	.word	4
	.word	_Label_3084
	.word	-9
	.word	1
	.word	0
_Label_3077:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3078:
	.ascii	"Pself\0"
	.align
_Label_3079:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3084:
	.byte	'C'
	.ascii	"_temp_3070\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_4510:
	push	r0
	sub	r1,1,r1
	bne	_Label_4510
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
!   _temp_3088 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3088 [entry ] into _temp_3089
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3087 = *_temp_3089  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3086 = _temp_3087 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3086) then goto _Label_3090
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3090
!   _temp_3085 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3091
_Label_3090:
!   _temp_3085 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3091:
!   ReturnResult: _temp_3085  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_3092
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3093
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3094
	.word	12
	.word	4
	.word	_Label_3095
	.word	-16
	.word	4
	.word	_Label_3096
	.word	-20
	.word	4
	.word	_Label_3097
	.word	-24
	.word	4
	.word	_Label_3098
	.word	-28
	.word	4
	.word	_Label_3099
	.word	-9
	.word	1
	.word	0
_Label_3092:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3093:
	.ascii	"Pself\0"
	.align
_Label_3094:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3099:
	.byte	'C'
	.ascii	"_temp_3085\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_4511:
	push	r0
	sub	r1,1,r1
	bne	_Label_4511
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0RE",r10
!   _temp_3103 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3103 [entry ] into _temp_3104
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3102 = *_temp_3104  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3101 = _temp_3102 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3101) then goto _Label_3105
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3105
!   _temp_3100 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3106
_Label_3105:
!   _temp_3100 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3106:
!   ReturnResult: _temp_3100  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_3107
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3108
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3109
	.word	12
	.word	4
	.word	_Label_3110
	.word	-16
	.word	4
	.word	_Label_3111
	.word	-20
	.word	4
	.word	_Label_3112
	.word	-24
	.word	4
	.word	_Label_3113
	.word	-28
	.word	4
	.word	_Label_3114
	.word	-9
	.word	1
	.word	0
_Label_3107:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3108:
	.ascii	"Pself\0"
	.align
_Label_3109:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3114:
	.byte	'C'
	.ascii	"_temp_3100\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_4512:
	push	r0
	sub	r1,1,r1
	bne	_Label_4512
	mov	1297,r13		! source line 1297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0AS",r10
!   _temp_3115 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3115 [entry ] into _temp_3116
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3119 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3119 [entry ] into _temp_3120
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3118 = *_temp_3120  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3117 = _temp_3118 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3116 = _temp_3117  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_3121
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3123
	.word	12
	.word	4
	.word	_Label_3124
	.word	-12
	.word	4
	.word	_Label_3125
	.word	-16
	.word	4
	.word	_Label_3126
	.word	-20
	.word	4
	.word	_Label_3127
	.word	-24
	.word	4
	.word	_Label_3128
	.word	-28
	.word	4
	.word	_Label_3129
	.word	-32
	.word	4
	.word	0
_Label_3121:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3122:
	.ascii	"Pself\0"
	.align
_Label_3123:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_4513:
	push	r0
	sub	r1,1,r1
	bne	_Label_4513
	mov	1306,r13		! source line 1306
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0AS",r10
!   _temp_3130 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3130 [entry ] into _temp_3131
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3134 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3134 [entry ] into _temp_3135
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3133 = *_temp_3135  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3132 = _temp_3133 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3131 = _temp_3132  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_3136
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3138
	.word	12
	.word	4
	.word	_Label_3139
	.word	-12
	.word	4
	.word	_Label_3140
	.word	-16
	.word	4
	.word	_Label_3141
	.word	-20
	.word	4
	.word	_Label_3142
	.word	-24
	.word	4
	.word	_Label_3143
	.word	-28
	.word	4
	.word	_Label_3144
	.word	-32
	.word	4
	.word	0
_Label_3136:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3137:
	.ascii	"Pself\0"
	.align
_Label_3138:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_4514:
	push	r0
	sub	r1,1,r1
	bne	_Label_4514
	mov	1315,r13		! source line 1315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   _temp_3145 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3145 [entry ] into _temp_3146
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3149 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3149 [entry ] into _temp_3150
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3148 = *_temp_3150  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3147 = _temp_3148 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3146 = _temp_3147  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_3151
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3153
	.word	12
	.word	4
	.word	_Label_3154
	.word	-12
	.word	4
	.word	_Label_3155
	.word	-16
	.word	4
	.word	_Label_3156
	.word	-20
	.word	4
	.word	_Label_3157
	.word	-24
	.word	4
	.word	_Label_3158
	.word	-28
	.word	4
	.word	_Label_3159
	.word	-32
	.word	4
	.word	0
_Label_3151:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3152:
	.ascii	"Pself\0"
	.align
_Label_3153:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_4515:
	push	r0
	sub	r1,1,r1
	bne	_Label_4515
	mov	1324,r13		! source line 1324
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0AS",r10
!   _temp_3160 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3160 [entry ] into _temp_3161
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3164 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3164 [entry ] into _temp_3165
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3163 = *_temp_3165  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3162 = _temp_3163 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3161 = _temp_3162  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_3166
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3168
	.word	12
	.word	4
	.word	_Label_3169
	.word	-12
	.word	4
	.word	_Label_3170
	.word	-16
	.word	4
	.word	_Label_3171
	.word	-20
	.word	4
	.word	_Label_3172
	.word	-24
	.word	4
	.word	_Label_3173
	.word	-28
	.word	4
	.word	_Label_3174
	.word	-32
	.word	4
	.word	0
_Label_3166:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3167:
	.ascii	"Pself\0"
	.align
_Label_3168:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_4516:
	push	r0
	sub	r1,1,r1
	bne	_Label_4516
	mov	1333,r13		! source line 1333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   _temp_3175 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3175 [entry ] into _temp_3176
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3179 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3179 [entry ] into _temp_3180
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3178 = *_temp_3180  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3177 = _temp_3178 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3176 = _temp_3177  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_3181
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3182
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3183
	.word	12
	.word	4
	.word	_Label_3184
	.word	-12
	.word	4
	.word	_Label_3185
	.word	-16
	.word	4
	.word	_Label_3186
	.word	-20
	.word	4
	.word	_Label_3187
	.word	-24
	.word	4
	.word	_Label_3188
	.word	-28
	.word	4
	.word	_Label_3189
	.word	-32
	.word	4
	.word	0
_Label_3181:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3182:
	.ascii	"Pself\0"
	.align
_Label_3183:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_4517:
	push	r0
	sub	r1,1,r1
	bne	_Label_4517
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   _temp_3190 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3190 [entry ] into _temp_3191
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3194 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3194 [entry ] into _temp_3195
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3193 = *_temp_3195  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3192 = _temp_3193 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3191 = _temp_3192  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_3196
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3198
	.word	12
	.word	4
	.word	_Label_3199
	.word	-12
	.word	4
	.word	_Label_3200
	.word	-16
	.word	4
	.word	_Label_3201
	.word	-20
	.word	4
	.word	_Label_3202
	.word	-24
	.word	4
	.word	_Label_3203
	.word	-28
	.word	4
	.word	_Label_3204
	.word	-32
	.word	4
	.word	0
_Label_3196:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3197:
	.ascii	"Pself\0"
	.align
_Label_3198:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_4518:
	push	r0
	sub	r1,1,r1
	bne	_Label_4518
	mov	1351,r13		! source line 1351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
!   _temp_3205 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3205 [entry ] into _temp_3206
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3209 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3209 [entry ] into _temp_3210
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3208 = *_temp_3210  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3207 = _temp_3208 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3206 = _temp_3207  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_3211
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3212
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3213
	.word	12
	.word	4
	.word	_Label_3214
	.word	-12
	.word	4
	.word	_Label_3215
	.word	-16
	.word	4
	.word	_Label_3216
	.word	-20
	.word	4
	.word	_Label_3217
	.word	-24
	.word	4
	.word	_Label_3218
	.word	-28
	.word	4
	.word	_Label_3219
	.word	-32
	.word	4
	.word	0
_Label_3211:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3212:
	.ascii	"Pself\0"
	.align
_Label_3213:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_4519:
	push	r0
	sub	r1,1,r1
	bne	_Label_4519
	mov	1360,r13		! source line 1360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0AS",r10
!   _temp_3220 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3220 [entry ] into _temp_3221
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3224 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3224 [entry ] into _temp_3225
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_3223 = *_temp_3225  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3222 = _temp_3223 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3221 = _temp_3222  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_3226
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3228
	.word	12
	.word	4
	.word	_Label_3229
	.word	-12
	.word	4
	.word	_Label_3230
	.word	-16
	.word	4
	.word	_Label_3231
	.word	-20
	.word	4
	.word	_Label_3232
	.word	-24
	.word	4
	.word	_Label_3233
	.word	-28
	.word	4
	.word	_Label_3234
	.word	-32
	.word	4
	.word	0
_Label_3226:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3227:
	.ascii	"Pself\0"
	.align
_Label_3228:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_4520:
	push	r0
	sub	r1,1,r1
	bne	_Label_4520
	mov	1369,r13		! source line 1369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3236 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3236 [0 ] into _temp_3237
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_3235 = _temp_3237		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3238 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3235  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3238  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_3239
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3241
	.word	-12
	.word	4
	.word	_Label_3242
	.word	-16
	.word	4
	.word	_Label_3243
	.word	-20
	.word	4
	.word	_Label_3244
	.word	-24
	.word	4
	.word	0
_Label_3239:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3240:
	.ascii	"Pself\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_4521:
	push	r0
	sub	r1,1,r1
	bne	_Label_4521
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3245
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3245
	jmp	_Label_3246
_Label_3245:
! THEN...
	mov	1396,r13		! source line 1396
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3247
_Label_3246:
! ELSE...
	mov	1397,r13		! source line 1397
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3249		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3249
!	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	1398,r13		! source line 1398
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3249:
! END IF...
_Label_3247:
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0WH",r10
_Label_3250:
!	jmp	_Label_3251
_Label_3251:
	mov	1404,r13		! source line 1404
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3254		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3254
!	jmp	_Label_3253
_Label_3253:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3255 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3255  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3254:
! IF STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0IF",r10
	mov	1409,r13		! source line 1409
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3259) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_3258  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3258 then goto _Label_3257 else goto _Label_3256
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3256
	jmp	_Label_3257
_Label_3256:
! THEN...
	mov	1410,r13		! source line 1410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3260 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3260  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3257:
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
	mov	1413,r13		! source line 1413
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3262) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3261  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3261 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0WH",r10
_Label_3263:
!   if offset >= 8192 then goto _Label_3265		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3265
!	jmp	_Label_3264
_Label_3264:
	mov	1415,r13		! source line 1415
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3266 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3266  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3268		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3268
!	jmp	_Label_3267
_Label_3267:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3268:
! END WHILE...
	jmp	_Label_3263
_Label_3265:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_3250
_Label_3252:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3269
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3271
	.word	12
	.word	4
	.word	_Label_3272
	.word	16
	.word	4
	.word	_Label_3273
	.word	20
	.word	4
	.word	_Label_3274
	.word	-9
	.word	1
	.word	_Label_3275
	.word	-16
	.word	4
	.word	_Label_3276
	.word	-20
	.word	4
	.word	_Label_3277
	.word	-24
	.word	4
	.word	_Label_3278
	.word	-28
	.word	4
	.word	_Label_3279
	.word	-10
	.word	1
	.word	_Label_3280
	.word	-32
	.word	4
	.word	_Label_3281
	.word	-36
	.word	4
	.word	_Label_3282
	.word	-40
	.word	4
	.word	_Label_3283
	.word	-44
	.word	4
	.word	_Label_3284
	.word	-48
	.word	4
	.word	0
_Label_3269:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3270:
	.ascii	"Pself\0"
	.align
_Label_3271:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3272:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3273:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3274:
	.byte	'C'
	.ascii	"_temp_3266\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3279:
	.byte	'C'
	.ascii	"_temp_3258\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3281:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3282:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3283:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3284:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_4522:
	push	r0
	sub	r1,1,r1
	bne	_Label_4522
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3285
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3285
	jmp	_Label_3286
_Label_3285:
! THEN...
	mov	1446,r13		! source line 1446
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3287
_Label_3286:
! ELSE...
	mov	1447,r13		! source line 1447
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3289		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3289
!	jmp	_Label_3288
_Label_3288:
! THEN...
	mov	1448,r13		! source line 1448
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3289:
! END IF...
_Label_3287:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0WH",r10
_Label_3290:
!	jmp	_Label_3291
_Label_3291:
	mov	1452,r13		! source line 1452
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3296		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3296
	jmp	_Label_3293
_Label_3296:
	mov	1454,r13		! source line 1454
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3298) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_3297  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3297 then goto _Label_3295 else goto _Label_3293
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3293
	jmp	_Label_3295
_Label_3295:
	mov	1455,r13		! source line 1455
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3300) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_3299  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3299 then goto _Label_3294 else goto _Label_3293
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3293
	jmp	_Label_3294
_Label_3293:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3294:
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
	mov	1458,r13		! source line 1458
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3302) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3301  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3301 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0WH",r10
_Label_3303:
!   if offset >= 8192 then goto _Label_3305		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3305
!	jmp	_Label_3304
_Label_3304:
	mov	1459,r13		! source line 1459
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3306 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3306  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3308		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3308
!	jmp	_Label_3307
_Label_3307:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3308:
! END WHILE...
	jmp	_Label_3303
_Label_3305:
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_3290
_Label_3292:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3309
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3310
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3311
	.word	12
	.word	4
	.word	_Label_3312
	.word	16
	.word	4
	.word	_Label_3313
	.word	20
	.word	4
	.word	_Label_3314
	.word	-9
	.word	1
	.word	_Label_3315
	.word	-16
	.word	4
	.word	_Label_3316
	.word	-20
	.word	4
	.word	_Label_3317
	.word	-24
	.word	4
	.word	_Label_3318
	.word	-10
	.word	1
	.word	_Label_3319
	.word	-28
	.word	4
	.word	_Label_3320
	.word	-11
	.word	1
	.word	_Label_3321
	.word	-32
	.word	4
	.word	_Label_3322
	.word	-36
	.word	4
	.word	_Label_3323
	.word	-40
	.word	4
	.word	_Label_3324
	.word	-44
	.word	4
	.word	0
_Label_3309:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3310:
	.ascii	"Pself\0"
	.align
_Label_3311:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3312:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3314:
	.byte	'C'
	.ascii	"_temp_3306\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3318:
	.byte	'C'
	.ascii	"_temp_3299\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3320:
	.byte	'C'
	.ascii	"_temp_3297\0"
	.align
_Label_3321:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3322:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3323:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3324:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_4523:
	push	r0
	sub	r1,1,r1
	bne	_Label_4523
	mov	1476,r13		! source line 1476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
	mov	1500,r13		! source line 1500
	mov	"\0\0SE",r10
!   _temp_3328 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3329) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3328  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3327  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3327 >= 4 then goto _Label_3326		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3326
!	jmp	_Label_3325
_Label_3325:
! THEN...
	mov	1503,r13		! source line 1503
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3326:
! IF STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3331		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3331
!	jmp	_Label_3330
_Label_3330:
! THEN...
	mov	1508,r13		! source line 1508
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3331:
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0RE",r10
	mov	1513,r13		! source line 1513
	mov	"\0\0SE",r10
!   _temp_3334 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3333 = _temp_3334 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3335 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3336) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3333  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3335  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3332  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3332  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_3337
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3339
	.word	12
	.word	4
	.word	_Label_3340
	.word	16
	.word	4
	.word	_Label_3341
	.word	20
	.word	4
	.word	_Label_3342
	.word	-12
	.word	4
	.word	_Label_3343
	.word	-16
	.word	4
	.word	_Label_3344
	.word	-20
	.word	4
	.word	_Label_3345
	.word	-24
	.word	4
	.word	_Label_3346
	.word	-28
	.word	4
	.word	_Label_3347
	.word	-32
	.word	4
	.word	_Label_3348
	.word	-36
	.word	4
	.word	_Label_3349
	.word	-40
	.word	4
	.word	_Label_3350
	.word	-44
	.word	4
	.word	0
_Label_3337:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3338:
	.ascii	"Pself\0"
	.align
_Label_3339:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3340:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3341:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3350:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3351
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3351:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3352
	.word	_sourceFileName
	.word	312		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3352:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_4524:
	push	r0
	sub	r1,1,r1
	bne	_Label_4524
	mov	2406,r13		! source line 2406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3353 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3353  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2407,r13		! source line 2407
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_3355 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_3357 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_3358
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3360
	.word	-12
	.word	4
	.word	_Label_3361
	.word	-16
	.word	4
	.word	_Label_3362
	.word	-20
	.word	4
	.word	_Label_3363
	.word	-24
	.word	4
	.word	_Label_3364
	.word	-28
	.word	4
	.word	0
_Label_3358:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3359:
	.ascii	"Pself\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_4525:
	push	r0
	sub	r1,1,r1
	bne	_Label_4525
	mov	2422,r13		! source line 2422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_3365 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0WH",r10
_Label_3366:
!	jmp	_Label_3367
_Label_3367:
	mov	2436,r13		! source line 2436
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_3369 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3370) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3369  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_3371 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2443,r13		! source line 2443
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3380 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3374
	cmp	r1,2
	be	_Label_3375
	cmp	r1,3
	be	_Label_3376
	cmp	r1,4
	be	_Label_3377
	cmp	r1,5
	be	_Label_3378
	cmp	r1,6
	be	_Label_3379
	jmp	_Label_3372
! CASE 1...
_Label_3374:
! SEND STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0SE",r10
!   _temp_3381 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3375:
! CALL STATEMENT...
!   _temp_3382 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3382  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2448,r13		! source line 2448
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3376:
! CALL STATEMENT...
!   _temp_3383 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3383  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2450,r13		! source line 2450
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3377:
! CALL STATEMENT...
!   _temp_3384 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3384  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2452,r13		! source line 2452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3378:
! BREAK STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0BR",r10
	jmp	_Label_3373
! CASE 6...
_Label_3379:
! CALL STATEMENT...
!   _temp_3385 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3385  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2458,r13		! source line 2458
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3372:
! CALL STATEMENT...
!   _temp_3386 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3386  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2460,r13		! source line 2460
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3373:
! END WHILE...
	jmp	_Label_3366
_Label_3368:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3387
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3389
	.word	12
	.word	4
	.word	_Label_3390
	.word	16
	.word	4
	.word	_Label_3391
	.word	20
	.word	4
	.word	_Label_3392
	.word	-12
	.word	4
	.word	_Label_3393
	.word	-16
	.word	4
	.word	_Label_3394
	.word	-20
	.word	4
	.word	_Label_3395
	.word	-24
	.word	4
	.word	_Label_3396
	.word	-28
	.word	4
	.word	_Label_3397
	.word	-32
	.word	4
	.word	_Label_3398
	.word	-36
	.word	4
	.word	_Label_3399
	.word	-40
	.word	4
	.word	_Label_3400
	.word	-44
	.word	4
	.word	_Label_3401
	.word	-48
	.word	4
	.word	_Label_3402
	.word	-52
	.word	4
	.word	0
_Label_3387:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3388:
	.ascii	"Pself\0"
	.align
_Label_3389:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3390:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3391:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2469,r13		! source line 2469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_3403
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3404
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3405
	.word	12
	.word	4
	.word	_Label_3406
	.word	16
	.word	4
	.word	_Label_3407
	.word	20
	.word	4
	.word	_Label_3408
	.word	24
	.word	4
	.word	0
_Label_3403:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3404:
	.ascii	"Pself\0"
	.align
_Label_3405:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3406:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3407:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3408:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_4526:
	push	r0
	sub	r1,1,r1
	bne	_Label_4526
	mov	2495,r13		! source line 2495
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_3409 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0WH",r10
_Label_3410:
!	jmp	_Label_3411
_Label_3411:
	mov	2508,r13		! source line 2508
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_3413 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3414) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3413  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_3415 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2514,r13		! source line 2514
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3424 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3418
	cmp	r1,2
	be	_Label_3419
	cmp	r1,3
	be	_Label_3420
	cmp	r1,4
	be	_Label_3421
	cmp	r1,5
	be	_Label_3422
	cmp	r1,6
	be	_Label_3423
	jmp	_Label_3416
! CASE 1...
_Label_3418:
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   _temp_3425 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3419:
! CALL STATEMENT...
!   _temp_3426 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3426  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2519,r13		! source line 2519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3420:
! CALL STATEMENT...
!   _temp_3427 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3427  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2521,r13		! source line 2521
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3421:
! CALL STATEMENT...
!   _temp_3428 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3428  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2523,r13		! source line 2523
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3422:
! BREAK STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0BR",r10
	jmp	_Label_3417
! CASE 6...
_Label_3423:
! CALL STATEMENT...
!   _temp_3429 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3429  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2529,r13		! source line 2529
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3416:
! CALL STATEMENT...
!   _temp_3430 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3430  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2531,r13		! source line 2531
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3417:
! END WHILE...
	jmp	_Label_3410
_Label_3412:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3431
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3433
	.word	12
	.word	4
	.word	_Label_3434
	.word	16
	.word	4
	.word	_Label_3435
	.word	20
	.word	4
	.word	_Label_3436
	.word	-12
	.word	4
	.word	_Label_3437
	.word	-16
	.word	4
	.word	_Label_3438
	.word	-20
	.word	4
	.word	_Label_3439
	.word	-24
	.word	4
	.word	_Label_3440
	.word	-28
	.word	4
	.word	_Label_3441
	.word	-32
	.word	4
	.word	_Label_3442
	.word	-36
	.word	4
	.word	_Label_3443
	.word	-40
	.word	4
	.word	_Label_3444
	.word	-44
	.word	4
	.word	_Label_3445
	.word	-48
	.word	4
	.word	_Label_3446
	.word	-52
	.word	4
	.word	0
_Label_3431:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3432:
	.ascii	"Pself\0"
	.align
_Label_3433:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3434:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3435:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2540,r13		! source line 2540
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_3447
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3449
	.word	12
	.word	4
	.word	_Label_3450
	.word	16
	.word	4
	.word	_Label_3451
	.word	20
	.word	4
	.word	_Label_3452
	.word	24
	.word	4
	.word	0
_Label_3447:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3448:
	.ascii	"Pself\0"
	.align
_Label_3449:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3450:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3451:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3452:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3453
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3453:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3454
	.word	_sourceFileName
	.word	335		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3454:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_4527:
	push	r0
	sub	r1,1,r1
	bne	_Label_4527
	mov	2571,r13		! source line 2571
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3455 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3455  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2578,r13		! source line 2578
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   _temp_3457 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_3460 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   _temp_3461 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3463 = &_temp_3462
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3463 = _temp_3463 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3465 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4528:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4528
!   _temp_3465 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3467:
!   Data Move: *_temp_3463 = _temp_3465  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4529:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4529
!   _temp_3463 = _temp_3463 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3464 = _temp_3464 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3464) then goto _Label_3467
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3467
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3468 = &_temp_3462
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4530
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4530:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3461 = *_temp_3468  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4531:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4531
! FOR STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3473 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3474 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3473  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3469:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3474 then goto _Label_3472		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3472
_Label_3470:
	mov	2588,r13		! source line 2588
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   _temp_3475 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3475 [i ] into _temp_3476
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3477 = _temp_3476 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3477 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_3478 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3478 [i ] into _temp_3479
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_3481 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3481 [i ] into _temp_3482
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3480 = _temp_3482		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3483 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3480  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3471:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3469
! END FOR
_Label_3472:
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
!   _temp_3486 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   _temp_3487 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3489 = &_temp_3488
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3489 = _temp_3489 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3491 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4532:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4532
!   _temp_3491 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3493:
!   Data Move: *_temp_3489 = _temp_3491  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4533:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4533
!   _temp_3489 = _temp_3489 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3490 = _temp_3490 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3490) then goto _Label_3493
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3493
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3494 = &_temp_3488
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4534
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4534:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3487 = *_temp_3494  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4535:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4535
! FOR STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3499 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3500 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3499  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3495:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3500 then goto _Label_3498		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3498
_Label_3496:
	mov	2600,r13		! source line 2600
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   _temp_3501 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3501 [i ] into _temp_3502
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3503 = _temp_3502 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3503 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_3505 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3505 [i ] into _temp_3506
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3504 = _temp_3506		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3507 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3504  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3497:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3495
! END FOR
_Label_3498:
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4536:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4536
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   _temp_3509 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3510 = _temp_3509 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3510 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   _temp_3511 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   _temp_3512 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3513
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3515
	.word	-12
	.word	4
	.word	_Label_3516
	.word	-16
	.word	4
	.word	_Label_3517
	.word	-20
	.word	4
	.word	_Label_3518
	.word	-24
	.word	4
	.word	_Label_3519
	.word	-28
	.word	4
	.word	_Label_3520
	.word	-32
	.word	4
	.word	_Label_3521
	.word	-36
	.word	4
	.word	_Label_3522
	.word	-40
	.word	4
	.word	_Label_3523
	.word	-44
	.word	4
	.word	_Label_3524
	.word	-48
	.word	4
	.word	_Label_3525
	.word	-52
	.word	4
	.word	_Label_3526
	.word	-56
	.word	4
	.word	_Label_3527
	.word	-60
	.word	4
	.word	_Label_3528
	.word	-64
	.word	4
	.word	_Label_3529
	.word	-68
	.word	4
	.word	_Label_3530
	.word	-72
	.word	4
	.word	_Label_3531
	.word	-100
	.word	28
	.word	_Label_3532
	.word	-104
	.word	4
	.word	_Label_3533
	.word	-108
	.word	4
	.word	_Label_3534
	.word	-392
	.word	284
	.word	_Label_3535
	.word	-396
	.word	4
	.word	_Label_3536
	.word	-400
	.word	4
	.word	_Label_3537
	.word	-404
	.word	4
	.word	_Label_3538
	.word	-408
	.word	4
	.word	_Label_3539
	.word	-412
	.word	4
	.word	_Label_3540
	.word	-416
	.word	4
	.word	_Label_3541
	.word	-420
	.word	4
	.word	_Label_3542
	.word	-424
	.word	4
	.word	_Label_3543
	.word	-428
	.word	4
	.word	_Label_3544
	.word	-432
	.word	4
	.word	_Label_3545
	.word	-436
	.word	4
	.word	_Label_3546
	.word	-440
	.word	4
	.word	_Label_3547
	.word	-444
	.word	4
	.word	_Label_3548
	.word	-448
	.word	4
	.word	_Label_3549
	.word	-452
	.word	4
	.word	_Label_3550
	.word	-456
	.word	4
	.word	_Label_3551
	.word	-460
	.word	4
	.word	_Label_3552
	.word	-500
	.word	40
	.word	_Label_3553
	.word	-504
	.word	4
	.word	_Label_3554
	.word	-508
	.word	4
	.word	_Label_3555
	.word	-912
	.word	404
	.word	_Label_3556
	.word	-916
	.word	4
	.word	_Label_3557
	.word	-920
	.word	4
	.word	_Label_3558
	.word	-924
	.word	4
	.word	_Label_3559
	.word	-928
	.word	4
	.word	_Label_3560
	.word	-932
	.word	4
	.word	_Label_3561
	.word	-936
	.word	4
	.word	_Label_3562
	.word	-940
	.word	4
	.word	_Label_3563
	.word	-944
	.word	4
	.word	0
_Label_3513:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3514:
	.ascii	"Pself\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3563:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_4537:
	push	r0
	sub	r1,1,r1
	bne	_Label_4537
	mov	2620,r13		! source line 2620
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
!   _temp_3564 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3565 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3565  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2623,r13		! source line 2623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3570 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3571 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3570  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3566:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3571 then goto _Label_3569		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3569
_Label_3567:
	mov	2624,r13		! source line 2624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3572 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3572  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2625,r13		! source line 2625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2626,r13		! source line 2626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3573 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3573  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
!   _temp_3574 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3574 [i ] into _temp_3575
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3568:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3566
! END FOR
_Label_3569:
! CALL STATEMENT...
!   _temp_3576 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3576  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2630,r13		! source line 2630
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
!   _temp_3577 = _function_188_printFCB
	set	_function_188_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3578 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3577  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3579 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3579  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3584 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3585 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3584  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3580:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3585 then goto _Label_3583		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3583
_Label_3581:
	mov	2634,r13		! source line 2634
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3586 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3587 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3587  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3589 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3589 [i ] into _temp_3590
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3588 = _temp_3590		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3588  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3591 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3591  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
!   _temp_3592 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3592 [i ] into _temp_3593
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3582:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3580
! END FOR
_Label_3583:
! CALL STATEMENT...
!   _temp_3594 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3594  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
!   _temp_3595 = _function_187_printOpen
	set	_function_187_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3596 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3595  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
!   _temp_3597 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3598
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3600
	.word	-12
	.word	4
	.word	_Label_3601
	.word	-16
	.word	4
	.word	_Label_3602
	.word	-20
	.word	4
	.word	_Label_3603
	.word	-24
	.word	4
	.word	_Label_3604
	.word	-28
	.word	4
	.word	_Label_3605
	.word	-32
	.word	4
	.word	_Label_3606
	.word	-36
	.word	4
	.word	_Label_3607
	.word	-40
	.word	4
	.word	_Label_3608
	.word	-44
	.word	4
	.word	_Label_3609
	.word	-48
	.word	4
	.word	_Label_3610
	.word	-52
	.word	4
	.word	_Label_3611
	.word	-56
	.word	4
	.word	_Label_3612
	.word	-60
	.word	4
	.word	_Label_3613
	.word	-64
	.word	4
	.word	_Label_3614
	.word	-68
	.word	4
	.word	_Label_3615
	.word	-72
	.word	4
	.word	_Label_3616
	.word	-76
	.word	4
	.word	_Label_3617
	.word	-80
	.word	4
	.word	_Label_3618
	.word	-84
	.word	4
	.word	_Label_3619
	.word	-88
	.word	4
	.word	_Label_3620
	.word	-92
	.word	4
	.word	_Label_3621
	.word	-96
	.word	4
	.word	_Label_3622
	.word	-100
	.word	4
	.word	_Label_3623
	.word	-104
	.word	4
	.word	_Label_3624
	.word	-108
	.word	4
	.word	_Label_3625
	.word	-112
	.word	4
	.word	_Label_3626
	.word	-116
	.word	4
	.word	0
_Label_3598:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3599:
	.ascii	"Pself\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3571\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3626:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_4538:
	push	r0
	sub	r1,1,r1
	bne	_Label_4538
	mov	2649,r13		! source line 2649
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
	mov	2665,r13		! source line 2665
	mov	"\0\0SE",r10
!   _temp_3627 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3628
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3628
	jmp	_Label_3629
_Label_3628:
! THEN...
	mov	2667,r13		! source line 2667
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3629:
! SEND STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0SE",r10
!   _temp_3630 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0WH",r10
_Label_3631:
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   _temp_3634 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3632 else goto _Label_3633
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3633
	jmp	_Label_3632
_Label_3632:
	mov	2672,r13		! source line 2672
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_3635 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3636 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3635  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3631
_Label_3633:
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0AS",r10
	mov	2675,r13		! source line 2675
	mov	"\0\0SE",r10
!   _temp_3637 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3638 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3638 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3639 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3639 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3640 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3640 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_3641 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3642
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3644
	.word	12
	.word	4
	.word	_Label_3645
	.word	-12
	.word	4
	.word	_Label_3646
	.word	-16
	.word	4
	.word	_Label_3647
	.word	-20
	.word	4
	.word	_Label_3648
	.word	-24
	.word	4
	.word	_Label_3649
	.word	-28
	.word	4
	.word	_Label_3650
	.word	-32
	.word	4
	.word	_Label_3651
	.word	-36
	.word	4
	.word	_Label_3652
	.word	-40
	.word	4
	.word	_Label_3653
	.word	-44
	.word	4
	.word	_Label_3654
	.word	-48
	.word	4
	.word	_Label_3655
	.word	-52
	.word	4
	.word	_Label_3656
	.word	-56
	.word	4
	.word	0
_Label_3642:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3643:
	.ascii	"Pself\0"
	.align
_Label_3644:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3655:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3656:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_4539:
	push	r0
	sub	r1,1,r1
	bne	_Label_4539
	mov	2690,r13		! source line 2690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3658		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3658
!	jmp	_Label_3657
_Label_3657:
! THEN...
	mov	2721,r13		! source line 2721
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3659 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3659  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2721,r13		! source line 2721
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3658:
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0WH",r10
_Label_3660:
!   if numFiles <= 0 then goto _Label_3662		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3662
!	jmp	_Label_3661
_Label_3661:
	mov	2731,r13		! source line 2731
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3663 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3663  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2732,r13		! source line 2732
	mov	"\0\0CA",r10
	call	_function_189_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3664 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3664  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2734,r13		! source line 2734
	mov	"\0\0CA",r10
	call	_function_189_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3665 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3665  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2736,r13		! source line 2736
	mov	"\0\0CA",r10
	call	_function_189_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3669 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3669 then goto _Label_3667		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3667
!	jmp	_Label_3668
_Label_3668:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3671
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_3670 = _temp_3671		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3670  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2739,r13		! source line 2739
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3666 else goto _Label_3667
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3667
	jmp	_Label_3666
_Label_3666:
! THEN...
	mov	2740,r13		! source line 2740
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0BR",r10
	jmp	_Label_3662
! END IF...
_Label_3667:
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3660
_Label_3662:
! IF STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3673		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3673
!	jmp	_Label_3672
_Label_3672:
! THEN...
	mov	2748,r13		! source line 2748
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3673:
! SEND STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   _temp_3674 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3679 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3680 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3679  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3675:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3680 then goto _Label_3678		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3678
_Label_3676:
	mov	2753,r13		! source line 2753
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   _temp_3681 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3681 [i ] into _temp_3682
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3682		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3686 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3685 = *_temp_3686  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3685 != start then goto _Label_3684		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3684
!	jmp	_Label_3683
_Label_3683:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3687 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3690 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3689 = *_temp_3690  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3688 = _temp_3689 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3687 = _temp_3688  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_3691 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3684:
!   Increment the FOR-LOOP index variable and jump back
_Label_3677:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3675
! END FOR
_Label_3678:
! WHILE STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0WH",r10
_Label_3692:
	mov	2763,r13		! source line 2763
	mov	"\0\0SE",r10
!   _temp_3695 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3693 else goto _Label_3694
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3694
	jmp	_Label_3693
_Label_3693:
	mov	2763,r13		! source line 2763
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
!   _temp_3696 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3697 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3696  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3692
_Label_3694:
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_3698 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   _temp_3699 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3700 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3700 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3701 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3701 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3702 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3702 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3707 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3706 = *_temp_3707  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3706 < 0 then goto _Label_3705		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3705
	jmp	_Label_3703
_Label_3705:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3708 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3708 ) then goto _Label_3704		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3704
!	jmp	_Label_3703
_Label_3703:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3709 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3709  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2776,r13		! source line 2776
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3704:
! RETURN STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3710
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3711
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3712
	.word	12
	.word	4
	.word	_Label_3713
	.word	-12
	.word	4
	.word	_Label_3714
	.word	-16
	.word	4
	.word	_Label_3715
	.word	-20
	.word	4
	.word	_Label_3716
	.word	-24
	.word	4
	.word	_Label_3717
	.word	-28
	.word	4
	.word	_Label_3718
	.word	-32
	.word	4
	.word	_Label_3719
	.word	-36
	.word	4
	.word	_Label_3720
	.word	-40
	.word	4
	.word	_Label_3721
	.word	-44
	.word	4
	.word	_Label_3722
	.word	-48
	.word	4
	.word	_Label_3723
	.word	-52
	.word	4
	.word	_Label_3724
	.word	-56
	.word	4
	.word	_Label_3725
	.word	-60
	.word	4
	.word	_Label_3726
	.word	-64
	.word	4
	.word	_Label_3727
	.word	-68
	.word	4
	.word	_Label_3728
	.word	-72
	.word	4
	.word	_Label_3729
	.word	-76
	.word	4
	.word	_Label_3730
	.word	-80
	.word	4
	.word	_Label_3731
	.word	-84
	.word	4
	.word	_Label_3732
	.word	-88
	.word	4
	.word	_Label_3733
	.word	-92
	.word	4
	.word	_Label_3734
	.word	-96
	.word	4
	.word	_Label_3735
	.word	-100
	.word	4
	.word	_Label_3736
	.word	-104
	.word	4
	.word	_Label_3737
	.word	-108
	.word	4
	.word	_Label_3738
	.word	-112
	.word	4
	.word	_Label_3739
	.word	-116
	.word	4
	.word	_Label_3740
	.word	-120
	.word	4
	.word	_Label_3741
	.word	-124
	.word	4
	.word	_Label_3742
	.word	-128
	.word	4
	.word	_Label_3743
	.word	-132
	.word	4
	.word	_Label_3744
	.word	-136
	.word	4
	.word	_Label_3745
	.word	-140
	.word	4
	.word	_Label_3746
	.word	-144
	.word	4
	.word	_Label_3747
	.word	-148
	.word	4
	.word	_Label_3748
	.word	-152
	.word	4
	.word	_Label_3749
	.word	-156
	.word	4
	.word	_Label_3750
	.word	-160
	.word	4
	.word	0
_Label_3710:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3711:
	.ascii	"Pself\0"
	.align
_Label_3712:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3702\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3729:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3744:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3745:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3746:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3747:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3748:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3749:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3750:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_4540:
	push	r0
	sub	r1,1,r1
	bne	_Label_4540
	mov	2791,r13		! source line 2791
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0IF",r10
!   _temp_3753 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3753 then goto _Label_3752		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3752
!	jmp	_Label_3751
_Label_3751:
! THEN...
	mov	2794,r13		! source line 2794
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3752:
! SEND STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0SE",r10
!   _temp_3754 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0SE",r10
!   _temp_3755 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3756 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3756  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3757 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3760 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3759 = *_temp_3760  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3758 = _temp_3759 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3757 = _temp_3758  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3764 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3763 = *_temp_3764  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3763 > 0 then goto _Label_3762		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3762
!	jmp	_Label_3761
_Label_3761:
! THEN...
	mov	2801,r13		! source line 2801
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_3765 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   _temp_3766 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3767 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3766  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3768 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3771 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3770 = *_temp_3771  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3769 = _temp_3770 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3768 = _temp_3769  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3775 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3774 = *_temp_3775  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3774 > 0 then goto _Label_3773		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3773
!	jmp	_Label_3772
_Label_3772:
! THEN...
	mov	2805,r13		! source line 2805
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0SE",r10
!   _temp_3776 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0SE",r10
!   _temp_3777 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3778 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3777  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3773:
! END IF...
_Label_3762:
! SEND STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0SE",r10
!   _temp_3779 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3780
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3782
	.word	12
	.word	4
	.word	_Label_3783
	.word	-12
	.word	4
	.word	_Label_3784
	.word	-16
	.word	4
	.word	_Label_3785
	.word	-20
	.word	4
	.word	_Label_3786
	.word	-24
	.word	4
	.word	_Label_3787
	.word	-28
	.word	4
	.word	_Label_3788
	.word	-32
	.word	4
	.word	_Label_3789
	.word	-36
	.word	4
	.word	_Label_3790
	.word	-40
	.word	4
	.word	_Label_3791
	.word	-44
	.word	4
	.word	_Label_3792
	.word	-48
	.word	4
	.word	_Label_3793
	.word	-52
	.word	4
	.word	_Label_3794
	.word	-56
	.word	4
	.word	_Label_3795
	.word	-60
	.word	4
	.word	_Label_3796
	.word	-64
	.word	4
	.word	_Label_3797
	.word	-68
	.word	4
	.word	_Label_3798
	.word	-72
	.word	4
	.word	_Label_3799
	.word	-76
	.word	4
	.word	_Label_3800
	.word	-80
	.word	4
	.word	_Label_3801
	.word	-84
	.word	4
	.word	_Label_3802
	.word	-88
	.word	4
	.word	_Label_3803
	.word	-92
	.word	4
	.word	_Label_3804
	.word	-96
	.word	4
	.word	_Label_3805
	.word	-100
	.word	4
	.word	_Label_3806
	.word	-104
	.word	4
	.word	0
_Label_3780:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3781:
	.ascii	"Pself\0"
	.align
_Label_3782:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
_Label_3806:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_4541:
	push	r0
	sub	r1,1,r1
	bne	_Label_4541
	mov	2814,r13		! source line 2814
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3810 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3809 = *_temp_3810  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3809) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3811 = _temp_3809 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3811 ) then goto _Label_3808		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3808
!	jmp	_Label_3807
_Label_3807:
! THEN...
	mov	2820,r13		! source line 2820
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3816 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3815 = *_temp_3816  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3815) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3817 = _temp_3815 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3814 = *_temp_3817  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3814 >= 0 then goto _Label_3813		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3813
!	jmp	_Label_3812
_Label_3812:
! THEN...
	mov	2821,r13		! source line 2821
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3818 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3818  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2821,r13		! source line 2821
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3813:
! ASSIGNMENT STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3820 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3819 = *_temp_3820  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3819) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3821 = _temp_3819 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3821 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3825 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3824 = *_temp_3825  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3824) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3826 = _temp_3824 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3823 = *_temp_3826  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3829 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3828 = *_temp_3829  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3828) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3830 = _temp_3828 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3827 = *_temp_3830  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3822 = _temp_3823 + _temp_3827		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3833 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3832 = *_temp_3833  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3832) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3834 = _temp_3832 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3831 = *_temp_3834  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3835 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3822  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3831  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3808:
! RETURN STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3836
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3838
	.word	12
	.word	4
	.word	_Label_3839
	.word	-12
	.word	4
	.word	_Label_3840
	.word	-16
	.word	4
	.word	_Label_3841
	.word	-20
	.word	4
	.word	_Label_3842
	.word	-24
	.word	4
	.word	_Label_3843
	.word	-28
	.word	4
	.word	_Label_3844
	.word	-32
	.word	4
	.word	_Label_3845
	.word	-36
	.word	4
	.word	_Label_3846
	.word	-40
	.word	4
	.word	_Label_3847
	.word	-44
	.word	4
	.word	_Label_3848
	.word	-48
	.word	4
	.word	_Label_3849
	.word	-52
	.word	4
	.word	_Label_3850
	.word	-56
	.word	4
	.word	_Label_3851
	.word	-60
	.word	4
	.word	_Label_3852
	.word	-64
	.word	4
	.word	_Label_3853
	.word	-68
	.word	4
	.word	_Label_3854
	.word	-72
	.word	4
	.word	_Label_3855
	.word	-76
	.word	4
	.word	_Label_3856
	.word	-80
	.word	4
	.word	_Label_3857
	.word	-84
	.word	4
	.word	_Label_3858
	.word	-88
	.word	4
	.word	_Label_3859
	.word	-92
	.word	4
	.word	_Label_3860
	.word	-96
	.word	4
	.word	_Label_3861
	.word	-100
	.word	4
	.word	_Label_3862
	.word	-104
	.word	4
	.word	_Label_3863
	.word	-108
	.word	4
	.word	0
_Label_3836:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3837:
	.ascii	"Pself\0"
	.align
_Label_3838:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_4542:
	push	r0
	sub	r1,1,r1
	bne	_Label_4542
	mov	2833,r13		! source line 2833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_3864 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3870		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3870
!   _temp_3869 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3871
_Label_3870:
!   _temp_3869 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3871:
!   if _temp_3869 then goto _Label_3868 else goto _Label_3865
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3865
	jmp	_Label_3868
_Label_3868:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3874 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3873 = *_temp_3874  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3873 == 0 then goto _Label_3875		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3875
!   _temp_3872 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3876
_Label_3875:
!   _temp_3872 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3876:
!   if _temp_3872 then goto _Label_3867 else goto _Label_3865
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3865
	jmp	_Label_3867
_Label_3867:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3879 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3878 = *_temp_3879  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3878) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3880 = _temp_3878 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3877 = *_temp_3880  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3877 >= 0 then goto _Label_3866		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3866
!	jmp	_Label_3865
_Label_3865:
! THEN...
	mov	2850,r13		! source line 2850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3881 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3881  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2850,r13		! source line 2850
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3866:
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3882 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3882  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0WH",r10
_Label_3883:
!   if numBytes <= 0 then goto _Label_3885		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3885
!	jmp	_Label_3884
_Label_3884:
	mov	2853,r13		! source line 2853
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3889 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3888 = *_temp_3889  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3888 == sector then goto _Label_3887		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3887
!	jmp	_Label_3886
_Label_3886:
! THEN...
	mov	2868,r13		! source line 2868
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3890) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3893 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3892 = *_temp_3893  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3891 = sector + _temp_3892		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3895 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3894 = *_temp_3895  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3896 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3891  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3894  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3897 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3897 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3898 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3898 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3887:
! ASSIGNMENT STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3900 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3899 = *_temp_3900  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3899 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
!   _temp_3901 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3901  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3883
_Label_3885:
! SEND STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0SE",r10
!   _temp_3902 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3903
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3904
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3905
	.word	12
	.word	4
	.word	_Label_3906
	.word	16
	.word	4
	.word	_Label_3907
	.word	20
	.word	4
	.word	_Label_3908
	.word	24
	.word	4
	.word	_Label_3909
	.word	-16
	.word	4
	.word	_Label_3910
	.word	-20
	.word	4
	.word	_Label_3911
	.word	-24
	.word	4
	.word	_Label_3912
	.word	-28
	.word	4
	.word	_Label_3913
	.word	-32
	.word	4
	.word	_Label_3914
	.word	-36
	.word	4
	.word	_Label_3915
	.word	-40
	.word	4
	.word	_Label_3916
	.word	-44
	.word	4
	.word	_Label_3917
	.word	-48
	.word	4
	.word	_Label_3918
	.word	-52
	.word	4
	.word	_Label_3919
	.word	-56
	.word	4
	.word	_Label_3920
	.word	-60
	.word	4
	.word	_Label_3921
	.word	-64
	.word	4
	.word	_Label_3922
	.word	-68
	.word	4
	.word	_Label_3923
	.word	-72
	.word	4
	.word	_Label_3924
	.word	-76
	.word	4
	.word	_Label_3925
	.word	-80
	.word	4
	.word	_Label_3926
	.word	-84
	.word	4
	.word	_Label_3927
	.word	-88
	.word	4
	.word	_Label_3928
	.word	-92
	.word	4
	.word	_Label_3929
	.word	-96
	.word	4
	.word	_Label_3930
	.word	-100
	.word	4
	.word	_Label_3931
	.word	-104
	.word	4
	.word	_Label_3932
	.word	-9
	.word	1
	.word	_Label_3933
	.word	-10
	.word	1
	.word	_Label_3934
	.word	-108
	.word	4
	.word	_Label_3935
	.word	-112
	.word	4
	.word	_Label_3936
	.word	-116
	.word	4
	.word	_Label_3937
	.word	-120
	.word	4
	.word	_Label_3938
	.word	-124
	.word	4
	.word	_Label_3939
	.word	-128
	.word	4
	.word	0
_Label_3903:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3904:
	.ascii	"Pself\0"
	.align
_Label_3905:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3906:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3907:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3908:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3902\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3932:
	.byte	'C'
	.ascii	"_temp_3872\0"
	.align
_Label_3933:
	.byte	'C'
	.ascii	"_temp_3869\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3864\0"
	.align
_Label_3935:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3936:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3937:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3938:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3939:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_4543:
	push	r0
	sub	r1,1,r1
	bne	_Label_4543
	mov	2897,r13		! source line 2897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_3940 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3946		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3946
!   _temp_3945 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3947
_Label_3946:
!   _temp_3945 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3947:
!   if _temp_3945 then goto _Label_3944 else goto _Label_3941
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3941
	jmp	_Label_3944
_Label_3944:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3950 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3949 = *_temp_3950  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3949 == 0 then goto _Label_3951		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3951
!   _temp_3948 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3952
_Label_3951:
!   _temp_3948 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3952:
!   if _temp_3948 then goto _Label_3943 else goto _Label_3941
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3941
	jmp	_Label_3943
_Label_3943:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3955 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3954 = *_temp_3955  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3954) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3956 = _temp_3954 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3953 = *_temp_3956  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3953 >= 0 then goto _Label_3942		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3942
!	jmp	_Label_3941
_Label_3941:
! THEN...
	mov	2915,r13		! source line 2915
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3957 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3957  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2915,r13		! source line 2915
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3942:
! ASSIGNMENT STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3958 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3958  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0WH",r10
_Label_3959:
!   if numBytes <= 0 then goto _Label_3961		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3961
!	jmp	_Label_3960
_Label_3960:
	mov	2918,r13		! source line 2918
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3965 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3964 = *_temp_3965  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3964 == sector then goto _Label_3963		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3963
!	jmp	_Label_3962
_Label_3962:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3966) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3963:
! ASSIGNMENT STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3968 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3967 = *_temp_3968  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3967 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   _temp_3969 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3969  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3973 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3972 = *_temp_3973  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3972 != sector then goto _Label_3971		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3971
!	jmp	_Label_3970
_Label_3970:
	jmp	_Label_3974
_Label_3971:
! ELSE...
	mov	2940,r13		! source line 2940
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3977
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3977
	jmp	_Label_3976
_Label_3977:
!   if bytesToMove != 8192 then goto _Label_3976		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3976
!	jmp	_Label_3975
_Label_3975:
	jmp	_Label_3978
_Label_3976:
! ELSE...
	mov	2944,r13		! source line 2944
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3981 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3980 = *_temp_3981  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3979 = sector + _temp_3980		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3983 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3982 = *_temp_3983  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3984 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3979  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3982  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3978:
! END IF...
_Label_3974:
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3985 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3985 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3986 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3986 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3959
_Label_3961:
! SEND STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0SE",r10
!   _temp_3987 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3988
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3989
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3990
	.word	12
	.word	4
	.word	_Label_3991
	.word	16
	.word	4
	.word	_Label_3992
	.word	20
	.word	4
	.word	_Label_3993
	.word	24
	.word	4
	.word	_Label_3994
	.word	-16
	.word	4
	.word	_Label_3995
	.word	-20
	.word	4
	.word	_Label_3996
	.word	-24
	.word	4
	.word	_Label_3997
	.word	-28
	.word	4
	.word	_Label_3998
	.word	-32
	.word	4
	.word	_Label_3999
	.word	-36
	.word	4
	.word	_Label_4000
	.word	-40
	.word	4
	.word	_Label_4001
	.word	-44
	.word	4
	.word	_Label_4002
	.word	-48
	.word	4
	.word	_Label_4003
	.word	-52
	.word	4
	.word	_Label_4004
	.word	-56
	.word	4
	.word	_Label_4005
	.word	-60
	.word	4
	.word	_Label_4006
	.word	-64
	.word	4
	.word	_Label_4007
	.word	-68
	.word	4
	.word	_Label_4008
	.word	-72
	.word	4
	.word	_Label_4009
	.word	-76
	.word	4
	.word	_Label_4010
	.word	-80
	.word	4
	.word	_Label_4011
	.word	-84
	.word	4
	.word	_Label_4012
	.word	-88
	.word	4
	.word	_Label_4013
	.word	-92
	.word	4
	.word	_Label_4014
	.word	-96
	.word	4
	.word	_Label_4015
	.word	-100
	.word	4
	.word	_Label_4016
	.word	-104
	.word	4
	.word	_Label_4017
	.word	-108
	.word	4
	.word	_Label_4018
	.word	-112
	.word	4
	.word	_Label_4019
	.word	-9
	.word	1
	.word	_Label_4020
	.word	-10
	.word	1
	.word	_Label_4021
	.word	-116
	.word	4
	.word	_Label_4022
	.word	-120
	.word	4
	.word	_Label_4023
	.word	-124
	.word	4
	.word	_Label_4024
	.word	-128
	.word	4
	.word	_Label_4025
	.word	-132
	.word	4
	.word	_Label_4026
	.word	-136
	.word	4
	.word	0
_Label_3988:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3989:
	.ascii	"Pself\0"
	.align
_Label_3990:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3991:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3992:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3993:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3984\0"
	.align
_Label_3998:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_3999:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_4000:
	.byte	'?'
	.ascii	"_temp_3981\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3980\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3979\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3973\0"
	.align
_Label_4004:
	.byte	'?'
	.ascii	"_temp_3972\0"
	.align
_Label_4005:
	.byte	'?'
	.ascii	"_temp_3969\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_3968\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_3967\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_3966\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_3965\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_3957\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_3955\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_3954\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_3953\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_3950\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_3949\0"
	.align
_Label_4019:
	.byte	'C'
	.ascii	"_temp_3948\0"
	.align
_Label_4020:
	.byte	'C'
	.ascii	"_temp_3945\0"
	.align
_Label_4021:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_4022:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4023:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4024:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4025:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4026:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_4027
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_4027:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4028
	.word	_sourceFileName
	.word	360		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4028:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_4544:
	push	r0
	sub	r1,1,r1
	bne	_Label_4544
	mov	3001,r13		! source line 3001
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0AS",r10
	mov	3003,r13		! source line 3003
	mov	"\0\0SE",r10
!   _temp_4029 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	3004,r13		! source line 3004
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_4030
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_4031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4032
	.word	-12
	.word	4
	.word	0
_Label_4030:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4031:
	.ascii	"Pself\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_4029\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_4545:
	push	r0
	sub	r1,1,r1
	bne	_Label_4545
	mov	3011,r13		! source line 3011
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4033 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_4033  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3013,r13		! source line 3013
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4034 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_4034  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3014,r13		! source line 3014
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3015,r13		! source line 3015
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4035 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4035  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3016,r13		! source line 3016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3017,r13		! source line 3017
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4036 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4036  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3018,r13		! source line 3018
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3019,r13		! source line 3019
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4037 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4037  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3020,r13		! source line 3020
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4038 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4038  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3022,r13		! source line 3022
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3023,r13		! source line 3023
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3024,r13		! source line 3024
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_4039
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4041
	.word	-12
	.word	4
	.word	_Label_4042
	.word	-16
	.word	4
	.word	_Label_4043
	.word	-20
	.word	4
	.word	_Label_4044
	.word	-24
	.word	4
	.word	_Label_4045
	.word	-28
	.word	4
	.word	_Label_4046
	.word	-32
	.word	4
	.word	0
_Label_4039:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4040:
	.ascii	"Pself\0"
	.align
_Label_4041:
	.byte	'?'
	.ascii	"_temp_4038\0"
	.align
_Label_4042:
	.byte	'?'
	.ascii	"_temp_4037\0"
	.align
_Label_4043:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4044:
	.byte	'?'
	.ascii	"_temp_4035\0"
	.align
_Label_4045:
	.byte	'?'
	.ascii	"_temp_4034\0"
	.align
_Label_4046:
	.byte	'?'
	.ascii	"_temp_4033\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4047
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4047:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4048
	.word	_sourceFileName
	.word	377		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4048:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_4546:
	push	r0
	sub	r1,1,r1
	bne	_Label_4546
	mov	3035,r13		! source line 3035
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4049 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4049  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3036,r13		! source line 3036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3037,r13		! source line 3037
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4050 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4050  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3038,r13		! source line 3038
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4052		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4052
!	jmp	_Label_4051
_Label_4051:
! THEN...
	mov	3040,r13		! source line 3040
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_4053
_Label_4052:
! ELSE...
	mov	3042,r13		! source line 3042
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4054 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4054  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3042,r13		! source line 3042
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4053:
! RETURN STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_4055
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4056
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4057
	.word	-12
	.word	4
	.word	_Label_4058
	.word	-16
	.word	4
	.word	_Label_4059
	.word	-20
	.word	4
	.word	0
_Label_4055:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4056:
	.ascii	"Pself\0"
	.align
_Label_4057:
	.byte	'?'
	.ascii	"_temp_4054\0"
	.align
_Label_4058:
	.byte	'?'
	.ascii	"_temp_4050\0"
	.align
_Label_4059:
	.byte	'?'
	.ascii	"_temp_4049\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_4547:
	push	r0
	sub	r1,1,r1
	bne	_Label_4547
	mov	3048,r13		! source line 3048
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0SE",r10
!   _temp_4060 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4061 = _temp_4060 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0SE",r10
!   _temp_4062 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4063 = _temp_4062 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0RE",r10
	mov	3062,r13		! source line 3062
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4066 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4065  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_4064  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4064  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_4067
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4069
	.word	12
	.word	4
	.word	_Label_4070
	.word	16
	.word	4
	.word	_Label_4071
	.word	-16
	.word	4
	.word	_Label_4072
	.word	-20
	.word	4
	.word	_Label_4073
	.word	-9
	.word	1
	.word	_Label_4074
	.word	-24
	.word	4
	.word	_Label_4075
	.word	-28
	.word	4
	.word	_Label_4076
	.word	-32
	.word	4
	.word	_Label_4077
	.word	-36
	.word	4
	.word	_Label_4078
	.word	-40
	.word	4
	.word	0
_Label_4067:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4068:
	.ascii	"Pself\0"
	.align
_Label_4069:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4070:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4071:
	.byte	'?'
	.ascii	"_temp_4066\0"
	.align
_Label_4072:
	.byte	'?'
	.ascii	"_temp_4065\0"
	.align
_Label_4073:
	.byte	'C'
	.ascii	"_temp_4064\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4063\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4062\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4061\0"
	.align
_Label_4077:
	.byte	'?'
	.ascii	"_temp_4060\0"
	.align
_Label_4078:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_4548:
	push	r0
	sub	r1,1,r1
	bne	_Label_4548
	mov	3067,r13		! source line 3067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0IF",r10
	mov	3072,r13		! source line 3072
	mov	"\0\0SE",r10
!   _temp_4082 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4083) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4082  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_4081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4081 then goto _Label_4080 else goto _Label_4079
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4079
	jmp	_Label_4080
_Label_4079:
! THEN...
	mov	3073,r13		! source line 3073
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4084 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4084  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3073,r13		! source line 3073
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4080:
! RETURN STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_4085
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4087
	.word	-16
	.word	4
	.word	_Label_4088
	.word	-20
	.word	4
	.word	_Label_4089
	.word	-24
	.word	4
	.word	_Label_4090
	.word	-9
	.word	1
	.word	_Label_4091
	.word	-28
	.word	4
	.word	0
_Label_4085:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4086:
	.ascii	"Pself\0"
	.align
_Label_4087:
	.byte	'?'
	.ascii	"_temp_4084\0"
	.align
_Label_4088:
	.byte	'?'
	.ascii	"_temp_4083\0"
	.align
_Label_4089:
	.byte	'?'
	.ascii	"_temp_4082\0"
	.align
_Label_4090:
	.byte	'C'
	.ascii	"_temp_4081\0"
	.align
_Label_4091:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_4549:
	push	r0
	sub	r1,1,r1
	bne	_Label_4549
	mov	3080,r13		! source line 3080
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4095 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4094 = *_temp_4095  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4094) then goto _Label_4093
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4093
!	jmp	_Label_4092
_Label_4092:
! THEN...
	mov	3107,r13		! source line 3107
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4096 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4096  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3107,r13		! source line 3107
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4093:
! IF STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0IF",r10
	mov	3111,r13		! source line 3111
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4100) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4099  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4099 == 1112300152 then goto _Label_4098		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4098
!	jmp	_Label_4097
_Label_4097:
! THEN...
	mov	3112,r13		! source line 3112
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4101 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4101  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3112,r13		! source line 3112
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4098:
! ASSIGNMENT STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0AS",r10
	mov	3117,r13		! source line 3117
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4102) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	3118,r13		! source line 3118
	mov	"\0\0AS",r10
	mov	3118,r13		! source line 3118
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4103) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0AS",r10
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4104) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0AS",r10
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4105) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0AS",r10
	mov	3121,r13		! source line 3121
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4106) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
	mov	3122,r13		! source line 3122
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4107) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0IF",r10
!   _temp_4110 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4110) then goto _Label_4109
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4109
!	jmp	_Label_4108
_Label_4108:
! THEN...
	mov	3126,r13		! source line 3126
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4111 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4111  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3126,r13		! source line 3126
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4109:
! ASSIGNMENT STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4113
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4113
!	jmp	_Label_4112
_Label_4112:
! THEN...
	mov	3134,r13		! source line 3134
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4114 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4114  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3134,r13		! source line 3134
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4113:
! IF STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0IF",r10
!   _temp_4117 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4117) then goto _Label_4116
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4116
!	jmp	_Label_4115
_Label_4115:
! THEN...
	mov	3140,r13		! source line 3140
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4118 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4118  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3140,r13		! source line 3140
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3141,r13		! source line 3141
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4116:
! IF STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0IF",r10
!   _temp_4121 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4121 then goto _Label_4120		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4120
!	jmp	_Label_4119
_Label_4119:
! THEN...
	mov	3144,r13		! source line 3144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4122 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4122  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3144,r13		! source line 3144
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4120:
! ASSIGNMENT STATEMENT...
	mov	3147,r13		! source line 3147
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0IF",r10
!   _temp_4125 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4125) then goto _Label_4124
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4124
!	jmp	_Label_4123
_Label_4123:
! THEN...
	mov	3151,r13		! source line 3151
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4126 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4126  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3151,r13		! source line 3151
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4124:
! IF STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0IF",r10
!   _temp_4129 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4129 then goto _Label_4128		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4128
!	jmp	_Label_4127
_Label_4127:
! THEN...
	mov	3155,r13		! source line 3155
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4130 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4130  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3155,r13		! source line 3155
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4128:
! ASSIGNMENT STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3161,r13		! source line 3161
	mov	"\0\0AS",r10
!   _temp_4133 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4132 = _temp_4133 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4131 = _temp_4132 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4131 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3176,r13		! source line 3176
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4135		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4135
!	jmp	_Label_4134
_Label_4134:
! THEN...
	mov	3177,r13		! source line 3177
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4136 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4136  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3177,r13		! source line 3177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4137 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4137  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3178,r13		! source line 3178
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4138 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4138  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3179,r13		! source line 3179
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4135:
! SEND STATEMENT...
	mov	3182,r13		! source line 3182
	mov	"\0\0SE",r10
!   _temp_4139 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0IF",r10
	mov	3188,r13		! source line 3188
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4143) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4142  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4142 == 707406378 then goto _Label_4141		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4141
!	jmp	_Label_4140
_Label_4140:
! THEN...
	mov	3189,r13		! source line 3189
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4144 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4144  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3189,r13		! source line 3189
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3190,r13		! source line 3190
	mov	"\0\0SE",r10
!   _temp_4145 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4141:
! ASSIGNMENT STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3196,r13		! source line 3196
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4150 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4151 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4150  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4146:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4151 then goto _Label_4149		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4149
_Label_4147:
	mov	3196,r13		! source line 3196
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0AS",r10
	mov	3197,r13		! source line 3197
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0IF",r10
	mov	3200,r13		! source line 3200
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4155) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_4154  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4154 then goto _Label_4153 else goto _Label_4152
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4152
	jmp	_Label_4153
_Label_4152:
! THEN...
	mov	3201,r13		! source line 3201
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4156 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4156  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3201,r13		! source line 3201
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3202,r13		! source line 3202
	mov	"\0\0SE",r10
!   _temp_4157 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3203,r13		! source line 3203
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4153:
! SEND STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4148:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4146
! END FOR
_Label_4149:
! IF STATEMENT...
	mov	3210,r13		! source line 3210
	mov	"\0\0IF",r10
	mov	3210,r13		! source line 3210
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4161) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4160  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4160 == 707406378 then goto _Label_4159		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4159
!	jmp	_Label_4158
_Label_4158:
! THEN...
	mov	3211,r13		! source line 3211
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4162 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4162  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3211,r13		! source line 3211
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3212,r13		! source line 3212
	mov	"\0\0SE",r10
!   _temp_4163 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4159:
! FOR STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4168 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4169 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4168  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4164:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4169 then goto _Label_4167		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4167
_Label_4165:
	mov	3217,r13		! source line 3217
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3218,r13		! source line 3218
	mov	"\0\0AS",r10
	mov	3218,r13		! source line 3218
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0IF",r10
	mov	3221,r13		! source line 3221
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4173) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_4172  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4172 then goto _Label_4171 else goto _Label_4170
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4170
	jmp	_Label_4171
_Label_4170:
! THEN...
	mov	3222,r13		! source line 3222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4174 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4174  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3222,r13		! source line 3222
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0SE",r10
!   _temp_4175 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3224,r13		! source line 3224
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4171:
! ASSIGNMENT STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4166:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4164
! END FOR
_Label_4167:
! IF STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0IF",r10
	mov	3230,r13		! source line 3230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4179) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4178  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4178 == 707406378 then goto _Label_4177		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4177
!	jmp	_Label_4176
_Label_4176:
! THEN...
	mov	3231,r13		! source line 3231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4180 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4180  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3231,r13		! source line 3231
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0SE",r10
!   _temp_4181 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4177:
! ASSIGNMENT STATEMENT...
	mov	3237,r13		! source line 3237
	mov	"\0\0AS",r10
	mov	3237,r13		! source line 3237
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3241,r13		! source line 3241
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_4182
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4184
	.word	12
	.word	4
	.word	_Label_4185
	.word	-16
	.word	4
	.word	_Label_4186
	.word	-20
	.word	4
	.word	_Label_4187
	.word	-24
	.word	4
	.word	_Label_4188
	.word	-28
	.word	4
	.word	_Label_4189
	.word	-32
	.word	4
	.word	_Label_4190
	.word	-36
	.word	4
	.word	_Label_4191
	.word	-40
	.word	4
	.word	_Label_4192
	.word	-9
	.word	1
	.word	_Label_4193
	.word	-44
	.word	4
	.word	_Label_4194
	.word	-48
	.word	4
	.word	_Label_4195
	.word	-52
	.word	4
	.word	_Label_4196
	.word	-56
	.word	4
	.word	_Label_4197
	.word	-60
	.word	4
	.word	_Label_4198
	.word	-64
	.word	4
	.word	_Label_4199
	.word	-68
	.word	4
	.word	_Label_4200
	.word	-72
	.word	4
	.word	_Label_4201
	.word	-76
	.word	4
	.word	_Label_4202
	.word	-10
	.word	1
	.word	_Label_4203
	.word	-80
	.word	4
	.word	_Label_4204
	.word	-84
	.word	4
	.word	_Label_4205
	.word	-88
	.word	4
	.word	_Label_4206
	.word	-92
	.word	4
	.word	_Label_4207
	.word	-96
	.word	4
	.word	_Label_4208
	.word	-100
	.word	4
	.word	_Label_4209
	.word	-104
	.word	4
	.word	_Label_4210
	.word	-108
	.word	4
	.word	_Label_4211
	.word	-112
	.word	4
	.word	_Label_4212
	.word	-116
	.word	4
	.word	_Label_4213
	.word	-120
	.word	4
	.word	_Label_4214
	.word	-124
	.word	4
	.word	_Label_4215
	.word	-128
	.word	4
	.word	_Label_4216
	.word	-132
	.word	4
	.word	_Label_4217
	.word	-136
	.word	4
	.word	_Label_4218
	.word	-140
	.word	4
	.word	_Label_4219
	.word	-144
	.word	4
	.word	_Label_4220
	.word	-148
	.word	4
	.word	_Label_4221
	.word	-152
	.word	4
	.word	_Label_4222
	.word	-156
	.word	4
	.word	_Label_4223
	.word	-160
	.word	4
	.word	_Label_4224
	.word	-164
	.word	4
	.word	_Label_4225
	.word	-168
	.word	4
	.word	_Label_4226
	.word	-172
	.word	4
	.word	_Label_4227
	.word	-176
	.word	4
	.word	_Label_4228
	.word	-180
	.word	4
	.word	_Label_4229
	.word	-184
	.word	4
	.word	_Label_4230
	.word	-188
	.word	4
	.word	_Label_4231
	.word	-192
	.word	4
	.word	_Label_4232
	.word	-196
	.word	4
	.word	_Label_4233
	.word	-200
	.word	4
	.word	_Label_4234
	.word	-204
	.word	4
	.word	_Label_4235
	.word	-208
	.word	4
	.word	_Label_4236
	.word	-212
	.word	4
	.word	_Label_4237
	.word	-216
	.word	4
	.word	_Label_4238
	.word	-220
	.word	4
	.word	_Label_4239
	.word	-224
	.word	4
	.word	_Label_4240
	.word	-228
	.word	4
	.word	_Label_4241
	.word	-232
	.word	4
	.word	_Label_4242
	.word	-236
	.word	4
	.word	_Label_4243
	.word	-240
	.word	4
	.word	_Label_4244
	.word	-244
	.word	4
	.word	_Label_4245
	.word	-248
	.word	4
	.word	_Label_4246
	.word	-252
	.word	4
	.word	_Label_4247
	.word	-256
	.word	4
	.word	_Label_4248
	.word	-260
	.word	4
	.word	_Label_4249
	.word	-264
	.word	4
	.word	_Label_4250
	.word	-268
	.word	4
	.word	0
_Label_4182:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4183:
	.ascii	"Pself\0"
	.align
_Label_4184:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4185:
	.byte	'?'
	.ascii	"_temp_4181\0"
	.align
_Label_4186:
	.byte	'?'
	.ascii	"_temp_4180\0"
	.align
_Label_4187:
	.byte	'?'
	.ascii	"_temp_4179\0"
	.align
_Label_4188:
	.byte	'?'
	.ascii	"_temp_4178\0"
	.align
_Label_4189:
	.byte	'?'
	.ascii	"_temp_4175\0"
	.align
_Label_4190:
	.byte	'?'
	.ascii	"_temp_4174\0"
	.align
_Label_4191:
	.byte	'?'
	.ascii	"_temp_4173\0"
	.align
_Label_4192:
	.byte	'C'
	.ascii	"_temp_4172\0"
	.align
_Label_4193:
	.byte	'?'
	.ascii	"_temp_4169\0"
	.align
_Label_4194:
	.byte	'?'
	.ascii	"_temp_4168\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4163\0"
	.align
_Label_4196:
	.byte	'?'
	.ascii	"_temp_4162\0"
	.align
_Label_4197:
	.byte	'?'
	.ascii	"_temp_4161\0"
	.align
_Label_4198:
	.byte	'?'
	.ascii	"_temp_4160\0"
	.align
_Label_4199:
	.byte	'?'
	.ascii	"_temp_4157\0"
	.align
_Label_4200:
	.byte	'?'
	.ascii	"_temp_4156\0"
	.align
_Label_4201:
	.byte	'?'
	.ascii	"_temp_4155\0"
	.align
_Label_4202:
	.byte	'C'
	.ascii	"_temp_4154\0"
	.align
_Label_4203:
	.byte	'?'
	.ascii	"_temp_4151\0"
	.align
_Label_4204:
	.byte	'?'
	.ascii	"_temp_4150\0"
	.align
_Label_4205:
	.byte	'?'
	.ascii	"_temp_4145\0"
	.align
_Label_4206:
	.byte	'?'
	.ascii	"_temp_4144\0"
	.align
_Label_4207:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4208:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4209:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
_Label_4210:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4211:
	.byte	'?'
	.ascii	"_temp_4137\0"
	.align
_Label_4212:
	.byte	'?'
	.ascii	"_temp_4136\0"
	.align
_Label_4213:
	.byte	'?'
	.ascii	"_temp_4133\0"
	.align
_Label_4214:
	.byte	'?'
	.ascii	"_temp_4132\0"
	.align
_Label_4215:
	.byte	'?'
	.ascii	"_temp_4131\0"
	.align
_Label_4216:
	.byte	'?'
	.ascii	"_temp_4130\0"
	.align
_Label_4217:
	.byte	'?'
	.ascii	"_temp_4129\0"
	.align
_Label_4218:
	.byte	'?'
	.ascii	"_temp_4126\0"
	.align
_Label_4219:
	.byte	'?'
	.ascii	"_temp_4125\0"
	.align
_Label_4220:
	.byte	'?'
	.ascii	"_temp_4122\0"
	.align
_Label_4221:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4222:
	.byte	'?'
	.ascii	"_temp_4118\0"
	.align
_Label_4223:
	.byte	'?'
	.ascii	"_temp_4117\0"
	.align
_Label_4224:
	.byte	'?'
	.ascii	"_temp_4114\0"
	.align
_Label_4225:
	.byte	'?'
	.ascii	"_temp_4111\0"
	.align
_Label_4226:
	.byte	'?'
	.ascii	"_temp_4110\0"
	.align
_Label_4227:
	.byte	'?'
	.ascii	"_temp_4107\0"
	.align
_Label_4228:
	.byte	'?'
	.ascii	"_temp_4106\0"
	.align
_Label_4229:
	.byte	'?'
	.ascii	"_temp_4105\0"
	.align
_Label_4230:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4231:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4232:
	.byte	'?'
	.ascii	"_temp_4102\0"
	.align
_Label_4233:
	.byte	'?'
	.ascii	"_temp_4101\0"
	.align
_Label_4234:
	.byte	'?'
	.ascii	"_temp_4100\0"
	.align
_Label_4235:
	.byte	'?'
	.ascii	"_temp_4099\0"
	.align
_Label_4236:
	.byte	'?'
	.ascii	"_temp_4096\0"
	.align
_Label_4237:
	.byte	'?'
	.ascii	"_temp_4095\0"
	.align
_Label_4238:
	.byte	'?'
	.ascii	"_temp_4094\0"
	.align
_Label_4239:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4240:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4241:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4242:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4243:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4244:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4245:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4246:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4247:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4248:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4249:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4250:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4251
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4251:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4252
	.word	_sourceFileName
	.word	401		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4252:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	33,r1
_Label_4550:
	push	r0
	sub	r1,1,r1
	bne	_Label_4550
	mov	3304,r13		! source line 3304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4253 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_4253  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	3306,r13		! source line 3306
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3311,r13		! source line 3311
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3314,r13		! source line 3314
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3315,r13		! source line 3315
	mov	"\0\0SE",r10
!   _temp_4255 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3317,r13		! source line 3317
	mov	"\0\0AS",r10
!   _temp_4256 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   NEW ARRAY Constructor...
!   _temp_4258 = &_temp_4257
	add	r14,-112,r1
	store	r1,[r14+-96]
!   _temp_4258 = _temp_4258 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Next value...
	mov	10,r1
	store	r1,[r14+-92]
_Label_4260:
!   Data Move: *_temp_4258 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-96],r2
	storeb	r1,[r2]
!   _temp_4258 = _temp_4258 + 1
	load	[r14+-96],r1
	add	r1,1,r1
	store	r1,[r14+-96]
!   _temp_4259 = _temp_4259 + -1
	load	[r14+-92],r1
	add	r1,-1,r1
	store	r1,[r14+-92]
!   if intNotZero (_temp_4259) then goto _Label_4260
	load	[r14+-92],r1
	cmp	r1,r0
	bne	_Label_4260
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-112]
!   _temp_4261 = &_temp_4257
	add	r14,-112,r1
	store	r1,[r14+-88]
!   make sure array has size 10
	load	[r14+-116],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4551
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4551:
!   make sure array has size 10
	load	[r14+-88],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4256 = *_temp_4261  (sizeInBytes=16)
	load	[r14+-88],r5
	load	[r14+-116],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3318,r13		! source line 3318
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3319,r13		! source line 3319
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3320,r13		! source line 3320
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3322,r13		! source line 3322
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3323,r13		! source line 3323
	mov	"\0\0SE",r10
!   _temp_4263 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-80]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3325,r13		! source line 3325
	mov	"\0\0AS",r10
!   _temp_4264 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_4266 = &_temp_4265
	add	r14,-72,r1
	store	r1,[r14+-56]
!   _temp_4266 = _temp_4266 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Next value...
	mov	10,r1
	store	r1,[r14+-52]
_Label_4268:
!   Data Move: *_temp_4266 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
!   _temp_4266 = _temp_4266 + 1
	load	[r14+-56],r1
	add	r1,1,r1
	store	r1,[r14+-56]
!   _temp_4267 = _temp_4267 + -1
	load	[r14+-52],r1
	add	r1,-1,r1
	store	r1,[r14+-52]
!   if intNotZero (_temp_4267) then goto _Label_4268
	load	[r14+-52],r1
	cmp	r1,r0
	bne	_Label_4268
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-72]
!   _temp_4269 = &_temp_4265
	add	r14,-72,r1
	store	r1,[r14+-48]
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4552
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4552:
!   make sure array has size 10
	load	[r14+-48],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4264 = *_temp_4269  (sizeInBytes=16)
	load	[r14+-48],r5
	load	[r14+-76],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3326,r13		! source line 3326
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3327,r13		! source line 3327
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3328,r13		! source line 3328
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3329,r13		! source line 3329
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3330,r13		! source line 3330
	mov	"\0\0SE",r10
!   _temp_4271 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3332,r13		! source line 3332
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3333,r13		! source line 3333
	mov	"\0\0SE",r10
!   _temp_4273 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3334,r13		! source line 3334
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialHandlerThread = zeros  (sizeInBytes=4164)
	load	[r14+8],r4
	add	r4,144,r4
	mov	1041,r3
_Label_4553:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4553
!   serialHandlerThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3335,r13		! source line 3335
	mov	"\0\0SE",r10
!   _temp_4275 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-24]
!   _temp_4276 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_4275  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3336,r13		! source line 3336
	mov	"\0\0SE",r10
!   _temp_4277 = _P_Kernel_SerialHandlerFunction
	set	_P_Kernel_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_4278 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_4277  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3338,r13		! source line 3338
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3338,r13		! source line 3338
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_4279
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_4280
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4281
	.word	-12
	.word	4
	.word	_Label_4282
	.word	-16
	.word	4
	.word	_Label_4283
	.word	-20
	.word	4
	.word	_Label_4284
	.word	-24
	.word	4
	.word	_Label_4285
	.word	-28
	.word	4
	.word	_Label_4286
	.word	-32
	.word	4
	.word	_Label_4287
	.word	-36
	.word	4
	.word	_Label_4288
	.word	-40
	.word	4
	.word	_Label_4289
	.word	-44
	.word	4
	.word	_Label_4290
	.word	-48
	.word	4
	.word	_Label_4291
	.word	-52
	.word	4
	.word	_Label_4292
	.word	-56
	.word	4
	.word	_Label_4293
	.word	-72
	.word	16
	.word	_Label_4294
	.word	-76
	.word	4
	.word	_Label_4295
	.word	-80
	.word	4
	.word	_Label_4296
	.word	-84
	.word	4
	.word	_Label_4297
	.word	-88
	.word	4
	.word	_Label_4298
	.word	-92
	.word	4
	.word	_Label_4299
	.word	-96
	.word	4
	.word	_Label_4300
	.word	-112
	.word	16
	.word	_Label_4301
	.word	-116
	.word	4
	.word	_Label_4302
	.word	-120
	.word	4
	.word	_Label_4303
	.word	-124
	.word	4
	.word	_Label_4304
	.word	-128
	.word	4
	.word	0
_Label_4279:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4280:
	.ascii	"Pself\0"
	.align
_Label_4281:
	.byte	'?'
	.ascii	"_temp_4278\0"
	.align
_Label_4282:
	.byte	'?'
	.ascii	"_temp_4277\0"
	.align
_Label_4283:
	.byte	'?'
	.ascii	"_temp_4276\0"
	.align
_Label_4284:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4285:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4273\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4272\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4271\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4270\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4269\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4267\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4266\0"
	.align
_Label_4293:
	.byte	'?'
	.ascii	"_temp_4265\0"
	.align
_Label_4294:
	.byte	'?'
	.ascii	"_temp_4264\0"
	.align
_Label_4295:
	.byte	'?'
	.ascii	"_temp_4263\0"
	.align
_Label_4296:
	.byte	'?'
	.ascii	"_temp_4262\0"
	.align
_Label_4297:
	.byte	'?'
	.ascii	"_temp_4261\0"
	.align
_Label_4298:
	.byte	'?'
	.ascii	"_temp_4259\0"
	.align
_Label_4299:
	.byte	'?'
	.ascii	"_temp_4258\0"
	.align
_Label_4300:
	.byte	'?'
	.ascii	"_temp_4257\0"
	.align
_Label_4301:
	.byte	'?'
	.ascii	"_temp_4256\0"
	.align
_Label_4302:
	.byte	'?'
	.ascii	"_temp_4255\0"
	.align
_Label_4303:
	.byte	'?'
	.ascii	"_temp_4254\0"
	.align
_Label_4304:
	.byte	'?'
	.ascii	"_temp_4253\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	8,r1
_Label_4554:
	push	r0
	sub	r1,1,r1
	bne	_Label_4554
	mov	3344,r13		! source line 3344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3350,r13		! source line 3350
	mov	"\0\0SE",r10
!   _temp_4305 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3351,r13		! source line 3351
	mov	"\0\0SE",r10
!   _temp_4306 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3352,r13		! source line 3352
	mov	"\0\0AS",r10
!   _temp_4307 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_4307 [putBufferNextIn ] into _temp_4308
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: *_temp_4308 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3353,r13		! source line 3353
	mov	"\0\0AS",r10
!   _temp_4309 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_4309 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3354,r13		! source line 3354
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3355,r13		! source line 3355
	mov	"\0\0SE",r10
!   _temp_4310 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3358,r13		! source line 3358
	mov	"\0\0SE",r10
!   _temp_4311 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3358,r13		! source line 3358
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_4312
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4314
	.word	12
	.word	1
	.word	_Label_4315
	.word	-12
	.word	4
	.word	_Label_4316
	.word	-16
	.word	4
	.word	_Label_4317
	.word	-20
	.word	4
	.word	_Label_4318
	.word	-24
	.word	4
	.word	_Label_4319
	.word	-28
	.word	4
	.word	_Label_4320
	.word	-32
	.word	4
	.word	_Label_4321
	.word	-36
	.word	4
	.word	0
_Label_4312:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4313:
	.ascii	"Pself\0"
	.align
_Label_4314:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4315:
	.byte	'?'
	.ascii	"_temp_4311\0"
	.align
_Label_4316:
	.byte	'?'
	.ascii	"_temp_4310\0"
	.align
_Label_4317:
	.byte	'?'
	.ascii	"_temp_4309\0"
	.align
_Label_4318:
	.byte	'?'
	.ascii	"_temp_4308\0"
	.align
_Label_4319:
	.byte	'?'
	.ascii	"_temp_4307\0"
	.align
_Label_4320:
	.byte	'?'
	.ascii	"_temp_4306\0"
	.align
_Label_4321:
	.byte	'?'
	.ascii	"_temp_4305\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	10,r1
_Label_4555:
	push	r0
	sub	r1,1,r1
	bne	_Label_4555
	mov	3363,r13		! source line 3363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3369,r13		! source line 3369
	mov	"\0\0SE",r10
!   _temp_4322 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	3370,r13		! source line 3370
	mov	"\0\0WH",r10
_Label_4323:
!   if intIsZero (getBufferSize) then goto _Label_4324
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4324
	jmp	_Label_4325
_Label_4324:
	mov	3370,r13		! source line 3370
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3373,r13		! source line 3373
	mov	"\0\0SE",r10
!   _temp_4326 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4327 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4326  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4323
_Label_4325:
! ASSIGNMENT STATEMENT...
	mov	3375,r13		! source line 3375
	mov	"\0\0AS",r10
!   _temp_4328 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4328 [getBufferNextOut ] into _temp_4329
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: returnChar = *_temp_4329  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3377,r13		! source line 3377
	mov	"\0\0AS",r10
!   _temp_4330 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4330 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3378,r13		! source line 3378
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3379,r13		! source line 3379
	mov	"\0\0SE",r10
!   _temp_4331 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3380,r13		! source line 3380
	mov	"\0\0RE",r10
!   ReturnResult: returnChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_4332
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4333
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4334
	.word	-16
	.word	4
	.word	_Label_4335
	.word	-20
	.word	4
	.word	_Label_4336
	.word	-24
	.word	4
	.word	_Label_4337
	.word	-28
	.word	4
	.word	_Label_4338
	.word	-32
	.word	4
	.word	_Label_4339
	.word	-36
	.word	4
	.word	_Label_4340
	.word	-40
	.word	4
	.word	_Label_4341
	.word	-9
	.word	1
	.word	0
_Label_4332:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4333:
	.ascii	"Pself\0"
	.align
_Label_4334:
	.byte	'?'
	.ascii	"_temp_4331\0"
	.align
_Label_4335:
	.byte	'?'
	.ascii	"_temp_4330\0"
	.align
_Label_4336:
	.byte	'?'
	.ascii	"_temp_4329\0"
	.align
_Label_4337:
	.byte	'?'
	.ascii	"_temp_4328\0"
	.align
_Label_4338:
	.byte	'?'
	.ascii	"_temp_4327\0"
	.align
_Label_4339:
	.byte	'?'
	.ascii	"_temp_4326\0"
	.align
_Label_4340:
	.byte	'?'
	.ascii	"_temp_4322\0"
	.align
_Label_4341:
	.byte	'C'
	.ascii	"returnChar\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	25,r1
_Label_4556:
	push	r0
	sub	r1,1,r1
	bne	_Label_4556
	mov	3385,r13		! source line 3385
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3399,r13		! source line 3399
	mov	"\0\0WH",r10
_Label_4342:
!	jmp	_Label_4343
_Label_4343:
	mov	3399,r13		! source line 3399
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3400,r13		! source line 3400
	mov	"\0\0SE",r10
!   _temp_4345 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Send message Down
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3402,r13		! source line 3402
	mov	"\0\0IF",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4349 = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_4348 = _temp_4349 AND 1		(int)
	load	[r14+-92],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-96]
!   if _temp_4348 != 1 then goto _Label_4347		(int)
	load	[r14+-96],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4347
!	jmp	_Label_4346
_Label_4346:
! THEN...
	mov	3403,r13		! source line 3403
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3403,r13		! source line 3403
	mov	"\0\0SE",r10
!   _temp_4350 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Send message Lock
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3404,r13		! source line 3404
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4351 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   tempChar = intToChar (_temp_4351)
	load	[r14+-84],r1
	storeb	r1,[r14+-9]
! IF STATEMENT...
	mov	3405,r13		! source line 3405
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4353		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4353
!	jmp	_Label_4352
_Label_4352:
! THEN...
	mov	3407,r13		! source line 3407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4354 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4354  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3407,r13		! source line 3407
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=tempChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3408,r13		! source line 3408
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4355 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4355  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3409,r13		! source line 3409
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4356
_Label_4353:
! ELSE...
	mov	3411,r13		! source line 3411
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3411,r13		! source line 3411
	mov	"\0\0AS",r10
!   _temp_4357 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Move address of _temp_4357 [getBufferNextIn ] into _temp_4358
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: *_temp_4358 = tempChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3412,r13		! source line 3412
	mov	"\0\0AS",r10
!   _temp_4359 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   getBufferNextIn = _temp_4359 rem 10		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3413,r13		! source line 3413
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3414,r13		! source line 3414
	mov	"\0\0SE",r10
!   _temp_4360 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   _temp_4361 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_4360  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4356:
! SEND STATEMENT...
	mov	3416,r13		! source line 3416
	mov	"\0\0SE",r10
!   _temp_4362 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4347:
! IF STATEMENT...
	mov	3420,r13		! source line 3420
	mov	"\0\0IF",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4366 = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4365 = _temp_4366 AND 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-48]
!   if _temp_4365 != 2 then goto _Label_4364		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_4364
!	jmp	_Label_4363
_Label_4363:
! THEN...
	mov	3421,r13		! source line 3421
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3421,r13		! source line 3421
	mov	"\0\0SE",r10
!   _temp_4367 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3422,r13		! source line 3422
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4369		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4369
!	jmp	_Label_4368
_Label_4368:
! THEN...
	mov	3423,r13		! source line 3423
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3423,r13		! source line 3423
	mov	"\0\0AS",r10
!   _temp_4370 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4370 [putBufferNextOut ] into _temp_4371
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: tempChar = *_temp_4371  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3424,r13		! source line 3424
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4372 = charToInt (tempChar)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: *serial_data_word_address = _temp_4372  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3426,r13		! source line 3426
	mov	"\0\0AS",r10
!   _temp_4373 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextOut = _temp_4373 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3427,r13		! source line 3427
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3429,r13		! source line 3429
	mov	"\0\0SE",r10
!   _temp_4374 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4369:
! SEND STATEMENT...
	mov	3431,r13		! source line 3431
	mov	"\0\0SE",r10
!   _temp_4375 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4364:
! END WHILE...
	jmp	_Label_4342
_Label_4344:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4376
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_4377
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4378
	.word	-16
	.word	4
	.word	_Label_4379
	.word	-20
	.word	4
	.word	_Label_4380
	.word	-24
	.word	4
	.word	_Label_4381
	.word	-28
	.word	4
	.word	_Label_4382
	.word	-32
	.word	4
	.word	_Label_4383
	.word	-36
	.word	4
	.word	_Label_4384
	.word	-40
	.word	4
	.word	_Label_4385
	.word	-44
	.word	4
	.word	_Label_4386
	.word	-48
	.word	4
	.word	_Label_4387
	.word	-52
	.word	4
	.word	_Label_4388
	.word	-56
	.word	4
	.word	_Label_4389
	.word	-60
	.word	4
	.word	_Label_4390
	.word	-64
	.word	4
	.word	_Label_4391
	.word	-68
	.word	4
	.word	_Label_4392
	.word	-72
	.word	4
	.word	_Label_4393
	.word	-76
	.word	4
	.word	_Label_4394
	.word	-80
	.word	4
	.word	_Label_4395
	.word	-84
	.word	4
	.word	_Label_4396
	.word	-88
	.word	4
	.word	_Label_4397
	.word	-92
	.word	4
	.word	_Label_4398
	.word	-96
	.word	4
	.word	_Label_4399
	.word	-100
	.word	4
	.word	_Label_4400
	.word	-9
	.word	1
	.word	0
_Label_4376:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4377:
	.ascii	"Pself\0"
	.align
_Label_4378:
	.byte	'?'
	.ascii	"_temp_4375\0"
	.align
_Label_4379:
	.byte	'?'
	.ascii	"_temp_4374\0"
	.align
_Label_4380:
	.byte	'?'
	.ascii	"_temp_4373\0"
	.align
_Label_4381:
	.byte	'?'
	.ascii	"_temp_4372\0"
	.align
_Label_4382:
	.byte	'?'
	.ascii	"_temp_4371\0"
	.align
_Label_4383:
	.byte	'?'
	.ascii	"_temp_4370\0"
	.align
_Label_4384:
	.byte	'?'
	.ascii	"_temp_4367\0"
	.align
_Label_4385:
	.byte	'?'
	.ascii	"_temp_4366\0"
	.align
_Label_4386:
	.byte	'?'
	.ascii	"_temp_4365\0"
	.align
_Label_4387:
	.byte	'?'
	.ascii	"_temp_4362\0"
	.align
_Label_4388:
	.byte	'?'
	.ascii	"_temp_4361\0"
	.align
_Label_4389:
	.byte	'?'
	.ascii	"_temp_4360\0"
	.align
_Label_4390:
	.byte	'?'
	.ascii	"_temp_4359\0"
	.align
_Label_4391:
	.byte	'?'
	.ascii	"_temp_4358\0"
	.align
_Label_4392:
	.byte	'?'
	.ascii	"_temp_4357\0"
	.align
_Label_4393:
	.byte	'?'
	.ascii	"_temp_4355\0"
	.align
_Label_4394:
	.byte	'?'
	.ascii	"_temp_4354\0"
	.align
_Label_4395:
	.byte	'?'
	.ascii	"_temp_4351\0"
	.align
_Label_4396:
	.byte	'?'
	.ascii	"_temp_4350\0"
	.align
_Label_4397:
	.byte	'?'
	.ascii	"_temp_4349\0"
	.align
_Label_4398:
	.byte	'?'
	.ascii	"_temp_4348\0"
	.align
_Label_4399:
	.byte	'?'
	.ascii	"_temp_4345\0"
	.align
_Label_4400:
	.byte	'C'
	.ascii	"tempChar\0"
	.align
