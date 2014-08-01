.class public Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;
.super Ljava/lang/Object;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$1;,
        Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;,
        Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;,
        Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;,
        Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static mProxyServerInstance:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;


# instance fields
.field private final LOOP_OFF:S

.field private final LOOP_ON:S

.field private final MUTE:S

.field private final OEM_RAPI_CLIENT_AUDIO_LOOP_TEST:S

.field private final OEM_RAPI_CLIENT_AUDIO_SET_PARAM:S

.field private final OEM_RAPI_CLIENT_EVENT_GET_MODEM_VERSION:S

.field private final OEM_RAPI_CLIENT_EVENT_MAX:S

.field private final OEM_RAPI_CLIENT_EVENT_NONE:S

.field private final OEM_RAPI_CLIENT_SYS_OPRT_MODE_GET_MODE:S

.field private final OEM_RAPI_CLIENT_SYS_OPRT_MODE_SET_MODE:S

.field private final SND_DEVICE_DEFAULT:S

.field private final SND_DEVICE_HANDSET:S

.field private final SND_DEVICE_HEADSET:S

.field private final SND_DEVICE_HFK:S

.field private final SND_DEVICE_STEREO_HEADSET:S

.field private final TAG:Ljava/lang/String;

.field private final UNMUTE:S

.field private mPipeName:Ljava/lang/String;

