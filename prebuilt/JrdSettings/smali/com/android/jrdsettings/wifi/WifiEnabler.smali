.class public Lcom/android/jrdsettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiEnabler"


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Lcom/android/jrdsettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wifi/WifiEnabler$1;-><init>(Lcom/android/jrdsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 233
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v1}, Lcom/mediatek/settings/ext/IWifiExt;->getSwitchState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v1}, Lcom/mediatek/settings/ext/IWifiExt;->getSwitchState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 199
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v1}, Lcom/mediatek/settings/ext/IWifiExt;->getSwitchState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 214
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-boolean v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090412

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 171
    .local v0, wifiApState:I
    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090411

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiExt;->unRegisterAirplaneObserver()V

    .line 136
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiExt;->registerAirplaneModeObserver(Landroid/widget/Switch;)V

    .line 126
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiExt;->initSwitchState(Landroid/widget/Switch;)V

    .line 128
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 142
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 145
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 146
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v3, :cond_4

    move v0, v3

    .line 147
    .local v0, isDisabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt;->initSwitchState(Landroid/widget/Switch;)V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3
    move v1, v4

    .line 145
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_4
    move v0, v4

    .line 146
    goto :goto_2
.end method
