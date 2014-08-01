.class public Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.super Landroid/app/Service;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;,
        Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;
    }
.end annotation


# static fields
.field public static final AUDIO_SHARE_STARTED:Ljava/lang/String; = "audio_share_started"

.field public static final AUDIO_SHARE_STARTING:Ljava/lang/String; = "audio_share_starting"

.field public static final AUDIO_SHARE_STATE:Ljava/lang/String; = "audio_share_state"

.field public static final AUDIO_SHARE_STOPPED:Ljava/lang/String; = "audio_share_stopped"

.field public static final AUDIO_SHARE_STOPPING:Ljava/lang/String; = "audio_share_stopping"

.field private static final DEFAULT_DELAY_TIME:I = 0x7530

.field public static final INTENT_SERVICE_STARTTED:Ljava/lang/String; = "audio_share_service_Startted"

.field public static final INTENT_SERVICE_STARTTING:Ljava/lang/String; = "audio_share_service_Startting"

.field public static final INTENT_SERVICE_STOPPED:Ljava/lang/String; = "audio_share_service_Stopped"

.field public static final INTENT_SERVICE_STOPPING:Ljava/lang/String; = "audio_share_service_Stopping"

.field public static final INTENT_STOP_PLAY:Ljava/lang/String; = "intent_audio_share_stop_Play"

.field public static final INTENT_STOP_SERVICE:Ljava/lang/String; = "intent_audio_share_stop_Service"

.field public static final MSGKEY_DEVICES_UDNS:Ljava/lang/String; = "devicesUDNs"

.field public static final MSGKEY_DEVICE_INFOS:Ljava/lang/String; = "deviceInfos"

.field public static final MSGKEY_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final MSGKEY_DEVICE_UDN:Ljava/lang/String; = "deviceUDN"

.field public static final MSGKEY_MUTE_VALUE:Ljava/lang/String; = "muteValue"

.field public static final MSGKEY_PLAYSTATE:Ljava/lang/String; = "playingState"

.field private static final MSG_ADD_DEIVCE_TO_CACHE:I = 0x0

.field public static final MSG_AUDIOBEAMING_EVENT:I = 0x1a5

.field public static final MSG_AUDIOBEAMING_LOCAL_MUTE:I = 0x1a6

.field public static final MSG_AUDIOBEAMING_SETCODEC:I = 0x1ab

.field public static final MSG_AUDIOBEAMING_SETVOLUME:I = 0x1aa

.field public static final MSG_AUDIOBEAMING_SPEAKER_MUTE:I = 0x1a7

.field public static final MSG_DLNA_DEVICE_ADDED:I = 0x23

.field public static final MSG_DLNA_DEVICE_LOCAL_MUTE:I = 0x27

.field public static final MSG_DLNA_DEVICE_REMOVED:I = 0x24

.field public static final MSG_DLNA_DEVICE_REQUEST_LIST:I = 0x25

.field public static final MSG_DLNA_DEVICE_REQUEST_LOCAL_MUTE:I = 0x26

.field public static final MSG_DLNA_EVENT:I = 0x19b

.field public static final MSG_DLNA_MEDIACONTROL_GETMUTE:I = 0x1ba

.field public static final MSG_DLNA_MEDIACONTROL_GETVOLUME:I = 0x19e

.field public static final MSG_DLNA_MEDIACONTROL_PAUSE:I = 0x31

.field public static final MSG_DLNA_MEDIACONTROL_PLAY:I = 0x2f

.field public static final MSG_DLNA_MEDIACONTROL_SETMUTE:I = 0x1b9

.field public static final MSG_DLNA_MEDIACONTROL_SETVOLUME:I = 0x1bb

.field public static final MSG_DLNA_MEDIACONTROL_STOP:I = 0x30

.field public static final MSG_DLNA_PLAYSTATE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final MSG_DLNA_PLAYSTATE_OK:Ljava/lang/String; = "OK"

.field public static final MSG_DLNA_PLAYSTATE_PAUSED:Ljava/lang/String; = "PAUSED"

.field public static final MSG_DLNA_PLAYSTATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final MSG_DLNA_PLAYSTATE_STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final MSG_DLNA_PLAYSTATE_TRANSFERING:Ljava/lang/String; = "TRANSFERING"

