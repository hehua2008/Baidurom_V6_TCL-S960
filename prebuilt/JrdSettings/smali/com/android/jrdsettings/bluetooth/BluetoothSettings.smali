.class public final Lcom/android/jrdsettings/bluetooth/BluetoothSettings;
.super Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field private static final LAUNCH_BT_ADVANCED_SETTINGS_ACTION:Ljava/lang/String; = "com.mediatek.bluetooth.settings.action.START_BT_ADV_SETTING"

.field private static final MENU_ID_ADVANCED_SETTING:I = 0x5

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x4

.field private static final MENU_ID_VISIBILITY_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 280
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 281
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 282
    invoke-virtual {p0, p3}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 286
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 270
    return-void
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 289
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 290
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 292
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 382
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 383
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 384
    :goto_1
    return-void

    .line 294
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 295
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 296
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 299
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 300
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020091

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 308
    :goto_2
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 309
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_1

    .line 313
    new-instance v4, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    .line 315
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 319
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 321
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->resetDiscoverableTimeout()V

    .line 324
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_5

    .line 325
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 329
    :goto_3
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0903b8

    sget-object v6, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 332
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 334
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 337
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_6

    .line 338
    new-instance v4, Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 342
    :goto_4
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0903b9

    sget-object v6, Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/jrdsettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 345
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 346
    .local v1, numberOfAvailableDevices:I
    iput-boolean v8, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 348
    if-nez v1, :cond_2

    .line 349
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    iput-boolean v9, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 353
    :cond_2
    if-nez v2, :cond_3

    .line 354
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    if-ne p2, v8, :cond_7

    .line 356
    iput-boolean v9, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 357
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 364
    :cond_3
    :goto_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 306
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020098

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 327
    :cond_5
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 340
    .restart local v2       #numberOfPairedDevices:I
    :cond_6
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 359
    .restart local v1       #numberOfAvailableDevices:I
    :cond_7
    iget-boolean v4, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_3

    .line 360
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 368
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0902b7

    .line 369
    goto/16 :goto_0

    .line 372
    :pswitch_2
    const v0, 0x7f0903c2

    .line 373
    goto/16 :goto_0

    .line 376
    :pswitch_3
    const v0, 0x7f0902b6

    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 124
    const v5, 0x7f06000a

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 129
    .local v1, activity:Landroid/app/Activity;
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 131
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x207000b

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 134
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v5, v1, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    move-object v4, v1

    .line 135
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 136
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 139
    .local v3, padding:I
    invoke-virtual {v0, v7, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 142
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 149
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v5, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    invoke-direct {v5, v1, v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    .line 151
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method initDevicePreference(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 431
    .local v0, cachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 120
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 390
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    .line 223
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 201
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 202
    .local v1, isDiscovering:Z
    const-string v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateOptionsMenu, isDiscovering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v1, :cond_3

    const v2, 0x7f0903b6

    .line 205
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 208
    const/4 v3, 0x2

    const v5, 0x7f090299

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 211
    const/4 v3, 0x3

    const v5, 0x7f090290

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 214
    const/4 v3, 0x4

    const v5, 0x7f0902ae

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    invoke-static {}, Landroid/bluetooth/ConfigHelper;->isAdvanceSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    const/4 v3, 0x5

    const v5, 0x7f090012

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 222
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_2
    move v0, v4

    .line 200
    goto :goto_1

    .line 203
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_3
    const v2, 0x7f0903b5

    goto :goto_2

    .restart local v2       #textId:I
    :cond_4
    move v5, v4

    .line 205
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 195
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 403
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 404
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 275
    invoke-super {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/jrdsettings/bluetooth/BluetoothDevicePreference;)V

    .line 276
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 229
    :pswitch_0
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 235
    :pswitch_1
    new-instance v4, Lcom/android/jrdsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v4}, Lcom/android/jrdsettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "rename device"

    invoke-virtual {v4, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_2
    new-instance v4, Lcom/android/jrdsettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v4}, Lcom/android/jrdsettings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "visibility timeout"

    invoke-virtual {v4, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, i:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.settings.action.START_BT_ADV_SETTING"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v3, 0x0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->pause()V

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 182
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->resume()V

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 170
    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 394
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 397
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 398
    return-void
.end method
