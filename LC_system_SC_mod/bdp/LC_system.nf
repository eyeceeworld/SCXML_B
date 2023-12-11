Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(LC_system))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(LC_system))==(Machine(LC_system));
  Level(Machine(LC_system))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(LC_system)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(LC_system))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(LC_system))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(LC_system))==(?);
  List_Includes(Machine(LC_system))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(LC_system))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(LC_system))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(LC_system))==(?);
  Context_List_Variables(Machine(LC_system))==(?);
  Abstract_List_Variables(Machine(LC_system))==(?);
  Local_List_Variables(Machine(LC_system))==(steady_status,dequeue_external_event,dequeue_internal_event,queue_external_event,queue_internal_event,train_sum,train_ma,barrier_out_state,barrier_in_state,signaller_state,train_down_state,train_up_state,monitor_state_status,sensor_down_state_status,sensor_up_state_status,lcsystem_state_status,scxml_state_status);
  List_Variables(Machine(LC_system))==(steady_status,dequeue_external_event,dequeue_internal_event,queue_external_event,queue_internal_event,train_sum,train_ma,barrier_out_state,barrier_in_state,signaller_state,train_down_state,train_up_state,monitor_state_status,sensor_down_state_status,sensor_up_state_status,lcsystem_state_status,scxml_state_status);
  External_List_Variables(Machine(LC_system))==(steady_status,dequeue_external_event,dequeue_internal_event,queue_external_event,queue_internal_event,train_sum,train_ma,barrier_out_state,barrier_in_state,signaller_state,train_down_state,train_up_state,monitor_state_status,sensor_down_state_status,sensor_up_state_status,lcsystem_state_status,scxml_state_status)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(LC_system))==(?);
  Abstract_List_VisibleVariables(Machine(LC_system))==(?);
  External_List_VisibleVariables(Machine(LC_system))==(?);
  Expanded_List_VisibleVariables(Machine(LC_system))==(?);
  List_VisibleVariables(Machine(LC_system))==(?);
  Internal_List_VisibleVariables(Machine(LC_system))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(LC_system))==(btrue);
  Gluing_List_Invariant(Machine(LC_system))==(btrue);
  Expanded_List_Invariant(Machine(LC_system))==(btrue);
  Abstract_List_Invariant(Machine(LC_system))==(btrue);
  Context_List_Invariant(Machine(LC_system))==(btrue);
  List_Invariant(Machine(LC_system))==(scxml_state_status: SCXML_STATE_STATUS_ALL --> BOOL & lcsystem_state_status: LCSYSTEM_STATE_STATUES_ALL --> BOOL & sensor_up_state_status: SENSOR_UP_STATE_STATUS_ALL --> BOOL & sensor_down_state_status: SENSOR_DOWN_STATE_STATUS_ALL --> BOOL & monitor_state_status: MONITOR_STATE_STATUS_ALL --> BOOL & train_up_state: TRAIN_UP_STATE_STATUS_ALL --> BOOL & train_down_state: TRAIN_DOWN_STATE_STATUS_ALL --> BOOL & signaller_state: SIGNALLER_STATE_STATUS_ALL --> BOOL & barrier_in_state: BARRIER_IN_STATE_STATUS_ALL --> BOOL & barrier_out_state: BARRIER_OUT_STATE_STATUS_ALL --> BOOL & train_ma: TRAIN_MA_VALUES_ALL & train_sum: 0..2 & queue_internal_event: seq(INTERNAL_EVENT_ALL) & queue_external_event: seq(EXTERNAL_EVENT_ALL) & dequeue_internal_event: INTERNAL_EVENT_ALL & dequeue_external_event: EXTERNAL_EVENT_ALL & steady_status: BOOL & (train_ma = MA_ALLOW => monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE) & (scxml_state_status(lcsystem) = TRUE => lcsystem_state_status(sensor_up) = TRUE & lcsystem_state_status(sensor_down) = TRUE & lcsystem_state_status(monitor) = TRUE & lcsystem_state_status(train_up) = TRUE & lcsystem_state_status(train_down) = TRUE & lcsystem_state_status(signaller) = TRUE & lcsystem_state_status(barrier_in) = TRUE & lcsystem_state_status(barrier_out) = TRUE) & (lcsystem_state_status(sensor_up) = TRUE => sensor_up_state_status(UPS_NOTRAIN) = TRUE or sensor_up_state_status(UPS_AR_ENTERING) = TRUE or sensor_up_state_status(UPS_AR) = TRUE or sensor_up_state_status(UPS_AP_ENTERING) = TRUE or sensor_up_state_status(UPS_AP) = TRUE or sensor_up_state_status(UPS_CR_ENTRYING) = TRUE or sensor_up_state_status(UPS_CR) = TRUE or sensor_up_state_status(UPS_EX_ENTRYING) = TRUE or sensor_up_state_status(UPS_EX) = TRUE) & (lcsystem_state_status(sensor_down) = TRUE => sensor_down_state_status(DOWNS_NOTRAIN) = TRUE or sensor_down_state_status(DOWNS_AR_ENTERING) = TRUE or sensor_down_state_status(DOWNS_AR) = TRUE or sensor_down_state_status(DOWNS_AP_ENTERING) = TRUE or sensor_down_state_status(DOWNS_AP) = TRUE or sensor_down_state_status(DOWNS_CR_ENTRYING) = TRUE or sensor_down_state_status(DOWNS_CR) = TRUE or sensor_down_state_status(DOWNS_EX_ENTRYING) = TRUE or sensor_down_state_status(DOWNS_EX) = TRUE) & (lcsystem_state_status(monitor) = TRUE => monitor_state_status(M_NOCLEAR) = TRUE or monitor_state_status(M_CLEAR_ENTERING) = TRUE or monitor_state_status(M_CLEAR) = TRUE) & (lcsystem_state_status(train_up) = TRUE => train_up_state(UPT_MARCH) = TRUE or train_up_state(UPT_STOP) = TRUE) & (lcsystem_state_status(train_down) = TRUE => train_down_state(DOWNT_MARCH) = TRUE or train_down_state(DOWNT_STOP) = TRUE) & (lcsystem_state_status(signaller) = TRUE => signaller_state(SIGNAL_RED) = TRUE or signaller_state(SIGNAL_WHITE) = TRUE or signaller_state(SIGNAL_REDFLASH) = TRUE) & (lcsystem_state_status(barrier_in) = TRUE => barrier_in_state(INB_OPEN_ENTERING) = TRUE or barrier_in_state(INB_OPEN) = TRUE or barrier_in_state(INB_COLSE) = TRUE) & (lcsystem_state_status(barrier_out) = TRUE => barrier_out_state(OUTB_OPEN) = TRUE or barrier_out_state(OUTB_COLSE_ENTERING) = TRUE or barrier_out_state(OUTB_COLSE) = TRUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(LC_system))==(btrue);
  Abstract_List_Assertions(Machine(LC_system))==(btrue);
  Context_List_Assertions(Machine(LC_system))==(btrue);
  List_Assertions(Machine(LC_system))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(LC_system))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(LC_system))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(LC_system))==(scxml_state_status,lcsystem_state_status,sensor_up_state_status,sensor_down_state_status,monitor_state_status,train_up_state,train_down_state,signaller_state,barrier_in_state,barrier_out_state,train_ma,train_sum,queue_internal_event,queue_external_event,dequeue_internal_event,dequeue_external_event,steady_status:=SCXML_STATE_STATUS_ALL*{FALSE},LCSYSTEM_STATE_STATUES_ALL*{FALSE},SENSOR_UP_STATE_STATUS_ALL*{FALSE},SENSOR_DOWN_STATE_STATUS_ALL*{FALSE},MONITOR_STATE_STATUS_ALL*{FALSE},TRAIN_UP_STATE_STATUS_ALL*{FALSE},TRAIN_DOWN_STATE_STATUS_ALL*{FALSE},SIGNALLER_STATE_STATUS_ALL*{FALSE},BARRIER_IN_STATE_STATUS_ALL*{FALSE},BARRIER_OUT_STATE_STATUS_ALL*{FALSE},MA_FORBID,0,{},{},internal_null,external_null,FALSE);
  Context_List_Initialisation(Machine(LC_system))==(skip);
  List_Initialisation(Machine(LC_system))==(scxml_state_status:=SCXML_STATE_STATUS_ALL*{FALSE} || lcsystem_state_status:=LCSYSTEM_STATE_STATUES_ALL*{FALSE} || sensor_up_state_status:=SENSOR_UP_STATE_STATUS_ALL*{FALSE} || sensor_down_state_status:=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE} || monitor_state_status:=MONITOR_STATE_STATUS_ALL*{FALSE} || train_up_state:=TRAIN_UP_STATE_STATUS_ALL*{FALSE} || train_down_state:=TRAIN_DOWN_STATE_STATUS_ALL*{FALSE} || signaller_state:=SIGNALLER_STATE_STATUS_ALL*{FALSE} || barrier_in_state:=BARRIER_IN_STATE_STATUS_ALL*{FALSE} || barrier_out_state:=BARRIER_OUT_STATE_STATUS_ALL*{FALSE} || train_ma:=MA_FORBID || train_sum:=0 || queue_internal_event:={} || queue_external_event:={} || dequeue_internal_event:=internal_null || dequeue_external_event:=external_null || steady_status:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(LC_system))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(LC_system))==(btrue);
  List_Constraints(Machine(LC_system))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(LC_system))==(STATEMACHINE_START,TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING,TRANSITION_UPS_AR_ENTERING_TO_UPS_AR,TRANSITION_UPS_AR_TO_UPS_AP_ENTERING,TRANSITION_UPS_AP_ENTERING_TO_UPS_AP,TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING,TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR,TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING,TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX,TRANSITION_UPS_EX_TO_UPS_NOTRAIN,TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING,TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR,TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING,TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP,TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING,TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR,TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING,TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX,TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN,TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING,TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR,TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING,TRANSITION_UPT_MARCH_TO_UPT_STOP,TRANSITION_UPT_STOP_TO_UPT_MARCH,TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP,TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH,TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE,TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH,TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED,TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH,TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED,TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE,TRANSITION_INB_OPENENTERING_TO_INB_OPEN,TRANSITION_INB_OPEN_TO_INB_COLSE,TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING,TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING,TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE,TRANSITION_OUTB_COLSE_TO_OUTB_OPEN,EXTERNAL_EVENT_ADD,DEQUEUE_EXTERNAL_EVENT_QUEUE,DISCARD_EXTERNAL_EVENT,DEQUEUE_INTERNAL_EVENT_QUEUE);
  List_Operations(Machine(LC_system))==(STATEMACHINE_START,TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING,TRANSITION_UPS_AR_ENTERING_TO_UPS_AR,TRANSITION_UPS_AR_TO_UPS_AP_ENTERING,TRANSITION_UPS_AP_ENTERING_TO_UPS_AP,TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING,TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR,TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING,TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX,TRANSITION_UPS_EX_TO_UPS_NOTRAIN,TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING,TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR,TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING,TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP,TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING,TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR,TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING,TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX,TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN,TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING,TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR,TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING,TRANSITION_UPT_MARCH_TO_UPT_STOP,TRANSITION_UPT_STOP_TO_UPT_MARCH,TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP,TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH,TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE,TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH,TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED,TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH,TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED,TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE,TRANSITION_INB_OPENENTERING_TO_INB_OPEN,TRANSITION_INB_OPEN_TO_INB_COLSE,TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING,TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING,TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE,TRANSITION_OUTB_COLSE_TO_OUTB_OPEN,EXTERNAL_EVENT_ADD,DEQUEUE_EXTERNAL_EVENT_QUEUE,DISCARD_EXTERNAL_EVENT,DEQUEUE_INTERNAL_EVENT_QUEUE)
