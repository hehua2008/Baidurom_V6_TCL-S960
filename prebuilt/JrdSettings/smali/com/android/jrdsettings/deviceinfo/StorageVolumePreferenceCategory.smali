.class public Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field public static final KEY_CACHE:Ljava/lang/String; = "cache"

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_DETAILS:I = 0x2

.field private static final ORDER_STORAGE_LOW:I = -0x1

.field private static final ORDER_USAGE_BAR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageVolumePreferenceCategory"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/mnt/usbotg"


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsInternalSD:Z

.field private mIsPrimary:Z

.field private mIsUsbStorage:Z

.field private mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 698
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 152
    iput-object p2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 153
    invoke-static {p1, p2}, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 156
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 157
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 160
    if-nez p2, :cond_1

    .line 164
    const v0, 0x7f090640

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/usbotg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    .line 172
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 173
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    .line 174
    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 146
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;
    .locals 2
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 181
    new-instance v0, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIsSwappingState()Z
    .locals 4

    .prologue
    .line 824
    const-string v1, "sys.sd.swapping"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 826
    .local v0, isSwapping:Z
    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperty [sys.sd.swapping] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .parameter "excluding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 782
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 783
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 785
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 788
    :cond_1
    return-object v1
.end method

.method private getVolumeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "stringId"
    .parameter "description"

    .prologue
    .line 793
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    .line 794
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    :cond_1
    :goto_0
    return-object v1

    .line 797
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090267

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, sdCardString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 802
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 804
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 808
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 809
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 811
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not replace SD card, Replace SD, str is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 815
    .local v2, tr:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 657
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;->measure()V

    .line 658
    return-void
.end method

.method private resetPreferences()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_8

    .line 394
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :cond_8
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    :cond_9
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 404
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 407
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 408
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 409
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 410
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 411
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 412
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 414
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 415
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_a

    .line 416
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_a
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 561
    .local v4, total:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 562
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method private updateLowStoragePreference()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/jrdsettings/Utils;->isSomeStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 348
    .local v0, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 350
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 351
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v2, 0x7f090559

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 352
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v2, 0x7f09055a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 353
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 361
    .end local v0           #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    :goto_0
    return-void

    .line 354
    .restart local v0       #pm:Landroid/content/pm/IPackageManager;
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .parameter "pref"
    .parameter "size"

    .prologue
    .line 646
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 647
    invoke-direct {p0, p2, p3}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 648
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 649
    .local v0, order:I
    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 653
    .end local v0           #order:I
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 10

    .prologue
    const v9, 0x7f09054c

    const v8, 0x7f09054b

    const v7, 0x7f090020

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 425
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1

    .line 426
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 434
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, state:Ljava/lang/String;
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreferencesFromState, state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 438
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    const v5, 0x7f09053e

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 439
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_2

    .line 440
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "unmounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 449
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    :cond_3
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 454
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 455
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v4, :cond_a

    .line 456
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f09001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v4, :cond_12

    const-string v4, "mtp"

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ptp"

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 516
    :cond_6
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 517
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 519
    :cond_7
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090551

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    :cond_8
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 525
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090551

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 443
    :cond_9
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    const v5, 0x7f09053d

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 461
    :cond_a
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f090548

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f090549

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 467
    :cond_b
    const-string v4, "unmounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "nofs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "unmountable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 472
    :cond_c
    const/4 v0, 0x1

    .line 474
    .local v0, enable:Z
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v4, :cond_d

    move v0, v2

    .line 477
    :goto_3
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v4, :cond_f

    .line 479
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    .end local v0           #enable:Z
    :goto_4
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 508
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_5

    .line 510
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 474
    .restart local v0       #enable:Z
    :cond_d
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getIsSwappingState()Z

    move-result v4

    if-nez v4, :cond_e

    move v0, v2

    goto :goto_3

    :cond_e
    move v0, v3

    goto :goto_3

    .line 485
    :cond_f
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v9, v5}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 492
    .end local v0           #enable:Z
    :cond_10
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 493
    iget-boolean v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v4, :cond_11

    .line 494
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 500
    :cond_11
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v8, v5}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f09054a

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 527
    :cond_12
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 529
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f09054e

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 20

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 189
    .local v5, context:Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 194
    .local v8, currentUser:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v12

    .line 195
    .local v12, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_2

    const/4 v14, 0x1

    .line 197
    .local v14, showUsers:Z
    :goto_0
    new-instance v16, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v16, v0

    const/16 v17, -0x2

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOrder(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 201
    const v16, 0x7f09053f

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 202
    const v16, 0x7f09053d

    const v17, 0x7f0d0007

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    const v16, 0x7f090541

    const v17, 0x7f0d0008

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 207
    const v16, 0x7f090544

    const v17, 0x7f0d000a

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 208
    const v16, 0x7f090545

    const v17, 0x7f0d000b

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 209
    const v16, 0x7f090543

    const v17, 0x7f0d0009

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 210
    const v16, 0x7f090547

    const v17, 0x7f0d000c

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 211
    const v16, 0x7f090546

    const v17, 0x7f0d000d

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    const-string v17, "cache"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_0
    const/4 v13, 0x1

    .line 216
    .local v13, showDetails:Z
    :goto_1
    if-eqz v13, :cond_5

    .line 217
    if-eqz v14, :cond_1

    .line 218
    new-instance v16, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    if-eqz v14, :cond_5

    .line 229
    new-instance v16, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v17, 0x7f090563

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, count:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 233
    .local v11, info:Landroid/content/pm/UserInfo;
    add-int/lit8 v7, v6, 0x1

    .end local v6           #count:I
    .local v7, count:I
    rem-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_4

    const v4, 0x7f0d000e

    .line 235
    .local v4, colorRes:I
    :goto_3
    new-instance v15, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v4, v2}, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 237
    .local v15, userPref:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v6, v7

    .line 239
    .end local v7           #count:I
    .restart local v6       #count:I
    goto :goto_2

    .line 190
    .end local v4           #colorRes:I
    .end local v6           #count:I
    .end local v8           #currentUser:Landroid/content/pm/UserInfo;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    .end local v12           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v13           #showDetails:Z
    .end local v14           #showUsers:Z
    .end local v15           #userPref:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v9

    .line 191
    .local v9, e:Landroid/os/RemoteException;
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Failed to get current user"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 195
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v8       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v12       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 215
    .restart local v14       #showUsers:Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 233
    .restart local v7       #count:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #info:Landroid/content/pm/UserInfo;
    .restart local v13       #showDetails:Z
    :cond_4
    const v4, 0x7f0d000f

    goto :goto_3

    .line 243
    .end local v7           #count:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    :cond_5
    new-instance v16, Landroid/preference/Preference;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f090548

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f090549

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v16

    if-nez v16, :cond_7

    const/4 v3, 0x1

    .line 253
    .local v3, allowFormat:Z
    :goto_4
    if-eqz v3, :cond_6

    .line 254
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f09054d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090022

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f09054e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090022

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updateLowStoragePreference()V

    .line 272
    return-void

    .line 252
    .end local v3           #allowFormat:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    .line 263
    .restart local v3       #allowFormat:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f09054d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f09054e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v6, 0x1

    .line 716
    const/4 v2, 0x0

    .line 722
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 724
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/jrdsettings/MediaFormat;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "volume"

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 729
    const-string v4, "IsUsbStorage"

    iget-boolean v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 757
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 731
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_2

    .line 732
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/jrdsettings/Settings$ManageApplicationsActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 736
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_3

    .line 737
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 739
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_4

    .line 740
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "audio/mp3"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 742
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_5

    .line 743
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    const-string v4, "com.android.jrdsettings.isfromsettings"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    const-string v4, "vnd.android.cursor.dir/image_video"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 751
    :cond_5
    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_0

    .line 752
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 753
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v4, Lcom/android/jrdsettings/deviceinfo/MiscFilesHandler;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "storage_volume"

    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 688
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 2

    .prologue
    .line 682
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onMediaScannerFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 684
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 692
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 663
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 664
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 665
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 2

    .prologue
    .line 668
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onStorageStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 670
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 671
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 2
    .parameter "isUsbConnected"
    .parameter "usbFunction"

    .prologue
    .line 674
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onUsbStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iput-boolean p1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 676
    iput-object p2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 677
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 678
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 679
    return-void
