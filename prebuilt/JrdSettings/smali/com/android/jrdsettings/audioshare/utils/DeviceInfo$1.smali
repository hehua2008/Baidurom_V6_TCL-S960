.class final Lcom/android/jrdsettings/audioshare/utils/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .locals 4
    .parameter "source"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, udn:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, state:I
    new-instance v3, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 117
    new-array v0, p1, [Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo$1;->newArray(I)[Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    move-result-object v0

    return-object v0
.end method
