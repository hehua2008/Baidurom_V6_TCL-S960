.class public Lcom/android/jrdsettings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/ApnSettings$5;,
        Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_CHECK_IMSI:Ljava/lang/String; = "imsi"

.field public static final APN_CHECK_IMSI_GEMINI:Ljava/lang/String; = "imsi_gemini"

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field public static final APN_TYPE:Ljava/lang/String; = "apn_type"

.field private static final CMMAIL_TYPE:Ljava/lang/String; = "cmmail"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x5

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field private static final RCSE_TYPE:Ljava/lang/String; = "rcse"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final SOURCE_TYPE_INDEX:I = 0x4

.field public static final START_BY_POWER_ON:Ljava/lang/String; = "startbypoweron"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field public static final TETHER_TYPE:Ljava/lang/String; = "tethering"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPES_INDEX:I = 0x3

.field private static sRestoreDefaultApnMode:Z


# instance fields
.field private mApnCheckImsi:Ljava/lang/String;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mDefaultApnUri:Landroid/net/Uri;

.field private mDualSimMode:I

.field private mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mIMSI:Ljava/lang/String;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mIsGetSlotId:Z

.field private mIsStartByPowerOn:Ljava/lang/Boolean;

.field private mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNumeric:Ljava/lang/String;

.field private mPnn:Ljava/lang/String;

.field private mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

.field private mReceiveIntent:Landroid/content/Intent;

.field private mRestoreApnProcessHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreCarrierUri:Landroid/net/Uri;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectableApnCount:I

.field private mSelectedKey:Ljava/lang/String;

.field private mSlotId:I

.field private mSpn:Ljava/lang/String;

