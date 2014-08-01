.class public Lcom/android/jrdsettings/powersaver/JrdBatteryService;
.super Landroid/app/Service;
.source "JrdBatteryService.java"


# static fields
.field public static mDataEnable:Z

.field public static mSaverMode:Z

.field public static mSimId:I


# instance fields
.field private TAG:Ljava/lang/String;

.field mBroadCastReceive:Landroid/content/BroadcastReceiver;

.field mPreviousMobileData:Z

.field private mSavingModeObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    .line 35
    sput v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSimId:I

    .line 36
    sput-boolean v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mDataEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mPreviousMobileData:Z

    .line 38
    invoke-static {}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->getInstance()Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    .line 40
    const-string v0, "JrdBatteryService"

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/powersaver/JrdBatteryService$1;-><init>(Lcom/android/jrdsettings/powersaver/JrdBatteryService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSavingModeObserver:Landroid/database/ContentObserver;

    .line 168
    new-instance v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;-><init>(Lcom/android/jrdsettings/powersaver/JrdBatteryService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mBroadCastReceive:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/powersaver/JrdBatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->enableFuntions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/powersaver/JrdBatteryService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->switchFunction(Z)V

    return-void
.end method

.method private enableFuntions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdtoggle_bt"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v3, v5}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setBluetoothEnabled(Z)V

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdtoggle_autosync"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdtoggle_gps"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v3, p0, v5}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setGpsEnabled(Landroid/content/Context;Z)V

    .line 203
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdtoggle_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v3, p0, v5}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setWifiEnabled(Landroid/content/Context;Z)V

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdbrightness"

    const/16 v5, 0x50

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, brightness:I
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdscreen_timeout"

    const-string v5, "30000"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, timeout:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->setBrightness(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    return-void

    .line 198
    .end local v0           #brightness:I
    .end local v2           #timeout:Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0

    .line 213
    .restart local v0       #brightness:I
    .restart local v2       #timeout:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->TAG:Ljava/lang/String;

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 223
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 226
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private switchFunction(Z)V
    .locals 5
    .parameter "isSwitch"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jrdtoggle_datatraffic"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    .local v0, mbTrue:Z
    if-eqz p1, :cond_2

    .line 242
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v3, p0}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->getMobileDataEnabled(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mPreviousMobileData:Z

    .line 243
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mPreviousMobileData:Z

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v1, p0, v2}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setMobileDataEnabled(Landroid/content/Context;Z)V

    .line 251
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 242
    goto :goto_0

    .line 247
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mPreviousMobileData:Z

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v2, p0, v1}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setMobileDataEnabled(Landroid/content/Context;Z)V

    goto :goto_1
.end method


# virtual methods
.method public getMobileDataEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 97
    .local v2, mobileData:Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    .line 106
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 97
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, mInterFiler:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mBroadCastReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_saving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    sput-boolean v1, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    .line 58
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "power_saving_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_preferences"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 64
    return-void

    :cond_0
    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mBroadCastReceive:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mBroadCastReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 75
    return-void
.end method

.method public recoveryDataState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 158
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 159
    .local v0, cm:Landroid/net/ConnectivityManager;
    sget v2, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSimId:I

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public saveGemistate(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, cm:Landroid/net/ConnectivityManager;
    sput v3, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSimId:I

    .line 115
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x0

    sput v2, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSimId:I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    sput v2, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSimId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMobileDataEnabled(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 128
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 130
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 132
    .local v2, setMobileDataEnabled:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/net/ConnectivityManager;

    const-string v4, "setMobileDataEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 139
    :goto_0
    if-eqz v2, :cond_0

    .line 141
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 142
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