END
&
THEORY ListInputX IS
  List_Input(Machine(LC_system),STATEMACHINE_START)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(?);
  List_Input(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(?);
  List_Input(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(?);
  List_Input(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(?);
  List_Input(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(?);
  List_Input(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(?);
  List_Input(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(?);
  List_Input(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(?);
  List_Input(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(?);
  List_Input(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(?);
  List_Input(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(?);
  List_Input(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(?);
  List_Input(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(?);
  List_Input(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(?);
  List_Input(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(?);
  List_Input(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(?);
  List_Input(Machine(LC_system),EXTERNAL_EVENT_ADD)==(event);
  List_Input(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(?);
  List_Input(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(?);
  List_Input(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(LC_system),STATEMACHINE_START)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(?);
  List_Output(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(?);
  List_Output(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(?);
  List_Output(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(?);
  List_Output(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(?);
  List_Output(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(?);
  List_Output(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(?);
  List_Output(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(?);
  List_Output(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(?);
  List_Output(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(?);
  List_Output(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(?);
  List_Output(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(?);
  List_Output(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(?);
  List_Output(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(?);
  List_Output(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(?);
  List_Output(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(?);
  List_Output(Machine(LC_system),EXTERNAL_EVENT_ADD)==(?);
  List_Output(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(?);
  List_Output(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(?);
  List_Output(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(LC_system),STATEMACHINE_START)==(STATEMACHINE_START);
  List_Header(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(TRANSITION_UPS_AR_ENTERING_TO_UPS_AR);
  List_Header(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(TRANSITION_UPS_AR_TO_UPS_AP_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(TRANSITION_UPS_AP_ENTERING_TO_UPS_AP);
  List_Header(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING);
  List_Header(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR);
  List_Header(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING);
  List_Header(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX);
  List_Header(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(TRANSITION_UPS_EX_TO_UPS_NOTRAIN);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX);
  List_Header(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN);
  List_Header(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR);
  List_Header(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(TRANSITION_UPT_MARCH_TO_UPT_STOP);
  List_Header(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(TRANSITION_UPT_STOP_TO_UPT_MARCH);
  List_Header(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP);
  List_Header(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH);
  List_Header(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE);
  List_Header(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH);
  List_Header(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED);
  List_Header(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH);
  List_Header(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED);
  List_Header(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE);
  List_Header(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(TRANSITION_INB_OPENENTERING_TO_INB_OPEN);
  List_Header(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(TRANSITION_INB_OPEN_TO_INB_COLSE);
  List_Header(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING);
  List_Header(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE);
  List_Header(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(TRANSITION_OUTB_COLSE_TO_OUTB_OPEN);
  List_Header(Machine(LC_system),EXTERNAL_EVENT_ADD)==(EXTERNAL_EVENT_ADD(event));
  List_Header(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(DEQUEUE_EXTERNAL_EVENT_QUEUE);
  List_Header(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(DISCARD_EXTERNAL_EVENT);
  List_Header(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(DEQUEUE_INTERNAL_EVENT_QUEUE)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(LC_system),STATEMACHINE_START)==(scxml_state_status = SCXML_STATE_STATUS_ALL*{FALSE} & lcsystem_state_status = LCSYSTEM_STATE_STATUES_ALL*{FALSE} & sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE} & sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE} & monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE} & train_up_state = TRAIN_UP_STATE_STATUS_ALL*{FALSE} & train_down_state = TRAIN_DOWN_STATE_STATUS_ALL*{FALSE} & signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE} & barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE} & barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE} & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_NOTRAIN|->TRUE} & dequeue_external_event = uptrain__head__toAR & train_up_state(UPT_MARCH) = TRUE & (train_sum = 0 or train_sum = 1) & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AR_ENTERING|->TRUE} & (train_sum = 2 or train_sum = 1) & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AR|->TRUE} & dequeue_external_event = uptrain__head__toAP & train_up_state(UPT_MARCH) = TRUE & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AP_ENTERING|->TRUE} & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AP|->TRUE} & dequeue_external_event = uptrain__head__toCR & train_up_state(UPT_MARCH) = TRUE & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_CR_ENTRYING|->TRUE} & steady_status = FALSE & (train_ma = MA_FORBID or (train_ma = MA_ALLOW & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE)));
  List_Precondition(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_CR|->TRUE} & dequeue_external_event = uptrain__tail__toEX & train_up_state(UPT_MARCH) = TRUE & (train_sum = 2 or train_sum = 1) & train_ma = MA_ALLOW & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_EX_ENTRYING|->TRUE} & (train_sum = 1 or train_sum = 0) & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_EX|->TRUE} & dequeue_internal_event = upcrossing__finish & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_NOTRAIN|->TRUE} & dequeue_external_event = downtrain__head__toAR & train_down_state(DOWNT_MARCH) = TRUE & (train_sum = 0 or train_sum = 1) & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AR_ENTERING|->TRUE} & (train_sum = 2 or train_sum = 1) & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AR|->TRUE} & dequeue_external_event = downtrain__head__toAP & train_down_state(DOWNT_MARCH) = TRUE & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AP_ENTERING|->TRUE} & steady_status = FALSE & (not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_FORBID or train_ma = MA_FORBID or (train_ma = MA_ALLOW & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE)));
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AP|->TRUE} & dequeue_external_event = downtrain__head__toCR & train_down_state(DOWNT_MARCH) = TRUE & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_CR_ENTRYING|->TRUE} & steady_status = FALSE & (train_ma = MA_FORBID or (train_ma = MA_ALLOW & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE)));
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_CR|->TRUE} & dequeue_external_event = downtrain__tail__toEX & train_down_state(DOWNT_MARCH) = TRUE & (train_sum = 2 or train_sum = 1) & train_ma = MA_ALLOW & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_EX_ENTRYING|->TRUE} & (train_sum = 1 or train_sum = 0) & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_EX|->TRUE} & dequeue_internal_event = downcrossing__finish & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_NOCLEAR|->TRUE} & dequeue_external_event = crossing__clear & steady_status = TRUE & train_ma = MA_FORBID);
  List_Precondition(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_CLEAR_ENTERING|->TRUE} & steady_status = FALSE & train_ma = MA_FORBID);
  List_Precondition(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_CLEAR|->TRUE} & dequeue_external_event = crossing__unclear & train_ma = MA_FORBID & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(train_up_state = TRAIN_UP_STATE_STATUS_ALL*{FALSE}<+{UPT_MARCH|->TRUE} & dequeue_internal_event = order__uptrain__stop & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(train_up_state = TRAIN_UP_STATE_STATUS_ALL*{FALSE}<+{UPT_STOP|->TRUE} & dequeue_internal_event = order__uptrain__go & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(train_down_state = TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNT_MARCH|->TRUE} & dequeue_internal_event = order__downtrain__stop & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(train_down_state = TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNT_STOP|->TRUE} & dequeue_internal_event = order__downtrain__go & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_RED|->TRUE} & dequeue_internal_event = order__signaller__white & steady_status = TRUE & train_ma = MA_FORBID);
  List_Precondition(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_RED|->TRUE} & dequeue_internal_event = order__signaller__redflash & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_WHITE|->TRUE} & dequeue_internal_event = order__signaller__red & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_WHITE|->TRUE} & dequeue_internal_event = order__signaller__redflash & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_REDFLASH|->TRUE} & dequeue_internal_event = order__signaller__red & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_REDFLASH|->TRUE} & dequeue_internal_event = order__signaller__white & steady_status = TRUE & train_ma = MA_FORBID);
  List_Precondition(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_OPEN_ENTERING|->TRUE} & train_ma = MA_FORBID & steady_status = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_OPEN|->TRUE} & dequeue_internal_event = order__inbarrier__colse & train_ma = MA_FORBID & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_COLSE|->TRUE} & dequeue_internal_event = order__inbarrier__open & train_ma = MA_FORBID & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_OPEN|->TRUE} & dequeue_internal_event = order__outbarrier__colse & train_ma = MA_FORBID & steady_status = TRUE);
  List_Precondition(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_COLSE_ENTERING|->TRUE} & steady_status = FALSE & train_ma = MA_FORBID & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE);
  List_Precondition(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_COLSE|->TRUE} & dequeue_internal_event = order__outbarrier__open & steady_status = TRUE & train_ma = MA_ALLOW);
  List_Precondition(Machine(LC_system),EXTERNAL_EVENT_ADD)==(event: EXTERNAL_EVENT_ALL & event/=external_null);
  List_Precondition(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(queue_external_event/={} & queue_internal_event = {} & dequeue_external_event = external_null);
  List_Precondition(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(dequeue_external_event/=external_null & steady_status = TRUE);
  List_Precondition(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(queue_internal_event/={} & dequeue_internal_event = internal_null)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(queue_internal_event/={} & dequeue_internal_event = internal_null | dequeue_internal_event,queue_internal_event:=queue_internal_event(1),queue_internal_event\|/1);
  Expanded_List_Substitution(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(dequeue_external_event/=external_null & steady_status = TRUE | dequeue_external_event:=external_null);
  Expanded_List_Substitution(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(queue_external_event/={} & queue_internal_event = {} & dequeue_external_event = external_null | dequeue_external_event,queue_external_event:=queue_external_event(1),queue_external_event\|/1);
  Expanded_List_Substitution(Machine(LC_system),EXTERNAL_EVENT_ADD)==(event: EXTERNAL_EVENT_ALL & event/=external_null | queue_external_event:=queue_external_event<-event);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_COLSE|->TRUE} & dequeue_internal_event = order__outbarrier__open & steady_status = TRUE & train_ma = MA_ALLOW | barrier_out_state,train_ma,dequeue_internal_event:=barrier_out_state<+{OUTB_COLSE|->FALSE,OUTB_OPEN|->TRUE},MA_FORBID,internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_COLSE_ENTERING|->TRUE} & steady_status = FALSE & train_ma = MA_FORBID & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE | barrier_out_state,steady_status,train_ma:=barrier_out_state<+{OUTB_COLSE_ENTERING|->FALSE,OUTB_COLSE|->TRUE},TRUE,MA_ALLOW || (sensor_up_state_status(UPS_CR) = TRUE & train_up_state(UPT_STOP) = TRUE & (sensor_down_state_status(DOWNS_CR) = TRUE & train_down_state(DOWNT_STOP) = TRUE) ==> queue_internal_event:=queue_internal_event<-order__uptrain__go<-order__downtrain__go [] not(sensor_up_state_status(UPS_CR) = TRUE & train_up_state(UPT_STOP) = TRUE & (sensor_down_state_status(DOWNS_CR) = TRUE & train_down_state(DOWNT_STOP) = TRUE)) ==> (sensor_up_state_status(UPS_CR) = TRUE & train_up_state(UPT_STOP) = TRUE ==> queue_internal_event:=queue_internal_event<-order__uptrain__go [] not(sensor_up_state_status(UPS_CR) = TRUE & train_up_state(UPT_STOP) = TRUE) ==> (sensor_down_state_status(DOWNS_CR) = TRUE & train_down_state(DOWNT_STOP) = TRUE ==> queue_internal_event:=queue_internal_event<-order__downtrain__go [] not(sensor_down_state_status(DOWNS_CR) = TRUE & train_down_state(DOWNT_STOP) = TRUE) ==> skip))));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_OPEN|->TRUE} & dequeue_internal_event = order__outbarrier__colse & train_ma = MA_FORBID & steady_status = TRUE | barrier_out_state,steady_status,dequeue_internal_event:=barrier_out_state<+{OUTB_OPEN|->FALSE,OUTB_COLSE_ENTERING|->TRUE},FALSE,internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_COLSE|->TRUE} & dequeue_internal_event = order__inbarrier__open & train_ma = MA_FORBID & steady_status = TRUE | barrier_in_state,steady_status,dequeue_internal_event:=barrier_in_state<+{INB_COLSE|->FALSE,INB_OPEN_ENTERING|->TRUE},FALSE,internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_OPEN|->TRUE} & dequeue_internal_event = order__inbarrier__colse & train_ma = MA_FORBID & steady_status = TRUE | barrier_in_state,dequeue_internal_event:=barrier_in_state<+{INB_OPEN|->FALSE,INB_COLSE|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_OPEN_ENTERING|->TRUE} & train_ma = MA_FORBID & steady_status = FALSE | barrier_in_state,steady_status:=barrier_in_state<+{INB_OPEN_ENTERING|->FALSE,INB_OPEN|->TRUE},TRUE || (sensor_up_state_status(UPS_NOTRAIN) = TRUE & sensor_down_state_status(DOWNS_NOTRAIN) = TRUE ==> queue_internal_event:=queue_internal_event<-order__signaller__white [] not(sensor_up_state_status(UPS_NOTRAIN) = TRUE & sensor_down_state_status(DOWNS_NOTRAIN) = TRUE) ==> skip));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_REDFLASH|->TRUE} & dequeue_internal_event = order__signaller__white & steady_status = TRUE & train_ma = MA_FORBID | signaller_state,dequeue_internal_event:=signaller_state<+{SIGNAL_REDFLASH|->FALSE,SIGNAL_WHITE|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_REDFLASH|->TRUE} & dequeue_internal_event = order__signaller__red & steady_status = TRUE | signaller_state,dequeue_internal_event:=signaller_state<+{SIGNAL_REDFLASH|->FALSE,SIGNAL_RED|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_WHITE|->TRUE} & dequeue_internal_event = order__signaller__redflash & steady_status = TRUE | signaller_state,dequeue_internal_event:=signaller_state<+{SIGNAL_WHITE|->FALSE,SIGNAL_REDFLASH|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_WHITE|->TRUE} & dequeue_internal_event = order__signaller__red & steady_status = TRUE | signaller_state,dequeue_internal_event:=signaller_state<+{SIGNAL_WHITE|->FALSE,SIGNAL_RED|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_RED|->TRUE} & dequeue_internal_event = order__signaller__redflash & steady_status = TRUE | signaller_state,dequeue_internal_event:=signaller_state<+{SIGNAL_RED|->FALSE,SIGNAL_REDFLASH|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_RED|->TRUE} & dequeue_internal_event = order__signaller__white & steady_status = TRUE & train_ma = MA_FORBID | signaller_state,dequeue_internal_event:=signaller_state<+{SIGNAL_RED|->FALSE,SIGNAL_WHITE|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(train_down_state = TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNT_STOP|->TRUE} & dequeue_internal_event = order__downtrain__go & steady_status = TRUE | train_down_state,dequeue_internal_event:=train_down_state<+{DOWNT_STOP|->FALSE,DOWNT_MARCH|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(train_down_state = TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNT_MARCH|->TRUE} & dequeue_internal_event = order__downtrain__stop & steady_status = TRUE | train_down_state,dequeue_internal_event:=train_down_state<+{DOWNT_MARCH|->FALSE,DOWNT_STOP|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(train_up_state = TRAIN_UP_STATE_STATUS_ALL*{FALSE}<+{UPT_STOP|->TRUE} & dequeue_internal_event = order__uptrain__go & steady_status = TRUE | train_up_state,dequeue_internal_event:=train_up_state<+{UPT_STOP|->FALSE,UPT_MARCH|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(train_up_state = TRAIN_UP_STATE_STATUS_ALL*{FALSE}<+{UPT_MARCH|->TRUE} & dequeue_internal_event = order__uptrain__stop & steady_status = TRUE | train_up_state,dequeue_internal_event:=train_up_state<+{UPT_MARCH|->FALSE,UPT_STOP|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_CLEAR|->TRUE} & dequeue_external_event = crossing__unclear & train_ma = MA_FORBID & steady_status = TRUE | monitor_state_status,steady_status,dequeue_external_event:=monitor_state_status<+{M_CLEAR|->FALSE,M_NOCLEAR|->TRUE},FALSE,external_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_CLEAR_ENTERING|->TRUE} & steady_status = FALSE & train_ma = MA_FORBID | monitor_state_status,steady_status:=monitor_state_status<+{M_CLEAR_ENTERING|->FALSE,M_CLEAR|->TRUE},TRUE || (not(sensor_up_state_status(UPS_NOTRAIN) = TRUE & sensor_down_state_status(DOWNS_NOTRAIN) = TRUE) ==> queue_internal_event:=queue_internal_event<-order__outbarrier__colse [] not(not(sensor_up_state_status(UPS_NOTRAIN) = TRUE & sensor_down_state_status(DOWNS_NOTRAIN) = TRUE)) ==> skip));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_NOCLEAR|->TRUE} & dequeue_external_event = crossing__clear & steady_status = TRUE & train_ma = MA_FORBID | monitor_state_status,steady_status,dequeue_external_event:=monitor_state_status<+{M_NOCLEAR|->FALSE,M_CLEAR_ENTERING|->TRUE},FALSE,external_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_EX|->TRUE} & dequeue_internal_event = downcrossing__finish & steady_status = TRUE | sensor_down_state_status,dequeue_internal_event:=sensor_down_state_status<+{DOWNS_EX|->FALSE,DOWNS_NOTRAIN|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_EX_ENTRYING|->TRUE} & (train_sum = 1 or train_sum = 0) & steady_status = FALSE | sensor_down_state_status,steady_status:=sensor_down_state_status<+{DOWNS_EX_ENTRYING|->FALSE,DOWNS_EX|->TRUE},TRUE || (train_sum = 1 ==> queue_internal_event:=queue_internal_event<-downcrossing__finish<-order__signaller__red [] not(train_sum = 1) ==> (train_sum = 0 ==> queue_internal_event:=queue_internal_event<-downcrossing__finish<-order__outbarrier__open<-order__inbarrier__open [] not(train_sum = 0) ==> skip)));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_CR|->TRUE} & dequeue_external_event = downtrain__tail__toEX & train_down_state(DOWNT_MARCH) = TRUE & (train_sum = 2 or train_sum = 1) & train_ma = MA_ALLOW & steady_status = TRUE | dequeue_external_event,sensor_down_state_status,steady_status,train_sum:=external_null,sensor_down_state_status<+{DOWNS_CR|->FALSE,DOWNS_EX_ENTRYING|->TRUE},FALSE,train_sum-1);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_CR_ENTRYING|->TRUE} & steady_status = FALSE & (train_ma = MA_FORBID or (train_ma = MA_ALLOW & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE)) | sensor_down_state_status,steady_status:=sensor_down_state_status<+{DOWNS_CR_ENTRYING|->FALSE,DOWNS_CR|->TRUE},TRUE || (train_ma = MA_FORBID ==> queue_internal_event:=queue_internal_event<-order__downtrain__stop [] not(train_ma = MA_FORBID) ==> skip));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AP|->TRUE} & dequeue_external_event = downtrain__head__toCR & train_down_state(DOWNT_MARCH) = TRUE & steady_status = TRUE | dequeue_external_event,sensor_down_state_status,steady_status:=external_null,sensor_down_state_status<+{DOWNS_AP|->FALSE,DOWNS_CR_ENTRYING|->TRUE},FALSE);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AP_ENTERING|->TRUE} & steady_status = FALSE & (not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_FORBID or train_ma = MA_FORBID or (train_ma = MA_ALLOW & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE)) | sensor_down_state_status,steady_status:=sensor_down_state_status<+{DOWNS_AP_ENTERING|->FALSE,DOWNS_AP|->TRUE},TRUE || (not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_FORBID ==> queue_internal_event:=queue_internal_event<-order__inbarrier__colse [] not(not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_FORBID) ==> skip));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AR|->TRUE} & dequeue_external_event = downtrain__head__toAP & train_down_state(DOWNT_MARCH) = TRUE & steady_status = TRUE | dequeue_external_event,sensor_down_state_status,steady_status:=external_null,sensor_down_state_status<+{DOWNS_AR|->FALSE,DOWNS_AP_ENTERING|->TRUE},FALSE);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AR_ENTERING|->TRUE} & (train_sum = 2 or train_sum = 1) & steady_status = FALSE | sensor_down_state_status,steady_status:=sensor_down_state_status<+{DOWNS_AR_ENTERING|->FALSE,DOWNS_AR|->TRUE},TRUE || (train_sum = 2 ==> queue_internal_event:=queue_internal_event<-order__signaller__redflash [] not(train_sum = 2) ==> (train_sum = 1 ==> queue_internal_event:=queue_internal_event<-order__signaller__red [] not(train_sum = 1) ==> skip)));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_NOTRAIN|->TRUE} & dequeue_external_event = downtrain__head__toAR & train_down_state(DOWNT_MARCH) = TRUE & (train_sum = 0 or train_sum = 1) & steady_status = TRUE | dequeue_external_event,sensor_down_state_status,steady_status,train_sum:=external_null,sensor_down_state_status<+{DOWNS_NOTRAIN|->FALSE,DOWNS_AR_ENTERING|->TRUE},FALSE,train_sum+1);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_EX|->TRUE} & dequeue_internal_event = upcrossing__finish & steady_status = TRUE | sensor_up_state_status,dequeue_internal_event:=sensor_up_state_status<+{UPS_EX|->FALSE,UPS_NOTRAIN|->TRUE},internal_null);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_EX_ENTRYING|->TRUE} & (train_sum = 1 or train_sum = 0) & steady_status = FALSE | sensor_up_state_status,steady_status:=sensor_up_state_status<+{UPS_EX_ENTRYING|->FALSE,UPS_EX|->TRUE},TRUE || (train_sum = 1 ==> queue_internal_event:=queue_internal_event<-upcrossing__finish<-order__signaller__red [] not(train_sum = 1) ==> (train_sum = 0 ==> queue_internal_event:=queue_internal_event<-upcrossing__finish<-order__outbarrier__open<-order__inbarrier__open [] not(train_sum = 0) ==> skip)));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_CR|->TRUE} & dequeue_external_event = uptrain__tail__toEX & train_up_state(UPT_MARCH) = TRUE & (train_sum = 2 or train_sum = 1) & train_ma = MA_ALLOW & steady_status = TRUE | dequeue_external_event,sensor_up_state_status,steady_status,train_sum:=external_null,sensor_up_state_status<+{UPS_CR|->FALSE,UPS_EX_ENTRYING|->TRUE},FALSE,train_sum-1);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_CR_ENTRYING|->TRUE} & steady_status = FALSE & (train_ma = MA_FORBID or (train_ma = MA_ALLOW & monitor_state_status(M_CLEAR) = TRUE & barrier_in_state(INB_COLSE) = TRUE & barrier_out_state(OUTB_COLSE) = TRUE & signaller_state(SIGNAL_WHITE) = FALSE)) | sensor_up_state_status,steady_status:=sensor_up_state_status<+{UPS_CR_ENTRYING|->FALSE,UPS_CR|->TRUE},TRUE || (train_ma = MA_FORBID ==> queue_internal_event:=queue_internal_event<-order__uptrain__stop [] not(train_ma = MA_FORBID) ==> skip));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AP|->TRUE} & dequeue_external_event = uptrain__head__toCR & train_up_state(UPT_MARCH) = TRUE & steady_status = TRUE | dequeue_external_event,sensor_up_state_status,steady_status:=external_null,sensor_up_state_status<+{UPS_AP|->FALSE,UPS_CR_ENTRYING|->TRUE},FALSE);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AP_ENTERING|->TRUE} & steady_status = FALSE | sensor_up_state_status,steady_status:=sensor_up_state_status<+{UPS_AP_ENTERING|->FALSE,UPS_AP|->TRUE},TRUE || (not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_ALLOW ==> queue_internal_event:=queue_internal_event<-order__inbarrier__colse [] not(not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_ALLOW) ==> skip));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AR|->TRUE} & dequeue_external_event = uptrain__head__toAP & train_up_state(UPT_MARCH) = TRUE & steady_status = TRUE | dequeue_external_event,sensor_up_state_status,steady_status:=external_null,sensor_up_state_status<+{UPS_AR|->FALSE,UPS_AP_ENTERING|->TRUE},FALSE);
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AR_ENTERING|->TRUE} & (train_sum = 2 or train_sum = 1) & steady_status = FALSE | sensor_up_state_status,steady_status:=sensor_up_state_status<+{UPS_AR_ENTERING|->FALSE,UPS_AR|->TRUE},TRUE || (train_sum = 2 ==> queue_internal_event:=queue_internal_event<-order__signaller__redflash [] not(train_sum = 2) ==> (train_sum = 1 ==> queue_internal_event:=queue_internal_event<-order__signaller__red [] not(train_sum = 1) ==> skip)));
  Expanded_List_Substitution(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_NOTRAIN|->TRUE} & dequeue_external_event = uptrain__head__toAR & train_up_state(UPT_MARCH) = TRUE & (train_sum = 0 or train_sum = 1) & steady_status = TRUE | dequeue_external_event,sensor_up_state_status,steady_status,train_sum:=external_null,sensor_up_state_status<+{UPS_NOTRAIN|->FALSE,UPS_AR_ENTERING|->TRUE},FALSE,train_sum+1);
  Expanded_List_Substitution(Machine(LC_system),STATEMACHINE_START)==(scxml_state_status = SCXML_STATE_STATUS_ALL*{FALSE} & lcsystem_state_status = LCSYSTEM_STATE_STATUES_ALL*{FALSE} & sensor_up_state_status = SENSOR_UP_STATE_STATUS_ALL*{FALSE} & sensor_down_state_status = SENSOR_DOWN_STATE_STATUS_ALL*{FALSE} & monitor_state_status = MONITOR_STATE_STATUS_ALL*{FALSE} & train_up_state = TRAIN_UP_STATE_STATUS_ALL*{FALSE} & train_down_state = TRAIN_DOWN_STATE_STATUS_ALL*{FALSE} & signaller_state = SIGNALLER_STATE_STATUS_ALL*{FALSE} & barrier_in_state = BARRIER_IN_STATE_STATUS_ALL*{FALSE} & barrier_out_state = BARRIER_OUT_STATE_STATUS_ALL*{FALSE} & steady_status = FALSE | scxml_state_status,lcsystem_state_status,sensor_up_state_status,sensor_down_state_status,monitor_state_status,train_up_state,train_down_state,signaller_state,barrier_in_state,barrier_out_state,train_ma,train_sum,steady_status:=scxml_state_status<+{lcsystem|->TRUE},LCSYSTEM_STATE_STATUES_ALL*{TRUE},sensor_up_state_status<+{UPS_NOTRAIN|->TRUE},sensor_down_state_status<+{DOWNS_NOTRAIN|->TRUE},monitor_state_status<+{M_NOCLEAR|->TRUE},train_up_state<+{UPT_MARCH|->TRUE},train_down_state<+{DOWNT_MARCH|->TRUE},signaller_state<+{SIGNAL_WHITE|->TRUE},barrier_in_state<+{INB_OPEN|->TRUE},barrier_out_state<+{OUTB_OPEN|->TRUE},MA_FORBID,0,TRUE);
  List_Substitution(Machine(LC_system),STATEMACHINE_START)==(scxml_state_status:=scxml_state_status<+{lcsystem|->TRUE} || lcsystem_state_status:=LCSYSTEM_STATE_STATUES_ALL*{TRUE} || sensor_up_state_status:=sensor_up_state_status<+{UPS_NOTRAIN|->TRUE} || sensor_down_state_status:=sensor_down_state_status<+{DOWNS_NOTRAIN|->TRUE} || monitor_state_status:=monitor_state_status<+{M_NOCLEAR|->TRUE} || train_up_state:=train_up_state<+{UPT_MARCH|->TRUE} || train_down_state:=train_down_state<+{DOWNT_MARCH|->TRUE} || signaller_state:=signaller_state<+{SIGNAL_WHITE|->TRUE} || barrier_in_state:=barrier_in_state<+{INB_OPEN|->TRUE} || barrier_out_state:=barrier_out_state<+{OUTB_OPEN|->TRUE} || train_ma:=MA_FORBID || train_sum:=0 || steady_status:=TRUE);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(dequeue_external_event:=external_null || sensor_up_state_status:=sensor_up_state_status<+{UPS_NOTRAIN|->FALSE,UPS_AR_ENTERING|->TRUE} || steady_status:=FALSE || train_sum:=train_sum+1);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(sensor_up_state_status:=sensor_up_state_status<+{UPS_AR_ENTERING|->FALSE,UPS_AR|->TRUE} || steady_status:=TRUE || IF train_sum = 2 THEN queue_internal_event:=queue_internal_event<-order__signaller__redflash ELSIF train_sum = 1 THEN queue_internal_event:=queue_internal_event<-order__signaller__red END);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(dequeue_external_event:=external_null || sensor_up_state_status:=sensor_up_state_status<+{UPS_AR|->FALSE,UPS_AP_ENTERING|->TRUE} || steady_status:=FALSE);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(sensor_up_state_status:=sensor_up_state_status<+{UPS_AP_ENTERING|->FALSE,UPS_AP|->TRUE} || steady_status:=TRUE || IF not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_ALLOW THEN queue_internal_event:=queue_internal_event<-order__inbarrier__colse END);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(dequeue_external_event:=external_null || sensor_up_state_status:=sensor_up_state_status<+{UPS_AP|->FALSE,UPS_CR_ENTRYING|->TRUE} || steady_status:=FALSE);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(sensor_up_state_status:=sensor_up_state_status<+{UPS_CR_ENTRYING|->FALSE,UPS_CR|->TRUE} || steady_status:=TRUE || IF train_ma = MA_FORBID THEN queue_internal_event:=queue_internal_event<-order__uptrain__stop END);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(dequeue_external_event:=external_null || sensor_up_state_status:=sensor_up_state_status<+{UPS_CR|->FALSE,UPS_EX_ENTRYING|->TRUE} || steady_status:=FALSE || train_sum:=train_sum-1);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(sensor_up_state_status:=sensor_up_state_status<+{UPS_EX_ENTRYING|->FALSE,UPS_EX|->TRUE} || steady_status:=TRUE || IF train_sum = 1 THEN queue_internal_event:=queue_internal_event<-upcrossing__finish<-order__signaller__red ELSIF train_sum = 0 THEN queue_internal_event:=queue_internal_event<-upcrossing__finish<-order__outbarrier__open<-order__inbarrier__open END);
  List_Substitution(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(sensor_up_state_status:=sensor_up_state_status<+{UPS_EX|->FALSE,UPS_NOTRAIN|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(dequeue_external_event:=external_null || sensor_down_state_status:=sensor_down_state_status<+{DOWNS_NOTRAIN|->FALSE,DOWNS_AR_ENTERING|->TRUE} || steady_status:=FALSE || train_sum:=train_sum+1);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AR_ENTERING|->FALSE,DOWNS_AR|->TRUE} || steady_status:=TRUE || IF train_sum = 2 THEN queue_internal_event:=queue_internal_event<-order__signaller__redflash ELSIF train_sum = 1 THEN queue_internal_event:=queue_internal_event<-order__signaller__red END);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(dequeue_external_event:=external_null || sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AR|->FALSE,DOWNS_AP_ENTERING|->TRUE} || steady_status:=FALSE);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AP_ENTERING|->FALSE,DOWNS_AP|->TRUE} || steady_status:=TRUE || IF not(barrier_in_state(INB_COLSE) = TRUE) & train_ma = MA_FORBID THEN queue_internal_event:=queue_internal_event<-order__inbarrier__colse END);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(dequeue_external_event:=external_null || sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AP|->FALSE,DOWNS_CR_ENTRYING|->TRUE} || steady_status:=FALSE);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(sensor_down_state_status:=sensor_down_state_status<+{DOWNS_CR_ENTRYING|->FALSE,DOWNS_CR|->TRUE} || steady_status:=TRUE || IF train_ma = MA_FORBID THEN queue_internal_event:=queue_internal_event<-order__downtrain__stop END);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(dequeue_external_event:=external_null || sensor_down_state_status:=sensor_down_state_status<+{DOWNS_CR|->FALSE,DOWNS_EX_ENTRYING|->TRUE} || steady_status:=FALSE || train_sum:=train_sum-1);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(sensor_down_state_status:=sensor_down_state_status<+{DOWNS_EX_ENTRYING|->FALSE,DOWNS_EX|->TRUE} || steady_status:=TRUE || IF train_sum = 1 THEN queue_internal_event:=queue_internal_event<-downcrossing__finish<-order__signaller__red ELSIF train_sum = 0 THEN queue_internal_event:=queue_internal_event<-downcrossing__finish<-order__outbarrier__open<-order__inbarrier__open END);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(sensor_down_state_status:=sensor_down_state_status<+{DOWNS_EX|->FALSE,DOWNS_NOTRAIN|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(monitor_state_status:=monitor_state_status<+{M_NOCLEAR|->FALSE,M_CLEAR_ENTERING|->TRUE} || steady_status:=FALSE || dequeue_external_event:=external_null);
  List_Substitution(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(monitor_state_status:=monitor_state_status<+{M_CLEAR_ENTERING|->FALSE,M_CLEAR|->TRUE} || steady_status:=TRUE || IF not(sensor_up_state_status(UPS_NOTRAIN) = TRUE & sensor_down_state_status(DOWNS_NOTRAIN) = TRUE) THEN queue_internal_event:=queue_internal_event<-order__outbarrier__colse END);
  List_Substitution(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(monitor_state_status:=monitor_state_status<+{M_CLEAR|->FALSE,M_NOCLEAR|->TRUE} || steady_status:=FALSE || dequeue_external_event:=external_null);
  List_Substitution(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(train_up_state:=train_up_state<+{UPT_MARCH|->FALSE,UPT_STOP|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(train_up_state:=train_up_state<+{UPT_STOP|->FALSE,UPT_MARCH|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(train_down_state:=train_down_state<+{DOWNT_MARCH|->FALSE,DOWNT_STOP|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(train_down_state:=train_down_state<+{DOWNT_STOP|->FALSE,DOWNT_MARCH|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(signaller_state:=signaller_state<+{SIGNAL_RED|->FALSE,SIGNAL_WHITE|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(signaller_state:=signaller_state<+{SIGNAL_RED|->FALSE,SIGNAL_REDFLASH|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(signaller_state:=signaller_state<+{SIGNAL_WHITE|->FALSE,SIGNAL_RED|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(signaller_state:=signaller_state<+{SIGNAL_WHITE|->FALSE,SIGNAL_REDFLASH|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(signaller_state:=signaller_state<+{SIGNAL_REDFLASH|->FALSE,SIGNAL_RED|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(signaller_state:=signaller_state<+{SIGNAL_REDFLASH|->FALSE,SIGNAL_WHITE|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(barrier_in_state:=barrier_in_state<+{INB_OPEN_ENTERING|->FALSE,INB_OPEN|->TRUE} || steady_status:=TRUE || IF sensor_up_state_status(UPS_NOTRAIN) = TRUE & sensor_down_state_status(DOWNS_NOTRAIN) = TRUE THEN queue_internal_event:=queue_internal_event<-order__signaller__white END);
  List_Substitution(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(barrier_in_state:=barrier_in_state<+{INB_OPEN|->FALSE,INB_COLSE|->TRUE} || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(barrier_in_state:=barrier_in_state<+{INB_COLSE|->FALSE,INB_OPEN_ENTERING|->TRUE} || steady_status:=FALSE || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(barrier_out_state:=barrier_out_state<+{OUTB_OPEN|->FALSE,OUTB_COLSE_ENTERING|->TRUE} || steady_status:=FALSE || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(barrier_out_state:=barrier_out_state<+{OUTB_COLSE_ENTERING|->FALSE,OUTB_COLSE|->TRUE} || steady_status:=TRUE || train_ma:=MA_ALLOW || IF sensor_up_state_status(UPS_CR) = TRUE & train_up_state(UPT_STOP) = TRUE & (sensor_down_state_status(DOWNS_CR) = TRUE & train_down_state(DOWNT_STOP) = TRUE) THEN queue_internal_event:=queue_internal_event<-order__uptrain__go<-order__downtrain__go ELSIF sensor_up_state_status(UPS_CR) = TRUE & train_up_state(UPT_STOP) = TRUE THEN queue_internal_event:=queue_internal_event<-order__uptrain__go ELSIF sensor_down_state_status(DOWNS_CR) = TRUE & train_down_state(DOWNT_STOP) = TRUE THEN queue_internal_event:=queue_internal_event<-order__downtrain__go END);
  List_Substitution(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(barrier_out_state:=barrier_out_state<+{OUTB_COLSE|->FALSE,OUTB_OPEN|->TRUE} || train_ma:=MA_FORBID || dequeue_internal_event:=internal_null);
  List_Substitution(Machine(LC_system),EXTERNAL_EVENT_ADD)==(queue_external_event:=queue_external_event<-event);
  List_Substitution(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(dequeue_external_event:=queue_external_event(1) || queue_external_event:=queue_external_event\|/1);
  List_Substitution(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(dequeue_external_event:=external_null);
  List_Substitution(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(dequeue_internal_event:=queue_internal_event(1) || queue_internal_event:=queue_internal_event\|/1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(LC_system))==(?);
  Inherited_List_Constants(Machine(LC_system))==(?);
  List_Constants(Machine(LC_system))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(LC_system),SCXML_STATE_STATUS_ALL)==({lcsystem});
  Context_List_Enumerated(Machine(LC_system))==(?);
  Context_List_Defered(Machine(LC_system))==(?);
  Context_List_Sets(Machine(LC_system))==(?);
  List_Valuable_Sets(Machine(LC_system))==(?);
  Inherited_List_Enumerated(Machine(LC_system))==(?);
  Inherited_List_Defered(Machine(LC_system))==(?);
  Inherited_List_Sets(Machine(LC_system))==(?);
  List_Enumerated(Machine(LC_system))==(SCXML_STATE_STATUS_ALL,LCSYSTEM_STATE_STATUES_ALL,SENSOR_UP_STATE_STATUS_ALL,SENSOR_DOWN_STATE_STATUS_ALL,MONITOR_STATE_STATUS_ALL,TRAIN_UP_STATE_STATUS_ALL,TRAIN_DOWN_STATE_STATUS_ALL,SIGNALLER_STATE_STATUS_ALL,BARRIER_IN_STATE_STATUS_ALL,BARRIER_OUT_STATE_STATUS_ALL,TRAIN_MA_VALUES_ALL,EXTERNAL_EVENT_ALL,INTERNAL_EVENT_ALL);
  List_Defered(Machine(LC_system))==(?);
  List_Sets(Machine(LC_system))==(SCXML_STATE_STATUS_ALL,LCSYSTEM_STATE_STATUES_ALL,SENSOR_UP_STATE_STATUS_ALL,SENSOR_DOWN_STATE_STATUS_ALL,MONITOR_STATE_STATUS_ALL,TRAIN_UP_STATE_STATUS_ALL,TRAIN_DOWN_STATE_STATUS_ALL,SIGNALLER_STATE_STATUS_ALL,BARRIER_IN_STATE_STATUS_ALL,BARRIER_OUT_STATE_STATUS_ALL,TRAIN_MA_VALUES_ALL,EXTERNAL_EVENT_ALL,INTERNAL_EVENT_ALL);
  Set_Definition(Machine(LC_system),LCSYSTEM_STATE_STATUES_ALL)==({sensor_up,sensor_down,monitor,train_up,train_down,signaller,barrier_in,barrier_out});
  Set_Definition(Machine(LC_system),SENSOR_UP_STATE_STATUS_ALL)==({UPS_NOTRAIN,UPS_AR_ENTERING,UPS_AR,UPS_AP_ENTERING,UPS_AP,UPS_CR_ENTRYING,UPS_CR,UPS_EX_ENTRYING,UPS_EX});
  Set_Definition(Machine(LC_system),SENSOR_DOWN_STATE_STATUS_ALL)==({DOWNS_NOTRAIN,DOWNS_AR_ENTERING,DOWNS_AR,DOWNS_AP_ENTERING,DOWNS_AP,DOWNS_CR_ENTRYING,DOWNS_CR,DOWNS_EX_ENTRYING,DOWNS_EX});
  Set_Definition(Machine(LC_system),MONITOR_STATE_STATUS_ALL)==({M_NOCLEAR,M_CLEAR_ENTERING,M_CLEAR});
  Set_Definition(Machine(LC_system),TRAIN_UP_STATE_STATUS_ALL)==({UPT_MARCH,UPT_STOP});
  Set_Definition(Machine(LC_system),TRAIN_DOWN_STATE_STATUS_ALL)==({DOWNT_MARCH,DOWNT_STOP});
  Set_Definition(Machine(LC_system),SIGNALLER_STATE_STATUS_ALL)==({SIGNAL_RED,SIGNAL_WHITE,SIGNAL_REDFLASH});
  Set_Definition(Machine(LC_system),BARRIER_IN_STATE_STATUS_ALL)==({INB_OPEN_ENTERING,INB_OPEN,INB_COLSE});
  Set_Definition(Machine(LC_system),BARRIER_OUT_STATE_STATUS_ALL)==({OUTB_OPEN,OUTB_COLSE_ENTERING,OUTB_COLSE});
  Set_Definition(Machine(LC_system),TRAIN_MA_VALUES_ALL)==({MA_ALLOW,MA_FORBID});
  Set_Definition(Machine(LC_system),EXTERNAL_EVENT_ALL)==({external_null,uptrain__head__toAR,uptrain__head__toAP,uptrain__head__toCR,uptrain__tail__toEX,downtrain__head__toAR,downtrain__head__toAP,downtrain__head__toCR,downtrain__tail__toEX,crossing__clear,crossing__unclear});
  Set_Definition(Machine(LC_system),INTERNAL_EVENT_ALL)==({internal_null,order__signaller__redflash,order__signaller__red,order__inbarrier__colse,order__uptrain__stop,order__downtrain__stop,upcrossing__finish,order__outbarrier__open,order__inbarrier__open,downcrossing__finish,order__outbarrier__colse,order__uptrain__go,order__downtrain__go,order__signaller__white})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(LC_system))==(?);
  Expanded_List_HiddenConstants(Machine(LC_system))==(?);
  List_HiddenConstants(Machine(LC_system))==(?);
  External_List_HiddenConstants(Machine(LC_system))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(LC_system))==(btrue);
  Context_List_Properties(Machine(LC_system))==(btrue);
  Inherited_List_Properties(Machine(LC_system))==(btrue);
  List_Properties(Machine(LC_system))==(SCXML_STATE_STATUS_ALL: FIN(INTEGER) & not(SCXML_STATE_STATUS_ALL = {}) & LCSYSTEM_STATE_STATUES_ALL: FIN(INTEGER) & not(LCSYSTEM_STATE_STATUES_ALL = {}) & SENSOR_UP_STATE_STATUS_ALL: FIN(INTEGER) & not(SENSOR_UP_STATE_STATUS_ALL = {}) & SENSOR_DOWN_STATE_STATUS_ALL: FIN(INTEGER) & not(SENSOR_DOWN_STATE_STATUS_ALL = {}) & MONITOR_STATE_STATUS_ALL: FIN(INTEGER) & not(MONITOR_STATE_STATUS_ALL = {}) & TRAIN_UP_STATE_STATUS_ALL: FIN(INTEGER) & not(TRAIN_UP_STATE_STATUS_ALL = {}) & TRAIN_DOWN_STATE_STATUS_ALL: FIN(INTEGER) & not(TRAIN_DOWN_STATE_STATUS_ALL = {}) & SIGNALLER_STATE_STATUS_ALL: FIN(INTEGER) & not(SIGNALLER_STATE_STATUS_ALL = {}) & BARRIER_IN_STATE_STATUS_ALL: FIN(INTEGER) & not(BARRIER_IN_STATE_STATUS_ALL = {}) & BARRIER_OUT_STATE_STATUS_ALL: FIN(INTEGER) & not(BARRIER_OUT_STATE_STATUS_ALL = {}) & TRAIN_MA_VALUES_ALL: FIN(INTEGER) & not(TRAIN_MA_VALUES_ALL = {}) & EXTERNAL_EVENT_ALL: FIN(INTEGER) & not(EXTERNAL_EVENT_ALL = {}) & INTERNAL_EVENT_ALL: FIN(INTEGER) & not(INTERNAL_EVENT_ALL = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(LC_system),STATEMACHINE_START)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_AR_ENTERING_TO_UPS_AR)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_AR_TO_UPS_AP_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_AP_ENTERING_TO_UPS_AP)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPS_EX_TO_UPS_NOTRAIN)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPT_MARCH_TO_UPT_STOP)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_UPT_STOP_TO_UPT_MARCH)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_INB_OPENENTERING_TO_INB_OPEN)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_INB_OPEN_TO_INB_COLSE)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE)==(?);
  List_ANY_Var(Machine(LC_system),TRANSITION_OUTB_COLSE_TO_OUTB_OPEN)==(?);
  List_ANY_Var(Machine(LC_system),EXTERNAL_EVENT_ADD)==(?);
  List_ANY_Var(Machine(LC_system),DEQUEUE_EXTERNAL_EVENT_QUEUE)==(?);
  List_ANY_Var(Machine(LC_system),DISCARD_EXTERNAL_EVENT)==(?);
  List_ANY_Var(Machine(LC_system),DEQUEUE_INTERNAL_EVENT_QUEUE)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(LC_system)) == (SCXML_STATE_STATUS_ALL,LCSYSTEM_STATE_STATUES_ALL,SENSOR_UP_STATE_STATUS_ALL,SENSOR_DOWN_STATE_STATUS_ALL,MONITOR_STATE_STATUS_ALL,TRAIN_UP_STATE_STATUS_ALL,TRAIN_DOWN_STATE_STATUS_ALL,SIGNALLER_STATE_STATUS_ALL,BARRIER_IN_STATE_STATUS_ALL,BARRIER_OUT_STATE_STATUS_ALL,TRAIN_MA_VALUES_ALL,EXTERNAL_EVENT_ALL,INTERNAL_EVENT_ALL,lcsystem,sensor_up,sensor_down,monitor,train_up,train_down,signaller,barrier_in,barrier_out,UPS_NOTRAIN,UPS_AR_ENTERING,UPS_AR,UPS_AP_ENTERING,UPS_AP,UPS_CR_ENTRYING,UPS_CR,UPS_EX_ENTRYING,UPS_EX,DOWNS_NOTRAIN,DOWNS_AR_ENTERING,DOWNS_AR,DOWNS_AP_ENTERING,DOWNS_AP,DOWNS_CR_ENTRYING,DOWNS_CR,DOWNS_EX_ENTRYING,DOWNS_EX,M_NOCLEAR,M_CLEAR_ENTERING,M_CLEAR,UPT_MARCH,UPT_STOP,DOWNT_MARCH,DOWNT_STOP,SIGNAL_RED,SIGNAL_WHITE,SIGNAL_REDFLASH,INB_OPEN_ENTERING,INB_OPEN,INB_COLSE,OUTB_OPEN,OUTB_COLSE_ENTERING,OUTB_COLSE,MA_ALLOW,MA_FORBID,external_null,uptrain__head__toAR,uptrain__head__toAP,uptrain__head__toCR,uptrain__tail__toEX,downtrain__head__toAR,downtrain__head__toAP,downtrain__head__toCR,downtrain__tail__toEX,crossing__clear,crossing__unclear,internal_null,order__signaller__redflash,order__signaller__red,order__inbarrier__colse,order__uptrain__stop,order__downtrain__stop,upcrossing__finish,order__outbarrier__open,order__inbarrier__open,downcrossing__finish,order__outbarrier__colse,order__uptrain__go,order__downtrain__go,order__signaller__white | ? | steady_status,dequeue_external_event,dequeue_internal_event,queue_external_event,queue_internal_event,train_sum,train_ma,barrier_out_state,barrier_in_state,signaller_state,train_down_state,train_up_state,monitor_state_status,sensor_down_state_status,sensor_up_state_status,lcsystem_state_status,scxml_state_status | ? | STATEMACHINE_START,TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING,TRANSITION_UPS_AR_ENTERING_TO_UPS_AR,TRANSITION_UPS_AR_TO_UPS_AP_ENTERING,TRANSITION_UPS_AP_ENTERING_TO_UPS_AP,TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING,TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR,TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING,TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX,TRANSITION_UPS_EX_TO_UPS_NOTRAIN,TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING,TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR,TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING,TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP,TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING,TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR,TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING,TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX,TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN,TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING,TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR,TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING,TRANSITION_UPT_MARCH_TO_UPT_STOP,TRANSITION_UPT_STOP_TO_UPT_MARCH,TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP,TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH,TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE,TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH,TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED,TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH,TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED,TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE,TRANSITION_INB_OPENENTERING_TO_INB_OPEN,TRANSITION_INB_OPEN_TO_INB_COLSE,TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING,TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING,TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE,TRANSITION_OUTB_COLSE_TO_OUTB_OPEN,EXTERNAL_EVENT_ADD,DEQUEUE_EXTERNAL_EVENT_QUEUE,DISCARD_EXTERNAL_EVENT,DEQUEUE_INTERNAL_EVENT_QUEUE | ? | ? | ? | LC_system);
  List_Of_HiddenCst_Ids(Machine(LC_system)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(LC_system)) == (?);
  List_Of_VisibleVar_Ids(Machine(LC_system)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(LC_system)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(LC_system)) == (Type(SCXML_STATE_STATUS_ALL) == Cst(SetOf(etype(SCXML_STATE_STATUS_ALL,0,0)));Type(LCSYSTEM_STATE_STATUES_ALL) == Cst(SetOf(etype(LCSYSTEM_STATE_STATUES_ALL,0,7)));Type(SENSOR_UP_STATE_STATUS_ALL) == Cst(SetOf(etype(SENSOR_UP_STATE_STATUS_ALL,0,8)));Type(SENSOR_DOWN_STATE_STATUS_ALL) == Cst(SetOf(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8)));Type(MONITOR_STATE_STATUS_ALL) == Cst(SetOf(etype(MONITOR_STATE_STATUS_ALL,0,2)));Type(TRAIN_UP_STATE_STATUS_ALL) == Cst(SetOf(etype(TRAIN_UP_STATE_STATUS_ALL,0,1)));Type(TRAIN_DOWN_STATE_STATUS_ALL) == Cst(SetOf(etype(TRAIN_DOWN_STATE_STATUS_ALL,0,1)));Type(SIGNALLER_STATE_STATUS_ALL) == Cst(SetOf(etype(SIGNALLER_STATE_STATUS_ALL,0,2)));Type(BARRIER_IN_STATE_STATUS_ALL) == Cst(SetOf(etype(BARRIER_IN_STATE_STATUS_ALL,0,2)));Type(BARRIER_OUT_STATE_STATUS_ALL) == Cst(SetOf(etype(BARRIER_OUT_STATE_STATUS_ALL,0,2)));Type(TRAIN_MA_VALUES_ALL) == Cst(SetOf(etype(TRAIN_MA_VALUES_ALL,0,1)));Type(EXTERNAL_EVENT_ALL) == Cst(SetOf(etype(EXTERNAL_EVENT_ALL,0,10)));Type(INTERNAL_EVENT_ALL) == Cst(SetOf(etype(INTERNAL_EVENT_ALL,0,13))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(LC_system)) == (Type(lcsystem) == Cst(etype(SCXML_STATE_STATUS_ALL,0,0));Type(sensor_up) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(sensor_down) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(monitor) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(train_up) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(train_down) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(signaller) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(barrier_in) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(barrier_out) == Cst(etype(LCSYSTEM_STATE_STATUES_ALL,0,7));Type(UPS_NOTRAIN) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_AR_ENTERING) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_AR) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_AP_ENTERING) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_AP) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_CR_ENTRYING) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_CR) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_EX_ENTRYING) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(UPS_EX) == Cst(etype(SENSOR_UP_STATE_STATUS_ALL,0,8));Type(DOWNS_NOTRAIN) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_AR_ENTERING) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_AR) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_AP_ENTERING) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_AP) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_CR_ENTRYING) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_CR) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_EX_ENTRYING) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(DOWNS_EX) == Cst(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8));Type(M_NOCLEAR) == Cst(etype(MONITOR_STATE_STATUS_ALL,0,2));Type(M_CLEAR_ENTERING) == Cst(etype(MONITOR_STATE_STATUS_ALL,0,2));Type(M_CLEAR) == Cst(etype(MONITOR_STATE_STATUS_ALL,0,2));Type(UPT_MARCH) == Cst(etype(TRAIN_UP_STATE_STATUS_ALL,0,1));Type(UPT_STOP) == Cst(etype(TRAIN_UP_STATE_STATUS_ALL,0,1));Type(DOWNT_MARCH) == Cst(etype(TRAIN_DOWN_STATE_STATUS_ALL,0,1));Type(DOWNT_STOP) == Cst(etype(TRAIN_DOWN_STATE_STATUS_ALL,0,1));Type(SIGNAL_RED) == Cst(etype(SIGNALLER_STATE_STATUS_ALL,0,2));Type(SIGNAL_WHITE) == Cst(etype(SIGNALLER_STATE_STATUS_ALL,0,2));Type(SIGNAL_REDFLASH) == Cst(etype(SIGNALLER_STATE_STATUS_ALL,0,2));Type(INB_OPEN_ENTERING) == Cst(etype(BARRIER_IN_STATE_STATUS_ALL,0,2));Type(INB_OPEN) == Cst(etype(BARRIER_IN_STATE_STATUS_ALL,0,2));Type(INB_COLSE) == Cst(etype(BARRIER_IN_STATE_STATUS_ALL,0,2));Type(OUTB_OPEN) == Cst(etype(BARRIER_OUT_STATE_STATUS_ALL,0,2));Type(OUTB_COLSE_ENTERING) == Cst(etype(BARRIER_OUT_STATE_STATUS_ALL,0,2));Type(OUTB_COLSE) == Cst(etype(BARRIER_OUT_STATE_STATUS_ALL,0,2));Type(MA_ALLOW) == Cst(etype(TRAIN_MA_VALUES_ALL,0,1));Type(MA_FORBID) == Cst(etype(TRAIN_MA_VALUES_ALL,0,1));Type(external_null) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(uptrain__head__toAR) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(uptrain__head__toAP) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(uptrain__head__toCR) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(uptrain__tail__toEX) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(downtrain__head__toAR) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(downtrain__head__toAP) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(downtrain__head__toCR) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(downtrain__tail__toEX) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(crossing__clear) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(crossing__unclear) == Cst(etype(EXTERNAL_EVENT_ALL,0,10));Type(internal_null) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__signaller__redflash) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__signaller__red) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__inbarrier__colse) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__uptrain__stop) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__downtrain__stop) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(upcrossing__finish) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__outbarrier__open) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__inbarrier__open) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(downcrossing__finish) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__outbarrier__colse) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__uptrain__go) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__downtrain__go) == Cst(etype(INTERNAL_EVENT_ALL,0,13));Type(order__signaller__white) == Cst(etype(INTERNAL_EVENT_ALL,0,13)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(LC_system)) == (Type(steady_status) == Mvl(btype(BOOL,?,?));Type(dequeue_external_event) == Mvl(etype(EXTERNAL_EVENT_ALL,?,?));Type(dequeue_internal_event) == Mvl(etype(INTERNAL_EVENT_ALL,?,?));Type(queue_external_event) == Mvl(SetOf(btype(INTEGER,?,?)*etype(EXTERNAL_EVENT_ALL,?,?)));Type(queue_internal_event) == Mvl(SetOf(btype(INTEGER,?,?)*etype(INTERNAL_EVENT_ALL,?,?)));Type(train_sum) == Mvl(btype(INTEGER,?,?));Type(train_ma) == Mvl(etype(TRAIN_MA_VALUES_ALL,?,?));Type(barrier_out_state) == Mvl(SetOf(etype(BARRIER_OUT_STATE_STATUS_ALL,0,2)*btype(BOOL,0,1)));Type(barrier_in_state) == Mvl(SetOf(etype(BARRIER_IN_STATE_STATUS_ALL,0,2)*btype(BOOL,0,1)));Type(signaller_state) == Mvl(SetOf(etype(SIGNALLER_STATE_STATUS_ALL,0,2)*btype(BOOL,0,1)));Type(train_down_state) == Mvl(SetOf(etype(TRAIN_DOWN_STATE_STATUS_ALL,0,1)*btype(BOOL,0,1)));Type(train_up_state) == Mvl(SetOf(etype(TRAIN_UP_STATE_STATUS_ALL,0,1)*btype(BOOL,0,1)));Type(monitor_state_status) == Mvl(SetOf(etype(MONITOR_STATE_STATUS_ALL,0,2)*btype(BOOL,0,1)));Type(sensor_down_state_status) == Mvl(SetOf(etype(SENSOR_DOWN_STATE_STATUS_ALL,0,8)*btype(BOOL,0,1)));Type(sensor_up_state_status) == Mvl(SetOf(etype(SENSOR_UP_STATE_STATUS_ALL,0,8)*btype(BOOL,0,1)));Type(lcsystem_state_status) == Mvl(SetOf(etype(LCSYSTEM_STATE_STATUES_ALL,0,7)*btype(BOOL,0,1)));Type(scxml_state_status) == Mvl(SetOf(etype(SCXML_STATE_STATUS_ALL,0,0)*btype(BOOL,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(LC_system)) == (Type(DEQUEUE_INTERNAL_EVENT_QUEUE) == Cst(No_type,No_type);Type(DISCARD_EXTERNAL_EVENT) == Cst(No_type,No_type);Type(DEQUEUE_EXTERNAL_EVENT_QUEUE) == Cst(No_type,No_type);Type(EXTERNAL_EVENT_ADD) == Cst(No_type,etype(EXTERNAL_EVENT_ALL,?,?));Type(TRANSITION_OUTB_COLSE_TO_OUTB_OPEN) == Cst(No_type,No_type);Type(TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE) == Cst(No_type,No_type);Type(TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_INB_OPEN_TO_INB_COLSE) == Cst(No_type,No_type);Type(TRANSITION_INB_OPENENTERING_TO_INB_OPEN) == Cst(No_type,No_type);Type(TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE) == Cst(No_type,No_type);Type(TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED) == Cst(No_type,No_type);Type(TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH) == Cst(No_type,No_type);Type(TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED) == Cst(No_type,No_type);Type(TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH) == Cst(No_type,No_type);Type(TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE) == Cst(No_type,No_type);Type(TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH) == Cst(No_type,No_type);Type(TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP) == Cst(No_type,No_type);Type(TRANSITION_UPT_STOP_TO_UPT_MARCH) == Cst(No_type,No_type);Type(TRANSITION_UPT_MARCH_TO_UPT_STOP) == Cst(No_type,No_type);Type(TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR) == Cst(No_type,No_type);Type(TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR) == Cst(No_type,No_type);Type(TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_UPS_EX_TO_UPS_NOTRAIN) == Cst(No_type,No_type);Type(TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX) == Cst(No_type,No_type);Type(TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING) == Cst(No_type,No_type);Type(TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR) == Cst(No_type,No_type);Type(TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING) == Cst(No_type,No_type);Type(TRANSITION_UPS_AP_ENTERING_TO_UPS_AP) == Cst(No_type,No_type);Type(TRANSITION_UPS_AR_TO_UPS_AP_ENTERING) == Cst(No_type,No_type);Type(TRANSITION_UPS_AR_ENTERING_TO_UPS_AR) == Cst(No_type,No_type);Type(TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING) == Cst(No_type,No_type);Type(STATEMACHINE_START) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
