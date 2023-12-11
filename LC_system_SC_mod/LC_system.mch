/* LC_system
 * Author: 10398
 * Creation date: 2023/7/18
 */
MACHINE
    LC_system
SETS
SCXML_STATE_STATUS_ALL={lcsystem};
LCSYSTEM_STATE_STATUES_ALL={sensor_up,sensor_down,monitor,train_up,train_down,signaller,barrier_in,barrier_out};
SENSOR_UP_STATE_STATUS_ALL={UPS_NOTRAIN,UPS_AR_ENTERING,UPS_AR,UPS_AP_ENTERING,UPS_AP,UPS_CR_ENTRYING,UPS_CR,UPS_EX_ENTRYING,UPS_EX};
SENSOR_DOWN_STATE_STATUS_ALL={DOWNS_NOTRAIN,DOWNS_AR_ENTERING,DOWNS_AR,DOWNS_AP_ENTERING,DOWNS_AP,DOWNS_CR_ENTRYING,DOWNS_CR,DOWNS_EX_ENTRYING,DOWNS_EX};
MONITOR_STATE_STATUS_ALL={M_NOCLEAR,M_CLEAR_ENTERING,M_CLEAR};
TRAIN_UP_STATE_STATUS_ALL={UPT_MARCH,UPT_STOP};
TRAIN_DOWN_STATE_STATUS_ALL={DOWNT_MARCH,DOWNT_STOP};
SIGNALLER_STATE_STATUS_ALL={SIGNAL_RED,SIGNAL_WHITE,SIGNAL_REDFLASH};
BARRIER_IN_STATE_STATUS_ALL={INB_OPEN_ENTERING,INB_OPEN,INB_COLSE};
BARRIER_OUT_STATE_STATUS_ALL={OUTB_OPEN,OUTB_COLSE_ENTERING,OUTB_COLSE};
TRAIN_MA_VALUES_ALL={MA_ALLOW,MA_FORBID};
EXTERNAL_EVENT_ALL={external_null,uptrain__head__toAR,uptrain__head__toAP,uptrain__head__toCR,uptrain__tail__toEX,downtrain__head__toAR,downtrain__head__toAP,downtrain__head__toCR,downtrain__tail__toEX,crossing__clear,crossing__unclear};
INTERNAL_EVENT_ALL={internal_null,order__signaller__redflash,order__signaller__red,order__inbarrier__colse,order__uptrain__stop,order__downtrain__stop,upcrossing__finish,order__outbarrier__open,order__inbarrier__open,downcrossing__finish,order__outbarrier__colse,order__uptrain__go,order__downtrain__go,order__signaller__white}
VARIABLES
scxml_state_status,lcsystem_state_status,sensor_up_state_status,sensor_down_state_status,monitor_state_status,train_up_state,train_down_state,signaller_state,barrier_in_state,barrier_out_state,train_ma,train_sum,queue_internal_event,queue_external_event,dequeue_internal_event,dequeue_external_event,steady_status
INVARIANT
scxml_state_status:SCXML_STATE_STATUS_ALL-->BOOL&
lcsystem_state_status:LCSYSTEM_STATE_STATUES_ALL-->BOOL&
sensor_up_state_status:SENSOR_UP_STATE_STATUS_ALL-->BOOL&
sensor_down_state_status:SENSOR_DOWN_STATE_STATUS_ALL-->BOOL&
monitor_state_status:MONITOR_STATE_STATUS_ALL-->BOOL&
train_up_state:TRAIN_UP_STATE_STATUS_ALL-->BOOL&
train_down_state:TRAIN_DOWN_STATE_STATUS_ALL-->BOOL&
signaller_state:SIGNALLER_STATE_STATUS_ALL-->BOOL&
barrier_in_state:BARRIER_IN_STATE_STATUS_ALL-->BOOL&
barrier_out_state:BARRIER_OUT_STATE_STATUS_ALL-->BOOL&
train_ma:TRAIN_MA_VALUES_ALL&
train_sum:0..2&
queue_internal_event:seq(INTERNAL_EVENT_ALL)&
queue_external_event:seq(EXTERNAL_EVENT_ALL)&
dequeue_internal_event:INTERNAL_EVENT_ALL&
dequeue_external_event:EXTERNAL_EVENT_ALL&
steady_status:BOOL&
((train_ma=MA_ALLOW)=>(monitor_state_status(M_CLEAR)=TRUE&barrier_in_state(INB_COLSE)=TRUE&barrier_out_state(OUTB_COLSE)=TRUE&signaller_state(SIGNAL_WHITE)=FALSE))&
((scxml_state_status(lcsystem)=TRUE)=>(lcsystem_state_status(sensor_up)=TRUE&lcsystem_state_status(sensor_down)=TRUE&lcsystem_state_status(monitor)=TRUE&lcsystem_state_status(train_up)=TRUE&lcsystem_state_status(train_down)=TRUE&lcsystem_state_status(signaller)=TRUE&lcsystem_state_status(barrier_in)=TRUE&lcsystem_state_status(barrier_out)=TRUE))&
((lcsystem_state_status(sensor_up)=TRUE)=>(sensor_up_state_status(UPS_NOTRAIN)=TRUE or sensor_up_state_status(UPS_AR_ENTERING)=TRUE or sensor_up_state_status(UPS_AR)=TRUE or sensor_up_state_status(UPS_AP_ENTERING)=TRUE or sensor_up_state_status(UPS_AP)=TRUE or sensor_up_state_status(UPS_CR_ENTRYING)=TRUE or sensor_up_state_status(UPS_CR)=TRUE or sensor_up_state_status(UPS_EX_ENTRYING)=TRUE or sensor_up_state_status(UPS_EX)=TRUE))&
((lcsystem_state_status(sensor_down)=TRUE)=>(sensor_down_state_status(DOWNS_NOTRAIN)=TRUE or sensor_down_state_status(DOWNS_AR_ENTERING)=TRUE or sensor_down_state_status(DOWNS_AR)=TRUE or sensor_down_state_status(DOWNS_AP_ENTERING)=TRUE or sensor_down_state_status(DOWNS_AP)=TRUE or sensor_down_state_status(DOWNS_CR_ENTRYING)=TRUE or sensor_down_state_status(DOWNS_CR)=TRUE or sensor_down_state_status(DOWNS_EX_ENTRYING)=TRUE or sensor_down_state_status(DOWNS_EX)=TRUE))&
((lcsystem_state_status(monitor)=TRUE)=>(monitor_state_status(M_NOCLEAR)=TRUE or monitor_state_status(M_CLEAR_ENTERING)=TRUE or monitor_state_status(M_CLEAR)=TRUE))&
((lcsystem_state_status(train_up)=TRUE)=>(train_up_state(UPT_MARCH)=TRUE or train_up_state(UPT_STOP)=TRUE))&
((lcsystem_state_status(train_down)=TRUE)=>(train_down_state(DOWNT_MARCH)=TRUE or train_down_state(DOWNT_STOP)=TRUE))&
((lcsystem_state_status(signaller)=TRUE)=>(signaller_state(SIGNAL_RED)=TRUE or signaller_state(SIGNAL_WHITE)=TRUE or signaller_state(SIGNAL_REDFLASH)=TRUE))&
((lcsystem_state_status(barrier_in)=TRUE)=>(barrier_in_state(INB_OPEN_ENTERING)=TRUE or barrier_in_state(INB_OPEN)=TRUE or barrier_in_state(INB_COLSE)=TRUE))&
((lcsystem_state_status(barrier_out)=TRUE)=>(barrier_out_state(OUTB_OPEN)=TRUE or barrier_out_state(OUTB_COLSE_ENTERING)=TRUE or barrier_out_state(OUTB_COLSE)=TRUE))
INITIALISATION
scxml_state_status:=SCXML_STATE_STATUS_ALL*{FALSE}||
lcsystem_state_status:=LCSYSTEM_STATE_STATUES_ALL*{FALSE}||
sensor_up_state_status:=SENSOR_UP_STATE_STATUS_ALL*{FALSE}||
sensor_down_state_status:=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}||
monitor_state_status:=MONITOR_STATE_STATUS_ALL*{FALSE}||
train_up_state:=TRAIN_UP_STATE_STATUS_ALL*{FALSE}||
train_down_state:=TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}||
signaller_state:=SIGNALLER_STATE_STATUS_ALL*{FALSE}||
barrier_in_state:=BARRIER_IN_STATE_STATUS_ALL*{FALSE}||
barrier_out_state:=BARRIER_OUT_STATE_STATUS_ALL*{FALSE}||
train_ma:=MA_FORBID||
train_sum:=0||
queue_internal_event:={}||
queue_external_event:={}||
dequeue_internal_event:=internal_null||
dequeue_external_event:=external_null||
steady_status:=FALSE
OPERATIONS
//系统初始化，上下行无列车，道口未出清，上下行车在行进，信号灯白色，入口与出口栏杆打开
STATEMACHINE_START=
PRE scxml_state_status=SCXML_STATE_STATUS_ALL*{FALSE}&lcsystem_state_status=LCSYSTEM_STATE_STATUES_ALL*{FALSE}&sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}&sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}&monitor_state_status=MONITOR_STATE_STATUS_ALL*{FALSE}&train_up_state=TRAIN_UP_STATE_STATUS_ALL*{FALSE}&train_down_state=TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}&signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}&barrier_in_state=BARRIER_IN_STATE_STATUS_ALL*{FALSE}&barrier_out_state=BARRIER_OUT_STATE_STATUS_ALL*{FALSE}&steady_status=FALSE
THEN 
    scxml_state_status:=scxml_state_status<+{lcsystem|->TRUE}||lcsystem_state_status:=LCSYSTEM_STATE_STATUES_ALL*{TRUE}||sensor_up_state_status:=sensor_up_state_status<+{UPS_NOTRAIN|->TRUE}||sensor_down_state_status:=sensor_down_state_status<+{DOWNS_NOTRAIN|->TRUE}||monitor_state_status:=monitor_state_status<+{M_NOCLEAR|->TRUE}||train_up_state:=train_up_state<+{UPT_MARCH|->TRUE}||train_down_state:=train_down_state<+{DOWNT_MARCH|->TRUE}||signaller_state:=signaller_state<+{SIGNAL_WHITE|->TRUE}||barrier_in_state:=barrier_in_state<+{INB_OPEN|->TRUE}||barrier_out_state:=barrier_out_state<+{OUTB_OPEN|->TRUE}||train_ma:=MA_FORBID||train_sum:=0||steady_status:=TRUE
