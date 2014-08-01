.class public Lcom/android/jrdsettings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/jrdsettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/Settings$DLNASettingsActivity;,
        Lcom/android/jrdsettings/Settings$AudioShareSettingsActivity;,
        Lcom/android/jrdsettings/Settings$NfcSettingsActivity;,
        Lcom/android/jrdsettings/Settings$BeamShareHistoryActivity;,
        Lcom/android/jrdsettings/Settings$HifiSettingsActivity;,
        Lcom/android/jrdsettings/Settings$TetherWifiSettingsActivity;,
        Lcom/android/jrdsettings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/jrdsettings/Settings$UsbSettingsActivity;,
        Lcom/android/jrdsettings/Settings$HDMISettingsActivity;,
        Lcom/android/jrdsettings/Settings$WifiGprsSelectorActivity;,
        Lcom/android/jrdsettings/Settings$SimListEntranceActivity;,
        Lcom/android/jrdsettings/Settings$SimManagementActivity;,
        Lcom/android/jrdsettings/Settings$DreamSettingsActivity;,
        Lcom/android/jrdsettings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/jrdsettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/jrdsettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/jrdsettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/jrdsettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/jrdsettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/jrdsettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/jrdsettings/Settings$AccountSyncSettingsInAddAccountActivity;,
        Lcom/android/jrdsettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/jrdsettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/jrdsettings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/jrdsettings/Settings$RunningServicesActivity;,
        Lcom/android/jrdsettings/Settings$DockSettingsActivity;,
        Lcom/android/jrdsettings/Settings$PrivacySettingsActivity;,
        Lcom/android/jrdsettings/Settings$LocationSettingsActivity;,
        Lcom/android/jrdsettings/Settings$SecuritySettingsActivity;,
        Lcom/android/jrdsettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/jrdsettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/jrdsettings/Settings$StorageUseActivity;,
        Lcom/android/jrdsettings/Settings$ManageApplicationsActivity;,
        Lcom/android/jrdsettings/Settings$ApplicationSettingsActivity;,
        Lcom/android/jrdsettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/jrdsettings/Settings$DisplaySettingsActivity;,
        Lcom/android/jrdsettings/Settings$AudioProfileSettingsActivity;,
        Lcom/android/jrdsettings/Settings$SoundSettingsActivity;,
        Lcom/android/jrdsettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/jrdsettings/Settings$LocalePickerActivity;,
        Lcom/android/jrdsettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/jrdsettings/Settings$InputMethodAndSubtypeEnablerActivity;,
        Lcom/android/jrdsettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/jrdsettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/jrdsettings/Settings$WifiSettingsActivity;,
        Lcom/android/jrdsettings/Settings$StorageSettingsActivity;,
        Lcom/android/jrdsettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/jrdsettings/Settings$VpnSettingsActivity;,
        Lcom/android/jrdsettings/Settings$TetherSettingsActivity;,
        Lcom/android/jrdsettings/Settings$WirelessSettingsActivity;,
        Lcom/android/jrdsettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/jrdsettings/Settings$SimDataRoamingSettings;,
        Lcom/android/jrdsettings/Settings$WapPushSettings;,
        Lcom/android/jrdsettings/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final IMAGE_GRAY:I = 0x4b

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.jrdsettings.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.jrdsettings.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.jrdsettings.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.jrdsettings.PARENT_FRAGMENT_TITLE"

.field private static final ORIGINAL_IMAGE:I = 0xff

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.jrdsettings.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.jrdsettings.PARENT_HEADER"

#the value of this static final field might be set in the static constructor
.field private static final SEPRATE_ENABLE:Z = false

.field private static final SLOT_ALL:I = -0x1

