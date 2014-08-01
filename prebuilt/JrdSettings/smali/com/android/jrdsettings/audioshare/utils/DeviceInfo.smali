.class public Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_STATE_CONNECTING:I = 0x1

.field public static final DEVICE_STATE_ERROR:I = 0x2

.field public static final DEVICE_STATE_IDEL:I = 0x0

.field public static final DEVICE_STATE_PLAYING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"


# instance fields
.field private mName:Ljava/lang/String;

.field private mState:I

.field private mUdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo$1;

    invoke-direct {v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "udn"

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "udn"
    .parameter "name"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "udn"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mUdn:Ljava/lang/String;

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p3}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 102
    instance-of v0, p1, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mUdn:Ljava/lang/String;

    check-cast p1, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    .end local p1
    iget-object v1, p1, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mUdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mState:I

    return v0
.end method

.method public getUdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mState:I

    .line 88
    :goto_0
    iput p1, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mState:I

    .line 89
    return-void

    .line 83
    :pswitch_0
    iput p1, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mState:I

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mUdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
