.class public abstract Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;
.super Landroid/os/Binder;
.source "ISimCardAuthenticationManager.java"

# interfaces
.implements Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.orange.authentication.simcard.ISimCardAuthenticationManager"

.field static final TRANSACTION_akaAuthentication:I = 0x3

.field static final TRANSACTION_checkPermission:I = 0x4

.field static final TRANSACTION_getSimCardType:I = 0x1

.field static final TRANSACTION_gsmAuthentication:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;
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
    const-string v1, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;->getSimCardType()I

    move-result v3

    .line 49
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v3           #_result:I
    :sswitch_2
    const-string v6, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 58
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;->gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    move-result-object v3

    .line 59
    .local v3, _result:Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v3, p3, v5}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0           #_arg0:[B
    .end local v3           #_result:Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    :sswitch_3
    const-string v6, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 75
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 77
    .local v1, _arg1:[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, _arg2:Ljava/util/List;
    invoke-virtual {p0, v0, v1, v2}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;->akaAuthentication([B[BLjava/util/List;)Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;

    move-result-object v3

    .line 79
    .local v3, _result:Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v3, p3, v5}, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 92
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:Ljava/util/List;
    .end local v3           #_result:Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    :sswitch_4
    const-string v6, "com.orange.authentication.simcard.ISimCardAuthenticationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    .line 96
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
