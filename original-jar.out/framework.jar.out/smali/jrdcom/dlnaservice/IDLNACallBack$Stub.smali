.class public abstract Ljrdcom/dlnaservice/IDLNACallBack$Stub;
.super Landroid/os/Binder;
.source "IDLNACallBack.java"

# interfaces
.implements Ljrdcom/dlnaservice/IDLNACallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljrdcom/dlnaservice/IDLNACallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljrdcom/dlnaservice/IDLNACallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "jrdcom.dlnaservice.IDLNACallBack"

.field static final TRANSACTION_getCurrentDevice:I = 0x8

.field static final TRANSACTION_getCurrentDeviceName:I = 0x3

.field static final TRANSACTION_getCurrentDeviceSupportMediaType:I = 0x5

.field static final TRANSACTION_getCurrentDeviceUid:I = 0x4

.field static final TRANSACTION_getDevicelist:I = 0x7

.field static final TRANSACTION_getPreviousFile:I = 0x1f

.field static final TRANSACTION_getWifiName:I = 0x2

.field static final TRANSACTION_hasConnected:I = 0x6

.field static final TRANSACTION_mediaControlGetCurPlayPosition:I = 0x12

.field static final TRANSACTION_mediaControlGetMediaDuration:I = 0x11

.field static final TRANSACTION_mediaControlGetMediaInfo:I = 0x13

.field static final TRANSACTION_mediaControlGetPlayState:I = 0x10

.field static final TRANSACTION_mediaControlGetVolume:I = 0xe

.field static final TRANSACTION_mediaControlPause:I = 0xa

.field static final TRANSACTION_mediaControlPlay:I = 0xc

.field static final TRANSACTION_mediaControlPlayCurr:I = 0x19

.field static final TRANSACTION_mediaControlPlayNext:I = 0x1a

.field static final TRANSACTION_mediaControlPlayPrev:I = 0x1b

.field static final TRANSACTION_mediaControlSearch:I = 0x14

.field static final TRANSACTION_mediaControlSeek:I = 0xd

.field static final TRANSACTION_mediaControlSetVolume:I = 0xf

.field static final TRANSACTION_mediaControlStop:I = 0xb

.field static final TRANSACTION_mediaControlStreamPlay:I = 0x18

.field static final TRANSACTION_restartInnerWork:I = 0x1c

.field static final TRANSACTION_setCallbackListenerInner:I = 0x15

.field static final TRANSACTION_setCurrentDevice:I = 0x9

.field static final TRANSACTION_setPlayStateListenerInner:I = 0x17

.field static final TRANSACTION_setProgressListenerInner:I = 0x16

.field static final TRANSACTION_setWifiName:I = 0x1

.field static final TRANSACTION_startInnerWork:I = 0x1e

.field static final TRANSACTION_stopInnerWork:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/IDLNACallBack;
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
    const-string/jumbo v1, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljrdcom/dlnaservice/IDLNACallBack;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ljrdcom/dlnaservice/IDLNACallBack;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljrdcom/dlnaservice/IDLNACallBack$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->setWifiName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getWifiName()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getCurrentDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getCurrentDeviceUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getCurrentDeviceSupportMediaType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->hasConnected()Z

    move-result v4

    .line 96
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v4           #_result:Z
    :sswitch_7
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v4

    .line 104
    .local v4, _result:[Ljrdcom/dlnaservice/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 110
    .end local v4           #_result:[Ljrdcom/dlnaservice/DeviceInfo;
    :sswitch_8
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getCurrentDevice(Ljava/lang/String;)Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v4

    .line 114
    .local v4, _result:Ljrdcom/dlnaservice/DeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v4, p3, v7}, Ljrdcom/dlnaservice/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 120
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljrdcom/dlnaservice/DeviceInfo;
    :sswitch_9
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    sget-object v6, Ljrdcom/dlnaservice/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/DeviceInfo;

    .line 135
    .local v0, _arg0:Ljrdcom/dlnaservice/DeviceInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->setCurrentDevice(Ljrdcom/dlnaservice/DeviceInfo;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:Ljrdcom/dlnaservice/DeviceInfo;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljrdcom/dlnaservice/DeviceInfo;
    goto :goto_1

    .line 142
    .end local v0           #_arg0:Ljrdcom/dlnaservice/DeviceInfo;
    :sswitch_a
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlPause(Ljava/lang/String;)Z

    move-result v4

    .line 146
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_b
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlStop(Ljava/lang/String;)Z

    move-result v4

    .line 156
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_c
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlPlay(Ljava/lang/String;)Z

    move-result v4

    .line 166
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_d
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 176
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlSeek(JLjava/lang/String;)Z

    move-result v4

    .line 178
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_e
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlGetVolume(Ljava/lang/String;)I

    move-result v4

    .line 188
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_f
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlSetVolume(ILjava/lang/String;)Z

    move-result v4

    .line 200
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_10
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlGetPlayState(Ljava/lang/String;)I

    move-result v4

    .line 210
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 216
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_11
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlGetMediaDuration(Ljava/lang/String;)J

    move-result-wide v4

    .line 220
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 226
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:J
    :sswitch_12
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlGetCurPlayPosition(Ljava/lang/String;)J

    move-result-wide v4

    .line 230
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 236
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:J
    :sswitch_13
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlGetMediaInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 240
    .local v4, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 246
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/Map;
    :sswitch_14
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v0, v7

    .line 249
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlSearch(Z)Z

    move-result v4

    .line 250
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_9
    move v0, v6

    .line 248
    goto :goto_2

    .line 256
    :sswitch_15
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljrdcom/dlnaservice/ITVListener$Stub;->asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/ITVListener;

    move-result-object v0

    .line 259
    .local v0, _arg0:Ljrdcom/dlnaservice/ITVListener;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->setCallbackListenerInner(Ljrdcom/dlnaservice/ITVListener;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:Ljrdcom/dlnaservice/ITVListener;
    :sswitch_16
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    move v2, v7

    .line 270
    .local v2, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->setProgressListenerInner(Ljava/lang/String;Z)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_a
    move v2, v6

    .line 269
    goto :goto_3

    .line 276
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v2, v7

    .line 281
    .restart local v2       #_arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->setPlayStateListenerInner(Ljava/lang/String;Z)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_b
    move v2, v6

    .line 280
    goto :goto_4

    .line 287
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlStreamPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 295
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_19
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlPlayCurr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 309
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v4, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1a
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlPlayNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 323
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1b
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->mediaControlPlayPrev(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 337
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v4, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 343
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1c
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->restartInnerWork()Z

    move-result v4

    .line 345
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 351
    .end local v4           #_result:Z
    :sswitch_1d
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->stopInnerWork()Z

    move-result v4

    .line 353
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v4, :cond_11

    move v6, v7

    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    .end local v4           #_result:Z
    :sswitch_1e
    const-string/jumbo v8, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->startInnerWork()Z

    move-result v4

    .line 361
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v4, :cond_12

    move v6, v7

    :cond_12
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 367
    .end local v4           #_result:Z
    :sswitch_1f
    const-string/jumbo v6, "jrdcom.dlnaservice.IDLNACallBack"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljrdcom/dlnaservice/IDLNACallBack$Stub;->getPreviousFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