END
;

//sensor_up上行传感器相关状态转移
//上行列车到达AR点转移
TRANSITION_UPS_NOTRAIN_TO_UPS_AR_ENTERING=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_NOTRAIN|->TRUE}&dequeue_external_event=uptrain__head__toAR&train_up_state(UPT_MARCH)=TRUE&(train_sum=0 or train_sum=1)&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_up_state_status:=sensor_up_state_status<+{UPS_NOTRAIN|->FALSE,UPS_AR_ENTERING|->TRUE}||steady_status:=FALSE||train_sum:=train_sum+1
END
;

//上行列车到达AR点，进入动作
TRANSITION_UPS_AR_ENTERING_TO_UPS_AR=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AR_ENTERING|->TRUE}&(train_sum=2 or train_sum=1)&steady_status=FALSE
THEN 
    sensor_up_state_status:=sensor_up_state_status<+{UPS_AR_ENTERING|->FALSE,UPS_AR|->TRUE}||steady_status:=TRUE||
    IF train_sum=2
    THEN
        queue_internal_event:=queue_internal_event<-order__signaller__redflash
    ELSIF train_sum=1
    THEN
        queue_internal_event:=queue_internal_event<-order__signaller__red
    END
END
;

//上行列车到达AP点转移
TRANSITION_UPS_AR_TO_UPS_AP_ENTERING=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AR|->TRUE}&dequeue_external_event=uptrain__head__toAP&train_up_state(UPT_MARCH)=TRUE&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_up_state_status:=sensor_up_state_status<+{UPS_AR|->FALSE,UPS_AP_ENTERING|->TRUE}||steady_status:=FALSE
END
;