.field private prog:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const-string v0, "jrdrapijni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v6, "JRDRapi"

    iput-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->TAG:Ljava/lang/String;

    .line 29
    iput-short v7, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_EVENT_NONE:S

    .line 33
    iput-short v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_EVENT_GET_MODEM_VERSION:S

    .line 34
    iput-short v9, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_AUDIO_LOOP_TEST:S

    .line 35
    iput-short v10, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_AUDIO_SET_PARAM:S

    .line 36
    const/4 v6, 0x4

    iput-short v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_SYS_OPRT_MODE_SET_MODE:S

    .line 37
    const/4 v6, 0x5

    iput-short v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_SYS_OPRT_MODE_GET_MODE:S

    .line 40
    const/4 v6, 0x6

    iput-short v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->OEM_RAPI_CLIENT_EVENT_MAX:S

    .line 126
    iput-short v7, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->SND_DEVICE_DEFAULT:S

    .line 127
    iput-short v7, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->SND_DEVICE_HANDSET:S

    .line 128
    iput-short v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->SND_DEVICE_HFK:S

    .line 129
    iput-short v9, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->SND_DEVICE_HEADSET:S

    .line 130
    iput-short v10, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->SND_DEVICE_STEREO_HEADSET:S

    .line 132
    iput-short v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->LOOP_ON:S

    .line 133
    iput-short v7, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->LOOP_OFF:S

    .line 135
    iput-short v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->MUTE:S

    .line 136
    iput-short v7, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->UNMUTE:S

    .line 138
    iput-object v11, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;

    .line 139
    new-instance v6, Ljava/io/File;

    const-string v7, "/system/bin/jrd_rapiproxy"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    .line 148
    :try_start_0
    const-string v6, "fifo"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 154
    :goto_0
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 155
    const-string v6, "rapi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    .line 157
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 161
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "jrd_rapiproxy"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 162
    .local v2, fd:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 164
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 165
    .local v3, len:I
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    .local v4, mOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 168
    const-string v6, "JRDRapi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of jrd_rapiproxy into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 172
    .local v5, p:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .end local v0           #buffer:[B
    .end local v2           #fd:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #mOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #p:Ljava/lang/Process;
    :cond_0
    :goto_1
    sget-object v6, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mProxyServerInstance:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;

    if-nez v6, :cond_1

    .line 193
    :try_start_2
    new-instance v6, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$1;)V

    sput-object v6, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mProxyServerInstance:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    :cond_1
    :goto_2
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/io/IOException;

    if-ne v6, v7, :cond_2

    .line 177
    const-string v6, "JRDRapi"

    const-string v7, "can\'t open jrd_rapiproxy from assets"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/SecurityException;

    if-ne v6, v7, :cond_3

    .line 179
    const-string v6, "JRDRapi"

    const-string v7, "can\'t get \'rapi\' full path name"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/InterruptedException;

    if-ne v6, v7, :cond_4

    .line 181
    const-string v6, "JRDRapi"

    const-string v7, "chmod interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/jrd_rapiproxy nor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const-string v6, "JRDRapi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "using proxy :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "JRDRapi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JrdProxyServerThread init error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 150
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;SSSS)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendcmd(Ljava/lang/String;SSSS)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;SSSS)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendcmdForStrResult(Ljava/lang/String;SSSS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;

    return-object v0
.end method

.method static callAudioSystem(BB)V
    .locals 6
    .parameter "cmd"
    .parameter "arg"

    .prologue
    const/16 v5, 0x61

    .line 421
    const/16 v0, 0x5a4

    .line 422
    .local v0, DATA_SIZE:I
    new-array v1, v0, [B

    .line 423
    .local v1, data:[B
    const/4 v2, 0x0

    .line 425
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    const/16 v4, 0x50

    aput-byte v4, v1, v2

    .line 426
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aput-byte v5, v1, v3

    .line 427
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/16 v4, 0x72

    aput-byte v4, v1, v2

    .line 428
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aput-byte v5, v1, v3

    .line 430
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    aput-byte p0, v1, v2

    .line 431
    aput-byte p1, v1, v3

    .line 434
    return-void
.end method

.method static doAudioHandsetLoop(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 441
    .local v1, cmd:B
    if-eqz p0, :cond_0

    .line 442
    const/4 v0, 0x1

    .line 446
    .local v0, arg:B
    :goto_0
    invoke-static {v1, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->callAudioSystem(BB)V

    .line 447
    return-void

    .line 444
    .end local v0           #arg:B
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #arg:B
    goto :goto_0
.end method

.method public static doAudioHeadsetLoop(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 451
    const/4 v1, 0x1

    .line 454
    .local v1, cmd:B
    if-eqz p0, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 459
    .local v0, arg:B
    :goto_0
    invoke-static {v1, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->callAudioSystem(BB)V

    .line 460
    return-void

    .line 457
    .end local v0           #arg:B
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #arg:B
    goto :goto_0
.end method

.method static native doNvRead(I[B)I
.end method

.method static native doNvWrite(I[B)I
.end method

.method private sendToProxy(SLjava/lang/StringBuffer;SSS)V
    .locals 9
    .parameter "cmd"
    .parameter "sb"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 264
    sget-object v8, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mProxyServerInstance:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;

    monitor-enter v8

    .line 265
    :try_start_0
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;SLjava/lang/StringBuffer;SSS)V

    .line 266
    .local v0, command:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const-wide/16 v1, 0x7d0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :goto_0
    :try_start_2
    monitor-exit v8

    .line 274
    return-void

    .line 269
    :catch_0
    move-exception v7

    .line 270
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "JRDRapi"

    const-string v2, "CmdThread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v0           #command:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private sendToProxy(SSSS)V
    .locals 8
    .parameter "cmd"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 246
    sget-object v7, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mProxyServerInstance:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;

    monitor-enter v7

    .line 248
    :try_start_0
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;SSSS)V

    .line 249
    .local v0, command:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const-wide/16 v1, 0x7d0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :goto_0
    :try_start_2
    monitor-exit v7

    .line 261
    return-void

    .line 252
    :catch_0
    move-exception v6

    .line 253
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "JRDRapi"

    const-string v2, "CmdThread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v0           #command:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static native sendcmd(Ljava/lang/String;SSSS)I
.end method

.method private static native sendcmdForStrResult(Ljava/lang/String;SSSS)Ljava/lang/String;
.end method

.method public static setKbdBacklight(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 464
    const/4 v1, 0x2

    .line 465
    .local v1, cmd:B
    int-to-byte v0, p0

    .line 467
    .local v0, arg:B
    invoke-static {v1, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->callAudioSystem(BB)V

    .line 468
    return-void
.end method

.method public static setLcdBacklight(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 472
    const/4 v1, 0x3

    .line 473
    .local v1, cmd:B
    int-to-byte v0, p0

    .line 475
    .local v0, arg:B
    invoke-static {v1, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->callAudioSystem(BB)V

    .line 476
    return-void
.end method


# virtual methods
.method public getOprtMode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 232
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x5

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendToProxy(SLjava/lang/StringBuffer;SSS)V

    .line 236
    const-string v0, "\\s*=\\s*([-0-9]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 237
    .local v7, p:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 238
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setAudioHandsetLoop(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendToProxy(SSSS)V

    .line 213
    return-void

    :cond_1
    move v2, v1

    .line 212
    goto :goto_0
.end method

.method public setAudioHeadsetLoop(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v3, v2, v3, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendToProxy(SSSS)V

    .line 217
    return-void

    :cond_0
    move v2, v0

    .line 216
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAudioStereoHeadsetLoop(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    const/4 v3, 0x2

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    const/4 v4, 0x3

    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v3, v2, v4, v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendToProxy(SSSS)V

    .line 221
    return-void

    :cond_0
    move v2, v0

    .line 220
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setFTMMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v0, 0x4

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->getVal()I

    move-result v1

    int-to-short v1, v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendToProxy(SSSS)V

    .line 225
    return-void
.end method

.method public setOnlineMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    const/4 v0, 0x4

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->getVal()I

    move-result v1

    int-to-short v1, v1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendToProxy(SSSS)V

    .line 229
    return-void
.end method
