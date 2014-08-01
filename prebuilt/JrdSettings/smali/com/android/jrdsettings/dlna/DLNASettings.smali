.class public Lcom/android/jrdsettings/dlna/DLNASettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "DLNASettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# static fields
.field static final DEBUG:Z = true

.field public static final DEVICE_STATUS_DISABLED:I = 0x0

.field public static final DEVICE_STATUS_DISABLING:I = 0x3

.field public static final DEVICE_STATUS_ENABLED:I = 0x1

.field public static final DEVICE_STATUS_ENABLING:I = 0x2

.field private static final DISCLAIMER_DIALOG_ID:I = 0x0

.field public static final DLNA_MODE_ON:Ljava/lang/String; = "dlna_mode_on"

.field private static final MENU_ID_HELP:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field public static final MSG_CANCEL:I = 0x2

.field public static final MSG_STARTCONNECT:I = 0x1

.field private static final MULTI_SCREEN_FIRST_TIME:Ljava/lang/String; = "multi_screen_first_time"

.field private static final TAG:Ljava/lang/String; = "DLNASettings"


# instance fields
.field mActionBarSwitch:Landroid/widget/Switch;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDLNAEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

.field private mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

.field mDLNAReciver:Landroid/content/BroadcastReceiver;

.field private mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljrdcom/dlnaservice/DeviceInfo;",
            "Lcom/android/jrdsettings/dlna/DLNADevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mNeedStartScan:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mScanEnable:I

.field private mWifiEnable:Z

