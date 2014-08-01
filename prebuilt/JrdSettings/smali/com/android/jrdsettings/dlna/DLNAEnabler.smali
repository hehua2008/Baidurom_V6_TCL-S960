.class public Lcom/android/jrdsettings/dlna/DLNAEnabler;
.super Ljava/lang/Object;
.source "DLNAEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLNAEnabler"

.field private static mIsWifiConnected:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

.field private mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchButton:Landroid/widget/Switch;

.field private mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

.field private mValue:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switchButton"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;-><init>(Lcom/android/jrdsettings/dlna/DLNAEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;-><init>(Lcom/android/jrdsettings/dlna/DLNAEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    .line 149
    const-string v0, "dlna"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DLNAManager;

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    .line 151
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 155
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.DLNA_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/android/jrdsettings/MultiShareManager;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/jrdsettings/dlna/DLNAPreference;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switchpref"
    .parameter "switchButton"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/dlna/DLNAEnabler$1;-><init>(Lcom/android/jrdsettings/dlna/DLNAEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/dlna/DLNAEnabler$2;-><init>(Lcom/android/jrdsettings/dlna/DLNAEnabler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    .line 133
    iput-object p3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    .line 134
    const-string v0, "dlna"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DLNAManager;

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    .line 136
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.DLNA_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/android/jrdsettings/MultiShareManager;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/dlna/DLNAEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/dlna/DLNAEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->updateSwitch(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/dlna/DLNAEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mValue:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/dlna/DLNAEnabler;)Lcom/android/jrdsettings/MultiShareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    return-object v0
.end method

.method private handleDlnaStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 291
    const-string v0, "DLNAEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDlnaStateChanged newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->updateSwitch(I)V

    .line 293
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->updateSwitchPref(I)V

    .line 294
    return-void
.end method

.method private handleDlnaStateEnable(Z)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 298
    const-string v1, "DLNAEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...........................................................handleDlnaStateEnable  enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 306
    sget-boolean v1, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dlna_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 309
    .local v0, enable:I
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateChanged(I)V

    .line 314
    .end local v0           #enable:I
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateChanged(I)V

    goto :goto_0
.end method

.method private updateSwitch(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-void

    .line 320
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v3, :cond_1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 329
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    sget-boolean v2, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v2, :cond_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 329
    goto :goto_1

    .line 333
    :pswitch_2
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 333
    goto :goto_2

    .line 338
    :pswitch_3
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    sget-boolean v2, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v2, :cond_5

    move v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 339
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v2, v1

    .line 338
    goto :goto_3

    :cond_6
    move v0, v1

    .line 339
    goto :goto_4

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSwitchPref(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 347
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 350
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/dlna/DLNAPreference;->setChecked(Z)Z

    .line 354
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/dlna/DLNAPreference;->setChecked(Z)Z

    .line 359
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEnableValue()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mValue:I

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 234
    if-eqz p2, :cond_1

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mValue:I

    .line 235
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dlna_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, enable:I
    sget-boolean v3, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v3, :cond_2

    .line 247
    :goto_1
    const-string v3, "DLNAEnabler"

    const-string v6, "...........................................................onCheckedChanged"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v3, "DLNAEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCheckedChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    if-nez v3, :cond_3

    .line 282
    :cond_0
    :goto_2
    return-void

    .end local v0           #enable:I
    :cond_1
    move v3, v5

    .line 234
    goto :goto_0

    .line 243
    .restart local v0       #enable:I
    :cond_2
    iput v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mValue:I

    goto :goto_1

    .line 263
    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    :cond_4
    if-nez p2, :cond_6

    move v1, v4

    .line 266
    .local v1, isAlreadyDisabled:Z
    :goto_3
    if-eq v0, v4, :cond_5

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    :cond_5
    if-eqz p2, :cond_7

    move v2, v4

    .line 270
    .local v2, isAlreadyEnalbed:Z
    :goto_4
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 275
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    sget-boolean v3, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v1           #isAlreadyDisabled:Z
    .end local v2           #isAlreadyEnalbed:Z
    :cond_6
    move v1, v5

    .line 263
    goto :goto_3

    .restart local v1       #isAlreadyDisabled:Z
    :cond_7
    move v2, v5

    .line 266
    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 217
    const-string v2, "DLNAEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...........................................................onPreferenceChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 222
    .local v0, desiredState:Z
    const-string v2, "DLNAEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    if-nez v2, :cond_0

    .line 230
    :goto_0
    return v1

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v2, v0}, Lcom/android/jrdsettings/dlna/DLNAPreference;->setChecked(Z)Z

    .line 228
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "DLNAEnabler"

    const-string v1, "...........................................................pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "DLNAEnabler"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    const-string v3, "DLNAEnabler"

    const-string v4, "...........................................................resume"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v3, "DLNAEnabler"

    const-string v4, "Resume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    if-nez v3, :cond_0

    .line 195
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchPreference:Lcom/android/jrdsettings/dlna/DLNAPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dlna_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, enable:I
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 185
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 186
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    sput-boolean v7, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    .line 193
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->handleDlnaStateChanged(I)V

    goto :goto_0

    .line 189
    :cond_3
    sput-boolean v6, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mIsWifiConnected:Z

    goto :goto_1
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switch_"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    .line 371
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 373
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dlna_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, enable:I
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->updateSwitch(I)V

    goto :goto_0
.end method
