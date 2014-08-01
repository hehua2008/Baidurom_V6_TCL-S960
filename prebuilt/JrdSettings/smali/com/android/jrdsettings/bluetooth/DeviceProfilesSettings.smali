.class public final Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# static fields
.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_RENAME_DEVICE:Ljava/lang/String; = "rename_device"

.field private static final KEY_UNPAIR:Ljava/lang/String; = "unpair"

.field private static final TAG:Ljava/lang/String; = "DeviceProfilesSettings"


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

.field private mRenameDeviceNamePref:Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    .prologue
    .line 180
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    .line 181
    .local v2, profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 182
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 184
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 185
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    .line 285
    .local v0, device:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 287
    const v6, 0x7f0902a8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    :cond_0
    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f09029d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f09029e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    .line 304
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/jrdsettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 306
    return-void
.end method

.method private createProfilePreference(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 207
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 210
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 211
    invoke-interface {p1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 212
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 215
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 224
    invoke-direct {p0, v1, p1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    .line 226
    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 353
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-object v2

    .line 356
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private noteStateNotSaved()V
    .locals 8

    .prologue
    .line 379
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 381
    .local v0, cls:Ljava/lang/Class;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 382
    const-string v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v5, "Activity"

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    const-string v5, "mFragments"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 385
    .local v2, fragmentManagerField:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 386
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 387
    .local v3, fragmentMgr:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 388
    const-string v5, "noteStateNotSaved"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 389
    .local v4, noteStateNotSavedMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #fragmentManagerField:Ljava/lang/reflect/Field;
    .end local v3           #fragmentMgr:Ljava/lang/Object;
    .end local v4           #noteStateNotSavedMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception happens, exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onProfileClicked(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V
    .locals 6
    .parameter "profile"
    .parameter "profilePref"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 263
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 264
    .local v2, status:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    .line 267
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    .line 279
    :goto_1
    return-void

    .end local v1           #isConnected:Z
    :cond_0
    move v1, v4

    .line 264
    goto :goto_0

    .line 270
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-interface {p1, v0, v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 273
    invoke-direct {p0, p2, p1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 275
    :cond_2
    invoke-interface {p1, v0, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 276
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 318
    return-void
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 347
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    invoke-interface {p2, v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 349
    invoke-interface {p2, v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 350
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 321
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    .line 322
    .local v1, profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 323
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_0

    .line 324
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 327
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 330
    .end local v1           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    .line 331
    .restart local v1       #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 332
    .local v2, profilePref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 333
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 337
    .end local v1           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_3
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 338
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 189
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 372
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 105
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const v4, 0x7f060009

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 107
    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 108
    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    .line 110
    if-nez v1, :cond_1

    .line 111
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 134
    :goto_1
    return-void

    .line 101
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 115
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    new-instance v4, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    .line 117
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 119
    .local v2, deviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    .line 120
    invoke-virtual {v2, v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    .line 121
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_2

    .line 122
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    .line 127
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, deviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 143
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 310
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 176
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x1

    .end local p1
    :cond_0
    :goto_0
    return v1

    .line 249
    .restart local p1
    .restart local p2
    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 251
    .local v0, prof:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-direct {p0, v0, p1}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 231
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, key:Ljava/lang/String;
    const-string v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 238
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->noteStateNotSaved()V

    .line 239
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 240
    const/4 v1, 0x1

    .line 243
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
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 155
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 156
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p0}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 157
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 160
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 161
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 164
    .local v1, d:Landroid/app/Dialog;
    instance-of v3, v1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 165
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 166
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    .end local v0           #b:Landroid/widget/Button;
    :cond_1
    return-void

    .line 166
    .restart local v0       #b:Landroid/widget/Button;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    return-void
.end method