.field public static final MSG_DLNA_START:I = 0x19c

.field public static final MSG_DLNA_STOP:I = 0x19d

.field private static final MSG_REMOVE_DEIVCE_FROM_CACHE:I = 0x1

.field public static final MSG_SERVICE_EVENT:I = 0x18

.field public static final MSG_SERVICE_KILL:I = 0xd

.field public static final MSG_SERVICE_REGISTER:I = 0xb

.field public static final MSG_SERVICE_START:I = 0x17

.field public static final MSG_SERVICE_STOP:I = 0x18

.field public static final MSG_SERVICE_UNREGISTER:I = 0xc

.field public static final MSG_SET_VALUE:I = 0x17

.field private static final MSG_UPDATE_DEIVCE_INFO_FROM_CACHE:I = 0x3

.field private static final RETRY_TIME:I = 0x3

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.android.jrdsettings.audioshare.service.AudioShareService"

.field private static final TIME_OUT:I = 0x1388

.field private static final mControlLock:Ljava/lang/Object;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

.field private mAudioBeamingFlag:Z

.field private mAudioBeamingUrl:Ljava/lang/String;

.field private mAudioBeaminglock:Ljava/lang/Object;

.field private mAutoPlayHandler:Landroid/os/Handler;

.field private mAutoRefreshDevicesHandler:Landroid/os/Handler;

.field private mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

.field mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLocalMute:Z

.field private mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

.field private mDeviceControlHandler:Landroid/os/Handler;

.field private mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

.field private mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

.field private mDevicesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayUDN:Ljava/lang/String;

.field private mIsNeedToShowActivity:Z

.field private mIsStopping:Z

.field private mLastDeviceUDN:Ljava/lang/String;

.field mMessenger:Landroid/os/Messenger;

.field mNM:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field private mPlayingFlag:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFlag:Z

.field private mStopHandler:Landroid/os/Handler;

.field private mStopThread:Ljava/lang/Thread;

.field private mToastHandler:Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;

.field mValue:I

.field private mWatchDogHandler:Landroid/os/Handler;