.end method

.method public setStorageVolume(Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 280
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 543
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : total size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", avail size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    iput-wide p1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 550
    sub-long v0, p1, p3

    .line 552
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;->clear()V

    .line 553
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 554
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;->commit()V

    .line 556
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 557
    return-void
.end method

.method public updateDetails(Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .parameter "details"

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_7

    .line 569
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateDetails, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isPrimary is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_0
    const/4 v9, 0x1

    .line 576
    .local v9, showDetails:Z
    :goto_1
    if-nez v9, :cond_9

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_1

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 580
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_2

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 583
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_3

    .line 584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 586
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 589
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_5

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 592
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_6

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 643
    :cond_6
    :goto_2
    return-void

    .line 573
    .end local v9           #showDetails:Z
    :cond_7
    const-string v13, "StorageVolumePreferenceCategory"

    const-string v14, "updateDetails, mVolume is null"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 599
    .restart local v9       #showDetails:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v13}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;->clear()V

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v13, :cond_a

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v13

    if-nez v13, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const/4 v6, 0x1

    .line 608
    .local v6, measureMedia:Z
    :goto_3
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureMedia is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-eqz v6, :cond_d

    .line 610
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 613
    .local v1, dcimSize:J
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mDcim size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 616
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v7

    .line 621
    .local v7, musicSize:J
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "music size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v8}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 624
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 626
    .local v3, downloadsSize:J
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloads size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 634
    .end local v1           #dcimSize:J
    .end local v3           #downloadsSize:J
    .end local v7           #musicSize:J
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 635
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    .line 638
    .local v10, userPref:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v13, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    .line 639
    .local v11, userSize:J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_5

    .line 606
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #measureMedia:Z
    .end local v10           #userPref:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;
    .end local v11           #userSize:J
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 629
    .restart local v6       #measureMedia:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/jrdsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_4

    .line 642
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v13}, Lcom/android/jrdsettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_2
.end method

.method public updateStorageVolumePrefCategory()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 283
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v5, "sd swap ---- updateStorageVolumePrefCategory"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 293
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 295
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeDescription is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    .line 297
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsInternalSD is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    iput-object v7, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updateLowStoragePreference()V

    .line 308
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    .line 309
    .local v1, isRemovable:Z
    :goto_2
    if-eqz v1, :cond_2

    .line 310
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-nez v2, :cond_2

    .line 311
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 312
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f090548

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f090549

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v3

    .line 322
    .local v0, allowFormat:Z
    :goto_3
    if-eqz v0, :cond_9

    .line 323
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-nez v2, :cond_3

    .line 324
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f09054d

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f09054e

    iget-object v4, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 339
    return-void

    .line 285
    .end local v0           #allowFormat:Z
    .end local v1           #isRemovable:Z
    :cond_5
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090640

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 296
    goto/16 :goto_1

    :cond_7
    move v1, v4

    .line 308
    goto :goto_2

    .restart local v1       #isRemovable:Z
    :cond_8
    move v0, v4

    .line 321
    goto :goto_3

    .line 331
    .restart local v0       #allowFormat:Z
    :cond_9
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 332
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    iput-object v7, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    goto :goto_4
.end method
