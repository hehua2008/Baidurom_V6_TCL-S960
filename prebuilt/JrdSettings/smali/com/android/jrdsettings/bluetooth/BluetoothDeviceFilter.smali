.class final Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field static final ALL_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter; = null

.field static final BONDED_DEVICE_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter; = null

.field private static final FILTERS:[Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceFilter"

.field static final UNBONDED_DEVICE_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 43
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static getFilter(I)Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 4
    .parameter "filterType"

    .prologue
    .line 69
    if-ltz p0, :cond_1

    sget-object v1, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 70
    sget-object v1, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v1, p0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilterEx;->getFilterEx(I)Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    .line 74
    .local v0, filterEx:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;
    if-nez v0, :cond_0

    .line 77
    const-string v1, "BluetoothDeviceFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid filter type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for device picker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
