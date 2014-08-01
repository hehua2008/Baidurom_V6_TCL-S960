.class public Lcom/android/jrdsettings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final APN_EDITOR_PARENT:Ljava/lang/String; = "apn_editor_parent"

.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final DIALOG_CONFIRM_CHANGE:I = 0x1

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_APN_TYPE_LIST:Ljava/lang/String; = "apn_type_list"

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PPP_DIALING_INDEX:I = 0x15

.field private static PROJECTION:[Ljava/lang/String; = null

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final SOURCE_TYPE_DEFAULT:I = 0x0

.field private static final SOURCE_TYPE_INDEX:I = 0x14

.field private static final SOURCE_TYPE_OMACP:I = 0x2

.field private static final SOURCE_TYPE_USER_EDIT:I = 0x1

.field private static final SS_TAG:Ljava/lang/String; = "ssr"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDualSimMode:I

.field mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mFirstTime:Z

.field private mIMSI:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mNotInMmsTransaction:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPnn:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProviderUri:Landroid/net/Uri;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mReadOnlyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSlotId:I

.field private mSourceType:I

.field private mSpn:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-class v0, Lcom/android/jrdsettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 121
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/ApnEditor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 173
    iput v0, p0, Lcom/android/jrdsettings/ApnEditor;->mSourceType:I

    .line 176
    iput-boolean v1, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    .line 177
    iput v0, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/android/jrdsettings/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/ApnEditor$1;-><init>(Lcom/android/jrdsettings/ApnEditor;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/android/jrdsettings/ApnEditor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/ApnEditor$2;-><init>(Lcom/android/jrdsettings/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/ApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->radioOffExit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/ApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/jrdsettings/ApnEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->dealWithSimHotSwap()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/jrdsettings/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/jrdsettings/ApnEditor;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/ApnEditor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/jrdsettings/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->fillUi()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/jrdsettings/ApnEditor;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/ApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->setScreenEnabledStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/ApnEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/jrdsettings/ApnEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/ApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/jrdsettings/ApnEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/ApnEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/ApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/jrdsettings/ApnEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;

    return-object p1
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-object v4, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 544
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 551
    :goto_0
    return-object v3

    .line 547
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 864
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    :cond_0
    const-string p1, ""

    .line 867
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 856
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 857
    :cond_0
    sget-object p1, Lcom/android/jrdsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 859
    .end local p1
    :cond_1
    return-object p1
.end method

.method private dealWithSimHotSwap()V
    .locals 5

    .prologue
    .line 958
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 959
    .local v0, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 960
    sget-object v1, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Activity finished"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget v1, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-static {v1, v0}, Lcom/mediatek/gemini/GeminiUtils;->getSiminfoIdBySimSlotId(ILjava/util/List;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 964
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 837
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 840
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 841
    return-void
.end method

.method private fillUi()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 415
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 521
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-boolean v10, p0, Lcom/android/jrdsettings/ApnEditor;->mFirstTime:Z

    if-eqz v10, :cond_3

    .line 420
    iput-boolean v9, p0, Lcom/android/jrdsettings/ApnEditor;->mFirstTime:Z

    .line 422
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 423
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 424
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 425
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 426
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 427
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 428
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 429
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xc

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 430
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 431
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 432
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x9

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 433
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 435
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, strType:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v10, v6}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 440
    iget-boolean v10, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_2

    .line 443
    sget-object v10, Lcom/mediatek/apn/ApnUtils;->NUMERIC_LIST:[Ljava/lang/String;

    iget v11, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    aget-object v10, v10, v11

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, numeric:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v14, :cond_1

    .line 451
    invoke-virtual {v5, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, mcc:Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, mnc:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 456
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 457
    iput-object v4, p0, Lcom/android/jrdsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 458
    iput-object v3, p0, Lcom/android/jrdsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 461
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "apn_type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, apnType:Ljava/lang/String;
    const-string v10, "tethering"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 464
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    const-string v11, "tethering"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    const-string v11, "tethering"

    invoke-virtual {v10, v11}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 471
    .end local v0           #apnType:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xe

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 472
    .local v1, authVal:I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_5

    .line 473
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 478
    :goto_2
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 479
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x13

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 480
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x11

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v8, :cond_6

    :goto_3
    invoke-virtual {v10, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 481
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x12

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 482
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x14

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/jrdsettings/ApnEditor;->mSourceType:I

    .line 485
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v9, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    sget-object v11, Lcom/android/jrdsettings/ApnEditor;->PROJECTION:[Ljava/lang/String;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setPreferenceTextAndSummary(ILjava/lang/String;)V

    .line 489
    .end local v1           #authVal:I
    .end local v6           #strType:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 506
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 507
    .local v2, authValIndex:I
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 509
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a002a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, values:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    .end local v2           #authValIndex:I
    .end local v7           #values:[Ljava/lang/String;
    :goto_4
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v10}, Lcom/android/jrdsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 467
    .end local v1           #authVal:Ljava/lang/String;
    .restart local v0       #apnType:Ljava/lang/String;
    .restart local v5       #numeric:Ljava/lang/String;
    .restart local v6       #strType:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    const-string v11, "default"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    const-string v11, "default"

    invoke-virtual {v10, v11}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 475
    .end local v0           #apnType:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    .local v1, authVal:I
    :cond_5
    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move v8, v9

    .line 480
    goto/16 :goto_3

    .line 512
    .end local v6           #strType:Ljava/lang/String;
    .local v1, authVal:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/jrdsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 773
    const/4 v1, 0x0

    .line 775
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 781
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090586

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 790
    :cond_0
    :goto_0
    return-object v1

    .line 782
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 783
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090587

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 784
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 785
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090588

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 786
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 787
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090589

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    .prologue
    .line 924
    const/4 v1, 0x1

    .line 925
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 926
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 927
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 928
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 930
    .local v3, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 935
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 931
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 529
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 530
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 537
    :goto_0
    return-object v3

    .line 533
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private radioOffExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 939
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 943
    return-void
.end method

.method private setScreenEnabledStatus()V
    .locals 3

    .prologue
    .line 946
    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mReadOnlyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mAirplaneModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mNotInMmsTransaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    sget-object v0, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mDualSimMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 952
    iget v0, p0, Lcom/android/jrdsettings/ApnEditor;->mSourceType:I

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v1, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V

    .line 955
    :cond_0
    return-void

    .line 950
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 844
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 845
    :cond_0
    sget-object v2, Lcom/android/jrdsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 851
    :goto_0
    return-object v2

    .line 847
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 848
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 849
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 851
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 13
    .parameter "force"

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 678
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 679
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, apn:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, mcc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    if-nez p1, :cond_1

    .line 684
    invoke-virtual {p0, v7}, Landroid/app/Activity;->showDialog(I)V

    .line 769
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 688
    .restart local v5       #name:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-nez v9, :cond_2

    .line 689
    sget-object v8, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v9, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    .line 696
    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 698
    iput-object v12, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 703
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 707
    .local v6, values:Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v8, :cond_4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907e1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v9, "apn"

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v9, "proxy"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v9, "port"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v9, "mmsproxy"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v9, "mmsport"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v9, "user"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v9, "server"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v9, "password"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v9, "mmsc"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget v9, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-static {v9}, Lcom/mediatek/apn/ApnUtils;->isMVNO(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 720
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 721
    const-string v9, "imsi"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 731
    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    :cond_6
    const-string v9, "protocol"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v9, "roaming_protocol"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v9, "type"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v10}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v9, "carrier_enabled"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_7

    move v7, v8

    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v7, "mcc"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v7, "mnc"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v7, "numeric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 746
    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 747
    const-string v7, "current"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    :cond_8
    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 753
    const-string v7, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    :cond_9
    iget-boolean v7, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-eqz v7, :cond_a

    .line 756
    const-string v7, "sourcetype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    :cond_a
    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v7, v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->saveApnValues(Landroid/content/ContentValues;)V

    .line 762
    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_b

    .line 763
    sget-object v7, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "former inserted URI was already deleted, insert a new one"

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 766
    :cond_b
    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_c

    .line 767
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    move v7, v8

    .line 769
    goto/16 :goto_0

    .line 722
    .end local v1           #authVal:Ljava/lang/String;
    .end local v2           #bearerVal:Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 723
    const-string v9, "spn"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 725
    :cond_e
    const-string v9, "pnn"

    iget-object v10, p0, Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/jrdsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 263
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 267
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090568

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/jrdsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 268
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 269
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 270
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 271
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 272
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 273
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 274
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 275
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 276
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 277
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 278
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 279
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 280
    const-string v2, "apn_type_list"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apn/ApnTypePreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    .line 281
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 285
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 288
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 290
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 291
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 295
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 296
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 298
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 301
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mFirstTime:Z

    .line 304
    const-string v2, "slotid"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    .line 305
    sget-object v2, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v2, Lcom/mediatek/apn/ApnUtils;->URI_LIST:[Landroid/net/Uri;

    iget v5, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mProviderUri:Landroid/net/Uri;

    .line 313
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 314
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 316
    const-string v2, "readOnly"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    .line 317
    sget-object v2, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read only mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 350
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.START"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.STOP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    sget-object v4, Lcom/android/jrdsettings/ApnEditor;->PROJECTION:[Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/jrdsettings/ApnEditor;->PROJECTION:[Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/jrdsettings/ApnEditor;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v8, v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 364
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v4, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/mediatek/settings/ext/IApnSettingsExt;->addPreference(ILandroid/preference/PreferenceScreen;)V

    .line 369
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v4, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeApnTitles(ILandroid/preference/PreferenceScreen;)V

    .line 370
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->fillUi()V

    .line 371
    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    :cond_1
    iget v2, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->getSpn(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;

    .line 377
    iget v2, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->getIMSI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;

    .line 378
    iget v2, p0, Lcom/android/jrdsettings/ApnEditor;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->getPnn(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;

    .line 380
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 303
    goto/16 :goto_0

    .line 319
    :cond_3
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 320
    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_4

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 321
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 329
    :goto_3
    iput-boolean v3, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    .line 333
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_6

    .line 334
    sget-object v2, Lcom/android/jrdsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v2, p0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 326
    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mProviderUri:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 342
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 345
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090585

    const v3, 0x104000a

    .line 796
    if-nez p1, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 820
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 804
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 805
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/jrdsettings/ApnEditor$3;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/ApnEditor$3;-><init>(Lcom/android/jrdsettings/ApnEditor;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090318

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 820
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 602
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 604
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 616
    :goto_0
    return v3

    .line 608
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/jrdsettings/ApnEditor;->mSourceType:I

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    :cond_2
    const v0, 0x7f090581

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 612
    :cond_3
    const/4 v0, 0x2

    const v1, 0x7f090583

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 614
    const/4 v0, 0x3

    const v1, 0x7f090584

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 910
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 911
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 645
    packed-switch p1, :pswitch_data_0

    .line 655
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 647
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 650
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 917
    if-eqz p2, :cond_0

    .line 918
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 920
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 918
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 621
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 640
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 623
    :pswitch_0
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 626
    :pswitch_1
    iget v1, p0, Lcom/android/jrdsettings/ApnEditor;->mSourceType:I

    if-nez v1, :cond_1

    .line 627
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 628
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 633
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/jrdsettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 636
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 412
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 557
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 560
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 561
    .local v2, index:I
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 563
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0a002a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 565
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 566
    goto :goto_1

    .line 568
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 569
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/jrdsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 571
    goto :goto_1

    .line 573
    :cond_2
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 574
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 575
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 576
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/jrdsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 577
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 578
    goto :goto_1

    .line 581
    :cond_4
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, p2

    .line 586
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 588
    goto :goto_1

    .line 590
    :cond_6
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 591
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 592
    .end local v0           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_7
    const-string v6, "apn_type_list"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 593
    iget-object v6, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    iget-object v7, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v7}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 825
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 827
    if-nez p1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 831
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 834
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 385
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 388
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    invoke-static {p0}, Lcom/android/jrdsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z

    .line 394
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I

    .line 396
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->isMMSNotTransaction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z

    .line 397
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->setScreenEnabledStatus()V

    .line 399
    const-string v0, "tethering"

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-virtual {v1}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setApnTypePreferenceState(Landroid/preference/Preference;)V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnEditor;->dealWithSimHotSwap()V

    .line 403
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 660
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 661
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const v8, 0x7f090193

    const/4 v7, 0x1

    .line 872
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 873
    .local v4, pref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 874
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 875
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    const-string v5, "carrier_enabled"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 877
    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 880
    :cond_2
    iget-object v5, p0, Lcom/android/jrdsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 881
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, portStr:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 884
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 885
    .local v2, portNum:I
    const v5, 0xffff

    if-gt v2, v5, :cond_3

    if-gtz v2, :cond_4

    .line 886
    :cond_3
    const v5, 0x7f090193

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 888
    move-object v0, v4

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v2           #portNum:I
    :cond_4
    :goto_1
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v5, v4

    .line 893
    check-cast v5, Landroid/preference/EditTextPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 900
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #portStr:Ljava/lang/String;
    :cond_5
    const-string v5, ""

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/jrdsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