//上行列车到达AP点，进入动作
TRANSITION_UPS_AP_ENTERING_TO_UPS_AP=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AP_ENTERING|->TRUE}&steady_status=FALSE
THEN
    sensor_up_state_status:=sensor_up_state_status<+{UPS_AP_ENTERING|->FALSE,UPS_AP|->TRUE}||steady_status:=TRUE||
    IF not(barrier_in_state(INB_COLSE)=TRUE)&train_ma=MA_ALLOW
    THEN
        queue_internal_event:=queue_internal_event<-order__inbarrier__colse
    END
END
;

//上行列车到达CR点转移
TRANSITION_UPS_AP_TO_UPS_CR_ENTRYING=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_AP|->TRUE}&dequeue_external_event=uptrain__head__toCR&train_up_state(UPT_MARCH)=TRUE&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_up_state_status:=sensor_up_state_status<+{UPS_AP|->FALSE,UPS_CR_ENTRYING|->TRUE}||steady_status:=FALSE
END
;

//上行列车到达CR点，进入动作
TRANSITION_UPS_CR_ENTRYING_TO_UPS_CR=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_CR_ENTRYING|->TRUE}&steady_status=FALSE&((train_ma=MA_FORBID)or(train_ma=MA_ALLOW&monitor_state_status(M_CLEAR)=TRUE&barrier_in_state(INB_COLSE)=TRUE&barrier_out_state(OUTB_COLSE)=TRUE&signaller_state(SIGNAL_WHITE)=FALSE))
THEN 
    sensor_up_state_status:=sensor_up_state_status<+{UPS_CR_ENTRYING|->FALSE,UPS_CR|->TRUE}||steady_status:=TRUE||
    IF train_ma=MA_FORBID
    THEN
        queue_internal_event:=queue_internal_event<-order__uptrain__stop
    END