.field private static mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mDlnaReceiver:Landroid/content/BroadcastReceiver;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mIsWifiOnly:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mTopLevelHeaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "ro.settings.seprate"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/jrdsettings/Settings;->SEPRATE_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 166
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/jrdsettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/Settings;->mIsWifiOnly:Z

    .line 216
    new-instance v0, Lcom/android/jrdsettings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/Settings$1;-><init>(Lcom/android/jrdsettings/Settings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Lcom/android/jrdsettings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/Settings$2;-><init>(Lcom/android/jrdsettings/Settings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/Settings;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    .line 1542
    return-void

    .line 166
    nop

    :array_0
    .array-data 0x4
        0xe1t 0x2t 0xbt 0x7ft
        0xe3t 0x2t 0xbt 0x7ft
        0xe4t 0x2t 0xbt 0x7ft
        0xe5t 0x2t 0xbt 0x7ft
        0xe6t 0x2t 0xbt 0x7ft
        0xe8t 0x2t 0xbt 0x7ft
        0xeat 0x2t 0xbt 0x7ft
        0xebt 0x2t 0xbt 0x7ft
        0xeft 0x2t 0xbt 0x7ft
        0xf0t 0x2t 0xbt 0x7ft
        0xf1t 0x2t 0xbt 0x7ft
        0xf4t 0x2t 0xbt 0x7ft
        0xf6t 0x2t 0xbt 0x7ft
        0xe0t 0x2t 0xbt 0x7ft
        0xf9t 0x2t 0xbt 0x7ft
        0xfat 0x2t 0xbt 0x7ft
        0xfbt 0x2t 0xbt 0x7ft
        0xfct 0x2t 0xbt 0x7ft
        0xf7t 0x2t 0xbt 0x7ft
        0xfet 0x2t 0xbt 0x7ft
        0xfft 0x2t 0xbt 0x7ft
        0x0t 0x3t 0xbt 0x7ft
        0x1t 0x3t 0xbt 0x7ft
        0x6t 0x3t 0xbt 0x7ft
        0x3t 0x3t 0xbt 0x7ft
        0xeet 0x2t 0xbt 0x7ft
        0xeft 0x2t 0xbt 0x7ft
        0x2t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/jrdsettings/Settings;->updateSimState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/jrdsettings/Settings;->SEPRATE_ENABLE:Z

    return v0
.end method

.method static synthetic access$500()Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/jrdsettings/Settings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    return-object v0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 841
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 843
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 860
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 844
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.jrdsettings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/jrdsettings/Settings;->mTopLevelHeaderId:I

    .line 845
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.jrdsettings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 848
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.jrdsettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 849
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.jrdsettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 851
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 852
    iget-object v3, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 853
    if-eqz v2, :cond_0

    .line 854
    iget-object v3, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 476
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 478
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 483
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 17
    .parameter
    .parameter "headerIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v14}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, accountTypes:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v14, v5

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 781
    .local v3, accountHeaders:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v7, v5

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, v7, v10

    .line 782
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v4}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 783
    .local v11, label:Ljava/lang/CharSequence;
    if-nez v11, :cond_0

    .line 781
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 787
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 788
    .local v6, accounts:[Landroid/accounts/Account;
    array-length v14, v6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v14, v4}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v13, 0x1

    .line 790
    .local v13, skipToAccount:Z
    :goto_2
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 791
    .local v2, accHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 792
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v14, :cond_1

    .line 793
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 795
    :cond_1
    if-eqz v13, :cond_4

    .line 796
    const v14, 0x7f090808

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 797
    const v14, 0x7f090808

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 798
    const-class v14, Lcom/android/jrdsettings/accounts/AccountSyncSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 799
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 801
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 803
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 818
    :cond_2
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 788
    .end local v2           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v13           #skipToAccount:Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 806
    .restart local v2       #accHeader:Landroid/preference/PreferenceActivity$Header;
    .restart local v13       #skipToAccount:Z
    :cond_4
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 807
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 808
    const-class v14, Lcom/android/jrdsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 809
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 810
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v14

    if-nez v14, :cond_2

    .line 814
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_label"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 822
    .end local v2           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #accounts:[Landroid/accounts/Account;
    .end local v11           #label:Ljava/lang/CharSequence;
    .end local v13           #skipToAccount:Z
    :cond_5
    new-instance v14, Lcom/android/jrdsettings/Settings$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/jrdsettings/Settings$5;-><init>(Lcom/android/jrdsettings/Settings;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 829
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    .line 830
    .local v8, header:Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v9, p2, 0x1

    .end local p2
    .local v9, headerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v9

    .end local v9           #headerIndex:I
    .restart local p2
    goto :goto_4

    .line 832
    .end local v8           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/jrdsettings/Settings;->mListeningToAccountUpdates:Z

    if-nez v14, :cond_7

    .line 833
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 834
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/jrdsettings/Settings;->mListeningToAccountUpdates:Z

    .line 836
    :cond_7
    return p2
.end method

.method private isIflytekPackageInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, speech:Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 875
    .local v2, speechcloud:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.iflytek.speech"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 876
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.iflytek.speechcloud"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 882
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 879
    const/4 v2, 0x0

    .line 880
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/Settings;->mInLocalHeaderSwitch:Z

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/Settings;->mInLocalHeaderSwitch:Z

    .line 418
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 434
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 437
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 439
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 440
    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.jrdsettings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 442
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 443
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 444
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 445
    iput-object v4, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 447
    invoke-direct {p0, v4}, Lcom/android/jrdsettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 448
    iget v7, p0, Lcom/android/jrdsettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/jrdsettings/Settings;->highlightHeader(I)V

    .line 450
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 451
    iget-object v7, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.jrdsettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 453
    iget-object v7, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.jrdsettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v3

    .line 456
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-string v14, "persist.security.guestmode"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 592
    const/4 v12, 0x0

    .line 599
    .local v12, showDev:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x111004e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 601
    .local v9, mEnablePowerSaverManagerFunction:Z
    const/4 v6, 0x0

    .line 603
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 604
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_1f

    .line 605
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    .line 607
    .local v4, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v14, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v7, v14

    .line 608
    .local v7, id:I
    const v14, 0x7f0b02e9

    if-eq v7, v14, :cond_1

    const v14, 0x7f0b02f8

    if-ne v7, v14, :cond_7

    .line 609
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/jrdsettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 749
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v14, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v14

    if-nez v14, :cond_3

    .line 752
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 756
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_5

    .line 758
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v14, :cond_4

    invoke-static {v4}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v14

    if-eqz v14, :cond_4

    .line 760
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/jrdsettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 762
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    add-int/lit8 v6, v6, 0x1

    .line 766
    :cond_5
    const v14, 0x7f0b02f1

    if-ne v7, v14, :cond_0

    .line 768
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.jrdcom.lockscreen"

    const/16 v16, 0x2000

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 770
    :catch_0
    move-exception v3

    .line 771
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 594
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #mEnablePowerSaverManagerFunction:Z
    .end local v12           #showDev:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v15, "show"

    sget-object v16, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v17, "eng"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .restart local v12       #showDev:Z
    goto/16 :goto_0

    .line 610
    .restart local v4       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v9       #mEnablePowerSaverManagerFunction:Z
    :cond_7
    const v14, 0x7f0b02e3

    if-ne v7, v14, :cond_8

    .line 612
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.wifi"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 613
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 615
    :cond_8
    const v14, 0x7f0b02e6

    if-ne v7, v14, :cond_9

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.bluetooth"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 618
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 621
    :cond_9
    const v14, 0x7f0b02e2

    if-ne v7, v14, :cond_b

    .line 623
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/jrdsettings/Settings;->mIsWifiOnly:Z

    if-nez v14, :cond_a

    .line 624
    const-string v14, "dualsim.ui.support"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "false"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 625
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 628
    :cond_a
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 632
    :cond_b
    const v14, 0x7f0b02e8

    if-ne v7, v14, :cond_c

    .line 634
    sget-object v14, Lcom/android/jrdsettings/Settings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->addCustomizedItem(Ljava/util/List;I)V

    .line 636
    const-string v14, "network_management"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v10

    .line 639
    .local v10, netManager:Landroid/os/INetworkManagementService;
    :try_start_1
    invoke-interface {v10}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v14

    if-nez v14, :cond_2

    .line 640
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 642
    :catch_1
    move-exception v14

    goto/16 :goto_2

    .line 645
    .end local v10           #netManager:Landroid/os/INetworkManagementService;
    :cond_c
    const v14, 0x7f0b02fe

    if-ne v7, v14, :cond_d

    .line 646
    add-int/lit8 v5, v6, 0x1

    .line 647
    .local v5, headerIndex:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/jrdsettings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v6

    .line 648
    goto/16 :goto_2

    .end local v5           #headerIndex:I
    :cond_d
    const v14, 0x7f0b02f7

    if-ne v7, v14, :cond_f

    .line 649
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 652
    :cond_e
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 654
    :cond_f
    const v14, 0x7f0b0304

    if-ne v7, v14, :cond_10

    .line 655
    if-nez v12, :cond_2

    .line 656
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 658
    :cond_10
    const v14, 0x7f0b02ee

    if-ne v7, v14, :cond_11

    .line 660
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 665
    :cond_11
    const v14, 0x7f0b02ef

    if-eq v7, v14, :cond_2

    .line 672
    const v14, 0x7f0b02e7

    if-ne v7, v14, :cond_13

    .line 673
    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.mediatek.settings.CallSettings"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 676
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_12

    .line 677
    const-string v14, "Settings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "apps.size()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 679
    :cond_12
    const-string v14, "Settings"

    const-string v15, "apps is null or app size is 0, remove CallSettins"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 684
    .end local v2           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #intent:Landroid/content/Intent;
    :cond_13
    const v14, 0x7f0b0302

    if-ne v7, v14, :cond_15

    .line 685
    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.android.settings.SCHEDULE_POWER_ON_OFF_SETTING"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 688
    .restart local v2       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_14

    .line 689
    const-string v14, "Settings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "apps.size()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 691
    :cond_14
    const-string v14, "Settings"

    const-string v15, "apps is null or app size is 0, remove SchedulePowerOnOff"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 694
    .end local v2           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #intent:Landroid/content/Intent;
    :cond_15
    const v14, 0x7f0b0305

    if-ne v7, v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/Settings;->hasElabelApp()Z

    move-result v14

    if-nez v14, :cond_16

    .line 695
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 698
    :cond_16
    const v14, 0x7f0b02f5

    if-ne v7, v14, :cond_17

    .line 699
    if-nez v9, :cond_2

    .line 700
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 703
    :cond_17
    const v14, 0x7f0b02e0

    if-ne v7, v14, :cond_18

    .line 704
    if-eqz v9, :cond_2

    .line 705
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 707
    :cond_18
    const v14, 0x7f0b02f2

    if-ne v7, v14, :cond_1a

    .line 708
    sget-boolean v14, Lcom/android/jrdsettings/VoiceBroadcastSettings;->IFLYTEK_ENABLE:Z

    if-eqz v14, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/Settings;->isIflytekPackageInstalled()Z

    move-result v14

    if-nez v14, :cond_2

    .line 709
    :cond_19
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 711
    :cond_1a
    const v14, 0x7f0b02fd

    if-ne v7, v14, :cond_1b

    .line 713
    sget-object v14, Lcom/android/jrdsettings/Settings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v14, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setFactoryResetTitle(Ljava/lang/Object;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.google.settings"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    if-nez v14, :cond_2

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404c8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 717
    .local v13, titleString:Ljava/lang/String;
    const/4 v14, 0x0

    iput v14, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 718
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 722
    .end local v13           #titleString:Ljava/lang/String;
    :cond_1b
    const v14, 0x7f0b02ec

    if-ne v7, v14, :cond_1c

    invoke-static {}, Landroid/content/res/Configuration;->getFlagjrdthemeFromProp()I

    move-result v14

    if-nez v14, :cond_1c

    .line 723
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 725
    :cond_1c
    const v14, 0x7f0b02e4

    if-ne v7, v14, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110058

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 727
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 731
    :cond_1d
    const v14, 0x7f0b02e5

    if-ne v7, v14, :cond_1e

    .line 733
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 734
    .local v11, pm:Landroid/content/pm/PackageManager;
    const-string v14, "com.android.dlnaservice"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 736
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v3

    .line 737
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 738
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 743
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1e
    const v14, 0x7f0b0307

    if-ne v7, v14, :cond_2

    .line 744
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 776
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v7           #id:I
    :cond_1f
    return-void
.end method

.method private updateSimState()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x2

    .line 382
    const-string v1, "AppUpdate"

    const/4 v2, 0x1

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 383
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 384
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 385
    check-cast v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->isSimManagementAvailable(Landroid/content/Context;)V

    .line 387
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 388
    const-string v1, "AppUpdate"

    const/4 v2, 0x0

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 389
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 487
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 488
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 492
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 493
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 495
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 496
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 500
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 501
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 498
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 504
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 892
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 514
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :cond_2
    const-string v1, "com.android.jrdsettings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.jrdsettings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.jrdsettings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    :cond_3
    const-class v1, Lcom/android/jrdsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasElabelApp()Z
    .locals 3

    .prologue
    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.jrdcom.Elabel"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    const/4 v1, 0x1

    .line 867
    :goto_0
    return v1

    .line 865
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 887
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1481
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1482
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 1483
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f06003a

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 585
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 586
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 549
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 553
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/jrdsettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/jrdsettings/ZonePicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 574
    :cond_1
    const-class v1, Lcom/android/jrdsettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 575
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/jrdsettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "settings:remove_ui_options"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setUiOptions(I)V

    .line 279
    :cond_0
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    sput-object v1, Lcom/android/jrdsettings/Settings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 281
    new-instance v1, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-direct {v1}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    .line 282
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p0}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 283
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p0, v5}, Lcom/android/jrdsettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 284
    const-string v1, "development"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 287
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 288
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/jrdsettings/Settings;->mIsWifiOnly:Z

    .line 290
    invoke-direct {p0}, Lcom/android/jrdsettings/Settings;->getMetaData()V

    .line 291
    iput-boolean v2, p0, Lcom/android/jrdsettings/Settings;->mInLocalHeaderSwitch:Z

    .line 292
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 293
    iput-boolean v3, p0, Lcom/android/jrdsettings/Settings;->mInLocalHeaderSwitch:Z

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget v1, p0, Lcom/android/jrdsettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/Settings;->highlightHeader(I)V

    .line 299
    const v1, 0x7f090319

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 303
    :cond_1
    if-eqz p1, :cond_2

    .line 304
    const-string v1, "com.android.jrdsettings.CURRENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 305
    const-string v1, "com.android.jrdsettings.PARENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 309
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 314
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_4

    .line 315
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/jrdsettings/Settings$3;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/Settings$3;-><init>(Lcom/android/jrdsettings/Settings;)V

    invoke-virtual {p0, v1, v5, v2}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 328
    :cond_5
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 329
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 334
    :cond_6
    return-void

    :cond_7
    move v1, v3

    .line 288
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 408
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 409
    iget-boolean v0, p0, Lcom/android/jrdsettings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 412
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 533
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 535
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 536
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 537
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 538
    invoke-virtual {p0}, Lcom/android/jrdsettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 539
    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 543
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1410
    const/4 v2, 0x0

    .line 1411
    .local v2, revert:Z
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b02ff

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1412
    const/4 v2, 0x1

    .line 1417
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1419
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/jrdsettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_3

    .line 1420
    iget-object v3, p0, Lcom/android/jrdsettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/jrdsettings/Settings;->highlightHeader(I)V

    .line 1424
    :goto_1
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0305

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1425
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1426
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.jrdcom.Elabel"

    const-string v4, "com.jrdcom.Elabel.SettingsRegulatoryActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1430
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1432
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 1413
    :cond_2
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b02fa

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1414
    sget-object v3, Lcom/android/jrdsettings/Settings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v3, p1}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeLocationHeaderClick(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1422
    :cond_3
    iput-object p1, p0, Lcom/android/jrdsettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1437
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1438
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1439
    .local v1, item:Ljava/lang/Object;
    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .end local v1           #item:Ljava/lang/Object;
    iget-wide v2, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b0307

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1440
    const v2, 0x7f0b0165

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1441
    .local v0, chk:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1442
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1447
    .end local v0           #chk:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    return-void

    .line 1444
    .restart local v0       #chk:Landroid/widget/CheckBox;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 465
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 471
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 394
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 397
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 398
    check-cast v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->pause()V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 404
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1452
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1453
    .local v3, titleRes:I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/jrdsettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    const v3, 0x7f0904f1

    .line 1459
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1461
    const/4 v0, 0x1

    return v0

    .line 1455
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/jrdsettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    const v3, 0x7f090348

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 352
    new-instance v2, Lcom/android/jrdsettings/Settings$4;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/Settings$4;-><init>(Lcom/android/jrdsettings/Settings;)V

    iput-object v2, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 358
    iget-object v2, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/jrdsettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 361
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 362
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v2, v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 363
    check-cast v2, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    invoke-virtual {v2}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->resume()V

    .line 365
    check-cast v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/Settings$HeaderAdapter;->isSimManagementAvailable(Landroid/content/Context;)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 369
    iget-object v2, p0, Lcom/android/jrdsettings/Settings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, mIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v2, "android.intent.device_add"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v2, "android.intent.device_remove"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v2, "android.intent.DLNA_SWITCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/android/jrdsettings/Settings;->mDlnaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "com.android.jrdsettings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 345
    const-string v0, "com.android.jrdsettings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1470
    if-nez p1, :cond_0

    .line 1471
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1475
    :goto_0
    return-void

    .line 1473
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/Settings;->mAuthenticatorHelper:Lcom/android/jrdsettings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/jrdsettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/jrdsettings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter "targetIntent"

    .prologue
    .line 1465
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-boolean v0, p0, Lcom/android/jrdsettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 423
    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 424
    iput-object v1, p0, Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 426
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 427
    return-void
.end method
