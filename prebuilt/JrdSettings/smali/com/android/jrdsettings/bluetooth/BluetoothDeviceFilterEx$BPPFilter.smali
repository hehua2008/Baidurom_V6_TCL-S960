.class final Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$BPPFilter;
.super Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BPPFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$BPPFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 3
    .parameter "uuids"
    .parameter "btClass"

    .prologue
    const/4 v0, 0x1

    .line 85
    const-string v1, "BluetoothDeviceFilterEx"

    const-string v2, "Enter BPPFilter to matches"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz p1, :cond_1

    .line 87
    sget-object v1, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