END
;

//上行列车清出EX点
TRANSITION_UPS_CR_TO_UPS_EX_ENTRYING=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_CR|->TRUE}&dequeue_external_event=uptrain__tail__toEX&train_up_state(UPT_MARCH)=TRUE&(train_sum=2 or train_sum=1)&train_ma=MA_ALLOW&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_up_state_status:=sensor_up_state_status<+{UPS_CR|->FALSE,UPS_EX_ENTRYING|->TRUE}||steady_status:=FALSE||train_sum:=train_sum-1
END
;

//上行列车清出EX点转移，进入动作
TRANSITION_UPS_EX_ENTRYING_TO_UPS_EX=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_EX_ENTRYING|->TRUE}&(train_sum=1 or train_sum=0)&steady_status=FALSE
THEN 
    sensor_up_state_status:=sensor_up_state_status<+{UPS_EX_ENTRYING|->FALSE,UPS_EX|->TRUE}||steady_status:=TRUE||
    IF train_sum=1
    THEN
        queue_internal_event:=queue_internal_event<-upcrossing__finish<-order__signaller__red
    ELSIF train_sum=0
    THEN
        queue_internal_event:=queue_internal_event<-upcrossing__finish<-order__outbarrier__open<-order__inbarrier__open
    END
END
;

//上行列车恢复初始状态，复原至无车
TRANSITION_UPS_EX_TO_UPS_NOTRAIN=
PRE sensor_up_state_status=SENSOR_UP_STATE_STATUS_ALL*{FALSE}<+{UPS_EX|->TRUE}&dequeue_internal_event=upcrossing__finish&steady_status=TRUE
THEN 
    sensor_up_state_status:=sensor_up_state_status<+{UPS_EX|->FALSE,UPS_NOTRAIN|->TRUE}||dequeue_internal_event:=internal_null
END
;

//sensor_down下行传感器相关状态转移
//下行列车到达AR点转移
TRANSITION_DOWNS_NOTRAIN_TO_DOWNS_AR_ENTERING=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_NOTRAIN|->TRUE}&dequeue_external_event=downtrain__head__toAR&train_down_state(DOWNT_MARCH)=TRUE&(train_sum=0 or train_sum=1)&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_down_state_status:=sensor_down_state_status<+{DOWNS_NOTRAIN|->FALSE,DOWNS_AR_ENTERING|->TRUE}||steady_status:=FALSE||train_sum:=train_sum+1
END
;

//下行列车到达AR点，进入动作
TRANSITION_DOWNS_AR_ENTERING_TO_DOWNS_AR=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AR_ENTERING|->TRUE}&(train_sum=2 or train_sum=1)&steady_status=FALSE
THEN 
    sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AR_ENTERING|->FALSE,DOWNS_AR|->TRUE}||steady_status:=TRUE||
    IF train_sum=2
    THEN
        queue_internal_event:=queue_internal_event<-order__signaller__redflash
    ELSIF train_sum=1
    THEN
        queue_internal_event:=queue_internal_event<-order__signaller__red
    END
