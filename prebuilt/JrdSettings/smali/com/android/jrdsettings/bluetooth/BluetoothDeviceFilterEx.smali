.class public final Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$BPPFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$BIPFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
    }
.end annotation


# static fields
.field static final BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceFilterEx"

.field private static final mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BppReceiver:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 40
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BipResponder:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 42
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->Proximity:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 44
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$1;

    invoke-direct {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx$1;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->mFilterMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static getFilterEx(I)Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 2
    .parameter "filterType"

    .prologue
    .line 54
    sget-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->mFilterMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    return-object v0
.end method
