.class abstract Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterEx.java"

# interfaces
.implements Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClassUuidFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;->matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result v0

    return v0
.end method

.method abstract matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
.end method