END
;

//下行列车到达AP点转移
TRANSITION_DOWNS_AR_TO_DOWNS_AP_ENTERING=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AR|->TRUE}&dequeue_external_event=downtrain__head__toAP&train_down_state(DOWNT_MARCH)=TRUE&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AR|->FALSE,DOWNS_AP_ENTERING|->TRUE}||steady_status:=FALSE
END
;

//下行列车到达AP点，进入动作
TRANSITION_DOWNS_AP_ENTERING_TO_DOWNS_AP=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AP_ENTERING|->TRUE}&steady_status=FALSE&((not(barrier_in_state(INB_COLSE)=TRUE)&(train_ma=MA_FORBID))or(train_ma=MA_FORBID)or(train_ma=MA_ALLOW&monitor_state_status(M_CLEAR)=TRUE&barrier_in_state(INB_COLSE)=TRUE&barrier_out_state(OUTB_COLSE)=TRUE&signaller_state(SIGNAL_WHITE)=FALSE))
THEN 
    sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AP_ENTERING|->FALSE,DOWNS_AP|->TRUE}||steady_status:=TRUE||
    IF not(barrier_in_state(INB_COLSE)=TRUE)&train_ma=MA_FORBID
    THEN
        queue_internal_event:=queue_internal_event<-order__inbarrier__colse
    END
END
;

//下行列车到达CR点转移
TRANSITION_DOWNS_AP_TO_DOWNS_CR_ENTRYING=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_AP|->TRUE}&dequeue_external_event=downtrain__head__toCR&train_down_state(DOWNT_MARCH)=TRUE&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_down_state_status:=sensor_down_state_status<+{DOWNS_AP|->FALSE,DOWNS_CR_ENTRYING|->TRUE}||steady_status:=FALSE
END
;

//下行列车到达CR点，进入动作
TRANSITION_DOWNS_CR_ENTRYING_TO_DOWNS_CR=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_CR_ENTRYING|->TRUE}&steady_status=FALSE&((train_ma=MA_FORBID)or((train_ma=MA_ALLOW)&monitor_state_status(M_CLEAR)=TRUE&barrier_in_state(INB_COLSE)=TRUE&barrier_out_state(OUTB_COLSE)=TRUE&signaller_state(SIGNAL_WHITE)=FALSE))
THEN 
    sensor_down_state_status:=sensor_down_state_status<+{DOWNS_CR_ENTRYING|->FALSE,DOWNS_CR|->TRUE}||steady_status:=TRUE||
    IF train_ma=MA_FORBID
    THEN
        queue_internal_event:=queue_internal_event<-order__downtrain__stop
    END
END
;

//下行列车清出EX点
TRANSITION_DOWNS_CR_TO_DOWNS_EX_ENTRYING=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_CR|->TRUE}&dequeue_external_event=downtrain__tail__toEX&train_down_state(DOWNT_MARCH)=TRUE&(train_sum=2 or train_sum=1)&train_ma=MA_ALLOW&steady_status=TRUE
THEN 
    dequeue_external_event:=external_null||sensor_down_state_status:=sensor_down_state_status<+{DOWNS_CR|->FALSE,DOWNS_EX_ENTRYING|->TRUE}||steady_status:=FALSE||train_sum:=train_sum-1
END
;

//上行列车清出EX点转移，进入动作
TRANSITION_DOWNS_EX_ENTRYING_TO_DOWNS_EX=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_EX_ENTRYING|->TRUE}&(train_sum=1 or train_sum=0)&steady_status=FALSE
THEN 
    sensor_down_state_status:=sensor_down_state_status<+{DOWNS_EX_ENTRYING|->FALSE,DOWNS_EX|->TRUE}||steady_status:=TRUE||
    IF train_sum=1
    THEN
        queue_internal_event:=queue_internal_event<-downcrossing__finish<-order__signaller__red
    ELSIF train_sum=0
    THEN
        queue_internal_event:=queue_internal_event<-downcrossing__finish<-order__outbarrier__open<-order__inbarrier__open
    END
END
;

