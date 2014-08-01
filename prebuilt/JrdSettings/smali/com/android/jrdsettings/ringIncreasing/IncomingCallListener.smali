.class public Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;
.super Landroid/content/BroadcastReceiver;
.source "IncomingCallListener.java"


# static fields
.field private static final KEY_JRD_ASCENDING_RINGING:Ljava/lang/String; = "ascending_ringing"

.field private static final KEY_SILENT:Ljava/lang/String; = "phone_silent"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final RESTORE_STARTVOLUME:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "IncominCallListener"

    sput-object v0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    new-instance v0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener$1;-><init>(Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "paramContext"
    .parameter "paramIntent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, ringStatus:Ljava/lang/String;
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ascending_ringing"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "phone_silent"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    :cond_0
    sget-object v3, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->TAG:Ljava/lang/String;

    const-string v4, "SERVICE NOT ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 43
    .local v1, ringMode:I
    if-eq v1, v6, :cond_1

    if-eqz v1, :cond_1

    .line 48
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 49
    .end local v1           #ringMode:I
    :cond_3
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget-boolean v3, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mRestoreVolume:Z

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 53
    .local v0, mringMode:I
    if-eq v0, v6, :cond_1

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ascending_ringing"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
