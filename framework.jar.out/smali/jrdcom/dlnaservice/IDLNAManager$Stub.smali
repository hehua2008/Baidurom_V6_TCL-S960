.class public abstract Ljrdcom/dlnaservice/IDLNAManager$Stub;
.super Landroid/os/Binder;
.source "IDLNAManager.java"

# interfaces
.implements Ljrdcom/dlnaservice/IDLNAManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljrdcom/dlnaservice/IDLNAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljrdcom/dlnaservice/IDLNAManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "jrdcom.dlnaservice.IDLNAManager"

.field static final TRANSACTION_getCurrentDevice:I = 0xa

.field static final TRANSACTION_getCurrentDeviceName:I = 0x4

.field static final TRANSACTION_getCurrentDeviceSupportMediaType:I = 0x6

.field static final TRANSACTION_getCurrentDeviceUid:I = 0x5

.field static final TRANSACTION_getDevicelist:I = 0x9

.field static final TRANSACTION_getPreviousFile:I = 0x21

.field static final TRANSACTION_getWifiName:I = 0x3

.field static final TRANSACTION_hasConnected:I = 0x8

.field static final TRANSACTION_isEnable:I = 0x7

.field static final TRANSACTION_mediaControlGetCurPlayPosition:I = 0x14

.field static final TRANSACTION_mediaControlGetMediaDuration:I = 0x13

.field static final TRANSACTION_mediaControlGetMediaInfo:I = 0x15

.field static final TRANSACTION_mediaControlGetPlayState:I = 0x12

.field static final TRANSACTION_mediaControlGetVolume:I = 0x10

.field static final TRANSACTION_mediaControlPause:I = 0xc

.field static final TRANSACTION_mediaControlPlay:I = 0xe

.field static final TRANSACTION_mediaControlPlayCurr:I = 0x1b

.field static final TRANSACTION_mediaControlPlayNext:I = 0x1c

.field static final TRANSACTION_mediaControlPlayPrev:I = 0x1d

.field static final TRANSACTION_mediaControlSearch:I = 0x16

.field static final TRANSACTION_mediaControlSeek:I = 0xf

.field static final TRANSACTION_mediaControlSetVolume:I = 0x11

.field static final TRANSACTION_mediaControlStop:I = 0xd

.field static final TRANSACTION_mediaControlStreamPlay:I = 0x1a

.field static final TRANSACTION_registerDLNACallBack:I = 0x1

.field static final TRANSACTION_restartWork:I = 0x1e

.field static final TRANSACTION_setCallbackListenerInner:I = 0x17

.field static final TRANSACTION_setCurrentDevice:I = 0xb

.field static final TRANSACTION_setPlayStateListenerInner:I = 0x19

.field static final TRANSACTION_setProgressListenerInner:I = 0x18

.field static final TRANSACTION_setWifiName:I = 0x2

.field static final TRANSACTION_startWork:I = 0x20

.field static final TRANSACTION_stopWork:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/IDLNAManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "jrdcom.dlnaservice.IDLNAManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljrdcom/dlnaservice/IDLNAManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ljrdcom/dlnaservice/IDLNAManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljrdcom/dlnaservice/IDLNAManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/IDLNACallBack;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljrdcom/dlnaservice/IDLNACallBack;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->registerDLNACallBack(Ljrdcom/dlnaservice/IDLNACallBack;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Ljrdcom/dlnaservice/IDLNACallBack;
    :sswitch_2
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->setWifiName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getWifiName()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getCurrentDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getCurrentDeviceUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getCurrentDeviceSupportMediaType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->isEnable()Z

    move-result v4

    .line 105
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v4           #_result:Z
    :sswitch_8
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->hasConnected()Z

    move-result v4

    .line 113
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v4           #_result:Z
    :sswitch_9
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v4

    .line 121
    .local v4, _result:[Ljrdcom/dlnaservice/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 127
    .end local v4           #_result:[Ljrdcom/dlnaservice/DeviceInfo;
    :sswitch_a
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getCurrentDevice(Ljava/lang/String;)Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v4

    .line 131
    .local v4, _result:Ljrdcom/dlnaservice/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v4, p3, v7}, Ljrdcom/dlnaservice/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 137
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljrdcom/dlnaservice/DeviceInfo;
    :sswitch_b
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 146
    sget-object v6, Ljrdcom/dlnaservice/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DeviceInfo;

    .line 152
    .local v0, _arg0:Ljrdcom/dlnaservice/DeviceInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->setCurrentDevice(Ljrdcom/dlnaservice/DeviceInfo;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:Ljrdcom/dlnaservice/DeviceInfo;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljrdcom/dlnaservice/DeviceInfo;
    goto :goto_1

    .line 159
    .end local v0           #_arg0:Ljrdcom/dlnaservice/DeviceInfo;
    :sswitch_c
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlPause(Ljava/lang/String;)Z

    move-result v4

    .line 163
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_d
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlStop(Ljava/lang/String;)Z

    move-result v4

    .line 173
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_e
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlPlay(Ljava/lang/String;)Z

    move-result v4

    .line 183
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_f
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 193
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlSeek(JLjava/lang/String;)Z

    move-result v4

    .line 195
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_10
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlGetVolume(Ljava/lang/String;)I

    move-result v4

    .line 205
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_11
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlSetVolume(ILjava/lang/String;)Z

    move-result v4

    .line 217
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_12
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlGetPlayState(Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_13
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlGetMediaDuration(Ljava/lang/String;)J

    move-result-wide v4

    .line 237
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 243
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:J
    :sswitch_14
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlGetCurPlayPosition(Ljava/lang/String;)J

    move-result-wide v4

    .line 247
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 253
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:J
    :sswitch_15
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlGetMediaInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 257
    .local v4, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 263
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/Map;
    :sswitch_16
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    move v0, v7

    .line 266
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlSearch(Z)Z

    move-result v4

    .line 267
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_a
    move v0, v6

    .line 265
    goto :goto_2

    .line 273
    :sswitch_17
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljrdcom/dlnaservice/ITVListener$Stub;->asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/ITVListener;

    move-result-object v0

    .line 276
    .local v0, _arg0:Ljrdcom/dlnaservice/ITVListener;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->setCallbackListenerInner(Ljrdcom/dlnaservice/ITVListener;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 282
    .end local v0           #_arg0:Ljrdcom/dlnaservice/ITVListener;
    :sswitch_18
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v2, v7

    .line 287
    .local v2, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->setProgressListenerInner(Ljava/lang/String;Z)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_b
    move v2, v6

    .line 286
    goto :goto_3

    .line 293
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    move v2, v7

    .line 298
    .restart local v2       #_arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->setPlayStateListenerInner(Ljava/lang/String;Z)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_c
    move v2, v6

    .line 297
    goto :goto_4

    .line 304
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlStreamPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 312
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v4, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 318
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1b
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlPlayCurr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 326
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1c
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 338
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlPlayNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 340
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v4, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1d
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->mediaControlPlayPrev(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 354
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 360
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1e
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->restartWork()Z

    move-result v4

    .line 362
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    if-eqz v4, :cond_11

    move v6, v7

    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v4           #_result:Z
    :sswitch_1f
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->stopWork()Z

    move-result v4

    .line 370
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v4, :cond_12

    move v6, v7

    :cond_12
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v4           #_result:Z
    :sswitch_20
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->startWork()Z

    move-result v4

    .line 378
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v4, :cond_13

    move v6, v7

    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 384
    .end local v4           #_result:Z
    :sswitch_21
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNAManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNAManager$Stub;->getPreviousFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