//下行列车恢复初始状态，复原至无车
TRANSITION_DOWNS_EX_TO_DOWNS_NOTRAIN=
PRE sensor_down_state_status=SENSOR_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNS_EX|->TRUE}&dequeue_internal_event=downcrossing__finish&steady_status=TRUE
THEN 
    sensor_down_state_status:=sensor_down_state_status<+{DOWNS_EX|->FALSE,DOWNS_NOTRAIN|->TRUE}||dequeue_internal_event:=internal_null
END
;

//monitor监视器相关状态转移
//监视器监视到道口由未出清到出清
TRANSITION_M_NOCLEAR_TO_M_CLEAR_ENTERING=
PRE monitor_state_status=MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_NOCLEAR|->TRUE}&dequeue_external_event=crossing__clear&steady_status=TRUE&train_ma=MA_FORBID
THEN 
    monitor_state_status:=monitor_state_status<+{M_NOCLEAR|->FALSE,M_CLEAR_ENTERING|->TRUE}||steady_status:=FALSE||dequeue_external_event:=external_null
END
;

//监视器监视到道口出清，进入动作
TRANSITION_M_CLEAR_ENTERING_TO_M_CLEAR=
PRE monitor_state_status=MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_CLEAR_ENTERING|->TRUE}&steady_status=FALSE&train_ma=MA_FORBID
THEN 
    monitor_state_status:=monitor_state_status<+{M_CLEAR_ENTERING|->FALSE,M_CLEAR|->TRUE}||steady_status:=TRUE||
    IF not(sensor_up_state_status(UPS_NOTRAIN)=TRUE&sensor_down_state_status(DOWNS_NOTRAIN)=TRUE)
    THEN
        queue_internal_event:=queue_internal_event<-order__outbarrier__colse
    END
END
;

//监视器监视到道口由出清到未出清
TRANSITION_M_CLEAR_TO_M_NOCLEAR_ENTERING=
PRE monitor_state_status=MONITOR_STATE_STATUS_ALL*{FALSE}<+{M_CLEAR|->TRUE}&dequeue_external_event=crossing__unclear&train_ma=MA_FORBID&steady_status=TRUE
THEN 
    monitor_state_status:=monitor_state_status<+{M_CLEAR|->FALSE,M_NOCLEAR|->TRUE}||steady_status:=FALSE||dequeue_external_event:=external_null
END
;

//train_up上行列车相关状态转移
//上行列车行进到停止
TRANSITION_UPT_MARCH_TO_UPT_STOP=
PRE train_up_state=TRAIN_UP_STATE_STATUS_ALL*{FALSE}<+{UPT_MARCH|->TRUE}&dequeue_internal_event=order__uptrain__stop&steady_status=TRUE
THEN 
    train_up_state:=train_up_state<+{UPT_MARCH|->FALSE,UPT_STOP|->TRUE}||dequeue_internal_event:=internal_null
END
;

//上行列车停止到行进
TRANSITION_UPT_STOP_TO_UPT_MARCH=
PRE train_up_state=TRAIN_UP_STATE_STATUS_ALL*{FALSE}<+{UPT_STOP|->TRUE}&dequeue_internal_event=order__uptrain__go&steady_status=TRUE
THEN 
    train_up_state:=train_up_state<+{UPT_STOP|->FALSE,UPT_MARCH|->TRUE}||dequeue_internal_event:=internal_null
END
;

//train_down下行列车相关状态转移
//下行列车行进到停止
TRANSITION_DOWNT_MARCH_TO_DOWNT_STOP=
PRE train_down_state=TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNT_MARCH|->TRUE}&dequeue_internal_event=order__downtrain__stop&steady_status=TRUE
THEN 
    train_down_state:=train_down_state<+{DOWNT_MARCH|->FALSE,DOWNT_STOP|->TRUE}||dequeue_internal_event:=internal_null
END
;

//下行列车停止到行进
TRANSITION_DOWNT_STOP_TO_DOWNT_MARCH=
PRE train_down_state=TRAIN_DOWN_STATE_STATUS_ALL*{FALSE}<+{DOWNT_STOP|->TRUE}&dequeue_internal_event=order__downtrain__go&steady_status=TRUE
THEN 
    train_down_state:=train_down_state<+{DOWNT_STOP|->FALSE,DOWNT_MARCH|->TRUE}||dequeue_internal_event:=internal_null
