.class public Lcom/android/jrdsettings/deviceinfo/Memory;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/jrdsettings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field private static final DEFAULT_WRITE_CATEGORY_KEY:Ljava/lang/String; = "memory_select"

.field private static final DLG_CONFIRM_MOUNT:I = 0x3

.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field public static final H_UNMOUNT_ERROR:I = 0xb

.field private static final KEY_APK_INSTALLER:Ljava/lang/String; = "apk_installer"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final MESSAGE_DELAY_TIME:I = 0xc8

.field private static final ORDER_PHONE_STORAGE:I = -0x3

.field private static final ORDER_SD_CARD:I = -0x2

.field private static final ORDER_USB_OTG:I = -0x1

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/mnt/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mApkInstallePref:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDefaultWriteDiskCategoryIsPresent:Z

.field private mDefaultWritePath:Ljava/lang/String;

.field private mDefaultWritePathAdded:[Z

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mIsApkInstallerExist:Z

.field private mIsInstLocSupport:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mIsUsbCableInserted:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnMountErrorHandler:Landroid/os/Handler;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVolumePrefCategory:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 103
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    .line 112
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 153
    iput-boolean v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z

    .line 156
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$1;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iput-boolean v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteDiskCategoryIsPresent:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsInstLocSupport:Z

    .line 286
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$2;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUnMountErrorHandler:Landroid/os/Handler;

    .line 359
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/Memory$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$3;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 499
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/Memory$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$4;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 762
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/Memory$9;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$9;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->doMount()V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/jrdsettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUnMountErrorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/deviceinfo/Memory;)[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/deviceinfo/Memory;Landroid/content/Intent;[Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/deviceinfo/Memory;->resetInstallLocation(Landroid/content/Intent;[Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/deviceinfo/Memory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/deviceinfo/Memory;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/deviceinfo/Memory;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/deviceinfo/Memory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/jrdsettings/deviceinfo/Memory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z

    return p1
.end method

.method private addCategory(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    invoke-virtual {p1}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 302
    return-void
.end method

.method private doMount()V
    .locals 2

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 663
    .local v0, mountService:Landroid/os/storage/IMountService;
    new-instance v1, Lcom/android/jrdsettings/deviceinfo/Memory$8;

    invoke-direct {v1, p0, v0}, Lcom/android/jrdsettings/deviceinfo/Memory$8;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 680
    return-void
.end method

.method private doUnmount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v1, :cond_0

    .line 579
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 585
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 587
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v1, Lcom/android/jrdsettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 588
    sget-object v1, Lcom/android/jrdsettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    sget-object v1, Lcom/android/jrdsettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090558

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    new-instance v1, Lcom/android/jrdsettings/deviceinfo/Memory$7;

    invoke-direct {v1, p0, v0}, Lcom/android/jrdsettings/deviceinfo/Memory$7;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 606
    return-void

    .line 582
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090556

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private dynamicShowDefaultWriteCategory()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 769
    const-string v5, "MemorySettings"

    const-string v6, "dynamicShowDefaultWriteCategory()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, externalStoragePath:Ljava/lang/String;
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external storage path= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 774
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 775
    .local v4, writePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, volumeState:Ljava/lang/String;
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " volume state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 780
    const-string v5, "MemorySettings"

    const-string v6, "set the pref sd card order"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 790
    :goto_1
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 791
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v5, v5, v1

    if-nez v5, :cond_0

    .line 792
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 794
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v9, v5, v1

    .line 773
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    :cond_1
    const-string v5, "/mnt/usbotg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 783
    const-string v5, "MemorySettings"

    const-string v6, "set the pref usb otg order"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_1

    .line 786
    :cond_2
    const-string v5, "MemorySettings"

    const-string v6, "set the pref phone storage order"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_1

    .line 797
    :cond_3
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_0

    .line 798
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 799
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 801
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v8, v5, v1

    goto :goto_2

    .line 805
    .end local v3           #volumeState:Ljava/lang/String;
    .end local v4           #writePath:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 806
    .local v2, numberOfWriteDisk:I
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfWriteDisk : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-boolean v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteDiskCategoryIsPresent:Z

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 808
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 809
    iput-boolean v8, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteDiskCategoryIsPresent:Z

    .line 815
    :cond_5
    :goto_3
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    .line 816
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get default path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v1, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 818
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 819
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    invoke-virtual {v5, v9}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 820
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    iput-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 817
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 810
    :cond_6
    iget-boolean v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteDiskCategoryIsPresent:Z

    if-nez v5, :cond_5

    if-lez v2, :cond_5

    .line 811
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 812
    iput-boolean v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteDiskCategoryIsPresent:Z

    goto :goto_3

    .line 822
    :cond_7
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_5

    .line 825
    :cond_8
    return-void
.end method

.method private dynamicUpdateUnmountDlg()V
    .locals 6

    .prologue
    .line 344
    const-string v3, "MemorySettings"

    const-string v4, "dynamicUpdateUnmountDlg()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 357
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :goto_1
    return-void

    .line 346
    .restart local v1       #volumeState:Ljava/lang/String;
    .restart local v2       #writePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "current status is MTP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 906
    .local v0, selectedLocation:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 907
    const-string v1, "device"

    .line 914
    :goto_0
    return-object v1

    .line 908
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 909
    const-string v1, "sdcard"

    goto :goto_0

    .line 910
    :cond_1
    if-nez v0, :cond_2

    .line 911
    const-string v1, "auto"

    goto :goto_0

    .line 914
    :cond_2
    const-string v1, "auto"

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 445
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 446
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 447
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 452
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 449
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 444
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 614
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 615
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/jrdsettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 616
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 630
    :cond_0
    return v3
.end method

.method private initApkInstallerPreference()V
    .locals 3

    .prologue
    .line 831
    const-string v1, "com.mediatek.apkinstaller"

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/Memory;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    .line 832
    iget-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    if-eqz v1, :cond_0

    .line 833
    const-string v1, "apk_installer"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    .line 834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 835
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.apkinstaller"

    const-string v2, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 843
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "apk_installer"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initInstallLocationPreference([Landroid/os/storage/StorageVolume;)V
    .locals 7
    .parameter "volumes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 922
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "set_install_location"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsInstLocSupport:Z

    .line 924
    iget-boolean v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsInstLocSupport:Z

    if-eqz v3, :cond_3

    .line 925
    const-string v3, "app_install_location"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    .line 926
    const-string v2, ""

    .line 927
    .local v2, whereStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 928
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    aget-object v3, p1, v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 934
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 935
    .local v0, entries:[Ljava/lang/CharSequence;
    aput-object v2, v0, v4

    .line 936
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 937
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v4, Lcom/android/jrdsettings/deviceinfo/Memory$10;

    invoke-direct {v4, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$10;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 951
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #i:I
    .end local v2           #whereStr:Ljava/lang/String;
    :goto_1
    return-void

    .line 927
    .restart local v1       #i:I
    .restart local v2       #whereStr:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    .end local v1           #i:I
    .end local v2           #whereStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "app_install_location"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private initVolumeList([Landroid/os/storage/StorageVolume;)Ljava/util/List;
    .locals 6
    .parameter "volumes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/storage/StorageVolume;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v1, storageVolumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1018
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,emulated is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v2, "not_present"

    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1022
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    :cond_1
    return-object v1
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 307
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 308
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 867
    if-eqz p1, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 870
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    const/4 v2, 0x1

    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 871
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 876
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, "MemorySettings"

    const-string v4, "the package name cannot be null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mount()V
    .locals 2

    .prologue
    .line 653
    sget-object v0, Lcom/android/jrdsettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v1, "/storage/sdcard1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsRemovableVolume:Z

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->doMount()V

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 684
    .local v0, category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 686
    .end local v0           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private resetInstallLocation(Landroid/content/Intent;[Landroid/os/storage/StorageVolume;)V
    .locals 6
    .parameter "intent"
    .parameter "newVolumes"

    .prologue
    .line 958
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsInstLocSupport:Z

    if-nez v4, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    const-string v4, "MemorySettings"

    const-string v5, "resetInstallLocation()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v4, "SD_EXIST"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 963
    .local v2, isExternalSD:Z
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 966
    if-eqz v2, :cond_0

    .line 968
    const-string v3, ""

    .line 969
    .local v3, sdDescription:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 970
    aget-object v4, p2, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 973
    aget-object v4, p2, v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 978
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 979
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 980
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 969
    .end local v0           #entries:[Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 611
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 636
    :try_start_0
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 647
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 644
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public dynamicUpdateAPKInstaller()V
    .locals 7

    .prologue
    .line 849
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsApkInstallerExist:Z

    if-nez v4, :cond_0

    .line 861
    :goto_0
    return-void

    .line 851
    :cond_0
    const/4 v0, 0x0

    .line 852
    .local v0, flag:Z
    const-string v4, "MemorySettings"

    const-string v5, "dynamicUpdateAPKInstaller()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 854
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, writePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, volumeState:Ljava/lang/String;
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " volume state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-nez v0, :cond_1

    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 853
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 857
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 860
    .end local v2           #volumeState:Ljava/lang/String;
    .end local v3           #writePath:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public dynamicUpdateInstallLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 988
    iget-boolean v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsInstLocSupport:Z

    if-nez v3, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "dynamicUpdateInstallLocation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 992
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 997
    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 991
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1002
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_3
    const-string v3, "MemorySettings"

    const-string v4, "current status is not UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1007
    invoke-static {}, Lcom/android/jrdsettings/Utils;->isExSdcardInserted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1008
    const-string v3, "MemorySettings"

    const-string v4, "2SDCARD_SWAP feature , the external sd card is not mounted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 884
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 900
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 901
    return-void

    .line 888
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 892
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 196
    invoke-super/range {p0 .. p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 200
    .local v1, context:Landroid/content/Context;
    const-string v15, "usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/usb/UsbManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 202
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 205
    const v15, 0x7f060010

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    .line 208
    .local v14, volumes:[Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/jrdsettings/deviceinfo/Memory;->initVolumeList([Landroid/os/storage/StorageVolume;)Ljava/util/List;

    move-result-object v8

    .line 210
    .local v8, storageVolumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const-string v15, "memory_select"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 212
    move-object v2, v8

    .line 213
    .local v2, defaultWriteDiskVolumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 214
    const-string v15, "MemorySettings"

    const-string v16, "MultipleUsers platform, Default write disk just chose current user own volume"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeListAsUser()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    .line 216
    .local v11, userOwnVolumes:[Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/jrdsettings/deviceinfo/Memory;->initVolumeList([Landroid/os/storage/StorageVolume;)Ljava/util/List;

    move-result-object v2

    .line 219
    .end local v11           #userOwnVolumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v10, storageWritePathList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_1

    .line 221
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 222
    .local v12, volume:Landroid/os/storage/StorageVolume;
    new-instance v9, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v9, v15}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 223
    .local v9, storageWritePath:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, path:Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v9, v7}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #storageWritePath:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v12           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 231
    .local v4, length:I
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "default path group length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-array v15, v4, [Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v10, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 234
    new-array v15, v4, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    .line 241
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    .line 242
    .local v13, volumeSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0013

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 243
    .local v6, mIsOtgSupport:Z
    if-nez v6, :cond_2

    .line 244
    add-int/lit8 v13, v13, -0x1

    .line 250
    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v13, :cond_5

    .line 251
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 252
    .restart local v12       #volume:Landroid/os/storage/StorageVolume;
    const-string v15, "def_frm_is_sd_support"

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_3

    const/4 v15, 0x1

    if-eq v3, v15, :cond_4

    .line 254
    :cond_3
    const-string v15, "MemorySettings"

    const-string v16, "[sd + swap] support, add emulated category"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {v1, v12}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/jrdsettings/deviceinfo/Memory;->addCategory(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 250
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .end local v12           #volume:Landroid/os/storage/StorageVolume;
    :cond_5
    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->initApkInstallerPreference()V

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/jrdsettings/deviceinfo/Memory;->initInstallLocationPreference([Landroid/os/storage/StorageVolume;)V

    .line 275
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v5, mFilter:Landroid/content/IntentFilter;
    const-string v15, "com.mediatek.SD_SWAP"

    invoke-virtual {v5, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 281
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f090318

    const v3, 0x7f090645

    const/4 v1, 0x0

    .line 533
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 573
    :goto_0
    return-object v0

    .line 535
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090019

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/jrdsettings/deviceinfo/Memory$5;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$5;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_1

    const v0, 0x7f09001a

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f090552

    goto :goto_1

    :cond_1
    const v0, 0x7f090553

    goto :goto_2

    .line 552
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_2

    const v0, 0x7f09001b

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_3

    const v0, 0x7f09001c

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f090554

    goto :goto_3

    :cond_3
    const v0, 0x7f090555

    goto :goto_4

    .line 561
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090108

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/jrdsettings/deviceinfo/Memory$6;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/deviceinfo/Memory$6;-><init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 413
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 414
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 409
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 429
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/jrdsettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09055c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 438
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    const-class v0, Lcom/android/jrdsettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0315
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 390
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 391
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 394
    .local v0, category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 396
    .end local v0           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x0

    .line 751
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 755
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 756
    check-cast p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 757
    const/4 v0, 0x1

    .line 759
    :cond_1
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 458
    const-string v8, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 459
    invoke-static {p0}, Lcom/android/jrdsettings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    .line 496
    :cond_0
    :goto_0
    return v6

    .line 463
    :cond_1
    iget-object v8, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 464
    .local v0, category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 466
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 468
    :try_start_0
    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 469
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f090018

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 478
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 479
    .local v5, volume:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 480
    sput-object p2, Lcom/android/jrdsettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 481
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsRemovableVolume:Z

    .line 482
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, mIsRemovableVolume is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsRemovableVolume:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/jrdsettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 484
    sget-object v7, Lcom/android/jrdsettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v8, "/mnt/usbotg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUnmountingUsb:Z

    .line 485
    iget-object v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 488
    :cond_4
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->unmount()V

    goto/16 :goto_0

    .line 490
    :cond_5
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->mount()V

    goto/16 :goto_0

    .end local v0           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #state:Ljava/lang/String;
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    move v6, v7

    .line 496
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 418
    const v1, 0x7f0b0315

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 419
    .local v0, usb:Landroid/view/MenuItem;
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu, mIsUsbCableInserted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    iget-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    return-void

    .line 420
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 314
    const-string v3, "MemorySettings"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicUpdateUnmountDlg()V

    .line 329
    const-string v3, "MemorySettings"

    const-string v4, "Dynamic Update Install Location in OnResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicUpdateInstallLocation()V

    .line 333
    invoke-virtual {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicUpdateAPKInstaller()V

    .line 335
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    .line 337
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 338
    .local v0, category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 341
    .end local v0           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method
