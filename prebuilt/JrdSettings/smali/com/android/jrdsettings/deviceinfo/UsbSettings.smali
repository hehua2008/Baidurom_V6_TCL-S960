.class public Lcom/android/jrdsettings/deviceinfo/UsbSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_BICR:Ljava/lang/String; = "usb_bicr"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2


# instance fields
.field private mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mChargeExist:Z

.field private mCurrentToggles:Ljava/lang/String;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mPlugType:I

.field private mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private sdexist:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPlugType:I

    .line 69
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->sdexist:Z

    .line 74
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/jrdsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/jrdsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/deviceinfo/UsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/jrdsettings/deviceinfo/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 147
    .local v4, root:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 150
    :cond_0
    const v5, 0x7f06004b

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 151
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 153
    const-string v5, "usb_mtp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 154
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string v5, "usb_ptp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 157
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v5, "usb_ums"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 160
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-boolean v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->sdexist:Z

    if-nez v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    iput-boolean v8, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 168
    :cond_1
    const-string v5, "usb_charge"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 169
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v5, "usb_bicr"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 172
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    const-string v5, "ro.sys.usb.storage.type"

    const-string v6, "mtp"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, config:Ljava/lang/String;
    const-string v5, "mtp,mass_storage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iput-boolean v8, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 182
    :cond_2
    const-string v5, "ro.sys.usb.charging.only"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, chargeConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.charging.only: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 186
    const-string v5, "UsbSettings"

    const-string v6, "Usb Charge does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    iput-boolean v8, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 191
    :cond_3
    const-string v5, "ro.sys.usb.bicr"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, bicrConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.bicr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v5, "no"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    const-string v5, "UsbSettings"

    const-string v6, "Usb Bicr does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v5, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 197
    .local v1, cdromCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    iput-boolean v8, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 203
    .end local v1           #cdromCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    return-object v4
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, functions:Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 138
    .local v0, commandIndex:I
    if-lez v0, :cond_0

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 239
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 240
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 243
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 327
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_17

    .line 329
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    :cond_3
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 338
    :cond_4
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 356
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 357
    return-void

    .line 249
    :cond_6
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 251
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 252
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_7

    .line 253
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 255
    :cond_7
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_8

    .line 256
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 258
    :cond_8
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 261
    :cond_9
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->sdexist:Z

    if-nez v0, :cond_b

    .line 264
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 265
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 269
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_a

    .line 270
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 272
    :cond_a
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 277
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 278
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_c

    .line 279
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 281
    :cond_c
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_d

    .line 282
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 284
    :cond_d
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 289
    :cond_e
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 290
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 291
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 292
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_f

    .line 293
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 295
    :cond_f
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_10

    .line 296
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 298
    :cond_10
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 301
    :cond_11
    const-string v0, "bicr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 302
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 303
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 304
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_12

    .line 305
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 307
    :cond_12
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_13

    .line 308
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 310
    :cond_13
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 314
    :cond_14
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 315
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 316
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_15

    .line 317
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 319
    :cond_15
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_16

    .line 320
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 322
    :cond_16
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 342
    :cond_17
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 345
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_18

    .line 346
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    :cond_18
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_19

    .line 349
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 351
    :cond_19
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 210
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 362
    const-string v1, "UsbSettings"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :goto_0
    return v4

    .line 371
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 372
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 373
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 379
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_3

    .line 380
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 381
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 399
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto :goto_0

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_4

    .line 383
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 384
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_4
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_5

    .line 386
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 388
    const-string v1, "mass_storage"

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_5
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_6

    .line 390
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charging"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 392
    const-string v1, "charging"

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 393
    :cond_6
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "bicr"

    invoke-virtual {v1, v2, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 395
    const-string v1, "bicr"

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method
