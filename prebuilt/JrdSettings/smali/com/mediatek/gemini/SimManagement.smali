.class public Lcom/mediatek/gemini/SimManagement;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "SimManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/SimManagement$13;,
        Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_USAGE_DISABLED_DIALOG_OK:Ljava/lang/String; = "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final ATTACH_DATA_CONN_TIME_OUT:I = 0x7530

.field private static final CONFIRM_DIALOG_MSG_ID:Ljava/lang/String; = "confirm_dialog_msg_id"

.field private static final DATA_3G_SWITCH_TIME_OUT_MSG:I = 0x7d2

.field private static final DATA_SWITCH_TIME_OUT_MSG:I = 0x7d0

.field private static final DETACH_DATA_CONN_TIME_OUT:I = 0x2710

.field private static final DIALOG_3G_MODEM_SWITCH_CONFIRM:I = 0x3e9

.field private static final DIALOG_GPRS_SWITCH_CONFIRM:I = 0x3ea

.field private static final DIALOG_NOT_REMOVE_TIME_OUT:I = 0x3e8

.field private static final DIALOG_NOT_SHOW_SUCCESS_MSG:I = 0x7d1

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final GPRS_SELECTED_ID:Ljava/lang/String; = "gprs_selected_id"

.field private static final KEY_3G_SERVICE_SETTING:Ljava/lang/String; = "3g_service_settings"

.field private static final KEY_DEFAULT_SIM_SETTINGS_CATEGORY:Ljava/lang/String; = "default_sim"

.field private static final KEY_GENERAL_SETTINGS_CATEGORY:Ljava/lang/String; = "general_settings"

.field private static final KEY_GPRS_SIM_SETTING:Ljava/lang/String; = "gprs_sim_setting"

.field private static final KEY_SIM_CONTACTS_SETTINGS:Ljava/lang/String; = "contacts_sim"

.field private static final KEY_SIM_INFO_CATEGORY:Ljava/lang/String; = "sim_info"

.field private static final KEY_SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field private static final KEY_VIDEO_CALL_SIM_SETTING:Ljava/lang/String; = "video_call_sim_setting"

.field private static final KEY_VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field private static final PROGRESS_DIALOG:I = 0x3e8

.field private static final PROGRESS_DIALOG_MSG_ID:Ljava/lang/String; = "progress_dialog_msg_id"

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final SWITCH_3G_TIME_OUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SimManagementSettings"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final VIDEO_CALL_OFF:I = -0x1

.field private static final VT_SELECTED_ID:Ljava/lang/String; = "vt_selected_id"


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataSwitchMsgIndex:I

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIs3GSwitchManualEnabled:Z

.field private mIs3gOff:Z

.field private mIsDataConnectActing:Z

.field private mIsManuAllowed:Z

.field private mIsManuSelected:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mIsSmsCapable:Z

.field private mIsVoiceCapable:Z

.field private mIsVoipAvailable:Z

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mNoNeedRestoreProgDlg:Z

.field private mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

.field private mProDlgMsgId:I

.field private mRemoveProgDlg:Z

.field private mSelectedGprsSimId:J

.field private mSelectedVideoSimId:J

.field private mSimAndContacts:Landroid/preference/PreferenceScreen;

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimInfoPreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/simui/SimCardInfoPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVTCallItemAvailable:Z

.field private mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mVoiceCallObserver:Landroid/database/ContentObserver;