.field private mUnlockService:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 109
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mApnCheckImsi:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mReceiveIntent:Landroid/content/Intent;

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    .line 132
    new-instance v0, Lcom/android/jrdsettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/ApnSettings$1;-><init>(Lcom/android/jrdsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/ApnSettings;->mDualSimMode:I

    .line 208
    iput v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSelectableApnCount:I

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSpn:Ljava/lang/String;

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIMSI:Ljava/lang/String;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mPnn:Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    .line 228
    new-instance v0, Lcom/android/jrdsettings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/ApnSettings$2;-><init>(Lcom/android/jrdsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    .line 240
    new-instance v0, Lcom/android/jrdsettings/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/ApnSettings$3;-><init>(Lcom/android/jrdsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mUnlockService:Ljava/lang/Runnable;

    .line 611
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/jrdsettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/ApnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->dealWithSimHotSwap()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/ApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/ApnSettings;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/ApnSettings;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/ApnSettings;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->initSimState()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/jrdsettings/ApnSettings;->sRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/jrdsettings/ApnSettings;->sRestoreDefaultApnMode:Z

    return p0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/jrdsettings/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 529
    .local v0, it:Landroid/content/Intent;
    const-string v1, "slotid"

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->addApnTypeExtra(Landroid/content/Intent;)V

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method private dealWithSimHotSwap()V
    .locals 5

    .prologue
    .line 781
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 783
    .local v0, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 784
    const-string v1, "ApnSettings"

    const-string v2, "Activity finished"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->finish()V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    iget v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-static {v1, v0}, Lcom/mediatek/gemini/GeminiUtils;->getSiminfoIdBySimSlotId(ILjava/util/List;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->finish()V

    goto :goto_0
.end method

.method private fillList()V
    .locals 27

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-static {v4}, Lcom/mediatek/apn/ApnUtils;->isMVNO(I)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/ApnSettings;->mSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/jrdsettings/ApnSettings;->mIMSI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/jrdsettings/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getFillListQuery(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, where:Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v7, 0x0

    .line 397
    .local v7, order:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const-string v7, "name ASC"

    .line 400
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/ApnSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v26, "_id"

    aput-object v26, v4, v6

    const/4 v6, 0x1

    const-string v26, "name"

    aput-object v26, v4, v6

    const/4 v6, 0x2

    const-string v26, "apn"

    aput-object v26, v4, v6

    const/4 v6, 0x3

    const-string v26, "type"

    aput-object v26, v4, v6

    const/4 v6, 0x4

    const-string v26, "sourcetype"

    aput-object v26, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 404
    .local v12, cursor:Landroid/database/Cursor;
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 405
    .local v9, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 407
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v18, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 410
    const/16 v23, 0x0

    .line 411
    .local v23, selectedKey:Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList : mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 414
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 415
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 416
    .local v19, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 418
    .local v17, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 420
    .local v25, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 421
    .local v24, sourcetype:I
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", apn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sourcetype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    move-object/from16 v0, v25

    invoke-interface {v2, v0, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->isSkipApn(Ljava/lang/String;Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 429
    :cond_1
    new-instance v20, Lcom/android/jrdsettings/ApnPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 431
    .local v20, pref:Lcom/android/jrdsettings/ApnPreference;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/jrdsettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/ApnPreference;->setPersistent(Z)V

    .line 435
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 438
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/ApnPreference;->setSlotId(I)V

    .line 439
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ApnPreference;->setSourceType(I)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 446
    .local v16, isEditable:Z
    if-nez v24, :cond_2

    if-eqz v16, :cond_5

    :cond_2
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/ApnPreference;->setApnEditable(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->isSelectable(Ljava/lang/String;)Z

    move-result v22

    .line 451
    .local v22, selectable:Z
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/ApnPreference;->setSelectable(Z)V

    .line 452
    if-eqz v22, :cond_6

    .line 453
    if-nez v23, :cond_3

    .line 454
    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/ApnPreference;->setChecked()V

    .line 455
    move-object/from16 v23, v17

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 458
    invoke-virtual/range {v20 .. v20}, Lcom/android/jrdsettings/ApnPreference;->setChecked()V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 460
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 463
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 446
    .end local v22           #selectable:Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 465
    .restart local v22       #selectable:Z
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 469
    .end local v8           #apn:Ljava/lang/String;
    .end local v16           #isEditable:Z
    .end local v17           #key:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #pref:Lcom/android/jrdsettings/ApnPreference;
    .end local v22           #selectable:Z
    .end local v24           #sourcetype:I
    .end local v25           #type:Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 473
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectableApnCount:I

    .line 474
    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 476
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/jrdsettings/ApnPreference;

    .line 477
    .local v10, apnPref:Lcom/android/jrdsettings/ApnPreference;
    const/4 v14, 0x1

    .local v14, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/jrdsettings/ApnSettings;->mSelectableApnCount:I

    if-ge v14, v2, :cond_9

    .line 478
    invoke-virtual {v9, v14}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/jrdsettings/ApnPreference;

    .line 480
    .local v11, apnTemp:Lcom/android/jrdsettings/ApnPreference;
    :try_start_0
    invoke-virtual {v10}, Lcom/android/jrdsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/jrdsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-le v2, v3, :cond_8

    .line 481
    move-object v10, v11

    .line 477
    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 483
    :catch_0
    move-exception v13

    .line 484
    .local v13, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 487
    .end local v11           #apnTemp:Lcom/android/jrdsettings/ApnPreference;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_9
    invoke-virtual {v10}, Lcom/android/jrdsettings/ApnPreference;->setChecked()V

    .line 488
    invoke-virtual {v10}, Lcom/android/jrdsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v23

    .line 489
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn alphabetically key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v10           #apnPref:Lcom/android/jrdsettings/ApnPreference;
    .end local v14           #i:I
    :cond_a
    if-eqz v23, :cond_b

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 498
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/Preference;

    .line 499
    .local v21, preference:Landroid/preference/Preference;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 501
    .end local v21           #preference:Landroid/preference/Preference;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    move-object/from16 v0, p0

    invoke-interface {v3, v4, v0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 502
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 177
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 179
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 181
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 555
    const/4 v7, 0x0

    .line 557
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 559
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 560
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 561
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 563
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    return-object v7
.end method

.method private initSimState()V
    .locals 4

    .prologue
    .line 718
    sget-object v1, Lcom/mediatek/apn/ApnUtils;->URI_LIST:[Landroid/net/Uri;

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mUri:Landroid/net/Uri;

    .line 719
    sget-object v1, Lcom/mediatek/apn/ApnUtils;->NUMERIC_LIST:[Ljava/lang/String;

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    aget-object v1, v1, v2

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;

    .line 720
    sget-object v1, Lcom/mediatek/apn/ApnUtils;->RESTORE_URI_LIST:[Landroid/net/Uri;

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 721
    iget v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 723
    .local v0, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 724
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/ApnSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 726
    :cond_0
    iget v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    if-nez v1, :cond_1

    const-string v1, "imsi"

    :goto_0
    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mApnCheckImsi:Ljava/lang/String;

    .line 734
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getRestoreCarrierUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    .line 735
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumeric "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->getSpn(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSpn:Ljava/lang/String;

    .line 740
    iget v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->getIMSI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mIMSI:Ljava/lang/String;

    .line 741
    iget v1, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->getPnn(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mPnn:Ljava/lang/String;

    .line 744
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->writerImsiForApnAutoPopupCheck()V

    .line 745
    return-void

    .line 726
    :cond_1
    const-string v1, "imsi_gemini"

    goto :goto_0
.end method

.method private initSlotId()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 695
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slotid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    .line 696
    iget v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    if-ne v0, v2, :cond_1

    .line 697
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    .line 698
    iget v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    if-ne v0, v2, :cond_0

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    .line 700
    const v0, 0x7f090566

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->startSelectSimActivity(Landroid/app/Activity;I)V

    .line 709
    :goto_0
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->unlockSimcard()V

    .line 703
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->initSimState()V

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->unlockSimcard()V

    .line 707
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->initSimState()V

    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 568
    const-string v0, "ApnSettings"

    const-string v1, "restore Default Apn."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ApnSettings;->showDialog(I)V

    .line 570
    sput-boolean v3, Lcom/android/jrdsettings/ApnSettings;->sRestoreDefaultApnMode:Z

    .line 572
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/jrdsettings/ApnSettings;Lcom/android/jrdsettings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 578
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 580
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 581
    new-instance v0, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/jrdsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 587
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 546
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 547
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 549
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 550
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method private writerImsiForApnAutoPopupCheck()V
    .locals 6

    .prologue
    .line 319
    const-string v3, "apncheck"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/jrdsettings/ApnSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 320
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 322
    .local v1, newimsi:Ljava/lang/String;
    const/4 v3, -0x1

    iget v4, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    if-eq v3, v4, :cond_0

    .line 323
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mApnCheckImsi:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 329
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mApnCheckImsi:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save the new imsi, new imsi is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 679
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 681
    if-ne v3, p2, :cond_1

    .line 682
    const-string v0, "slotid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    .line 683
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->unlockSimcard()V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    .line 685
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->initSimState()V

    .line 690
    :cond_0
    :goto_0
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 750
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const v4, 0x7f060004

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    .line 260
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .local v0, tempbundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 262
    const-string v1, "startbypoweron"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    .line 263
    const-string v1, "ApnSettings"

    const-string v2, "onCreate tempbundle is no null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 266
    const-string v1, "ApnSettings"

    const-string v2, "onCreate, isstartbysetting is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->setView()V

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 280
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 281
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 282
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v1, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->initTetherField(Landroid/app/Activity;)V

    .line 284
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getRcseApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    .line 285
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnSettings;->mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;->addRcseOnlyApnStateChanged(Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 288
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 292
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnSettings;->mUnlockService:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 293
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 296
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->initSlotId()V

    .line 298
    return-void

    .line 272
    :cond_1
    const-string v1, "ApnSettings"

    const-string v2, "onCreate, isstartbysetting is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/ApnSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 636
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 637
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 638
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09058a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 639
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 642
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 507
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    const v3, 0x7f090582

    const v4, 0x7f09058b

    iget-object v5, p0, Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/settings/ext/IApnSettingsExt;->addMenu(Landroid/view/Menu;Landroid/app/Activity;IILjava/lang/String;)V

    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 371
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mRcseExt:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mListener:Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;->removeRcseOnlyApnStateChanged(Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 380
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 383
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mReceiveIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mReceiveIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mReceiveIntent:Landroid/content/Intent;

    .line 388
    :cond_1
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 654
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 656
    if-eqz p2, :cond_0

    .line 657
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-interface {v1, v2, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 659
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 665
    const-string v2, "startbypoweron"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 666
    .local v1, startPowerOn:Z
    const-string v2, "slotid"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 668
    .local v0, slotId:I
    if-ne v1, v4, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    if-eq v0, v2, :cond_0

    .line 669
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings;->mReceiveIntent:Landroid/content/Intent;

    .line 675
    :goto_0
    return-void

    .line 671
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/ApnSettings;->setIntent(Landroid/content/Intent;)V

    .line 672
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->initSlotId()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 513
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 524
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 515
    :pswitch_0
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 519
    :pswitch_1
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 359
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 361
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPause][mIsGetSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 535
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 539
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 542
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 647
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 650
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 341
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onResume][mIsGetSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-boolean v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "ApnSettings"

    const-string v1, "deal with Sim hot swap in onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->dealWithSimHotSwap()V

    .line 348
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    sget-boolean v0, Lcom/android/jrdsettings/ApnSettings;->sRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/jrdsettings/ApnSettings;->fillList()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0, p0}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateTetherState(Landroid/app/Activity;)V

    .line 355
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 189
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings;->mIsStartByPowerOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->finish()V

    .line 192
    :cond_0
    return-void
.end method

.method public setView()V
    .locals 6

    .prologue
    .line 302
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 307
    .local v0, aButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090645

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_0
    new-instance v3, Lcom/android/jrdsettings/ApnSettings$4;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/ApnSettings$4;-><init>(Lcom/android/jrdsettings/ApnSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/jrdsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method public unlockSimcard()V
    .locals 6

    .prologue
    .line 757
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlockSimcard() ,mITelephony "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/ApnSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 760
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    iget v4, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v2

    .line 763
    .local v2, simState:I
    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 764
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget v4, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    const/16 v5, 0x12e

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 765
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data enable check change request pin , mSlotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/jrdsettings/ApnSettings;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 774
    .end local v2           #simState:I
    :cond_0
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ApnSettings"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 770
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 771
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "ApnSettings"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
