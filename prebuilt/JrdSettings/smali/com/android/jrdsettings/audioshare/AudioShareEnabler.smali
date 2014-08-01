.class public Lcom/android/jrdsettings/audioshare/AudioShareEnabler;
.super Ljava/lang/Object;
.source "AudioShareEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mEnablerState:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

.field private mBindFlag:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWifiConnected:Z

.field private mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    .line 88
    iput-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    .line 93
    iput-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 95
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    .line 97
    const-string v0, "AudioShareEnabler"

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    .line 183
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initIntentFilter()V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initConnectivityManager(Landroid/content/Context;)V

    .line 188
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-direct {v0, p1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 189
    new-instance v0, Lcom/android/jrdsettings/MultiShareManager;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    .line 88
    iput-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    .line 93
    iput-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 95
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    .line 97
    const-string v0, "AudioShareEnabler"

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    .line 195
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    .line 196
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initIntentFilter()V

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initConnectivityManager(Landroid/content/Context;)V

    .line 200
    iput-object p3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    .line 201
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-direct {v0, p1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 202
    new-instance v0, Lcom/android/jrdsettings/MultiShareManager;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"
    .parameter "helper"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    .line 88
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    .line 93
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 95
    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    .line 97
    const-string v0, "AudioShareEnabler"

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    .line 208
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initIntentFilter()V

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 212
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initConnectivityManager(Landroid/content/Context;)V

    .line 213
    iput-object p4, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    .line 214
    iput-object p3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 215
    new-instance v0, Lcom/android/jrdsettings/MultiShareManager;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initConnectivityManager(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->updateSwitchChecked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    return p1
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    const/4 v2, 0x0

    .line 447
    :goto_0
    return-object v2

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 445
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 447
    .local v0, ip:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 425
    packed-switch p1, :pswitch_data_0

    .line 435
    :goto_0
    return-void

    .line 428
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 430
    iput-boolean v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initConnectivityManager(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 221
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 173
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Startted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Stopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Startting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Stopping"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private isAudioShareServiceRunning()Z
    .locals 5

    .prologue
    .line 452
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 455
    .local v1, manager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 457
    .local v2, service:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v3, "com.android.jrdsettings.audioshare.service.AudioShareService"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    const-string v4, "isAudioShareServiceRunning true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v3, 0x1

    .line 464
    .end local v2           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v3

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    const-string v4, "isAudioShareServiceRunning false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchChecked  checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p1, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->isAudioShareServiceRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v0}, Lcom/android/jrdsettings/MultiShareManager;->startAudioShare()Z

    .line 320
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    if-eqz v0, :cond_1

    .line 321
    if-eqz p1, :cond_4

    .line 322
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    invoke-interface {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;->on()V

    .line 328
    :cond_1
    :goto_1
    sput-boolean p1, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    .line 338
    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    iput-boolean v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    .line 312
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->disconnectFromService()V

    .line 313
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v0}, Lcom/android/jrdsettings/MultiShareManager;->stopAudioShare()Z

    goto :goto_0

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mActionBarCallback:Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;

    invoke-interface {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;->off()V

    goto :goto_1
.end method

.method private updateSwitchChecked()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 346
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 347
    .local v4, wifiState:I
    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    move v1, v5

    .line 348
    .local v1, isEnabled:Z
    :goto_0
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 349
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    move v7, v6

    :goto_1
    iput-boolean v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    .line 350
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is Wifi Connected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    if-eqz v7, :cond_6

    .line 352
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "audio_share_state"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, state:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->isAudioShareServiceRunning()Z

    move-result v2

    .line 356
    .local v2, isServiceRunning:Z
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isServiceRunning = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v7, "audio_share_starting"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 358
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 359
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 377
    .end local v2           #isServiceRunning:Z
    .end local v3           #state:Ljava/lang/String;
    :goto_2
    return-void

    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #isEnabled:Z
    :cond_0
    move v1, v6

    .line 347
    goto :goto_0

    .line 349
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v1       #isEnabled:Z
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    goto :goto_1

    .line 360
    .restart local v2       #isServiceRunning:Z
    .restart local v3       #state:Ljava/lang/String;
    :cond_2
    const-string v7, "audio_share_started"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 362
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 363
    :cond_3
    const-string v7, "audio_share_stopping"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 364
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 365
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 366
    :cond_4
    const-string v7, "audio_share_stopped"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 367
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 368
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 370
    :cond_5
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 371
    iget-object v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 374
    .end local v2           #isServiceRunning:Z
    .end local v3           #state:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 375
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 294
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->setSwitchChecked(Z)V

    .line 295
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->disconnectFromService()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    .line 290
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "intent_audio_share_stop_Service"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->updateSwitchChecked()V

    .line 237
    iget-boolean v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mIsWifiConnected:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->isAudioShareServiceRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    sput-boolean v5, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    .line 244
    :goto_0
    const-string v1, "audio_share_stopping"

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_share_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 264
    .local v0, serviceIsStopping:Z
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBindFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnablerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceIsStopping = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->connectToService()Z

    .line 269
    iput-boolean v5, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    .line 282
    :cond_0
    return-void

    .line 240
    .end local v0           #serviceIsStopping:Z
    :cond_1
    sput-boolean v4, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mEnablerState:Z

    .line 241
    iput-boolean v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 384
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    .line 385
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;

    const-string v1, "setSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->updateSwitchChecked()V

    goto :goto_0
.end method