.field private mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    .line 79
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 90
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 91
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    .line 131
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 134
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 136
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 137
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 138
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 144
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 145
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    .line 156
    new-instance v0, Lcom/mediatek/gemini/SimManagement$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$1;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 163
    new-instance v0, Lcom/mediatek/gemini/SimManagement$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$2;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallObserver:Landroid/database/ContentObserver;

    .line 170
    new-instance v0, Lcom/mediatek/gemini/SimManagement$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$3;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    .line 181
    new-instance v0, Lcom/mediatek/gemini/SimManagement$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$4;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    .line 208
    new-instance v0, Lcom/mediatek/gemini/SimManagement$5;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$5;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1797
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVoiceCallPrefe()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initPreferenceUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateSimInfoForPreference()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/SimManagement;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->updatePrefIndicator(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/gemini/SimManagement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gemini/SimManagement;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gemini/SimManagement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/gemini/SimManagement;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimManagement;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->handleRadioStatus(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->handleTransaction(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/gemini/SimManagement;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->switchGeminiPlusSimRadioState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/gemini/SimManagement;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchVideoCallDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealWithSwitchComplete()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    return-void
.end method

.method private addSimInfoPreference()V
    .locals 7

    .prologue
    .line 807
    const-string v5, "SimManagementSettings"

    const-string v6, "addSimInfoPreference()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v5, "sim_info"

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 810
    .local v2, simInfoListCategory:Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_1

    .line 812
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-eq v5, v6, :cond_1

    .line 813
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 814
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 815
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 816
    .local v4, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->initSimInfoPreference(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    move-result-object v3

    .line 817
    .local v3, simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 821
    .end local v3           #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v5, :cond_1

    .line 822
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 823
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 824
    const v5, 0x7f0900aa

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 825
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 830
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private current3GSlotId()I
    .locals 4

    .prologue
    .line 978
    const/4 v1, -0x1

    .line 980
    .local v1, slot3G:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 981
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 986
    :cond_0
    :goto_0
    return v1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 9
    .parameter "simid"

    .prologue
    const v5, 0x7f0900b6

    const v4, 0x7f0900b5

    const/4 v1, 0x1

    .line 1167
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 1168
    .local v2, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    .line 1169
    .local v3, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v6, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 1170
    .local v0, isInRoaming:Z
    iget v6, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    if-ne v6, v1, :cond_1

    .line 1171
    .local v1, isRoamingDataAllowed:Z
    :goto_0
    const-string v6, "SimManagementSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInRoaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isRoamingDataAllowed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    if-eqz v0, :cond_3

    .line 1176
    if-nez v1, :cond_2

    .line 1177
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v5, :cond_0

    .line 1178
    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1183
    const v4, 0x7f0900b8

    .line 1213
    :cond_0
    :goto_1
    return v4

    .line 1170
    .end local v1           #isRoamingDataAllowed:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1195
    .restart local v1       #isRoamingDataAllowed:Z
    :cond_2
    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v4, :cond_4

    .line 1196
    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    if-eq v4, v6, :cond_4

    move v4, v5

    .line 1199
    goto :goto_1

    .line 1204
    :cond_3
    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v4, :cond_4

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    if-eq v4, v6, :cond_4

    move v4, v5

    .line 1209
    goto :goto_1

    .line 1213
    :cond_4
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private dealDialogOnResume()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 564
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDialogOnResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "SimManagementSettings"

    const-string v1, "on resume to remove dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 571
    :cond_0
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveProgDlg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 580
    :cond_2
    return-void
.end method

.method private dealDlgOnAirplaneMode()V
    .locals 4

    .prologue
    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    .line 582
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDlgOnAirplaneMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 586
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 589
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    goto :goto_0
.end method

.method private dealWithSwitchComplete()V
    .locals 6

    .prologue
    .line 1485
    const-string v2, "SimManagementSettings"

    const-string v3, "dealWithSwitchComplete()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSIMModeSwitching is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1491
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 1492
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    const-string v2, "SimManagementSettings"

    const-string v3, "Since the dual sim mode changed, update switch state"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_1

    .line 1495
    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 1496
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-nez v2, :cond_2

    .line 1497
    const-string v2, "SimManagementSettings"

    const-string v3, "dual mode change by other not sim management"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :goto_2
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V

    goto :goto_0

    .line 1499
    :cond_2
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1500
    const-string v2, "SimManagementSettings"

    const-string v3, "Dialog is not show yet but dual sim modechange has sent msg"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1503
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    .line 1504
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    goto :goto_2
.end method

.method private enableDataRoaming(J)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 1649
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataRoaming with SimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->isSimInsertedIn(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1653
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 1654
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1665
    :goto_0
    return-void

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimManagementSettings"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1663
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not inserted in phone do nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findEachPreference()V
    .locals 1

    .prologue
    .line 410
    const-string v0, "voice_call_sim_setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 411
    const-string v0, "video_call_sim_setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 412
    const-string v0, "sms_sim_setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 413
    const-string v0, "gprs_sim_setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 414
    const-string v0, "contacts_sim"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    .line 416
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 417
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 419
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 422
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setIconForDefaultSimPref()V

    .line 423
    return-void
.end method

.method private findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .parameter "simid"

    .prologue
    .line 1217
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1218
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1223
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1222
    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInfoBySimId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findSIMInofBySlotId(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .parameter "mslot"

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1228
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p1, :cond_0

    .line 1233
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1232
    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInofBySlotId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataValue(Ljava/lang/String;)J
    .locals 3
    .parameter "dataString"

    .prologue
    .line 1724
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x5

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/mediatek/gemini/SimManagement$GenSimSettingType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, origList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    .line 944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 945
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v1, Lcom/mediatek/gemini/SimManagement$13;->$SwitchMap$com$mediatek$gemini$SimManagement$GenSimSettingType:[I

    invoke-virtual {p2}, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 974
    :cond_0
    :goto_0
    return-object v0

    .line 947
    :pswitch_0
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-eqz v1, :cond_1

    .line 948
    const-string v1, "SimManagementSettings"

    const-string v2, "set internet call item"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 952
    :cond_1
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v5, :cond_0

    .line 953
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 958
    :pswitch_1
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v5, :cond_2

    .line 959
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSmsChoiceValueArray(Ljava/util/List;)V

    goto :goto_0

    .line 964
    :pswitch_2
    const-string v1, "SimManagementSettings"

    const-string v2, "only sim id no need add other items"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 967
    :pswitch_3
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v1, :cond_0

    .line 968
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInverseNumber(I)I
    .locals 7
    .parameter "num"

    .prologue
    .line 1425
    const/4 v0, 0x4

    .line 1426
    .local v0, constNum:I
    xor-int/lit8 v4, p1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 1427
    .local v2, inverseStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1428
    .local v3, str:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1429
    .local v1, inverseNum:I
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inverseNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return v1
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1545
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1547
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1549
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/gemini/SimManagement$GenSimSettingType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f090096

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/mediatek/gemini/SimManagement$13;->$SwitchMap$com$mediatek$gemini$SimManagement$GenSimSettingType:[I

    invoke-virtual {p1}, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 937
    const-string v1, "SimManagementSettings"

    const-string v2, "pass wrong type"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 912
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-eqz v1, :cond_2

    .line 913
    const-string v1, "SimManagementSettings"

    const-string v2, "set internet call item"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    invoke-interface {v1, v0, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeVoiceChoiceArray(Ljava/util/List;Z)V

    goto :goto_0

    .line 917
    :cond_2
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v4, :cond_1

    .line 918
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 924
    :pswitch_2
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v4, :cond_3

    .line 925
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_3
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSmsChoiceArray(Ljava/util/List;)V

    goto :goto_0

    .line 932
    :pswitch_3
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v1, :cond_0

    .line 933
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSIMInfoById(Ljava/lang/Long;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 6
    .parameter "simid"

    .prologue
    .line 1157
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1158
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1163
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1162
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error there is no correct siminfo found by simid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSimIndicator(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1302
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimIndicator---slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const-string v0, "SimManagementSettings"

    const-string v1, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v0, 0x1

    .line 1307
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-static {v0, v1, p1}, Lcom/mediatek/gemini/GeminiUtils;->getSimIndicator(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ITelephony;I)I

    move-result v0

    goto :goto_0
.end method

.method private getSimInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 621
    const-string v2, "SimManagementSettings"

    const-string v3, "getSimInfo()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    .line 623
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    .line 624
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total inserted sim card ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 629
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDisplayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 632
    .local v1, slot:I
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-nez v1, :cond_1

    .line 634
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 638
    :cond_0
    :goto_1
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mColor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimInfoId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 635
    :cond_1
    if-ne v1, v7, :cond_0

    .line 636
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    goto :goto_1

    .line 643
    .end local v1           #slot:I
    :cond_2
    return-void
.end method

.method private handleRadioStatus(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 793
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsSIMRadioSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-eqz v2, :cond_0

    .line 795
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 797
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 798
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_0

    .line 800
    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 801
    return-void
.end method

.method private handleTransaction(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 402
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 404
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 407
    :cond_0
    return-void

    .line 402
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "SimManagementSettings"

    const-string v1, "initIntentFilter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    .line 477
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private initPreferenceUI()V
    .locals 2

    .prologue
    .line 650
    const-string v0, "SimManagementSettings"

    const-string v1, "initPreferenceUI() and update UI"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 654
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V

    .line 655
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initSimSelectDialogPref()V

    .line 656
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setPreferenceProperty()V

    .line 657
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setNoSimInfoUi()V

    .line 660
    :cond_0
    return-void

    .line 653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSimInfoPreference(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .locals 9
    .parameter "simInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 753
    iget v6, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v6}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v3

    .line 755
    .local v3, status:I
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v0, v4

    .line 756
    .local v0, isAirplaneModeOn:Z
    :goto_0
    new-instance v2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    sget-object v6, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Switch:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v6, v7, v0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;Z)V

    .line 758
    .local v2, simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v2, p1, v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoProperty(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V

    .line 761
    invoke-virtual {v2, v5}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setShouldDisableView(Z)V

    .line 762
    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setWidgetClickable(Z)V

    .line 763
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simid status is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget v4, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v1

    .line 765
    .local v1, isRadioOn:Z
    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    .line 766
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim card "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radio state is isRadioOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v4, Lcom/mediatek/gemini/SimManagement$6;

    invoke-direct {v4, p0, p1, v2}, Lcom/mediatek/gemini/SimManagement$6;-><init>(Lcom/mediatek/gemini/SimManagement;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V

    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 789
    return-object v2

    .end local v0           #isAirplaneModeOn:Z
    .end local v1           #isRadioOn:Z
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_0
    move v0, v5

    .line 755
    goto :goto_0
.end method

.method private initSimSelectDialogPref()V
    .locals 14

    .prologue
    .line 833
    const-string v11, "SimManagementSettings"

    const-string v12, "initSimSelecDialogPref()"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v8, simIdlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v9, simIndicatorList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v3, itemStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v1, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 839
    .local v10, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v11, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    iget v11, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v11}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-wide v11, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    .end local v10           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v11}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v6

    .line 846
    .local v6, normalListVoice:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "SimManagementSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "normalListVoice = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v11, v12, v9, v6, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 848
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v12, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v1, v12}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 851
    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v11}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v5

    .line 852
    .local v5, normalListSms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "SimManagementSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "normalListSms = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v11, v12, v9, v5, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 854
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v12, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v1, v12}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 856
    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-eqz v11, :cond_1

    .line 857
    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v11}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v7

    .line 858
    .local v7, normalListVt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "SimManagementSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "normalListVt = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v11, v12, v9, v7, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 860
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v12, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v1, v12}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 863
    .end local v7           #normalListVt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v11}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v4

    .line 864
    .local v4, normalListGprs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "SimManagementSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "normalListGprs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v11, v12}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSimInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 867
    .local v0, dataSimInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v11, v0, v9, v4, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 868
    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v12, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v1, v12}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 869
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setSimSelectEnableState()V

    .line 870
    return-void
.end method

.method private isGPRSEnable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1735
    const/4 v1, 0x0

    .line 1737
    .local v1, isMMSProcess:Z
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1738
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 1739
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1740
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 1741
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1742
    .local v4, state:Landroid/net/NetworkInfo$State;
    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mms state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_2

    :cond_0
    move v1, v6

    .line 1747
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v2

    .line 1748
    .local v2, isRadioOff:Z
    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMMSProcess="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRadioOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :goto_1
    return v6

    .end local v2           #isRadioOff:Z
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    :cond_2
    move v1, v5

    .line 1743
    goto :goto_0

    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    .restart local v2       #isRadioOff:Z
    :cond_3
    move v6, v5

    .line 1750
    goto :goto_1
.end method

.method private isRadioInOn(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 729
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioInOn with slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    const/4 v1, 0x0

    .line 744
    :goto_0
    return v1

    .line 733
    :cond_0
    const/4 v1, 0x0

    .line 736
    .local v1, isRadioInOn:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 743
    :goto_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioInOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isRadioOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1757
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v1, :cond_1

    .line 1762
    .local v0, isAllRadioOff:Z
    :cond_0
    :goto_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return v0

    .line 1757
    .end local v0           #isAllRadioOff:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimInsertedIn(J)Z
    .locals 5
    .parameter "simId"

    .prologue
    .line 554
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 555
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 556
    const/4 v2, 0x1

    .line 560
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v2

    .line 559
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not inserted in phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportVTCallSetting()Z
    .locals 1

    .prologue
    .line 1699
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoipAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1608
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_internet_call_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1611
    .local v0, isInternetCallEnabled:I
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private removeDefaultSettingsItem()V
    .locals 5

    .prologue
    .line 438
    const-string v3, "SimManagementSettings"

    const-string v4, "removeGeneralSettingsItem"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v3, "default_sim"

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 440
    .local v2, pref:Landroid/preference/PreferenceGroup;
    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v3, :cond_4

    .line 441
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    if-nez v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    :cond_1
    const-string v3, "dualsim.ui.support"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 455
    .local v0, dualSimUI:Z
    if-nez v0, :cond_3

    .line 461
    if-eqz v2, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    :cond_2
    const-string v3, "general_settings"

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 466
    .local v1, generalSettings:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_3

    .line 467
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    .end local v1           #generalSettings:Landroid/preference/PreferenceGroup;
    :cond_3
    return-void

    .line 444
    .end local v0           #dualSimUI:Z
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-nez v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private removeProgDlg()V
    .locals 2

    .prologue
    .line 1513
    const-string v0, "SimManagementSettings"

    const-string v1, "removeProgDlg()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    const-string v0, "SimManagementSettings"

    const-string v1, "Progress Dialog removed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 1521
    :goto_0
    return-void

    .line 1518
    :cond_0
    const-string v0, "SimManagementSettings"

    const-string v1, "under onpause not enable to remove set flag as true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    goto :goto_0
.end method

.method private removeUnusedPref()V
    .locals 4

    .prologue
    .line 594
    const-string v1, "SimManagementSettings"

    const-string v2, "removeUnusedPref()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v1, "default_sim"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 597
    .local v0, pref:Landroid/preference/PreferenceGroup;
    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 604
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 605
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    if-nez v1, :cond_2

    .line 606
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 614
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-nez v1, :cond_0

    .line 615
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video call is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remove the pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private replaceIMString()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 390
    const-string v1, "sim_info"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 391
    .local v0, simInfoListCategory:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 392
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v2, 0x7f090088

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090087

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090091

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method private setIconForDefaultSimPref()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setIcon(I)V

    .line 428
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setIcon(I)V

    .line 429
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setIcon(I)V

    .line 430
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setIcon(I)V

    .line 431
    return-void
.end method

.method private setNoSimInfoUi()V
    .locals 6

    .prologue
    const v5, 0x1110007

    .line 682
    const-string v2, "sim_info"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 683
    .local v1, simInfoListCategory:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/jrdsettings/SettingsPreferenceFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 687
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 688
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 690
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f0900aa

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 694
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 697
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-eqz v2, :cond_3

    .line 698
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_0

    .line 702
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish() sim management for sim hot swap as mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 705
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 707
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->finish()V

    goto :goto_0

    .line 710
    :cond_4
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is multi pane, so do not finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it 2!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->finish()V

    goto/16 :goto_0
.end method

.method private setPreferenceProperty()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    .line 990
    const-string v10, "voice_call_sim_setting"

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v7

    .line 991
    .local v7, voicecallID:J
    const-string v10, "sms_sim_setting"

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 994
    .local v4, smsID:J
    const-string v10, "gprs_connection_sim_setting"

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 1000
    .local v0, dataconnectionID:J
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    .line 1001
    .local v6, videocallSlotID:I
    const-string v10, "SimManagementSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "voicecallID ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " smsID ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dataconnectionID ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " videocallSlotID ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v10, v7, v8}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1005
    const-wide/16 v10, -0x5

    cmp-long v10, v7, v10

    if-nez v10, :cond_0

    .line 1006
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v11, 0x7f090568

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(I)V

    .line 1008
    :cond_0
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v10, v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1009
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1010
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 1012
    iget-boolean v10, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-eqz v10, :cond_3

    .line 1013
    const/4 v10, -0x1

    if-eq v6, v10, :cond_1

    iget-boolean v10, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuSelected:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuAllowed:Z

    if-nez v10, :cond_4

    .line 1014
    :cond_1
    iput-boolean v9, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 1015
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v11, 0x7f090099

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(I)V

    .line 1023
    :cond_2
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v10, :cond_3

    .line 1025
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v11

    if-nez v11, :cond_5

    iget v11, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v11, v9, :cond_5

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v11, :cond_5

    :goto_1
    invoke-virtual {v10, v9}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 1027
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIs3gOff="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTelephony.is3GSwitchLocked() is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :cond_3
    :goto_2
    return-void

    .line 1017
    :cond_4
    invoke-direct {p0, v6}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 1018
    .local v3, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_2

    .line 1019
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v11, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    goto :goto_0

    .line 1025
    .end local v3           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 1031
    :catch_0
    move-exception v2

    .line 1032
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "SimManagementSettings"

    const-string v10, "mTelephony exception"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setSimSelectEnableState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 877
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 879
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 888
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_5

    .line 890
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 895
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_6

    .line 896
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 901
    :goto_2
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-ne v0, v1, :cond_7

    .line 902
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 906
    :cond_2
    :goto_3
    return-void

    .line 881
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_0

    .line 884
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_0

    .line 892
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_1

    .line 898
    :cond_6
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_2

    .line 903
    :cond_7
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v0, v1, :cond_2

    .line 904
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_3
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1707
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarEnableStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1710
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 1711
    if-eqz p1, :cond_0

    .line 1712
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1721
    :goto_0
    return-void

    .line 1714
    :cond_0
    const/high16 v1, 0x121

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1719
    :cond_1
    const-string v1, "SimManagementSettings"

    const-string v2, "Fail to get status bar instance"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDataConnDialog(Z)V
    .locals 4
    .parameter "isConnect"

    .prologue
    .line 1527
    const-wide/16 v0, 0x0

    .line 1528
    .local v0, delaytime:J
    if-eqz p1, :cond_0

    .line 1529
    const-wide/16 v0, 0x7530

    .line 1533
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1534
    const v2, 0x7f0900ac

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1535
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 1536
    return-void

    .line 1531
    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method private showProgressDlg(I)V
    .locals 3
    .parameter "dialogMsg"

    .prologue
    .line 1539
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDlg() with dialogMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iput p1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 1541
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    .line 1542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->setCancelable(Z)V

    .line 1543
    return-void
.end method

.method private switchGeminiPlusSimRadioState(I)V
    .locals 9
    .parameter "slot"

    .prologue
    .line 1434
    const-string v6, "SimManagementSettings"

    const-string v7, "switchGeminiPlusSimRadioState"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1437
    .local v0, dualSimMode:I
    move v4, p1

    .line 1439
    .local v4, modeSlot:I
    const/4 v3, 0x0

    .line 1440
    .local v3, isRadioOn:Z
    const-string v6, "SimManagementSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current dual sim mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "with slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    packed-switch p1, :pswitch_data_0

    .line 1455
    const-string v6, "SimManagementSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error of the slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :goto_0
    and-int v6, v0, v4

    if-lez v6, :cond_0

    .line 1459
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->getInverseNumber(I)I

    move-result v6

    and-int v1, v0, v6

    .line 1460
    .local v1, dualState:I
    const/4 v3, 0x0

    .line 1467
    :goto_1
    const/4 v5, 0x0

    .line 1468
    .local v5, msgId:I
    if-eqz v3, :cond_1

    .line 1469
    const v5, 0x7f09009e

    .line 1473
    :goto_2
    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1476
    const-string v6, "SimManagementSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dualState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isRadioOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1479
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "mode"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1482
    return-void

    .line 1443
    .end local v1           #dualState:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #msgId:I
    :pswitch_0
    const/4 v4, 0x1

    .line 1444
    goto :goto_0

    .line 1446
    :pswitch_1
    const/4 v4, 0x2

    .line 1447
    goto :goto_0

    .line 1449
    :pswitch_2
    const/4 v4, 0x4

    .line 1450
    goto :goto_0

    .line 1452
    :pswitch_3
    const/16 v4, 0x8

    .line 1453
    goto :goto_0

    .line 1462
    :cond_0
    or-int v1, v0, v4

    .line 1463
    .restart local v1       #dualState:I
    const/4 v3, 0x1

    goto :goto_1

    .line 1471
    .restart local v5       #msgId:I
    :cond_1
    const v5, 0x7f09009f

    goto :goto_2

    .line 1441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchGprsDefaultSIM(J)V
    .locals 9
    .parameter "simid"

    .prologue
    const-wide/16 v7, 0x0

    .line 1622
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchGprsDefaultSIM() with simid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    cmp-long v4, p1, v7

    if-ltz v4, :cond_0

    cmp-long v4, p1, v7

    if-lez v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->isSimInsertedIn(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1624
    :cond_0
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not available anymore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_1
    :goto_0
    return-void

    .line 1627
    :cond_2
    cmp-long v4, p1, v7

    if-lez v4, :cond_3

    const/4 v3, 0x1

    .line 1629
    .local v3, isConnect:Z
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1632
    .local v0, curConSimId:J
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curConSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    .line 1636
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "simid"

    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1640
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1641
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimManagement;->showDataConnDialog(Z)V

    goto :goto_0

    .line 1627
    .end local v0           #curConSimId:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isConnect:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private switchSimRadioState(IZ)V
    .locals 10
    .parameter "slot"
    .parameter "isChecked"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1312
    const-string v5, "SimManagementSettings"

    const-string v6, "switchSimRadioState"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1315
    .local v0, dualSimMode:I
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v5, v9}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1319
    const/4 v1, 0x0

    .line 1320
    .local v1, dualState:I
    const/4 v3, 0x0

    .line 1321
    .local v3, isRadioOn:Z
    packed-switch v0, :pswitch_data_0

    .line 1402
    const-string v5, "SimManagementSettings"

    const-string v6, "Error not correct values"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_0
    return-void

    .line 1323
    :pswitch_0
    if-nez p1, :cond_2

    .line 1324
    const/4 v1, 0x1

    .line 1328
    :cond_0
    :goto_1
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v3, 0x1

    .line 1407
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 1408
    .local v4, msgId:I
    if-eqz v3, :cond_c

    .line 1409
    const v4, 0x7f09009e

    .line 1413
    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1416
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1419
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "mode"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1421
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1325
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #msgId:I
    :cond_2
    if-ne p1, v8, :cond_0

    .line 1326
    const/4 v1, 0x2

    goto :goto_1

    .line 1332
    :pswitch_1
    if-nez p1, :cond_4

    .line 1333
    if-eqz p2, :cond_3

    .line 1334
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on slot 1 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move v1, v0

    .line 1336
    const/4 v3, 0x1

    .line 1341
    :goto_4
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1338
    :cond_3
    const/4 v1, 0x0

    .line 1339
    const/4 v3, 0x0

    goto :goto_4

    .line 1343
    :cond_4
    if-ne p1, v8, :cond_1

    .line 1344
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    if-eqz v5, :cond_5

    .line 1345
    const/4 v1, 0x3

    .line 1346
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1349
    :cond_5
    const/4 v1, 0x2

    .line 1350
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1356
    :pswitch_2
    if-ne p1, v8, :cond_7

    .line 1357
    if-eqz p2, :cond_6

    .line 1358
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on slot 2 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move v1, v0

    .line 1360
    const/4 v3, 0x1

    .line 1365
    :goto_6
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1362
    :cond_6
    const/4 v1, 0x0

    .line 1363
    const/4 v3, 0x0

    goto :goto_6

    .line 1367
    :cond_7
    if-nez p1, :cond_1

    .line 1368
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    if-eqz v5, :cond_8

    .line 1369
    const/4 v1, 0x3

    .line 1370
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1372
    :cond_8
    const/4 v1, 0x1

    .line 1373
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1379
    :pswitch_3
    if-nez p2, :cond_b

    .line 1380
    if-nez p1, :cond_a

    .line 1381
    const/4 v1, 0x2

    .line 1383
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1384
    const-string v5, "SimManagementSettings"

    const-string v6, "setToClosedSimSlot(PhoneConstants.GEMINI_SIM_1)"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_9
    :goto_8
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1386
    :cond_a
    if-ne p1, v8, :cond_9

    .line 1387
    const/4 v1, 0x1

    .line 1389
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v5, v8}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1390
    const-string v5, "SimManagementSettings"

    const-string v6, "setToClosedSimSlot(PhoneConstants.GEMINI_SIM_2)"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1396
    :cond_b
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on but actually they are all on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    move v1, v0

    .line 1398
    const/4 v3, 0x1

    .line 1400
    goto/16 :goto_2

    .line 1411
    .restart local v4       #msgId:I
    :cond_c
    const v4, 0x7f09009f

    goto/16 :goto_3

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchVideoCallDefaultSIM(J)V
    .locals 6
    .parameter "simid"

    .prologue
    .line 1673
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchVideoCallDefaultSIM to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 1675
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1676
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    if-nez v1, :cond_1

    .line 1678
    const-string v2, "SimManagementSettings"

    const-string v3, "Error no corrent siminfo found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-void

    .line 1682
    .restart local v1       #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    :try_start_0
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 3G capability"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1685
    const v2, 0x7f0900ad

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1686
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1688
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateDataConnPrefe()V
    .locals 6

    .prologue
    .line 1558
    const-wide/16 v0, 0x0

    .line 1560
    .local v0, simid:J
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1568
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gprs connection SIM changed with simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1570
    return-void
.end method

.method private updateDefaultSIMSummary(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Ljava/lang/Long;)V
    .locals 7
    .parameter "pref"
    .parameter "simid"

    .prologue
    const-wide/16 v5, 0x0

    .line 1133
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultSIMSummary() with simid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 1135
    invoke-direct {p0, p2}, Lcom/mediatek/gemini/SimManagement;->getSIMInfoById(Ljava/lang/Long;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1136
    .local v0, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 1137
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1148
    .end local v0           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1140
    const v1, 0x7f090097

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(I)V

    goto :goto_0

    .line 1141
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1142
    const v1, 0x7f090096

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(I)V

    goto :goto_0

    .line 1143
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 1144
    const v1, 0x7f090098

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setSummary(I)V

    goto :goto_0

    .line 1145
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateDefaultSIMSummary(Landroid/preference/DialogPreference;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private updatePrefIndicator(II)V
    .locals 5
    .parameter "slotId"
    .parameter "indicator"

    .prologue
    .line 493
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePrefIndicator with slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " indicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 495
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 496
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 497
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 498
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 499
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 500
    invoke-virtual {v1, p2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimIndicator(I)V

    goto :goto_0

    .line 503
    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    return-void
.end method

.method private updateSimInfoForPreference()V
    .locals 9

    .prologue
    .line 663
    const-string v5, "SimManagementSettings"

    const-string v6, "updateSimInfoForPreference"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 665
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 666
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 667
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 669
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v6}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSimInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 670
    .local v0, dataSimInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v5, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 671
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 672
    .local v3, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 673
    .local v4, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-virtual {v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 674
    invoke-virtual {v3, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0

    .line 678
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    return-void
.end method

.method private updateVideoCallDefaultSIM()V
    .locals 6

    .prologue
    .line 1586
    const-string v3, "SimManagementSettings"

    const-string v4, "updateVideoCallDefaultSIM()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 1589
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v2

    .line 1590
    .local v2, slotId:I
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    if-gez v2, :cond_1

    .line 1602
    .end local v2           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 1594
    .restart local v2       #slotId:I
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1595
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 1596
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1598
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2           #slotId:I
    :catch_0
    move-exception v0

    .line 1599
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimManagementSettings"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVoiceCallPrefe()V
    .locals 5

    .prologue
    .line 1576
    const-string v2, "voice_call_sim_setting"

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 1577
    .local v0, voicecallID:J
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice call SIM changed with simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1579
    return-void
.end method

.method private updateVoipPreference()V
    .locals 3

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    .line 544
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVoipAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 308
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 309
    const-string v2, "SimManagementSettings"

    const-string v4, "onCreate Sim Management"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->addPreferencesFromResource(I)V

    .line 312
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 318
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuAllowed:Z

    .line 319
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuSelected:Z

    .line 320
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuAllowed:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuSelected:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    .line 321
    const-string v2, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsManuAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuAllowed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mIsManuSelected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuSelected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIs3GSwitchManualEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    .line 331
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 332
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 333
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 338
    new-instance v2, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 339
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 340
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/Utils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 341
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 342
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isSupportVTCallSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    iput-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    .line 345
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsVoiceCapable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsSmsCapable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVTCallItemAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 352
    .local v1, parent:Landroid/preference/PreferenceGroup;
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v2, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 354
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initIntentFilter()V

    .line 355
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->findEachPreference()V

    .line 357
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeDefaultSettingsItem()V

    .line 359
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    .line 361
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    if-eqz p1, :cond_3

    .line 365
    const-string v2, "confirm_dialog_msg_id"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 366
    const-string v2, "progress_dialog_msg_id"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 368
    iget v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    if-eq v2, v6, :cond_2

    .line 370
    const-string v2, "SimManagementSettings"

    const-string v4, "mProDlgMsgId != -1 to remove dialog"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    .line 373
    :cond_2
    const-string v2, "vt_selected_id"

    invoke-virtual {p1, v2, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    .line 374
    const-string v2, "gprs_selected_id"

    invoke-virtual {p1, v2, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    .line 375
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onrestore the dailog msg id with mDataSwitchMsgIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mProDlgMsgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onrestore mSelectedVideoSimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSelectedGprsSimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->replaceIMString()V

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/settings/OobeUtils;->setSimView(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 384
    .end local v1           #parent:Landroid/preference/PreferenceGroup;
    :goto_1
    return-void

    .line 320
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const v11, 0x1080027

    const v10, 0x1040014

    const v9, 0x1040013

    const v8, 0x1040009

    .line 1238
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog() with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1241
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 1297
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1243
    :pswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1244
    .local v2, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1245
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1246
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    const v6, 0x7f0900ad

    if-ne v5, v6, :cond_0

    .line 1247
    const-string v5, "SimManagementSettings"

    const-string v6, "3G switch to dispatch home key"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1249
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1250
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, -0x8000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1251
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1252
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #win:Landroid/view/Window;
    :cond_0
    move-object v0, v2

    .line 1254
    goto :goto_0

    .line 1256
    .end local v2           #dialog:Landroid/app/ProgressDialog;
    :pswitch_1
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1257
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1258
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1259
    new-instance v5, Lcom/mediatek/gemini/SimManagement$9;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$9;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1269
    new-instance v5, Lcom/mediatek/gemini/SimManagement$10;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$10;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1275
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1276
    .local v0, alertDlg:Landroid/app/AlertDialog;
    goto :goto_0

    .line 1278
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    :pswitch_2
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1279
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1280
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1282
    new-instance v5, Lcom/mediatek/gemini/SimManagement$11;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$11;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1288
    new-instance v5, Lcom/mediatek/gemini/SimManagement$12;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$12;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1294
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1295
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1112
    invoke-super {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 1113
    const-string v1, "SimManagementSettings"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1120
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 1129
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1130
    :goto_0
    return-void

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimManagementSettings"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1104
    invoke-super {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onPause()V

    .line 1105
    const-string v0, "SimManagementSettings"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1107
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1108
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 1039
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, key:Ljava/lang/String;
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter onPreferenceChange function with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v5, "voice_call_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_call_sim_setting"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1044
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "simid"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1048
    const-string v6, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send broadcast voice call change with simid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-direct {p0, v5, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Ljava/lang/Long;)V

    .line 1099
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v10

    .line 1051
    .restart local p2
    :cond_1
    const-string v5, "video_call_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1053
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    .line 1054
    const/16 v5, 0x3e9

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    .line 1055
    new-instance v5, Lcom/mediatek/gemini/SimManagement$7;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$7;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 1061
    .restart local p2
    :cond_2
    const-string v5, "sms_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1062
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sms_sim_setting"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SMS_DEFAULT_SIM"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "simid"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1067
    const-string v6, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send broadcast sms change with simid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-direct {p0, v5, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Ljava/lang/Long;)V

    goto :goto_0

    .line 1069
    .end local v0           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_3
    const-string v5, "gprs_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1070
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1071
    .local v2, simid:J
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-static {v2, v3, v5}, Lcom/mediatek/gemini/GeminiUtils;->getSimSlotIdBySimInfoId(JLjava/util/List;)I

    move-result v4

    .line 1073
    .local v4, slotId:I
    if-eq v4, v8, :cond_4

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1074
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v6, 0x12e

    invoke-virtual {v5, v4, v6}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto/16 :goto_0

    .line 1079
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_5

    .line 1081
    iput v8, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 1087
    :goto_1
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    if-eq v5, v8, :cond_6

    .line 1090
    iput-wide v2, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    .line 1091
    const/16 v5, 0x3ea

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    .line 1092
    new-instance v5, Lcom/mediatek/gemini/SimManagement$8;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$8;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 1083
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->dataSwitchConfirmDlgMsg(J)I

    move-result v5

    iput v5, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    goto :goto_1

    .line 1088
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefaultSIM(J)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 1768
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preference: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1770
    .local v1, key:Ljava/lang/String;
    instance-of v5, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v5, :cond_0

    .line 1771
    const-string v5, "SimManagementSettings"

    const-string v6, "onPreferenceTreeClick"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p2

    .line 1772
    check-cast v4, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 1773
    .local v4, simPreference:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v2

    .line 1774
    .local v2, simId:J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1775
    .local v0, extras:Landroid/os/Bundle;
    const-string v5, "simid"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1776
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim id is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-static {p0, v0}, Lcom/mediatek/settings/OobeUtils;->startSimEditor(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 1782
    const/4 v5, 0x1

    .end local v0           #extras:Landroid/os/Bundle;
    .end local v2           #simId:J
    .end local v4           #simPreference:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :goto_0
    return v5

    .line 1780
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    invoke-super {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onResume()V

    .line 508
    const-string v0, "SimManagementSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    if-eqz v0, :cond_0

    .line 511
    const-string v0, "SimManagementSettings"

    const-string v1, "Unexpected is killed so restore the state but for progess dialog no need as the state has lost"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 514
    iput-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVoipPreference()V

    .line 521
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initPreferenceUI()V

    .line 524
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 532
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_call_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 536
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDialogOnResume()V

    .line 538
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 540
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1787
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1788
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1789
    const-string v0, "progress_dialog_msg_id"

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1793
    :cond_0
    :goto_0
    const-string v0, "vt_selected_id"

    iget-wide v1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1794
    const-string v0, "gprs_selected_id"

    iget-wide v1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1795
    return-void

    .line 1790
    :cond_1
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const-string v0, "confirm_dialog_msg_id"

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
