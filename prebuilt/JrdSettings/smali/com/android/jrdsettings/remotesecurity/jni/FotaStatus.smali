.class public Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;
.super Ljava/lang/Object;
.source "FotaStatus.java"


# static fields
.field public static final OTU_FILESET_INFO_TIMEOUT_SECONDS:I = 0x4b0

.field public static _msg:[Ljava/lang/String; = null

.field public static final eOS_AnotherRequestAlreadyOnGoingError:I = 0x3f4

.field public static final eOS_Authorized:I = 0x63

.field public static final eOS_BadCheckSumError:I = 0x3fa

.field public static final eOS_BadUsage:I = 0x3eb

.field public static final eOS_ConfFileError:I = 0x3f2

.field public static final eOS_Connected:I = 0x1e

.field public static final eOS_Connected_Auth:I = 0x23

.field public static final eOS_Connecting:I = 0x14

.field public static final eOS_Connecting_Auth:I = 0x19

.field public static final eOS_ConnectionFailed:I = 0x3ec

.field public static final eOS_CorruptedFileError:I = 0x3fb

.field public static final eOS_DirectoryAuthorizationError:I = 0x2711

.field public static final eOS_DirectoryNotFoundError:I = 0x2719

.field public static final eOS_Downloading:I = 0x5a

.field public static final eOS_Failed:I = 0x3ea

.field public static final eOS_FatalError:I = 0x2710

.field public static final eOS_FileNameTooLongError:I = 0x2714

.field public static final eOS_FileNotFoundError:I = 0x3f5

.field public static final eOS_FileSystemFullError:I = 0x2713

.field public static final eOS_HardDiskLowLevelError:I = 0x2717

.field public static final eOS_Idle:I = 0x46

.field public static final eOS_Initialized:I = 0x1

.field public static final eOS_InternalError:I = 0x3f1

.field public static final eOS_MaxFileSystemLimitError:I = 0x2716

.field public static final eOS_MaxRepetitionLimitReachedError:I = 0x3f8

.field public static final eOS_NetworkQualityTooBad:I = 0x3ef

.field public static final eOS_No:I = 0x3e8

.field public static final eOS_NoServerAvailableError:I = 0x3f7

.field public static final eOS_NotSoftwareAvailableError:I = 0x3ee

.field public static final eOS_Ok:I = 0x3e7

.field public static final eOS_OtherFileSystemError:I = 0x2718

.field public static final eOS_OutOfMemoryError:I = 0x2712

.field public static final eOS_Paused:I = 0x50

.field public static final eOS_Processing:I = 0x5f

.field public static final eOS_ReadOnlyFileSystemError:I = 0x2715

.field public static final eOS_RemotePeerDisconnectedError:I = 0x3f9

.field public static final eOS_Sending:I = 0x28

.field public static final eOS_Sending_Auth:I = 0x2d

.field public static final eOS_ServerTooBusy:I = 0x3f0

.field public static final eOS_Starting:I = 0xa

.field public static final eOS_Starting_Auth:I = 0xf

.field public static final eOS_TemporaryPaused:I = 0x55

.field public static final eOS_ThreadNotReadyError:I = 0x3f6

.field public static final eOS_TimeOut:I = 0x3e9

.field public static final eOS_Unknown:I = 0x0

.field public static final eOS_UnknownInitError:I = 0x3f3

.field public static final eOS_UpgradeRequired:I = 0x3ed

.field public static final eOS_Waiting:I = 0x32

.field public static final eOS_Waiting_Auth:I = 0x37


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Initialized!"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Starting ..."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Starting Authentication ..."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Connecting ..."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Connecting for Authentication ..."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Connected ..."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Connected for Authentication ..."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sending ..."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sending for Authentication ..."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Waiting ..."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Waiting for Authentication ..."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Idle"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Paused"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Downloading"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Processing"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Authorized"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Ok"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "No or Negative Answer."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TimeOut Error."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Failed Error."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Bad Usage Error."

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Failed to connect to server. Are you connected to Internet?"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Failed to communicate with server because upgrade is required."

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "No software has been found on server for the currently connected mobile phone."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Application aborted because it detected very bad network quality. Retry later."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "OTU service is too busy. Retry later."

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Internal Error due to application logic. Aborting ..."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Configuration File Error"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Unknown Initialization Error"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Request cannot be performed due to another ongoing request"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "File Not Found Error"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Thread Not Ready Error"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "No Server Available Error"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Maximum Repetition Limit Reached Error"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Remote Peer Unexpectedely Disconnected Error"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Bad checksum encountered Error"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Corrupted File Error"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Fatal Error"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Directory Authorization Error"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Out Of Memory Error"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "File System Full Error"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "File Name is too long Error"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "File System is read only Error"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Maximum Limit of File System has been reached Error"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Harddisk Low Level Error"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Other File System Error"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Directory Not Found Error"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Unknown error. Aborting ..."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static otu_get_status_msg(I)Ljava/lang/String;
    .locals 3
    .parameter "status"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, result:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 312
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x30

    aget-object v0, v1, v2

    .line 316
    :goto_0
    return-object v0

    .line 136
    :sswitch_0
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 137
    goto :goto_0

    .line 139
    :sswitch_1
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 140
    goto :goto_0

    .line 142
    :sswitch_2
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 143
    goto :goto_0

    .line 145
    :sswitch_3
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .line 146
    goto :goto_0

    .line 148
    :sswitch_4
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 149
    goto :goto_0

    .line 151
    :sswitch_5
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    .line 152
    goto :goto_0

    .line 154
    :sswitch_6
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v1, v2

    .line 155
    goto :goto_0

    .line 157
    :sswitch_7
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v1, v2

    .line 158
    goto :goto_0

    .line 160
    :sswitch_8
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v1, v2

    .line 161
    goto :goto_0

    .line 163
    :sswitch_9
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v0, v1, v2

    .line 164
    goto :goto_0

    .line 166
    :sswitch_a
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v1, v2

    .line 167
    goto :goto_0

    .line 169
    :sswitch_b
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v1, v2

    .line 170
    goto :goto_0

    .line 172
    :sswitch_c
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v1, v2

    .line 173
    goto :goto_0

    .line 175
    :sswitch_d
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v1, v2

    .line 176
    goto :goto_0

    .line 178
    :sswitch_e
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v1, v2

    .line 179
    goto :goto_0

    .line 181
    :sswitch_f
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v0, v1, v2

    .line 182
    goto :goto_0

    .line 184
    :sswitch_10
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v0, v1, v2

    .line 185
    goto :goto_0

    .line 188
    :sswitch_11
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v0, v1, v2

    .line 189
    goto :goto_0

    .line 192
    :sswitch_12
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v0, v1, v2

    .line 193
    goto :goto_0

    .line 196
    :sswitch_13
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v0, v1, v2

    .line 197
    goto/16 :goto_0

    .line 200
    :sswitch_14
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v0, v1, v2

    .line 201
    goto/16 :goto_0

    .line 204
    :sswitch_15
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v0, v1, v2

    .line 205
    goto/16 :goto_0

    .line 208
    :sswitch_16
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v0, v1, v2

    .line 209
    goto/16 :goto_0

    .line 212
    :sswitch_17
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v0, v1, v2

    .line 213
    goto/16 :goto_0

    .line 216
    :sswitch_18
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v0, v1, v2

    .line 217
    goto/16 :goto_0

    .line 220
    :sswitch_19
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v0, v1, v2

    .line 221
    goto/16 :goto_0

    .line 224
    :sswitch_1a
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v0, v1, v2

    .line 225
    goto/16 :goto_0

    .line 228
    :sswitch_1b
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v0, v1, v2

    .line 229
    goto/16 :goto_0

    .line 232
    :sswitch_1c
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v0, v1, v2

    .line 233
    goto/16 :goto_0

    .line 236
    :sswitch_1d
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v0, v1, v2

    .line 237
    goto/16 :goto_0

    .line 240
    :sswitch_1e
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v0, v1, v2

    .line 241
    goto/16 :goto_0

    .line 244
    :sswitch_1f
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v1, v2

    .line 245
    goto/16 :goto_0

    .line 248
    :sswitch_20
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v0, v1, v2

    .line 249
    goto/16 :goto_0

    .line 252
    :sswitch_21
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v0, v1, v2

    .line 253
    goto/16 :goto_0

    .line 256
    :sswitch_22
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v0, v1, v2

    .line 257
    goto/16 :goto_0

    .line 260
    :sswitch_23
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v0, v1, v2

    .line 261
    goto/16 :goto_0

    .line 264
    :sswitch_24
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v0, v1, v2

    .line 265
    goto/16 :goto_0

    .line 268
    :sswitch_25
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v0, v1, v2

    .line 269
    goto/16 :goto_0

    .line 272
    :sswitch_26
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v0, v1, v2

    .line 273
    goto/16 :goto_0

    .line 276
    :sswitch_27
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v0, v1, v2

    .line 277
    goto/16 :goto_0

    .line 280
    :sswitch_28
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v0, v1, v2

    .line 281
    goto/16 :goto_0

    .line 284
    :sswitch_29
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v0, v1, v2

    .line 285
    goto/16 :goto_0

    .line 288
    :sswitch_2a
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v0, v1, v2

    .line 289
    goto/16 :goto_0

    .line 292
    :sswitch_2b
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x2b

    aget-object v0, v1, v2

    .line 293
    goto/16 :goto_0

    .line 296
    :sswitch_2c
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x2c

    aget-object v0, v1, v2

    .line 297
    goto/16 :goto_0

    .line 300
    :sswitch_2d
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v0, v1, v2

    .line 301
    goto/16 :goto_0

    .line 304
    :sswitch_2e
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x2e

    aget-object v0, v1, v2

    .line 305
    goto/16 :goto_0

    .line 308
    :sswitch_2f
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/FotaStatus;->_msg:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v0, v1, v2

    .line 309
    goto/16 :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1e -> :sswitch_6
        0x23 -> :sswitch_7
        0x28 -> :sswitch_8
        0x2d -> :sswitch_9
        0x32 -> :sswitch_a
        0x37 -> :sswitch_b
        0x46 -> :sswitch_c
        0x50 -> :sswitch_d
        0x5a -> :sswitch_e
        0x5f -> :sswitch_f
        0x63 -> :sswitch_10
        0x3e7 -> :sswitch_11
        0x3e8 -> :sswitch_12
        0x3e9 -> :sswitch_13
        0x3ea -> :sswitch_14
        0x3eb -> :sswitch_15
        0x3ec -> :sswitch_16
        0x3ed -> :sswitch_17
        0x3ee -> :sswitch_18
        0x3ef -> :sswitch_19
        0x3f0 -> :sswitch_1a
        0x3f1 -> :sswitch_1b
        0x3f2 -> :sswitch_1c
        0x3f3 -> :sswitch_1d
        0x3f4 -> :sswitch_1e
        0x3f5 -> :sswitch_1f
        0x3f6 -> :sswitch_20
        0x3f7 -> :sswitch_21
        0x3f8 -> :sswitch_22
        0x3f9 -> :sswitch_23
        0x3fa -> :sswitch_24
        0x3fb -> :sswitch_25
        0x2710 -> :sswitch_26
        0x2711 -> :sswitch_27
        0x2712 -> :sswitch_28
        0x2713 -> :sswitch_29
        0x2714 -> :sswitch_2a
        0x2715 -> :sswitch_2b
        0x2716 -> :sswitch_2c
        0x2717 -> :sswitch_2d
        0x2718 -> :sswitch_2e
        0x2719 -> :sswitch_2f
    .end sparse-switch
.end method