END
;

//signaller信号灯相关状态转移
//信号灯由红至白
TRANSITION_SIGNAL_RED_TO_SIGNAL_WHITE=
PRE signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_RED|->TRUE}&dequeue_internal_event=order__signaller__white&steady_status=TRUE&train_ma=MA_FORBID
THEN 
    signaller_state:=signaller_state<+{SIGNAL_RED|->FALSE,SIGNAL_WHITE|->TRUE}||dequeue_internal_event:=internal_null
END
;

//信号灯由红至红闪
TRANSITION_SIGNAL_RED_TO_SIGNAL_REDFLASH=
PRE signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_RED|->TRUE}&dequeue_internal_event=order__signaller__redflash&steady_status=TRUE
THEN 
    signaller_state:=signaller_state<+{SIGNAL_RED|->FALSE,SIGNAL_REDFLASH|->TRUE}||dequeue_internal_event:=internal_null
END
;

//信号灯由白至红
TRANSITION_SIGNAL_WHITE_TO_SIGNAL_RED=
PRE signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_WHITE|->TRUE}&dequeue_internal_event=order__signaller__red&steady_status=TRUE
THEN 
    signaller_state:=signaller_state<+{SIGNAL_WHITE|->FALSE,SIGNAL_RED|->TRUE}||dequeue_internal_event:=internal_null
END
;

//信号灯由白至红闪
TRANSITION_SIGNAL_WHITE_TO_SIGNAL_REDFLASH=
PRE signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_WHITE|->TRUE}&dequeue_internal_event=order__signaller__redflash&steady_status=TRUE
THEN 
    signaller_state:=signaller_state<+{SIGNAL_WHITE|->FALSE,SIGNAL_REDFLASH|->TRUE}||dequeue_internal_event:=internal_null
END
;

//信号灯由红闪至红
TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_RED=
PRE signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_REDFLASH|->TRUE}&dequeue_internal_event=order__signaller__red&steady_status=TRUE
THEN 
    signaller_state:=signaller_state<+{SIGNAL_REDFLASH|->FALSE,SIGNAL_RED|->TRUE}||dequeue_internal_event:=internal_null
END
;

//信号灯由红闪至白
TRANSITION_SIGNAL_REDFLASH_TO_SIGNAL_WHITE=
PRE signaller_state=SIGNALLER_STATE_STATUS_ALL*{FALSE}<+{SIGNAL_REDFLASH|->TRUE}&dequeue_internal_event=order__signaller__white&steady_status=TRUE&train_ma=MA_FORBID
THEN 
    signaller_state:=signaller_state<+{SIGNAL_REDFLASH|->FALSE,SIGNAL_WHITE|->TRUE}||dequeue_internal_event:=internal_null
END
;

//barrier_in入口栏杆相关状态转移
//入口栏杆打开进入动作
TRANSITION_INB_OPENENTERING_TO_INB_OPEN=
PRE barrier_in_state=BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_OPEN_ENTERING|->TRUE}&train_ma=MA_FORBID&steady_status=FALSE
THEN 
    barrier_in_state:=barrier_in_state<+{INB_OPEN_ENTERING|->FALSE,INB_OPEN|->TRUE}||steady_status:=TRUE||
    IF sensor_up_state_status(UPS_NOTRAIN)=TRUE&sensor_down_state_status(DOWNS_NOTRAIN)=TRUE
    THEN
        queue_internal_event:=queue_internal_event<-order__signaller__white
    END
END
;

//入口栏杆由打开至关闭
TRANSITION_INB_OPEN_TO_INB_COLSE=
PRE barrier_in_state=BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_OPEN|->TRUE}&dequeue_internal_event=order__inbarrier__colse&train_ma=MA_FORBID&steady_status=TRUE
THEN 
    barrier_in_state:=barrier_in_state<+{INB_OPEN|->FALSE,INB_COLSE|->TRUE}||dequeue_internal_event:=internal_null
END
;

