.class public Lcom/android/jrdsettings/users/UserSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_ADD_USER:I = 0x2

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_SD_ACCESSING:I = 0xe

.field private static final DIALOG_SETUP_USER:I = 0x3

.field private static final DIALOG_USER_CANNOT_MANAGE:I = 0x4

.field private static final KEY_ADD_USER_LONG_MESSAGE_DISPLAYED:Ljava/lang/String; = "key_add_user_long_message_displayed"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final KEY_USER_ME:Ljava/lang/String; = "user_me"

.field private static final KEY_USER_NICKNAME:Ljava/lang/String; = "user_nickname"

.field private static final MENU_ADD_USER:I = 0x1

.field private static final MENU_REMOVE_USER:I = 0x2

.field private static final MESSAGE_SETUP_USER:I = 0x2

.field private static final MESSAGE_UPDATE_LIST:I = 0x1

.field private static final SAVE_ADDING_USER:Ljava/lang/String; = "adding_user"

.field private static final SAVE_REMOVING_USER:Ljava/lang/String; = "removing_user"

.field private static final TAG:Ljava/lang/String; = "UserSettings"

.field private static final USER_DRAWABLES:[I


# instance fields
.field private final MTK_OWNER_SDCARD_ONLY_SUPPORT:Z

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOwner:Z

.field private mMePreference:Landroid/preference/Preference;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

.field private mProfileExists:Z

.field private mRemovingUserId:I

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/jrdsettings/users/UserSettings;->USER_DRAWABLES:[I

    return-void

    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    .line 121
    iput v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddedUserId:I

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mIsOwner:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/jrdsettings/users/UserSettings;->MTK_OWNER_SDCARD_ONLY_SUPPORT:Z

    .line 135
    new-instance v0, Lcom/android/jrdsettings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/users/UserSettings$1;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/jrdsettings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/users/UserSettings$2;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->addUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/jrdsettings/users/UserSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/users/UserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/users/UserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->getProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method private addUserNow()V
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddingUser:Z

    .line 444
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->updateUserList()V

    .line 445
    new-instance v0, Lcom/android/jrdsettings/users/UserSettings$10;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/users/UserSettings$10;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 461
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/users/UserSettings;->USER_DRAWABLES:[I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v4, Lcom/android/jrdsettings/users/UserSettings;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 564
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 565
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/jrdsettings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 551
    :cond_0
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4
    .parameter "profileName"

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 280
    .local v2, myUserId:I
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 282
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 554
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/jrdsettings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 556
    iput-boolean v2, p0, Lcom/android/jrdsettings/users/UserSettings;->mProfileExists:Z

    .line 558
    :cond_0
    return-object v0
.end method

.method private hasAppsAccessingSD()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 648
    :try_start_0
    iget-object v7, p0, Lcom/android/jrdsettings/users/UserSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v7}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 649
    .local v5, volume:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 650
    iget-object v7, p0, Lcom/android/jrdsettings/users/UserSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 651
    .local v4, stUsers:[I
    if-eqz v4, :cond_1

    array-length v7, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v7, :cond_1

    .line 652
    const/4 v6, 0x1

    .line 660
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #stUsers:[I
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_1
    return v6

    .line 648
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 659
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 612
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, missingIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 529
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/jrdsettings/users/UserSettings$11;

    invoke-direct {v1, p0, v0}, Lcom/android/jrdsettings/users/UserSettings$11;-><init>(Lcom/android/jrdsettings/users/UserSettings;Landroid/content/res/Resources;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 545
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iput-boolean v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mProfileExists:Z

    .line 259
    new-instance v0, Lcom/android/jrdsettings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/users/UserSettings$3;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    return-void
.end method

.method private onAddUserClicked()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    iget v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 293
    :cond_0
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 299
    iput p1, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 302
    :cond_0
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddedUserId:I

    .line 307
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 308
    return-void
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 433
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 434
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->removeThisUser()V

    .line 429
    :goto_0
    return-void

    .line 420
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/users/UserSettings$9;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/users/UserSettings$9;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .parameter "pref"
    .parameter "user"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 569
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 578
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 13

    .prologue
    const v12, 0x7f02001d

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 473
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 476
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 477
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 479
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v7, missingIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 482
    .local v8, user:Landroid/content/pm/UserInfo;
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 483
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 484
    .local v0, pref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    :cond_3
    :goto_2
    iget-object v1, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 502
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_1

    .line 487
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_4
    new-instance v0, Lcom/android/jrdsettings/users/UserPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_6

    move v4, v10

    :goto_3
    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 489
    .restart local v0       #pref:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 492
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_5

    .line 493
    const v1, 0x7f0908ec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 495
    :cond_5
    iget-object v1, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    invoke-direct {p0, v8}, Lcom/android/jrdsettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 497
    const v1, 0x7f0908eb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .end local v0           #pref:Landroid/preference/Preference;
    :cond_6
    move v4, v11

    .line 487
    goto :goto_3

    .line 505
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_7
    invoke-direct {p0, v0, v8}, Lcom/android/jrdsettings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 510
    .end local v0           #pref:Landroid/preference/Preference;
    .end local v8           #user:Landroid/content/pm/UserInfo;
    :cond_8
    iget-boolean v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddingUser:Z

    if-eqz v1, :cond_9

    .line 511
    new-instance v0, Lcom/android/jrdsettings/users/UserPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move v4, v11

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 513
    .restart local v0       #pref:Landroid/preference/Preference;
    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 514
    const v1, 0x7f0908f7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 515
    const v1, 0x7f0908fc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 516
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    .line 517
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 519
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 522
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 523
    invoke-direct {p0, v7}, Lcom/android/jrdsettings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/jrdsettings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/jrdsettings/users/UserPreference;->getUserId()I

    move-result v0

    .line 619
    .local v0, userId:I
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 621
    .end local v0           #userId:I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    if-eqz p1, :cond_1

    .line 169
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddedUserId:I

    .line 172
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    .line 177
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 179
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 180
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 181
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 182
    const-string v0, "user_me"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 183
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 188
    .local v6, ownerInfo:Landroid/preference/Preference;
    if-eqz v6, :cond_3

    iget-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_3

    .line 189
    const v0, 0x7f090348

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 191
    :cond_3
    const-string v0, "user_nickname"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/SelectableEditTextPreference;

    iput-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    .line 192
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 195
    iget-object v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SelectableEditTextPreference;->setInitialSelectionMode(I)V

    .line 197
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->loadProfile()V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 199
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/jrdsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContextWrapper;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x0

    const v6, 0x104000a

    const/high16 v7, 0x104

    const/4 v0, 0x0

    .line 319
    sparse-switch p1, :sswitch_data_0

    .line 412
    :goto_0
    return-object v0

    .line 321
    :sswitch_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget v6, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    if-ne v4, v6, :cond_0

    const v4, 0x7f0908f8

    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget v6, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    if-ne v4, v6, :cond_1

    const v4, 0x7f0908fa

    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0908fe

    new-instance v6, Lcom/android/jrdsettings/users/UserSettings$4;

    invoke-direct {v6, p0}, Lcom/android/jrdsettings/users/UserSettings$4;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 336
    .local v0, dlg:Landroid/app/Dialog;
    goto :goto_0

    .line 321
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    const v4, 0x7f0908f9

    goto :goto_1

    :cond_1
    const v4, 0x7f0908fb

    goto :goto_2

    .line 339
    :sswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0908f5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 344
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 346
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "key_add_user_long_message_displayed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 348
    .local v1, longMessageDisplayed:Z
    if-eqz v1, :cond_2

    const v2, 0x7f0908f0

    .line 351
    .local v2, messageResId:I
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0908ee

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/jrdsettings/users/UserSettings$5;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/jrdsettings/users/UserSettings$5;-><init>(Lcom/android/jrdsettings/users/UserSettings;ZLandroid/content/SharedPreferences;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 366
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 348
    .end local v0           #dlg:Landroid/app/Dialog;
    .end local v2           #messageResId:I
    :cond_2
    const v2, 0x7f0908ef

    goto :goto_3

    .line 369
    .end local v1           #longMessageDisplayed:Z
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :sswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0908f1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0908f2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0908f3

    new-instance v6, Lcom/android/jrdsettings/users/UserSettings$6;

    invoke-direct {v6, p0}, Lcom/android/jrdsettings/users/UserSettings$6;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0908f4

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 386
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 390
    .end local v0           #dlg:Landroid/app/Dialog;
    :sswitch_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2050128

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x2050127

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/jrdsettings/users/UserSettings$8;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/users/UserSettings$8;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/jrdsettings/users/UserSettings$7;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/users/UserSettings$7;-><init>(Lcom/android/jrdsettings/users/UserSettings;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 408
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 228
    iget-boolean v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_1

    .line 229
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    iget-object v4, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 230
    const v3, 0x7f0908e8

    invoke-interface {p1, v7, v6, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 231
    .local v0, addUserItem:Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 240
    .end local v0           #addUserItem:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 241
    return-void

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, nickname:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0908f6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 238
    .local v2, removeThisUser:Landroid/view/MenuItem;
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 314
    invoke-virtual {p0, p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 315
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddingUser:Z

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    .line 628
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->updateUserList()V

    .line 629
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 246
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->onAddUserClicked()V

    .line 253
    :goto_0
    return v1

    .line 249
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 250
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 635
    check-cast v0, Ljava/lang/String;

    .line 636
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mNicknamePreference:Lcom/android/jrdsettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 638
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 640
    :cond_0
    const/4 v1, 0x1

    .line 642
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 582
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_2

    .line 584
    iget-boolean v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mProfileExists:Z

    if-nez v3, :cond_1

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 587
    .local v0, editProfile:Landroid/content/Intent;
    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    :goto_0
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 608
    .end local v0           #editProfile:Landroid/content/Intent;
    .end local p1
    :cond_0
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 589
    .restart local p1
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #editProfile:Landroid/content/Intent;
    goto :goto_0

    .line 595
    .end local v0           #editProfile:Landroid/content/Intent;
    :cond_2
    instance-of v3, p1, Lcom/android/jrdsettings/users/UserPreference;

    if-eqz v3, :cond_0

    .line 596
    check-cast p1, Lcom/android/jrdsettings/users/UserPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/jrdsettings/users/UserPreference;->getUserId()I

    move-result v2

    .line 598
    .local v2, userId:I
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 599
    .local v1, user:Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 602
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/jrdsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/jrdsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    iget v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->loadProfile()V

    .line 209
    invoke-direct {p0}, Lcom/android/jrdsettings/users/UserSettings;->updateUserList()V

    .line 210
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/jrdsettings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    return-void
.end method
