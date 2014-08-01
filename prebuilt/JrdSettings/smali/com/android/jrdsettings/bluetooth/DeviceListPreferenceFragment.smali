.class public abstract Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/jrdsettings/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final PERFORMANCE_TAG:Ljava/lang/String; = "BtPerformanceTest"

.field private static final TAG:Ljava/lang/String; = "DeviceListPreferenceFragment"


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 66
    sget-object v0, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 67
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 204
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/ProgressCategory;->setProgress(Z)V

    .line 207
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 128
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 130
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    .line 131
    .local v0, cachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 133
    .end local v0           #cachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 175
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V

    .line 178
    .local v0, preference:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V

    .line 179
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method initDevicePreference(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 189
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 7
    .parameter "bluetoothState"

    .prologue
    .line 214
    const/16 v4, 0xd

    if-ne p1, v4, :cond_1

    .line 215
    const-string v4, "DeviceListPreferenceFragment"

    const-string v5, "BT state become to TURNING_OFF"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    .local v0, disableEndTime:J
    const-string v4, "BtPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][Bt] Bluetooth disable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v0           #disableEndTime:J
    :cond_2
    const/16 v4, 0xc

    if-ne p1, v4, :cond_0

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 226
    .local v2, enableEndTime:J
    const-string v4, "BtPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][Bt] Bluetooth enable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    .line 82
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    .line 88
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 90
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .parameter "cachedDevice"

    .prologue
    .line 159
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded, Device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already have preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create new preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    .line 193
    .local v0, preference:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter "btPreference"

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 118
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/jrdsettings/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 138
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 151
    :goto_0
    return v2

    .line 143
    :cond_0
    instance-of v3, p2, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 144
    check-cast v0, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;

    .line 145
    .local v0, btPreference:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 146
    .local v1, device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 151
    .end local v0           #btPreference:Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;
    .end local v1           #device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/jrdsettings/bluetooth/BluetoothCallback;)V

    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 199
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 201
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 124
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 125
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 95
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .parameter "filterType"

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 75
    return-void
.end method

.method final setFilter(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 71
    return-void
.end method
