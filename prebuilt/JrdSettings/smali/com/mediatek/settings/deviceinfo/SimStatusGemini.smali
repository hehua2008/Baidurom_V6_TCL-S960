.class public Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Gemini_SimStatus"

.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mHasSlotId:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimCount:I

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 96
    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 98
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    .line 113
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    .line 115
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 467
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 309
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, strSummary:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 313
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 314
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v2           #strSummary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Gemini_SimStatus"

    const-string v4, "fail to get system property"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 324
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 329
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 348
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    .line 349
    .local v1, state:I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 368
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void

    .line 353
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    goto :goto_0

    .line 356
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    goto :goto_0

    .line 359
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090255

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    goto :goto_0

    .line 362
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090254

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 336
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, netWorkTypeName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/IStatusGeminiExt;->customizeNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkTypeName, mSlotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 341
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 342
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v0           #netWorkTypeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 374
    .local v1, state:I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 393
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f09024f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getCurrentPlmnSpnPara()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void

    .line 378
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    goto :goto_0

    .line 384
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    goto :goto_0

    .line 387
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    goto :goto_0

    .line 399
    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f090250

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 205
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-static {p0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 206
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, simDisplayName:Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 209
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 210
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simDisplayName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentPlmnSpnPara()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, isShowPlmnSim1:Z
    const/4 v2, 0x0

    .line 518
    .local v2, isShowSpnSim1:Z
    const/4 v5, 0x0

    .line 519
    .local v5, plmnSim1:Ljava/lang/String;
    const/4 v7, 0x0

    .line 520
    .local v7, spnSim1:Ljava/lang/String;
    const/4 v1, 0x0

    .line 521
    .local v1, isShowPlmnSim2:Z
    const/4 v3, 0x0

    .line 522
    .local v3, isShowSpnSim2:Z
    const/4 v6, 0x0

    .line 523
    .local v6, plmnSim2:Ljava/lang/String;
    const/4 v8, 0x0

    .line 525
    .local v8, spnSim2:Ljava/lang/String;
    const/4 v4, 0x0

    .line 527
    .local v4, plmn:Ljava/lang/String;
    iget v11, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-ne v11, v9, :cond_4

    .line 528
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "plmn_name_sim2"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "spn_name_sim2"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 530
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "show_plmn_sim2"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_1

    move v1, v9

    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "show_spn_sim2"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_2

    move v3, v9

    .line 532
    :goto_1
    const-string v9, "Gemini_SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrentPlmnSpnPara  mSimId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " plmnSim2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isShowPlmnSim2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " spnSim2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isShowSpnSim2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v1, :cond_3

    .line 534
    move-object v4, v6

    .line 550
    :cond_0
    :goto_2
    const-string v9, "Gemini_SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrentPlmnSpnPara  mSimId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " plmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v4

    :cond_1
    move v1, v10

    .line 530
    goto :goto_0

    :cond_2
    move v3, v10

    .line 531
    goto :goto_1

    .line 535
    :cond_3
    if-eqz v3, :cond_0

    .line 536
    move-object v4, v8

    goto :goto_2

    .line 539
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "plmn_name_sim1"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "spn_name_sim1"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 541
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "show_plmn_sim1"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_5

    move v0, v9

    .line 542
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "show_spn_sim1"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_6

    move v2, v9

    .line 543
    :goto_4
    const-string v9, "Gemini_SimStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrentPlmnSpnPara  mSimId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " plmnSim1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isShowPlmnSim1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " spnSim1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isShowSpnSim1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-eqz v0, :cond_7

    .line 545
    move-object v4, v5

    goto/16 :goto_2

    :cond_5
    move v0, v10

    .line 541
    goto :goto_3

    :cond_6
    move v2, v10

    .line 542
    goto :goto_4

    .line 546
    :cond_7
    if-eqz v2, :cond_0

    .line 547
    move-object v4, v7

    goto/16 :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 494
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    .line 497
    if-ne v3, p2, :cond_0

    .line 498
    const-string v0, "slotid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 499
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    .line 507
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 512
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, -0x2

    .line 170
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 172
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 173
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->addPreferencesFromResource(I)V

    .line 175
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusGeminiExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    .line 176
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, it:Landroid/content/Intent;
    const-string v1, "slotid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 180
    const-string v1, "Gemini_SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-ne v1, v4, :cond_0

    .line 184
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 186
    :cond_0
    iget v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 187
    const v1, 0x7f090055

    invoke-static {p0, v1}, Lcom/mediatek/gemini/GeminiUtils;->startSelectSimActivity(Landroid/app/Activity;I)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    .line 195
    sget-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f090238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .line 196
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 197
    new-instance v1, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 198
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 201
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 202
    return-void

    .line 189
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    .line 190
    const-string v1, "Gemini_SimStatus"

    const-string v2, "no need to sim selection"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 220
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 221
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 285
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 286
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 226
    iget-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-eq v5, v9, :cond_0

    .line 231
    iget-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v5, :cond_2

    .line 232
    iput-boolean v10, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 233
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, rawNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 251
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 252
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_3
    const-string v5, "number"

    invoke-direct {p0, v5, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    .line 260
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    .line 262
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 264
    .local v4, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 265
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    iput v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    .line 266
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 267
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 268
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x141

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 274
    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    if-gt v5, v10, :cond_0

    .line 276
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v6, 0x7f090055

    invoke-virtual {p0, v6}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v9}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, newTitle:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method updateSignalStrength()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const v10, 0x7f09025b

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 406
    const-string v6, "Gemini_SimStatus"

    const-string v7, "updateSignalStrength()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 412
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 423
    .local v1, r:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 424
    .local v0, isGsmSignal:Z
    const/4 v3, 0x0

    .line 425
    .local v3, signalDbm:I
    const/4 v2, 0x0

    .line 426
    .local v2, signalAsu:I
    const/4 v4, 0x0

    .line 427
    .local v4, signalDbmEvdo:I
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v6, :cond_3

    .line 428
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 429
    if-eqz v0, :cond_5

    .line 430
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    .line 431
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 432
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " asu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-eq v9, v3, :cond_0

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v11, v6, :cond_0

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v12, v6, :cond_1

    :cond_0
    move v3, v5

    .line 436
    :cond_1
    if-eq v9, v2, :cond_2

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v11, v6, :cond_2

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v12, v6, :cond_3

    :cond_2
    move v2, v5

    .line 448
    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    .line 449
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f09025c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    .end local v0           #isGsmSignal:Z
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #signalAsu:I
    .end local v3           #signalDbm:I
    .end local v4           #signalDbmEvdo:I
    :cond_4
    :goto_1
    return-void

    .line 439
    .restart local v0       #isGsmSignal:Z
    .restart local v1       #r:Landroid/content/res/Resources;
    .restart local v2       #signalAsu:I
    .restart local v3       #signalDbm:I
    .restart local v4       #signalDbmEvdo:I
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 440
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    .line 441
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-ne v9, v3, :cond_6

    move v3, v5

    .line 444
    :cond_6
    if-ne v9, v4, :cond_7

    move v4, v5

    :cond_7
    goto/16 :goto_0

    .line 456
    :cond_8
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090184

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