.field private mWatchDogThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mControlLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 115
    const-string v0, "AudioShareService"

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    .line 182
    iput-boolean v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    .line 187
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;

    .line 188
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;

    .line 189
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    .line 190
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;

    .line 191
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mRunningFlag:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsStopping:Z

    .line 195
    iput v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mValue:I

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDisplayUDN:Ljava/lang/String;

    .line 201
    iput-boolean v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsNeedToShowActivity:Z

    .line 207
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;

    .line 208
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mClients:Ljava/util/HashMap;

    .line 233
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingFlag:Z

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaminglock:Ljava/lang/Object;

    .line 1475
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$3;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mStopHandler:Landroid/os/Handler;

    .line 1486
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mStopThread:Ljava/lang/Thread;

    .line 1556
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteRemoteAudioBeaming(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopService()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->startAudioBeaming()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getAudioBeamingURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->updateNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mToastHandler:Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->removeOfflineDevices(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$3400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mControlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsNeedToShowActivity:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsNeedToShowActivity:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDisplayUDN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStopping()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->addDeviceToCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->removeDeviceFromCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->updateDeviceInfoFromCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initController()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initAudioBeaming()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initHandler()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStartted()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addDeviceToCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    .locals 2
    .parameter "deviceInfo"

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_0
    return-void
.end method

.method private clearAudioBeaming()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "clearAudioBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;

    .line 381
    :cond_0
    return-void
.end method

.method private clearController()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "clearController before"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mControlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v2, "clearController"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->stop(Ljava/lang/String;)Z

    .line 315
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->stop()Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    .line 317
    monitor-exit v1

    .line 319
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearHandler()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceControlHandler == null     ======   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 344
    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;

    .line 345
    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;

    .line 347
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 349
    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 354
    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 359
    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;

    .line 360
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 362
    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    .line 365
    :cond_2
    return-void

    .line 340
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearIntentReceiver()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    return-void
.end method

.method private doServiceStartted()V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "doServiceStartted()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_share_state"

    const-string v2, "audio_share_started"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "audio_share_service_Startted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private doServiceStartting()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;

    .line 438
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 456
    return-void
.end method

.method private doServiceStopped()V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "doServiceStopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_share_state"

    const-string v2, "audio_share_stopped"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "audio_share_service_Stopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method private doServiceStopping()V
    .locals 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_share_state"

    const-string v2, "audio_share_stopping"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "audio_share_service_Stopping"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->clearHandler()V

    .line 467
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 468
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->clearController()V

    .line 469
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->clearAudioBeaming()V

    .line 473
    return-void
.end method

.method private getAudioBeamingURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingFlag:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    invoke-virtual {v0}, Lcom/tcl/audiobeaming/AudioBeaming;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWIFI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1067
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1069
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1070
    const/4 v3, 0x0

    .line 1077
    :goto_0
    return-object v3

    .line 1073
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1075
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 1077
    .local v0, ip:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi state  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    packed-switch p1, :pswitch_data_0

    .line 555
    :goto_0
    return-void

    .line 548
    :pswitch_0
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopService()V

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initAudioBeaming()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "initAudioBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/tcl/audiobeaming/AudioBeaming;->getInstance()Lcom/tcl/audiobeaming/AudioBeaming;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    .line 370
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tcl/audiobeaming/AudioBeaming;->setParameter(II)V

    .line 371
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z

    .line 372
    return-void
.end method

.method private initController()V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;)V

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;-><init>(Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    .line 306
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->start()Z

    .line 307
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    const-string v1, "DeviceControlThread"

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    .line 323
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->start()V

    .line 324
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlThread:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;

    .line 326
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    .line 328
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WatchDogThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    .line 329
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 330
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;

    .line 333
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoRefreshDevicesThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    .line 334
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 335
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;

    .line 337
    return-void
.end method

.method private initIntentReceiver()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "intent_audio_share_stop_Service"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void
.end method

.method private muteLocalAudioBeaming(Z)Z
    .locals 5
    .parameter "muteLocal"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 417
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "muteLocalAudioBeaming muteLocal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioBeaming == null =  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    invoke-virtual {v0, v1, p1}, Lcom/tcl/audiobeaming/AudioBeaming;->mute(IZ)V

    .line 421
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v2, "mAudioBeaming.mute, return true"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 418
    goto :goto_0

    :cond_1
    move v1, v2

    .line 424
    goto :goto_1
.end method

.method private muteRemoteAudioBeaming(Z)Z
    .locals 4
    .parameter "muteRemote"

    .prologue
    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muteRemoteAudioBeaming muteRemote = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    invoke-virtual {v1, v0, p1}, Lcom/tcl/audiobeaming/AudioBeaming;->mute(IZ)V

    .line 431
    const/4 v0, 0x1

    .line 433
    :cond_0
    return v0
.end method

.method private removeDeviceFromCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    .locals 2
    .parameter "deviceInfo"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    return-void
.end method

.method private removeOfflineDevices(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "retryCnt"
    .parameter "timeOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, udns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1169
    .local v2, udn:Ljava/lang/String;
    sget-object v4, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mControlLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1170
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    if-nez v3, :cond_1

    .line 1171
    monitor-exit v4

    .line 1181
    .end local v2           #udn:Ljava/lang/String;
    :cond_0
    return-void

    .line 1173
    .restart local v2       #udn:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isDeviceOnline(Ljava/lang/String;II)Z

    move-result v1

    .line 1174
    .local v1, isOnline:Z
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeOfflineDevices: udn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isOnline = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    if-nez v1, :cond_2

    .line 1176
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-virtual {v3, v2}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->removeDevice(Ljava/lang/String;)V

    .line 1178
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #isOnline:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private declared-synchronized sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    .locals 11
    .parameter "fromId"
    .parameter "isBroadcast"
    .parameter "replyToMessenger"
    .parameter "msgType"
    .parameter
    .parameter "dataBundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/os/Messenger;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 560
    .local p5, msgInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 561
    .local v2, client:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Messenger;>;"
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v8, 0x0

    invoke-static {v8, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 563
    .local v7, msg:Landroid/os/Message;
    iput-object p3, v7, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 564
    if-eqz p5, :cond_1

    .line 565
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v1, bundle:Landroid/os/Bundle;
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 567
    .local v6, info:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 560
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #client:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Messenger;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 569
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #client:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Messenger;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #msg:Landroid/os/Message;
    :cond_0
    :try_start_1
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 572
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p6, :cond_2

    .line 573
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Messenger;

    invoke-virtual {v8, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v3

    .line 580
    .local v3, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 581
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 584
    .end local v2           #client:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Messenger;>;"
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v7           #msg:Landroid/os/Message;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private showNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "context"
    .parameter "bitmap"

    .prologue
    const v10, 0x7f0901d5

    const/4 v9, 0x0

    .line 1015
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040012

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1017
    .local v6, views:Landroid/widget/RemoteViews;
    const v7, 0x7f0b001e

    const v8, 0x7f0901d4

    invoke-virtual {p0, v8}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1019
    const v7, 0x7f0b001f

    invoke-virtual {p0, v10}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1026
    new-instance v3, Landroid/content/Intent;

    const-string v7, "intent_audio_share_stop_Service"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v3, stopBroadIntent:Landroid/content/Intent;
    invoke-static {p0, v9, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1029
    .local v4, stopBroadPendingIntent:Landroid/app/PendingIntent;
    const v7, 0x7f0b0020

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1038
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v1, intent:Landroid/content/Intent;
    const-class v7, Lcom/android/jrdsettings/Settings$AudioShareSettingsActivity;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1040
    const-string v7, ":android:show_fragment"

    const-string v8, "com.android.jrdsettings.audioshare.AudioShareSettings"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string v7, ":android:show_fragment_args"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-string v7, ":android:show_fragment_title"

    const v8, 0x7f0901d0

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    const-string v7, ":android:show_fragment_short_title"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v7, ":android:no_headers"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1047
    invoke-static {p0, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1050
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1051
    .local v2, notification:Landroid/app/Notification;
    iput-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1052
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x26

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 1054
    const v7, 0x7f02008b

    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 1057
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1058
    invoke-virtual {p0, v10}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1062
    .local v5, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v10, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->startForeground(ILandroid/app/Notification;)V

    .line 1063
    iput-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNotification:Landroid/app/Notification;

    .line 1064
    return-void
.end method

.method private startAudioBeaming()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "startAudioBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaminglock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingFlag:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getWIFI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tcl/audiobeaming/AudioBeaming;->start(Ljava/lang/String;I)V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingFlag:Z

    .line 393
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v2, "startAudioBeaming done"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopAudioBeaming()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "stopAudioBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaminglock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingFlag:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeaming:Lcom/tcl/audiobeaming/AudioBeaming;

    invoke-virtual {v0}, Lcom/tcl/audiobeaming/AudioBeaming;->stop()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingFlag:Z

    .line 404
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v2, "stopAudioBeaming done"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopService()V
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsStopping:Z

    if-nez v0, :cond_0

    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsStopping:Z

    .line 1503
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mStopThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1505
    :cond_0
    return-void
.end method

.method private updateDeviceInfoFromCache(Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;)V
    .locals 3
    .parameter "deviceInfo"

    .prologue
    .line 1544
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    .line 1548
    .local v0, oldDeivceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1550
    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :cond_2
    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getState()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getState()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1552
    invoke-virtual {p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    goto :goto_0
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "udn"

    .prologue
    const v3, 0x7f0901d5

    .line 1455
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNotification:Landroid/app/Notification;

    if-nez v1, :cond_0

    .line 1456
    const-string v1, ""

    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDisplayUDN:Ljava/lang/String;

    .line 1471
    :goto_0
    return-void

    .line 1460
    :cond_0
    const-string v0, ""

    .line 1461
    .local v0, msg:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    if-eqz v1, :cond_1

    .line 1462
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDisplayUDN:Ljava/lang/String;

    .line 1463
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-virtual {v1, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getFriendlyNameByUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1466
    const-string v1, ""

    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDisplayUDN:Ljava/lang/String;

    .line 1467
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1469
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1470
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNM:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "onBind() -> mMessenger == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNM:Landroid/app/NotificationManager;

    .line 491
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initIntentReceiver()V

    .line 492
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStartting()V

    .line 493
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->showNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;

    .line 497
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    .line 498
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mToastHandler:Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;

    .line 500
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f0901d5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mNotification:Landroid/app/Notification;

    .line 507
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStopped()V

    .line 508
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->clearIntentReceiver()V

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopForeground(Z)V

    .line 515
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 516
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 536
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 537
    const/4 v0, 0x2

    return v0
.end method
