.class public abstract Lcom/mediatek/common/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.telephony.ITelephonyEx"

.field static final TRANSACTION_getAdnStorageInfo:I = 0x4

.field static final TRANSACTION_getInternationalCardType:I = 0xb

.field static final TRANSACTION_getScAddressGemini:I = 0x8

.field static final TRANSACTION_getSmsDefaultSim:I = 0x7

.field static final TRANSACTION_isPhbReady:I = 0x5

.field static final TRANSACTION_isPhbReadyExt:I = 0x6

.field static final TRANSACTION_queryNetworkLock:I = 0x1

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0xc

.field static final TRANSACTION_setIccNetworkLockEnabled:I = 0x3

.field static final TRANSACTION_setLine1Number:I = 0xa

.field static final TRANSACTION_setScAddressGemini:I = 0x9

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyEx;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/mediatek/common/telephony/ITelephonyEx$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 49
    :sswitch_0
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v10, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v8

    .line 60
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v8, :cond_0

    .line 62
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(Ljava/lang/String;I)I

    move-result v8

    .line 78
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v8           #_result:I
    :sswitch_3
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->setIccNetworkLockEnabled(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v8

    .line 109
    .local v8, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 115
    .end local v1           #_arg0:I
    .end local v8           #_result:[I
    :sswitch_5
    const-string v10, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->isPhbReady()Z

    move-result v8

    .line 117
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v8, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v8           #_result:Z
    :sswitch_6
    const-string v10, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->isPhbReadyExt(I)Z

    move-result v8

    .line 127
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v8, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_7
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getSmsDefaultSim()I

    move-result v8

    .line 135
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v8           #_result:I
    :sswitch_8
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->setScAddressGemini(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_a
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->setLine1Number(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 170
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v8           #_result:I
    :sswitch_b
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getInternationalCardType(I)I

    move-result v8

    .line 180
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_c
    const-string v10, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v2, v9

    .line 191
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_3
    move v2, v0

    .line 190
    goto :goto_1

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
