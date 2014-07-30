.class public abstract Ljrdcom/dlnaservice/ITVListener$Stub;
.super Landroid/os/Binder;
.source "ITVListener.java"

# interfaces
.implements Ljrdcom/dlnaservice/ITVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljrdcom/dlnaservice/ITVListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljrdcom/dlnaservice/ITVListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "jrdcom.dlnaservice.ITVListener"

.field static final TRANSACTION_onPlayStateChanged:I = 0x4

.field static final TRANSACTION_onProgressChanged:I = 0x1

.field static final TRANSACTION_onSeekStart:I = 0x2

.field static final TRANSACTION_onSeekStop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "jrdcom.dlnaservice.ITVListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljrdcom/dlnaservice/ITVListener;
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
    const-string/jumbo v1, "jrdcom.dlnaservice.ITVListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljrdcom/dlnaservice/ITVListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ljrdcom/dlnaservice/ITVListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljrdcom/dlnaservice/ITVListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ljrdcom/dlnaservice/ITVListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "jrdcom.dlnaservice.ITVListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "jrdcom.dlnaservice.ITVListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 53
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg2:J
    move-object v0, p0

    .line 54
    invoke-virtual/range {v0 .. v5}, Ljrdcom/dlnaservice/ITVListener$Stub;->onProgressChanged(Ljava/lang/String;JJ)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 56
    goto :goto_0

    .line 60
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:J
    .end local v4           #_arg2:J
    :sswitch_2
    const-string/jumbo v0, "jrdcom.dlnaservice.ITVListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljrdcom/dlnaservice/ITVListener$Stub;->onSeekStart()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 63
    goto :goto_0

    .line 67
    :sswitch_3
    const-string/jumbo v0, "jrdcom.dlnaservice.ITVListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljrdcom/dlnaservice/ITVListener$Stub;->onSeekStop()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 70
    goto :goto_0

    .line 74
    :sswitch_4
    const-string/jumbo v0, "jrdcom.dlnaservice.ITVListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Ljrdcom/dlnaservice/ITVListener$Stub;->onPlayStateChanged(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 81
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
