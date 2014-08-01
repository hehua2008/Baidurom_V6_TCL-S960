.class public Lcom/android/jrdsettings/MultiShareManager;
.super Ljava/lang/Object;
.source "MultiShareManager.java"


# static fields
.field private static final AUDIO_SHARE:I = 0x0

.field private static final DEBUG:Z = true

.field public static final DEVICE_STATUS_DISABLED:I = 0x0

.field public static final DEVICE_STATUS_DISABLING:I = 0x3

.field public static final DEVICE_STATUS_ENABLED:I = 0x1

.field public static final DEVICE_STATUS_ENABLING:I = 0x2

.field private static final INTENT_RESET_ALL:Ljava/lang/String; = "com.intent.MULTI_SHARE_RESET_ALL"

.field public static final INTENT_START_AUDIO_SHARE:Ljava/lang/String; = "com.intent.START_AUDIO_SHARE"

.field public static final INTENT_START_MULTI_SCREEN:Ljava/lang/String; = "com.intent.START_MULTI_SCREEN"

.field public static final INTENT_START_WIFI_DISPLAY:Ljava/lang/String; = "com.intent.START_WIFI_DISPLAY"

.field public static final INTENT_STOP_AUDIO_SHARE:Ljava/lang/String; = "com.intent.STOP_AUDIO_SHARE"

.field public static final INTENT_STOP_MULTI_SCREEN:Ljava/lang/String; = "com.intent.STOP_MULTI_SCREEN"

.field public static final INTENT_STOP_WIFI_DISPLAY:Ljava/lang/String; = "com.intent.STOP_WIFI_DISPLAY"

.field private static final MULTI_SCREEN:I = 0x1

.field public static final MULTI_SCREEN_MODE_ON:Ljava/lang/String; = "dlna_mode_on"

.field public static final MULTI_SCREEN_SWITCH:Ljava/lang/String; = "android.intent.DLNA_SWITCH"

.field public static final MULTI_SCREEN_SWITCH_STATUS:Ljava/lang/String; = "MULTI_SCREEN_SWITCH_STATUS"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MulitShareManager"

.field private static final WIFI_DISPLAY:I = 0x2


# instance fields
.field private mAudioShareHasOpen:Z

.field private mContext:Landroid/content/Context;

.field private mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

.field private mMultiScreenHasOpen:Z

.field private mWifiDisplayHasOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mAudioShareHasOpen:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mMultiScreenHasOpen:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mWifiDisplayHasOpen:Z

    .line 89
    iput-object p1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    const-string v1, "dlna"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DLNAManager;

    iput-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/MultiShareManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/MultiShareManager;->stopOtherService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/MultiShareManager;)Ljrdcom/dlnaservice/DLNAManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/MultiShareManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/MultiShareManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/jrdsettings/MultiShareManager;->mMultiScreenHasOpen:Z

    return p1
.end method

.method private isWifiDisplayRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iget-object v3, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, enabled:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendResetAction()V
    .locals 2

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.MULTI_SHARE_RESET_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method private startAudioShareInner()V
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->isAudioShareServiceRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mAudioShareHasOpen:Z

    goto :goto_0
.end method

.method private startWifiDisplayInner()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    invoke-direct {p0}, Lcom/android/jrdsettings/MultiShareManager;->isWifiDisplayRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    iput-boolean v2, p0, Lcom/android/jrdsettings/MultiShareManager;->mWifiDisplayHasOpen:Z

    .line 291
    :cond_0
    return-void
.end method