.field private prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mNeedStartScan:Z

    .line 493
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNASettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/dlna/DLNASettings$2;-><init>(Lcom/android/jrdsettings/dlna/DLNASettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAReciver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/dlna/DLNASettings;)Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/dlna/DLNASettings;)Ljrdcom/dlnaservice/DLNAManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/dlna/DLNASettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/dlna/DLNASettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/jrdsettings/dlna/DLNASettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mScanEnable:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/dlna/DLNASettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addCachedDevices()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 267
    const-string v6, "DLNASettings"

    const-string v8, "...........................................................addCachedDevices"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v6, Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8, v9}, Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    .line 272
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    const v8, 0x7f0901b5

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 273
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v8, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 276
    iget v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mScanEnable:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    iget-boolean v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z

    if-eqz v6, :cond_5

    .line 283
    iput-object v9, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    .line 284
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    if-eqz v6, :cond_0

    .line 285
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    invoke-virtual {v6}, Ljrdcom/dlnaservice/DLNAManager;->getDevicelist()[Ljrdcom/dlnaservice/DeviceInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    .line 288
    :cond_0
    const-string v8, "DLNASettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDeviceList size is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    array-length v6, v6

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    array-length v6, v6

    if-nez v6, :cond_4

    .line 291
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mEmptyView:Landroid/widget/TextView;

    const v8, 0x7f0901b7

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 292
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 294
    .local v5, pre:Landroid/preference/Preference;
    const v6, 0x7f04008e

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 295
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 323
    .end local v5           #pre:Landroid/preference/Preference;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v6, v7}, Lcom/android/jrdsettings/ProgressCategory;->setProgress(Z)V

    .line 336
    return-void

    :cond_3
    move v6, v7

    .line 288
    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    .local v0, arr$:[Ljrdcom/dlnaservice/DeviceInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 298
    .local v1, cachedDevice:Ljrdcom/dlnaservice/DeviceInfo;
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0, v6, v1}, Lcom/android/jrdsettings/dlna/DLNASettings;->onDeviceAdded(Landroid/preference/PreferenceCategory;Ljrdcom/dlnaservice/DeviceInfo;)V

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 303
    .end local v0           #arr$:[Ljrdcom/dlnaservice/DeviceInfo;
    .end local v1           #cachedDevice:Ljrdcom/dlnaservice/DeviceInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_5
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 304
    .restart local v5       #pre:Landroid/preference/Preference;
    iget-boolean v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z

    if-eqz v6, :cond_7

    .line 305
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "dlna_mode_on"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 307
    .local v2, currentState:I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 308
    const v6, 0x7f040090

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 317
    .end local v2           #currentState:I
    :goto_3
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->prefAttrsCat:Lcom/android/jrdsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 310
    .restart local v2       #currentState:I
    :cond_6
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mEmptyView:Landroid/widget/TextView;

    const v8, 0x7f0901c0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 311
    const v6, 0x7f04008c

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_3

    .line 314
    .end local v2           #currentState:I
    :cond_7
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mEmptyView:Landroid/widget/TextView;

    const v8, 0x7f0901bf

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 315
    const v6, 0x7f04008f

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_3
.end method

.method private removeAllDevices()V
    .locals 3

    .prologue
    .line 257
    const-string v1, "DLNASettings"

    const-string v2, "...........................................................removeAllDevices"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 260
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 261
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 263
    return-void
.end method

.method private updateContent()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "DLNASettings"

    const-string v1, "...........................................................updateContent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "DLNASettings"

    const-string v1, "The status is enabled, set the empty view null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mEmptyView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-direct {p0}, Lcom/android/jrdsettings/dlna/DLNASettings;->removeAllDevices()V

    .line 251
    invoke-direct {p0}, Lcom/android/jrdsettings/dlna/DLNASettings;->addCachedDevices()V

    .line 252
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 253
    return-void
.end method


# virtual methods
.method createDevicePreference(Landroid/preference/PreferenceCategory;Ljrdcom/dlnaservice/DeviceInfo;)V
    .locals 3
    .parameter "prefAttrsCat"
    .parameter "cachedDevice"

    .prologue
    .line 354
    const-string v1, "DLNASettings"

    const-string v2, "...........................................................createDevicePreference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/jrdsettings/dlna/DLNADevicePreference;-><init>(Landroid/content/Context;Ljrdcom/dlnaservice/DeviceInfo;Ljrdcom/dlnaservice/DLNAManager;)V

    .line 358
    .local v0, preference:Lcom/android/jrdsettings/dlna/DLNADevicePreference;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 208
    const-string v0, "DLNASettings"

    const-string v1, "...........................................................onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "DLNASettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mNeedStartScan:Z

    .line 214
    const-string v0, "DLNASettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedStartScan is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mNeedStartScan:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mEmptyView:Landroid/widget/TextView;

    .line 216
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 217
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const-string v6, "DLNASettings"

    const-string v7, "...........................................................onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v6, "dlna"

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljrdcom/dlnaservice/DLNAManager;

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    .line 141
    const-string v6, "DLNASettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...........................................................mDLNAManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAManager:Ljrdcom/dlnaservice/DLNAManager;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 146
    const v6, 0x7f060018

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 148
    .local v0, activity:Landroid/app/Activity;
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 149
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    instance-of v6, v0, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    move-object v5, v0

    .line 151
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 152
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 157
    .local v4, padding:I
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v10, v10, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 169
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v6, Lcom/android/jrdsettings/dlna/DLNAEnabler;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v6, v0, v7, v8}, Lcom/android/jrdsettings/dlna/DLNAEnabler;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/dlna/DLNAPreference;Landroid/widget/Switch;)V

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    .line 170
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 172
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mCm:Landroid/net/ConnectivityManager;

    .line 174
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dlna_mode_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mScanEnable:I

    .line 177
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v6, "android.intent.device_add"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v6, "android.intent.device_remove"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v6, "android.intent.DLNA_SWITCH"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, isFirstTime:Z
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "multi_screen_first_time"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "multi_screen_first_time"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 194
    :goto_0
    if-eqz v3, :cond_2

    .line 195
    const/4 v3, 0x0

    .line 196
    iget-object v6, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 197
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "multi_screen_first_time"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/jrdsettings/dlna/DLNAHelp;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 202
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 192
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    const v0, 0x7f0901b8

    .line 393
    .local v0, textId:I
    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mScanEnable:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 404
    const/4 v1, 0x2

    const v4, 0x7f0901c2

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0200b7

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 409
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 410
    return-void

    :cond_0
    move v1, v3

    .line 393
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDeviceList:[Ljrdcom/dlnaservice/DeviceInfo;

    .line 488
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 489
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    return-void
.end method

.method public onDeviceAdded(Landroid/preference/PreferenceCategory;Ljrdcom/dlnaservice/DeviceInfo;)V
    .locals 2
    .parameter "prefAttrsCat"
    .parameter "cachedDevice"

    .prologue
    .line 341
    const-string v0, "DLNASettings"

    const-string v1, "...........................................................onDeviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "DLNASettings"

    const-string v1, "The device has already on the screen, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/jrdsettings/dlna/DLNASettings;->createDevicePreference(Landroid/preference/PreferenceCategory;Ljrdcom/dlnaservice/DeviceInfo;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 449
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 416
    :pswitch_0
    new-instance v0, Lcom/android/jrdsettings/dlna/DLNASettings$1;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/dlna/DLNASettings$1;-><init>(Lcom/android/jrdsettings/dlna/DLNASettings;Landroid/view/MenuItem;)V

    .line 439
    .local v0, asy:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Integer;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 443
    .end local v0           #asy:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Integer;>;"
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/jrdsettings/dlna/DLNAHelp;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 366
    const-string v0, "DLNASettings"

    const-string v1, "...........................................................onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->pause()V

    .line 371
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 377
    const-string v1, "DLNASettings"

    const-string v2, "...........................................................onPreferenceTreeClick"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    instance-of v1, p2, Lcom/android/jrdsettings/dlna/DLNADevicePreference;

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "DLNASettings"

    const-string v2, "...........................................................onPreferenceTreeClick2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 383
    check-cast v0, Lcom/android/jrdsettings/dlna/DLNADevicePreference;

    .line 384
    .local v0, wfdPreference:Lcom/android/jrdsettings/dlna/DLNADevicePreference;
    const/4 v1, 0x1

    .line 386
    .end local v0           #wfdPreference:Lcom/android/jrdsettings/dlna/DLNADevicePreference;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 222
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mDLNAEnabler:Lcom/android/jrdsettings/dlna/DLNAEnabler;

    invoke-virtual {v2}, Lcom/android/jrdsettings/dlna/DLNAEnabler;->resume()V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 228
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iput-boolean v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dlna_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, enable:I
    const-string v2, "DLNASettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...........................................................onResume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V

    .line 241
    return-void
.end method
