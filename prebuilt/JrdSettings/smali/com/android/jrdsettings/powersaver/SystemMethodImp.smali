.class public Lcom/android/jrdsettings/powersaver/SystemMethodImp;
.super Ljava/lang/Object;
.source "SystemMethodImp.java"


# static fields
.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "SystemMethodImp"

.field public static final VALUE_VIBRATE_ALWAYS:I = 0x1

.field public static final VALUE_VIBRATE_NEVER:I = 0x0

.field public static final VALUE_VIBRATE_ONLY_SILENT:I = 0x2

.field public static final VALUE_VIBRATE_UNLESS_SILENT:I = 0x3

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field private static instance:Lcom/android/jrdsettings/powersaver/SystemMethodImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-direct {v0}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->instance:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 8
    .parameter "millis"

    .prologue
    const v7, 0x15180

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide/16 v5, 0x3e8

    div-long v5, p0, v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 377
    .local v4, seconds:I
    const/4 v0, 0x0

    .local v0, days:I
    const/4 v1, 0x0

    .local v1, hours:I
    const/4 v2, 0x0

    .line 378
    .local v2, minutes:I
    if-le v4, v7, :cond_0

    .line 379
    div-int v0, v4, v7

    .line 380
    mul-int v5, v0, v7

    sub-int/2addr v4, v5

    .line 382
    :cond_0
    const/16 v5, 0xe10

    if-le v4, v5, :cond_1

    .line 383
    div-int/lit16 v1, v4, 0xe10

    .line 384
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 386
    :cond_1
    const/16 v5, 0x3c

    if-le v4, v5, :cond_2

    .line 387
    div-int/lit8 v2, v4, 0x3c

    .line 388
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 390
    :cond_2
    if-lez v0, :cond_3

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "d "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 392
    :cond_3
    if-lez v1, :cond_4

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "h "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 394
    :cond_4
    if-lez v2, :cond_5

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 203
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 205
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/jrdsettings/powersaver/SystemMethodImp;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->instance:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    return-object v0
.end method


# virtual methods
.method public getAirPlaneMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBacklightBrightnessValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothEnabled()Z
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 261
    .local v0, mAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 264
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGpsEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMobileDataEnabled(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 149
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 151
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 153
    .local v2, getMobileDataEnabled:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/net/ConnectivityManager;

    const-string v6, "getMobileDataEnabled"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 160
    :goto_0
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 163
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 172
    :goto_1
    return v3

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    move v3, v5

    .line 163
    goto :goto_1

    .line 164
    :catch_2
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_2
    move v3, v5

    .line 172
    goto :goto_1

    .line 166
    :catch_3
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 168
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getTimeUsed(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, mStats:Lcom/android/internal/os/BatteryStatsImpl;
    const/4 v2, 0x0

    .line 350
    .local v2, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 351
    .local v4, parcel:Landroid/os/Parcel;
    const/4 v0, 0x0

    .line 353
    .local v0, data:[B
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_0

    .line 357
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :cond_0
    :goto_0
    array-length v7, v0

    invoke-virtual {v4, v0, v9, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 364
    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 365
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mStats:Lcom/android/internal/os/BatteryStatsImpl;
    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    .line 367
    .restart local v3       #mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v3, v9}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long/2addr v7, v10

    invoke-virtual {v3, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v5

    .line 370
    .local v5, uSecTime:J
    div-long v7, v5, v10

    invoke-static {v7, v8}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 358
    .end local v5           #uSecTime:J
    :catch_0
    move-exception v1

    .line 359
    .local v1, e:Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "RemoteException - fetch of stats failed"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVibrateSettingValue(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_in_silent"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_1

    move v2, v3

    .line 271
    .local v2, vibeInSilent:Z
    :goto_0
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 273
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 276
    .local v1, callsVibrateSetting:I
    if-eqz v2, :cond_3

    .line 277
    if-nez v1, :cond_0

    .line 279
    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 282
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 285
    :cond_0
    if-ne v1, v3, :cond_2

    .line 302
    :goto_1
    return v3

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #callsVibrateSetting:I
    .end local v2           #vibeInSilent:Z
    :cond_1
    move v2, v4

    .line 269
    goto :goto_0

    .restart local v0       #am:Landroid/media/AudioManager;
    .restart local v1       #callsVibrateSetting:I
    .restart local v2       #vibeInSilent:Z
    :cond_2
    move v3, v5

    .line 288
    goto :goto_1

    .line 291
    :cond_3
    if-ne v1, v5, :cond_4

    .line 293
    invoke-virtual {v0, v4, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 296
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 299
    :cond_4
    if-ne v1, v3, :cond_5

    .line 300
    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    move v3, v4

    .line 302
    goto :goto_1
.end method

.method public getWifiEnabled(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 215
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 217
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    return v1
.end method

.method public setAirPlaneMode(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    return-void

    .line 233
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v8, 0x1

    .line 176
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 180
    .local v2, setBackgroundDataSetting:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/net/ConnectivityManager;

    const-string v4, "setBackgroundDataSetting"

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

    .line 187
    :goto_0
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 190
    const/4 v3, 0x1

    :try_start_1
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

    .line 199
    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 200
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 193
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setBacklightBrightness(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "brightness"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    const/16 v3, 0xff

    if-le p2, v3, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 87
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x0

    .line 89
    .local v2, setBacklightBrightness:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v3, Landroid/os/PowerManager;

    const-string v4, "setBacklightBrightness"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 97
    :goto_1
    if-eqz v2, :cond_0

    .line 99
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 100
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 250
    .local v0, mAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 251
    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public setGpsEnabled(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 224
    return-void
.end method

.method public setMobileDataEnabled(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 123
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 125
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 127
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

    .line 134
    :goto_0
    if-eqz v2, :cond_0

    .line 136
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 137
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

    .line 146
    :cond_0
    :goto_1
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setVibrateSettingValue(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 311
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 313
    .local v0, am:Landroid/media/AudioManager;
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 314
    const/4 v1, 0x1

    .line 315
    .local v1, callsVibrateSetting:I
    const/4 v2, 0x0

    .line 327
    .local v2, vibeInSilent:Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_in_silent"

    if-eqz v2, :cond_4

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 334
    if-eqz v2, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 339
    :cond_0
    invoke-virtual {v0, v5, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 342
    invoke-virtual {v0, v4, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 344
    return-void

    .line 316
    .end local v1           #callsVibrateSetting:I
    .end local v2           #vibeInSilent:Z
    :cond_1
    if-nez p2, :cond_2

    .line 317
    const/4 v1, 0x0

    .line 318
    .restart local v1       #callsVibrateSetting:I
    const/4 v2, 0x0

    .restart local v2       #vibeInSilent:Z
    goto :goto_0

    .line 319
    .end local v1           #callsVibrateSetting:I
    .end local v2           #vibeInSilent:Z
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 320
    const/4 v1, 0x2

    .line 321
    .restart local v1       #callsVibrateSetting:I
    const/4 v2, 0x1

    .restart local v2       #vibeInSilent:Z
    goto :goto_0

    .line 323
    .end local v1           #callsVibrateSetting:I
    .end local v2           #vibeInSilent:Z
    :cond_3
    const/4 v1, 0x1

    .line 324
    .restart local v1       #callsVibrateSetting:I
    const/4 v2, 0x1

    .restart local v2       #vibeInSilent:Z
    goto :goto_0

    :cond_4
    move v3, v5

    .line 327
    goto :goto_1

    :cond_5
    move v3, v5

    .line 334
    goto :goto_2
.end method

.method public setWifiEnabled(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 209
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 211
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 212
    return-void
.end method