.method private stopOtherService(I)Z
    .locals 2
    .parameter "currentService"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, isSuccess:Z
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_0
    return v0

    .line 305
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen()Z

    move-result v0

    .line 306
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    move-result v1

    and-int/2addr v0, v1

    .line 307
    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopAudioShare()Z

    move-result v0

    .line 310
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    move-result v1

    and-int/2addr v0, v1

    .line 311
    goto :goto_0

    .line 313
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopAudioShare()Z

    move-result v0

    .line 314
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen()Z

    move-result v1

    and-int/2addr v0, v1

    .line 315
    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public isAudioShareServiceRunning()Z
    .locals 8

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, isRunning:Z
    iget-object v5, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 98
    .local v3, manager:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 100
    .local v4, service:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "com.android.jrdsettings.audioshare.service.AudioShareService"

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const-string v5, "MulitShareManager"

    const-string v6, "isAudioShareServiceRunning true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    .end local v4           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 110
    iget-object v5, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "audio_share_state"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, currentState:Ljava/lang/String;
    const-string v5, "audio_share_starting"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    const/4 v2, 0x1

    .line 118
    .end local v0           #currentState:Ljava/lang/String;
    :cond_2
    const-string v5, "MulitShareManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAudioShareServiceRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v2
.end method

.method public isMultiScreenRunning()Z
    .locals 5

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, isRunning:Z
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, multiScreenState:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 157
    .end local v1           #multiScreenState:I
    :cond_1
    const-string v2, "MulitShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultiScreenRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0
.end method

.method public resetAll()V
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mAudioShareHasOpen:Z

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->resetAudioShare()V

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mMultiScreenHasOpen:Z

    if-nez v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->resetMultiScreen()V

    .line 356
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mWifiDisplayHasOpen:Z

    if-nez v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->resetWifiDisplay()V

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/android/jrdsettings/MultiShareManager;->sendResetAction()V

    .line 361
    return-void
.end method

.method public resetAudioShare()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_share_state"

    const-string v2, "audio_share_stopped"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    return-void
.end method

.method public resetMultiScreen()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dlna_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    return-void
.end method

.method public resetWifiDisplay()V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    .line 339
    return-void
.end method

.method public startAudioShare()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/MultiShareManager;->stopOtherService(I)Z

    .line 125
    invoke-direct {p0}, Lcom/android/jrdsettings/MultiShareManager;->startAudioShareInner()V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public startMultiScreen()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/MultiShareManager;->startMultiScreen(Landroid/widget/Switch;)V

    .line 164
    return-void
.end method

.method public startMultiScreen(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switchButton"

    .prologue
    const/4 v3, 0x2

    .line 167
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->isMultiScreenRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.DLNA_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dlna_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    const-string v1, "MULTI_SCREEN_SWITCH_STATUS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    new-instance v1, Lcom/android/jrdsettings/MultiShareManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/jrdsettings/MultiShareManager$1;-><init>(Lcom/android/jrdsettings/MultiShareManager;Landroid/widget/Switch;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public startWifiDisplay()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/MultiShareManager;->stopOtherService(I)Z

    .line 281
    invoke-direct {p0}, Lcom/android/jrdsettings/MultiShareManager;->startWifiDisplayInner()V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public stopAudioShare()Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/jrdsettings/MultiShareManager;->isAudioShareServiceRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent_audio_share_stop_Service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public stopMultiScreen()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen(Landroid/widget/Switch;)Z

    move-result v0

    return v0
.end method

.method public stopMultiScreen(Landroid/widget/Switch;)Z
    .locals 4
    .parameter "switchButton"

    .prologue
    const/4 v3, 0x3

    .line 225
    const-string v1, "MulitShareManager"

    const-string v2, "stopMultiScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.DLNA_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dlna_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    const-string v1, "MULTI_SCREEN_SWITCH_STATUS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    new-instance v1, Lcom/android/jrdsettings/MultiShareManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/jrdsettings/MultiShareManager$2;-><init>(Lcom/android/jrdsettings/MultiShareManager;Landroid/widget/Switch;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    const/4 v1, 0x1

    return v1
.end method

.method public stopWifiDisplay()Z
    .locals 3

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/jrdsettings/MultiShareManager;->isWifiDisplayRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/jrdsettings/MultiShareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