//入口栏杆由关闭至打开
TRANSITION_INB_COLSE_TO_INB_OPEN_ENTERING=
PRE barrier_in_state=BARRIER_IN_STATE_STATUS_ALL*{FALSE}<+{INB_COLSE|->TRUE}&dequeue_internal_event=order__inbarrier__open&train_ma=MA_FORBID&steady_status=TRUE
THEN 
    barrier_in_state:=barrier_in_state<+{INB_COLSE|->FALSE,INB_OPEN_ENTERING|->TRUE}||steady_status:=FALSE||dequeue_internal_event:=internal_null
END
;

//barrier_out出口栏杆相关状态转移
//出口栏杆由打开至关闭
TRANSITION_OUTB_OPEN_TO_OUTB_COLSE_ENTERING=
PRE barrier_out_state=BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_OPEN|->TRUE}&dequeue_internal_event=order__outbarrier__colse&train_ma=MA_FORBID&steady_status=TRUE
THEN 
    barrier_out_state:=barrier_out_state<+{OUTB_OPEN|->FALSE,OUTB_COLSE_ENTERING|->TRUE}||steady_status:=FALSE||dequeue_internal_event:=internal_null
END
;

//出口栏杆关闭进入动作
TRANSITION_OUTB_COLSE_ENTERING_TO_OUTB_COLSE=
PRE barrier_out_state=BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_COLSE_ENTERING|->TRUE}&steady_status=FALSE&train_ma=MA_FORBID&monitor_state_status(M_CLEAR)=TRUE&barrier_in_state(INB_COLSE)=TRUE&signaller_state(SIGNAL_WHITE)=FALSE
THEN
    barrier_out_state:=barrier_out_state<+{OUTB_COLSE_ENTERING|->FALSE,OUTB_COLSE|->TRUE}||steady_status:=TRUE||train_ma:=MA_ALLOW||
    IF (sensor_up_state_status(UPS_CR)=TRUE&train_up_state(UPT_STOP)=TRUE)&(sensor_down_state_status(DOWNS_CR)=TRUE&train_down_state(DOWNT_STOP)=TRUE)
    THEN
        queue_internal_event:=queue_internal_event<-order__uptrain__go<-order__downtrain__go
    ELSIF sensor_up_state_status(UPS_CR)=TRUE&train_up_state(UPT_STOP)=TRUE
    THEN
        queue_internal_event:=queue_internal_event<-order__uptrain__go
    ELSIF sensor_down_state_status(DOWNS_CR)=TRUE&train_down_state(DOWNT_STOP)=TRUE
    THEN
        queue_internal_event:=queue_internal_event<-order__downtrain__go
    END
END
;

//出口栏杆由关闭至打开
TRANSITION_OUTB_COLSE_TO_OUTB_OPEN=
PRE barrier_out_state=BARRIER_OUT_STATE_STATUS_ALL*{FALSE}<+{OUTB_COLSE|->TRUE}&dequeue_internal_event=order__outbarrier__open&steady_status=TRUE&train_ma=MA_ALLOW
THEN 
    barrier_out_state:=barrier_out_state<+{OUTB_COLSE|->FALSE,OUTB_OPEN|->TRUE}||train_ma:=MA_FORBID||dequeue_internal_event:=internal_null
END
;

//本身相关事件转移
//添加外部事件队列
EXTERNAL_EVENT_ADD(event)=
PRE event:EXTERNAL_EVENT_ALL&event/=external_null
THEN
    queue_external_event:=queue_external_event<-event
END
;

//外部事件队列退队
DEQUEUE_EXTERNAL_EVENT_QUEUE=
PRE queue_external_event/={}&queue_internal_event={}&dequeue_external_event=external_null
THEN
    dequeue_external_event:=queue_external_event(1)||queue_external_event:=queue_external_event\|/1
END
;

//抛弃无法处理的外部事件
DISCARD_EXTERNAL_EVENT=
PRE dequeue_external_event/=external_null&steady_status=TRUE
THEN
    dequeue_external_event:=external_null
END
;

//INTERNAL_EVENT_ADD(event)=
//PRE event:INTERNAL_EVENT_ALL&event/=internal_null
//THEN
//    queue_internal_event:=queue_internal_event<-event
//END
//;

//内部事件队列退队
DEQUEUE_INTERNAL_EVENT_QUEUE=
PRE queue_internal_event/={}&dequeue_internal_event=internal_null
THEN
    dequeue_internal_event:=queue_internal_event(1)||queue_internal_event:=queue_internal_event\|/1
END


END
