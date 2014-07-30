.class public Ljrdcom/dlnaservice/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljrdcom/dlnaservice/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mIp:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mUdn:Ljava/lang/String;

.field mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljrdcom/dlnaservice/DeviceInfo$1;

    invoke-direct {v0}, Ljrdcom/dlnaservice/DeviceInfo$1;-><init>()V

    sput-object v0, Ljrdcom/dlnaservice/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUid:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mIp:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUdn:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ip"
    .parameter "name"
    .parameter "udn"
    .parameter "type"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ljrdcom/dlnaservice/DeviceInfo;->mIp:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Ljrdcom/dlnaservice/DeviceInfo;->mName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUdn:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUid:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "mIP"

    .prologue
    .line 38
    iput-object p1, p0, Ljrdcom/dlnaservice/DeviceInfo;->mIp:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    .line 32
    iput-object p1, p0, Ljrdcom/dlnaservice/DeviceInfo;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "mUid"

    .prologue
    .line 26
    iput-object p1, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUid:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 58
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Ljrdcom/dlnaservice/DeviceInfo;->mUdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
