.class public abstract Landroid/net/wifi/NvRAMAgent$Stub;
.super Landroid/os/Binder;
.source "NvRAMAgent.java"

# interfaces
.implements Landroid/net/wifi/NvRAMAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/NvRAMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/NvRAMAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "NvRAMAgent"

.field static final TRANSACTION_readFile:I = 0x1

.field static final TRANSACTION_writeFile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "NvRAMAgent"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/NvRAMAgent;
    .locals 2
    .parameter "obj"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v1, "NvRAMAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/NvRAMAgent;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Landroid/net/wifi/NvRAMAgent;

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Landroid/net/wifi/NvRAMAgent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/NvRAMAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 89
    :sswitch_0
    const-string v4, "NvRAMAgent"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :sswitch_1
    const-string v4, "NvRAMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/NvRAMAgent$Stub;->readFile(I)[B

    move-result-object v2

    .line 98
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:I
    .end local v2           #_result:[B
    :sswitch_2
    const-string v4, "NvRAMAgent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 109
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/NvRAMAgent$Stub;->writeFile(I[B)I

    move-result v2

    .line 110
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
