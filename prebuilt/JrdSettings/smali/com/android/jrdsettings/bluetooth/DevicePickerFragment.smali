.class public final Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;
.super Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final TAG:Ljava/lang/String; = "DevicePickerFragment"


# instance fields
.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressCategory:Lcom/android/jrdsettings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment$1;-><init>(Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    const v1, 0x7f060016

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 74
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->setFilter(I)V

    .line 76
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 77
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 162
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902af

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 85
    const-string v1, "bt_device_list"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/ProgressCategory;

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/jrdsettings/ProgressCategory;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void

    .line 84
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 149
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 151
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 156
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 128
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-super {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 143
    invoke-super {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-super {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/ProgressCategory;->setNoDeviceFoundAdded(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 118
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 119
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 121
    iput-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 106
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/jrdsettings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 109
    :cond_0
    return-void
.end method
