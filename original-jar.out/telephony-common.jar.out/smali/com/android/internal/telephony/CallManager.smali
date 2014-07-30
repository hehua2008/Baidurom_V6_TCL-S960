.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$3;,
        Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CALL_WAITING2:I = 0xd0

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE2:I = 0xd3

.field private static final EVENT_CIPHER_INDICATION:I = 0x80

.field private static final EVENT_CIPHER_INDICATION2:I = 0xe4

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION:I = 0x7b

.field private static final EVENT_CRSS_SUPP_SERVICE_NOTIFICATION2:I = 0xdf

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISCONNECT2:I = 0xc8

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_DISPLAY_INFO2:I = 0xd1

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_ECM_TIMER_RESET2:I = 0xd7

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_INCOMING_RING2:I = 0xcc

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF2:I = 0xcf

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON2:I = 0xce

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_COMPLETE2:I = 0xd6

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_MMI_INITIATE2:I = 0xd5

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_NEW_RINGING_CONNECTION2:I = 0xca

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_POST_DIAL_CHARACTER2:I = 0xdb

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED2:I = 0xc9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x7f

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE2:I = 0xe3

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RESEND_INCALL_MUTE2:I = 0xd4

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_RINGBACK_TONE2:I = 0xcd

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SERVICE_STATE_CHANGED2:I = 0xda

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SIGNAL_INFO2:I = 0xd2

.field private static final EVENT_SPEECH_INFO:I = 0x78

.field private static final EVENT_SPEECH_INFO2:I = 0xdc

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUBSCRIPTION_INFO_READY2:I = 0xd8

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_SUPP_SERVICE_FAILED2:I = 0xd9

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION:I = 0x7c

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION2:I = 0xe0

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_UNKNOWN_CONNECTION2:I = 0xcb

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION:I = 0x7e

.field private static final EVENT_VOICE_CALL_INCOMING_INDICATION2:I = 0xe2

.field private static final EVENT_VT_REPLACE_DISCONNECT:I = 0x7d

.field private static final EVENT_VT_REPLACE_DISCONNECT2:I = 0xe1

.field private static final EVENT_VT_RING_INFO:I = 0x7a

.field private static final EVENT_VT_RING_INFO2:I = 0xde

.field private static final EVENT_VT_STATUS_INFO:I = 0x79

.field private static final EVENT_VT_STATUS_INFO2:I = 0xdd

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final MAXIMUM_SIM_COUNT:I = 0x4

.field private static final NOTIFICATION_ID_OFFSET:I = 0x64

.field private static final VDBG:Z = true

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field private bWaitingForHoldRequest:Z

.field private dtmfRequestIsStarted:Z

.field private final emptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private espeech_info:[I

.field private hasSetVtPara:Z

.field private m3GSwitchLockForPhoneCall:I

.field private mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants2:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrants:Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mCurrentAudioMode:I

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mDualModemCall:I

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants2:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

.field protected final mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

.field protected final mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants2:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

.field protected final mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

.field protected final mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

.field private mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    new-instance v1, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 412
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 413
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 414
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    .line 175
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 178
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 193
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 196
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 199
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 202
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 205
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 208
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 211
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 214
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 217
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 220
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    .line 223
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 226
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 229
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 232
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 235
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 238
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    .line 243
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    .line 249
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    .line 252
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 255
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 258
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 261
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    .line 264
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    .line 267
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 270
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    .line 273
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 276
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants2:Landroid/os/RegistrantList;

    .line 279
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    .line 282
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    .line 285
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    .line 288
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    .line 291
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    .line 294
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    .line 297
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    .line 300
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    .line 303
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    .line 306
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    .line 309
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    .line 312
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    .line 315
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    .line 318
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    .line 321
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    .line 324
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    .line 327
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    .line 330
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    .line 333
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    .line 336
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 339
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    .line 342
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    .line 345
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    .line 349
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 350
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 351
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 352
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 353
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 354
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 355
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 356
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 357
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 358
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 359
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 360
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 361
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 362
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 363
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 364
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 365
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 366
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 367
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 368
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 369
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 370
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 371
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 372
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 373
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 374
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 375
    new-array v2, v0, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    .line 379
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    .line 382
    iput v4, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 389
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    .line 392
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 398
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 399
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 400
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 401
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 404
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 2448
    new-instance v2, Lcom/android/internal/telephony/CallManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CallManager$1;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    .line 419
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 422
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    .line 423
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 425
    const-string v2, "CallManager"

    const-string v3, "Initiate registrants array"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 428
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 429
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 431
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 432
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 437
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 450
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v1

    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aput v4, v2, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 427
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 459
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CallManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/CallManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 17
    .parameter "phone"
    .parameter "dialString"

    .prologue
    .line 1454
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1455
    .local v13, serviceState:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    .line 1456
    .local v11, hasRingingCall:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    .line 1457
    .local v9, hasActiveCall:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    .line 1458
    .local v10, hasHoldingCall:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->isInCallMmiCommands(Ljava/lang/String;)Z

    move-result v6

    .line 1460
    .local v6, bIsInCallMmiCommands:Z
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    .line 1467
    .local v4, allLinesTaken:Z
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v9, :cond_0

    .line 1468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1469
    .local v3, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1470
    .local v7, dialPhone:Lcom/android/internal/telephony/Phone;
    if-ne v7, v3, :cond_8

    const/4 v6, 0x1

    .line 1478
    .end local v3           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #dialPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 1479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    if-eq v14, v15, :cond_1

    .line 1480
    const/4 v6, 0x0

    .line 1484
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1487
    .local v8, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v5, 0x0

    .line 1489
    .local v5, bECCExists:Z
    if-eqz v9, :cond_2

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, activeCallAddress:Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v5, 0x1

    .line 1495
    .end local v2           #activeCallAddress:Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v5, :cond_a

    const/4 v14, 0x3

    if-eq v13, v14, :cond_a

    if-eqz v11, :cond_3

    if-eqz v6, :cond_a

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v14, :cond_a

    if-eqz v6, :cond_a

    :cond_5
    const/4 v12, 0x1

    .line 1504
    .local v12, result:Z
    :goto_3
    if-nez v12, :cond_6

    .line 1505
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "canDial serviceState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasRingingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasActiveCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasHoldingCall="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " allLinesTaken="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fgCallState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bECCExists="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_6
    return v12

    .line 1460
    .end local v4           #allLinesTaken:Z
    .end local v5           #bECCExists:Z
    .end local v8           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v12           #result:Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1470
    .restart local v3       #activePhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #allLinesTaken:Z
    .restart local v7       #dialPhone:Lcom/android/internal/telephony/Phone;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1491
    .end local v3           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #dialPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #activeCallAddress:Ljava/lang/String;
    .restart local v5       #bECCExists:Z
    .restart local v8       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 1495
    .end local v2           #activeCallAddress:Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private checkIfExistsFollowingAction()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5004
    const/4 v0, 0x0

    .line 5005
    .local v0, result:Z
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActiveCallToBeHeld.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWaitingReasonForHold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 5011
    :cond_0
    const/4 v0, 0x1

    .line 5012
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 5013
    sget-object v1, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$CallManager$WaitingReasonForHold:[I

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5023
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 5025
    :cond_1
    const-string v1, "CallManager"

    const-string v2, "checkIfExistsFollowingAction end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    return v0

    .line 5015
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 5016
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0

    .line 5020
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0

    .line 5013
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearEspeechInfo()Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 4955
    const/4 v4, 0x0

    .line 4956
    .local v4, isCleared:Z
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4959
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v5, v5, v3

    if-eqz v5, :cond_3

    .line 4963
    :cond_0
    if-ne v3, v8, :cond_1

    .line 4964
    const-string v5, "CallManager"

    const-string v6, "All espeech is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4969
    :cond_2
    const/4 v4, 0x1

    .line 4970
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    .line 4971
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 4970
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4958
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4974
    :cond_4
    const/4 v2, 0x0

    .line 4975
    .local v2, curAudioMode:I
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4977
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_5

    .line 4978
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4979
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 4983
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_5
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[clearEspeechInfo] skip set audio mode to normal, current audio mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #curAudioMode:I
    :cond_6
    return v4
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 795
    .local v0, defaultPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2408
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2409
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2413
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2420
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2421
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 2425
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2277
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2278
    .local v2, result:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2279
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2282
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2291
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2285
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_1
    move-object v2, v0

    goto :goto_0

    .line 2287
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2288
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 2291
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getNewAudioModeIfMDSwap(I)I
    .locals 5
    .parameter "oldMode"

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x2

    .line 3101
    move v0, p1

    .line 3126
    .local v0, newMode:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p1, v1, :cond_1

    .line 3130
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3131
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-nez v3, :cond_3

    .line 3132
    if-ne p1, v2, :cond_2

    move v0, v1

    .line 3149
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    .line 3132
    goto :goto_0

    .line 3134
    :cond_3
    if-ne p1, v4, :cond_1

    .line 3135
    const/4 v0, 0x5

    goto :goto_0

    .line 3138
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phone"

    .prologue
    .line 478
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    .line 479
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 481
    .end local p0
    :cond_0
    return-object p0
.end method

.method private getRegistrantsArrayIndex(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 3802
    add-int/lit8 v0, p1, 0x0

    .line 3803
    .local v0, index:I
    if-ltz v0, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 3810
    .end local v0           #index:I
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handle3GSwitchLock()V
    .locals 6

    .prologue
    .line 4830
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4831
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 4833
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$State;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4834
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone call IDLE, release 3G switch lock ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    iget v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->release3GSwitchLock(I)Z

    .line 4836
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    .line 4846
    :cond_0
    :goto_0
    return-void

    .line 4837
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4838
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->aquire3GSwitchLock()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    .line 4839
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone call not IDLE, acquire 3G switch lock ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallManager;->m3GSwitchLockForPhoneCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4841
    :catch_0
    move-exception v0

    .line 4842
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSpeechInfo(Landroid/os/Message;)Z
    .locals 16
    .parameter "msg"

    .prologue
    .line 4856
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4857
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v13, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    check-cast v13, [I

    const/4 v14, 0x0

    aget v5, v13, v14

    .line 4858
    .local v5, infoType:I
    const/4 v11, 0x1

    .line 4859
    .local v11, result:Z
    packed-switch v5, :pswitch_data_0

    .line 4920
    const/4 v11, 0x0

    .line 4923
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 4924
    .local v4, index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v14, v13, v4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4925
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    invoke-virtual {v14, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4927
    return v11

    .line 4861
    .end local v4           #index:I
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v4, v13, 0x64

    .line 4863
    .restart local v4       #index:I
    const/4 v4, 0x0

    .line 4865
    if-nez v4, :cond_1

    const/4 v8, 0x1

    .line 4866
    .local v8, oppositeIndex:I
    :goto_1
    if-nez v4, :cond_2

    const/4 v9, 0x4

    .line 4868
    .local v9, oppositeMode:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x0

    aput v14, v13, v4

    .line 4869
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v13, v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 4870
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0

    .line 4865
    .end local v8           #oppositeIndex:I
    .end local v9           #oppositeMode:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 4866
    .restart local v8       #oppositeIndex:I
    :cond_2
    const/4 v9, 0x2

    goto :goto_2

    .line 4881
    .end local v4           #index:I
    .end local v8           #oppositeIndex:I
    :pswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    add-int/lit8 v13, v13, -0x78

    div-int/lit8 v7, v13, 0x64

    .line 4883
    .local v7, newDualModemCall:I
    const/4 v7, 0x0

    .line 4886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    const/4 v14, 0x1

    aput v14, v13, v7

    .line 4889
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v7, v13, :cond_3

    .line 4894
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    goto :goto_0

    .line 4899
    .end local v7           #newDualModemCall:I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4900
    .local v3, context:Landroid/content/Context;
    const-string v13, "audio"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 4901
    .local v2, audioManager:Landroid/media/AudioManager;
    const/16 v13, 0xdc

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    if-ne v13, v14, :cond_4

    const/4 v6, 0x2

    .line 4902
    .local v6, modem:I
    :goto_3
    const/4 v13, 0x2

    if-ne v5, v13, :cond_5

    const/4 v12, 0x1

    .line 4914
    .local v12, sid:I
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SetModem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "GenerateSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4915
    .local v10, para:Ljava/lang/String;
    invoke-virtual {v2, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4916
    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "para = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4901
    .end local v6           #modem:I
    .end local v10           #para:Ljava/lang/String;
    .end local v12           #sid:I
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 4902
    .restart local v6       #modem:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 4859
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2442
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCallCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEspeechTurnedOff(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4937
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 4938
    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->espeech_info:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    :goto_1
    return v2

    .end local v0           #i:I
    :cond_0
    move v0, v2

    .line 4937
    goto :goto_0

    .restart local v0       #i:I
    :cond_1
    move v2, v1

    .line 4938
    goto :goto_1
.end method

.method private isInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x1

    .line 4797
    const/4 v1, 0x0

    .line 4798
    .local v1, result:Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4800
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    .line 4821
    :cond_0
    :goto_0
    return v1

    .line 4805
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4806
    const/4 v1, 0x1

    goto :goto_0

    .line 4812
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4813
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4800
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 506
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStatePowerOff()Z
    .locals 6

    .prologue
    .line 5062
    const/4 v0, 0x1

    .line 5064
    .local v0, bIsPowerOff:Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 5065
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 5066
    :goto_0
    if-nez v0, :cond_0

    .line 5071
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isServiceStatePowerOff]bIsPowerOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    return v0

    .line 5065
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerOnePhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, result:Z
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 578
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BSPPackage]registerPhone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const/4 v1, 0x1

    .line 589
    :cond_0
    return v1
.end method

.method private registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 939
    const/16 v0, 0x64

    .line 941
    .local v0, eventDifference:I
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_3

    .line 942
    const/4 v1, 0x0

    .line 952
    .local v1, simId:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x65

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 953
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x64

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 954
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x66

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 955
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x67

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 956
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x68

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 957
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x69

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 958
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 959
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 961
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 962
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x70

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 963
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x71

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 964
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x72

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 965
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x75

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 966
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x76

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 968
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x78

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 969
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x79

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 970
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 971
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7b

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 972
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 973
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7d

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 974
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7e

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 975
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x7f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 976
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit16 v3, v3, 0x80

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 979
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x77

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 985
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 986
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6f

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x74

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x6c

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    mul-int v3, v0, v1

    add-int/lit8 v3, v3, 0x73

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 991
    :cond_2
    return-void

    .line 945
    .end local v1           #simId:I
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    .restart local v1       #simId:I
    goto/16 :goto_0
.end method

.method private setAudioMode(I)V
    .locals 17
    .parameter "mode"

    .prologue
    .line 2873
    const-string v14, "CallManager"

    const-string v15, "setAudioMode enter..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2875
    .local v4, context:Landroid/content/Context;
    const/4 v11, 0x0

    .line 2878
    .local v11, isVTCall:Z
    if-nez v4, :cond_1

    .line 3096
    :cond_0
    :goto_0
    return-void

    .line 2879
    :cond_1
    const-string v14, "audio"

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2880
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    .line 2881
    .local v6, curAudioMode:I
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", current mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v14

    if-eq v6, v14, :cond_10

    .line 2887
    packed-switch p1, :pswitch_data_0

    .line 2944
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    .line 2945
    .local v5, count:I
    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v14, v0, :cond_3

    const/4 v14, 0x4

    move/from16 v0, p1

    if-eq v14, v0, :cond_3

    const/4 v14, 0x5

    move/from16 v0, p1

    if-ne v14, v0, :cond_c

    .line 2948
    :cond_3
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v5, :cond_4

    .line 2949
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2950
    .local v3, cn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v11, 0x1

    .line 2952
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v14, :cond_b

    if-eqz v11, :cond_b

    .line 2953
    const-string v14, "CallManager"

    const-string v15, "[setAudioMode]SetVTSpeechCall=1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const-string v14, "SetVTSpeechCall=1"

    invoke-virtual {v1, v14}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2955
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    .line 2969
    .end local v3           #cn:Lcom/android/internal/telephony/Connection;
    .end local v10           #i:I
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    .line 2970
    .local v7, fgIsAlive:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    .line 2973
    .local v2, bgIsAlive:Z
    if-nez p1, :cond_d

    if-nez v7, :cond_5

    if-eqz v2, :cond_d

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->isServiceStatePowerOff()Z

    move-result v14

    if-nez v14, :cond_d

    .line 2977
    const-string v14, "CallManager"

    const-string v15, "Do not need to switch normal mode for held call"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2891
    .end local v2           #bgIsAlive:Z
    .end local v5           #count:I
    .end local v7           #fgIsAlive:Z
    :pswitch_0
    if-eqz v6, :cond_6

    .line 2892
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v14

    if-nez v14, :cond_8

    .line 2893
    const-string v14, "CallManager"

    const-string v15, "no fg/bg call but ring call is exist, allow to set ringtone mode"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_6
    const-string v14, "CallManager"

    const-string v15, "requestAudioFocus on STREAM_RING"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    const/4 v14, 0x2

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 2911
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v14

    if-nez v14, :cond_2

    .line 2912
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    .line 2913
    .restart local v5       #count:I
    const/4 v8, 0x0

    .line 2914
    .local v8, hasAnyVTCallExist:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    if-ge v10, v5, :cond_7

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2916
    .restart local v3       #cn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2917
    const/4 v8, 0x1

    .line 2921
    .end local v3           #cn:Lcom/android/internal/telephony/Connection;
    :cond_7
    if-nez v8, :cond_2

    .line 2922
    const-string v14, "CallManager"

    const-string v15, "[setAudioMode]No any VT connections when set RINGTONE mode, but VTSpeechCall is 1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    const-string v14, "CallManager"

    const-string v15, "[setAudioMode]SetVTSpeechCall=0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const-string v14, "SetVTSpeechCall=0"

    invoke-virtual {v1, v14}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2925
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    goto/16 :goto_1

    .line 2895
    .end local v5           #count:I
    .end local v8           #hasAnyVTCallExist:Z
    .end local v10           #i:I
    :cond_8
    const-string v14, "CallManager"

    const-string v15, "there is fg or bg call exist, we don\'t allow to set ringtone mode"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2914
    .restart local v3       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #count:I
    .restart local v8       #hasAnyVTCallExist:Z
    .restart local v10       #i:I
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2937
    .end local v3           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #count:I
    .end local v8           #hasAnyVTCallExist:Z
    .end local v10           #i:I
    :pswitch_1
    const-string v14, "CallManager"

    const-string v15, "requestAudioFocus on STREAM_VOICE_CALL"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto/16 :goto_1

    .line 2950
    .restart local v3       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #count:I
    .restart local v10       #i:I
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2948
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2959
    .end local v3           #cn:Lcom/android/internal/telephony/Connection;
    .end local v10           #i:I
    :cond_c
    if-nez p1, :cond_4

    .line 2960
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-eqz v14, :cond_4

    .line 2961
    const-string v14, "CallManager"

    const-string v15, "[setAudioMode]SetVTSpeechCall=0"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    const-string v14, "SetVTSpeechCall=0"

    invoke-virtual {v1, v14}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2963
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    goto/16 :goto_4

    .line 3001
    .restart local v2       #bgIsAlive:Z
    .restart local v7       #fgIsAlive:Z
    :cond_d
    const-string v9, ""

    .line 3002
    .local v9, headsetState:Ljava/lang/String;
    const/4 v14, 0x1

    move/from16 v0, p1

    if-le v0, v14, :cond_11

    const/4 v13, 0x2

    .line 3010
    .local v13, value:I
    :goto_6
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/android/internal/telephony/CallManager$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13}, Lcom/android/internal/telephony/CallManager$2;-><init>(Lcom/android/internal/telephony/CallManager;I)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 3051
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->getNewAudioModeIfMDSwap(I)I

    move-result v12

    .line 3053
    .local v12, newMode:I
    const-string v14, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set AudioManager mode "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v14, v0, :cond_e

    .line 3057
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    if-eqz v14, :cond_e

    .line 3058
    const/4 v12, 0x2

    .line 3079
    :cond_e
    if-eq v6, v12, :cond_f

    .line 3080
    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 3084
    :cond_f
    const/4 v14, 0x1

    if-eq v14, v12, :cond_10

    .line 3086
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 3087
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 3091
    .end local v2           #bgIsAlive:Z
    .end local v5           #count:I
    .end local v7           #fgIsAlive:Z
    .end local v9           #headsetState:Ljava/lang/String;
    .end local v12           #newMode:I
    .end local v13           #value:I
    :cond_10
    if-nez p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v14, v15, :cond_0

    .line 3092
    const-string v14, "CallManager"

    const-string v15, "abandonAudioFocus"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    invoke-virtual {v1}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_0

    .restart local v2       #bgIsAlive:Z
    .restart local v5       #count:I
    .restart local v7       #fgIsAlive:Z
    .restart local v9       #headsetState:Ljava/lang/String;
    :cond_11
    move/from16 v13, p1

    .line 3002
    goto :goto_6

    .line 2887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioModeDualModem(II)V
    .locals 3
    .parameter "devId"
    .parameter "mode"

    .prologue
    .line 3162
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3163
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 3182
    :goto_0
    return-void

    .line 3164
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3181
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    goto :goto_0
.end method

.method private setAudioModeEarlierInAcceptCall()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 1140
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1141
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 1142
    const-string v4, "CallManager"

    const-string v5, "Speedup Audio Path enhancement: Context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1145
    const-string v5, "CallManager"

    const-string v6, "Speedup Audio Path enhancement"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1148
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 1149
    .local v2, currMode:I
    if-eq v2, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v5, :cond_0

    .line 1152
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode Setting audio mode from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 1156
    .local v3, newDualModemCall:I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    if-eq v3, v5, :cond_2

    .line 1157
    iput v3, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    .line 1158
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set mDualModemCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/CallManager;->mDualModemCall:I

    invoke-direct {p0, v5, v8}, Lcom/android/internal/telephony/CallManager;->setAudioModeDualModem(II)V

    .line 1161
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    goto :goto_0

    .line 1155
    .end local v3           #newDualModemCall:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setVTSpeechCall(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5038
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v6

    .line 5039
    .local v3, vtStatus:I
    if-nez v3, :cond_2

    move v2, v5

    .line 5042
    .local v2, flag:I
    :goto_0
    if-ne v2, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v4, :cond_1

    :cond_0
    if-nez v2, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    if-nez v4, :cond_3

    .line 5055
    :cond_1
    :goto_1
    return-void

    .end local v2           #flag:I
    :cond_2
    move v2, v6

    .line 5039
    goto :goto_0

    .line 5048
    .restart local v2       #flag:I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5049
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 5050
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5051
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetVTSpeechCall="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5052
    if-ne v2, v5, :cond_4

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager;->hasSetVtPara:Z

    .line 5053
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setVTSpeechCall]SetVTSpeechCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v4, v6

    .line 5052
    goto :goto_2
.end method

.method private unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 1022
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1024
    :cond_0
    const/16 v0, 0x77

    invoke-interface {p1, v3, v0, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1028
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1034
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1050
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1053
    .local v3, ringingPhone:Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptCall("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1059
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v5

    .line 1060
    .local v2, hasBgCall:Z
    :goto_0
    if-ne v0, v3, :cond_0

    move v4, v5

    .line 1063
    .local v4, sameChannel:Z
    :cond_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1068
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I

    .line 1070
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 1073
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1128
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #hasBgCall:Z
    .end local v4           #sameChannel:Z
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    if-nez v5, :cond_2

    .line 1129
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->setAudioModeEarlierInAcceptCall()V

    .line 1130
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1134
    :cond_2
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End acceptCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void

    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    move v2, v4

    .line 1059
    goto :goto_0

    .line 1074
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #hasBgCall:Z
    .restart local v4       #sameChannel:Z
    :cond_4
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_1

    .line 1081
    :cond_5
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1082
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1086
    :cond_6
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1089
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 1091
    const-string v6, "CallManager"

    const-string v7, "Accept incoming call after the active call is held successfully."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iput-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1093
    sget-object v5, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->ACCEPT_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1094
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1095
    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    .line 1099
    :cond_7
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 1102
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    goto/16 :goto_1
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "heldCall"

    .prologue
    .line 1295
    const/4 v0, 0x0

    .line 1296
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1298
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1302
    :cond_0
    if-eqz p1, :cond_1

    .line 1303
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1307
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1310
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "heldCall"

    .prologue
    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1527
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1531
    :cond_0
    if-eqz p1, :cond_1

    .line 1532
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1535
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 1437
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1438
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1440
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1327
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1333
    .local v0, fgPhone:Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 1334
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 1342
    :goto_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void

    .line 1335
    .restart local v0       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 1338
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 12
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1359
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1363
    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    const-string v8, "CallManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " dial("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string v8, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1369
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v7, "cannot dial in current state"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1373
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1375
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_4

    move v3, v6

    .line 1378
    .local v3, hasBgCall:Z
    :goto_0
    const-string v8, "CallManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasBgCall: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sameChannel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ne v0, v1, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    if-eq v0, v1, :cond_3

    .line 1383
    const/4 v4, 0x0

    .line 1384
    .local v4, isUssdNumber:Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_2

    .line 1385
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v6, :cond_5

    move-object v6, v1

    .line 1386
    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdNumber(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    .line 1394
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 1396
    if-eqz v3, :cond_6

    .line 1397
    const-string v6, "CallManager"

    const-string v7, "Hangup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1409
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #hasBgCall:Z
    .end local v4           #isUssdNumber:Z
    :cond_3
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1412
    .local v5, result:Lcom/android/internal/telephony/Connection;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End dial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-object v5

    .end local v5           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    move v3, v7

    .line 1375
    goto/16 :goto_0

    .line 1387
    .restart local v3       #hasBgCall:Z
    .restart local v4       #isUssdNumber:Z
    :cond_5
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_2

    move-object v6, v1

    .line 1388
    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {p2, v6}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v2

    .line 1389
    .local v2, cdmaMmiCode:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-eqz v2, :cond_2

    .line 1390
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isUssdRequest()Z

    move-result v4

    goto :goto_1

    .line 1402
    .end local v2           #cdmaMmiCode:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    :cond_6
    const-string v6, "CallManager"

    const-string v7, "Switch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1430
    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1552
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1561
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2266
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2267
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2271
    :cond_0
    :goto_0
    return-object v0

    .line 2267
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2347
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2351
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2372
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2373
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2375
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2359
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2360
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2361
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2363
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    .line 2383
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2384
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2387
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2308
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2309
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2310
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2314
    :cond_0
    :goto_0
    return-object v0

    .line 2310
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2332
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2333
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2337
    :cond_0
    :goto_0
    return-object v0

    .line 2333
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    .line 1634
    :goto_0
    return v0

    .line 1631
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    .line 1634
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1577
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCallCount()I
    .locals 6

    .prologue
    .line 2429
    const/4 v1, 0x0

    .line 2431
    .local v1, count:I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2432
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2436
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRingingCallCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    return v1
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 547
    const/4 v2, 0x1

    .line 549
    .local v2, resultState:I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 550
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 551
    .local v3, serviceState:I
    if-nez v3, :cond_2

    .line 553
    move v2, v3

    .line 568
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #serviceState:I
    :cond_1
    return v2

    .line 555
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #serviceState:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 558
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 560
    :cond_3
    move v2, v3

    goto :goto_0

    .line 562
    :cond_4
    if-ne v3, v5, :cond_0

    .line 563
    if-ne v2, v6, :cond_0

    .line 564
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5

    .prologue
    .line 524
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 526
    .local v2, s:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 527
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 528
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 529
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 530
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 533
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "activeCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4713
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupActiveCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4718
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4719
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 4721
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public hangupAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4674
    const-string v2, "CallManager"

    const-string v3, " hangupAll() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4679
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 4680
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_0

    .line 4683
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public hangupAllEx()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4689
    const/4 v0, 0x0

    .line 4692
    .local v0, bAtLeastOneNotIdle:Z
    const-string v3, "CallManager"

    const-string v4, " hangupAllEx() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    const-string v3, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4697
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone.getState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4698
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 4699
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 4700
    const/4 v0, 0x1

    goto :goto_0

    .line 4704
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return v0
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1261
    const/4 v1, 0x0

    .line 1262
    .local v1, foregroundPhone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 1265
    .local v0, backgroundPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1271
    if-eqz p1, :cond_0

    .line 1272
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1273
    if-ne v1, v0, :cond_1

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1284
    :cond_0
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End hangupForegroundResumeBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 2

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 2

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2064
    return-void
.end method

.method public registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3531
    return-void
.end method

.method public registerForCallWaitingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4276
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4277
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4278
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4280
    :cond_0
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2131
    return-void
.end method

.method public registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3598
    return-void
.end method

.method public registerForCdmaOtaStatusChangeEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4368
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4369
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4370
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4372
    :cond_0
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3235
    return-void
.end method

.method public registerForCipherIndication2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3783
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3784
    return-void
.end method

.method public registerForCipherIndicationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4648
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4649
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4650
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4652
    :cond_0
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3211
    return-void
.end method

.method public registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3732
    return-void
.end method

.method public registerForCrssSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4564
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4565
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4566
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4568
    :cond_0
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1786
    return-void
.end method

.method public registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3254
    return-void
.end method

.method public registerForDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3829
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3830
    .local v0, index:I
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForDisconnectEx, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3832
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3834
    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2110
    return-void
.end method

.method public registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3577
    return-void
.end method

.method public registerForDisplayInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4339
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4340
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4341
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4343
    :cond_0
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1966
    return-void
.end method

.method public registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3433
    return-void
.end method

.method public registerForEcmTimerResetEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4129
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4130
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4131
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4133
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2044
    return-void
.end method

.method public registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3511
    return-void
.end method

.method public registerForInCallVoicePrivacyOffEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4248
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4249
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4250
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4252
    :cond_0
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2024
    return-void
.end method

.method public registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3490
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3491
    return-void
.end method

.method public registerForInCallVoicePrivacyOnEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4220
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4221
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4222
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4224
    :cond_0
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1868
    return-void
.end method

.method public registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3335
    return-void
.end method

.method public registerForIncomingRingEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3966
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3967
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3968
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3970
    :cond_0
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1948
    return-void
.end method

.method public registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3415
    return-void
.end method

.method public registerForMmiCompleteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4100
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4101
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4102
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4104
    :cond_0
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1928
    return-void
.end method

.method public registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3395
    return-void
.end method

.method public registerForMmiInitiateEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4066
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4067
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4068
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4070
    :cond_0
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1847
    return-void
.end method

.method public registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3314
    return-void
.end method

.method public registerForNewRingingConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3932
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3933
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3934
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3936
    :cond_0
    return-void
.end method

.method public registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x0

    .line 805
    instance-of v3, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v3, :cond_3

    .line 806
    instance-of v3, p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v3, :cond_1

    .line 808
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v3, :cond_0

    .line 809
    .local v0, count:I
    :goto_0
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[registerForPhoneStates]count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 811
    mul-int/lit8 v2, v1, 0x64

    .local v2, offset:I
    move-object v3, p1

    .line 812
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x65

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 813
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x64

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 814
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x66

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 815
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x67

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 816
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x68

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 817
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x69

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 818
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6a

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 819
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6b

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 820
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6d

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 821
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x6e

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 822
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x71

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 823
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x72

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 824
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x75

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 825
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x76

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 826
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x77

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 829
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x78

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 830
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x79

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 831
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7a

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 832
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7b

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 833
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7c

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 834
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7d

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 835
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7e

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForVoiceCallIncomingIndicationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 836
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v5, v2, 0x7f

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v3, p1

    .line 837
    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit16 v5, v2, 0x80

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForCipherIndicationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 808
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #offset:I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 877
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 882
    :cond_2
    :goto_2
    return-void

    .line 880
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2193
    return-void
.end method

.method public registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3660
    return-void
.end method

.method public registerForPostDialCharacterEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4452
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4453
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4454
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4456
    :cond_0
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1807
    return-void
.end method

.method public registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3275
    return-void
.end method

.method public registerForPreciseCallStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3865
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3866
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3867
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3869
    :cond_0
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1906
    return-void
.end method

.method public registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3373
    return-void
.end method

.method public registerForResendIncallMuteEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4030
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4031
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4032
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4034
    :cond_0
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1890
    return-void
.end method

.method public registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3356
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3357
    return-void
.end method

.method public registerForRingbackToneEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4001
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4002
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4003
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4005
    :cond_0
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1983
    return-void
.end method

.method public registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3450
    return-void
.end method

.method public registerForServiceStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4160
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4161
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4162
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4164
    :cond_0
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2087
    return-void
.end method

.method public registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3554
    return-void
.end method

.method public registerForSignalInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4308
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4309
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4310
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4312
    :cond_0
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3187
    return-void
.end method

.method public registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3678
    return-void
.end method

.method public registerForSpeechInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4480
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4481
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4482
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4484
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2149
    return-void
.end method

.method public registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3616
    return-void
.end method

.method public registerForSubscriptionInfoReadyEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4396
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4397
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4398
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4400
    :cond_0
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2003
    return-void
.end method

.method public registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3470
    return-void
.end method

.method public registerForSuppServiceFailedEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4190
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4191
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4192
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4194
    :cond_0
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3219
    return-void
.end method

.method public registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3749
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3750
    return-void
.end method

.method public registerForSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4592
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4593
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4594
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4596
    :cond_0
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1823
    return-void
.end method

.method public registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3291
    return-void
.end method

.method public registerForUnknownConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 3895
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3896
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3897
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3899
    :cond_0
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3227
    return-void
.end method

.method public registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3768
    return-void
.end method

.method public registerForVtReplaceDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4620
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4621
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4622
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4624
    :cond_0
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3203
    return-void
.end method

.method public registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3714
    return-void
.end method

.method public registerForVtRingInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4536
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4537
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4538
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4540
    :cond_0
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3195
    return-void
.end method

.method public registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3696
    return-void
.end method

.method public registerForVtStatusInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"
    .parameter "simId"

    .prologue
    .line 4508
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4509
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4510
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4512
    :cond_0
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .parameter "phone"

    .prologue
    .line 618
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 619
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 621
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 634
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 637
    :cond_1
    const/4 v1, 0x1

    .line 639
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1177
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1183
    .local v0, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1186
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1769
    const/4 v0, 0x1

    .line 1771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 1667
    const/4 v0, 0x0

    .line 1670
    .local v0, result:Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1676
    const/4 v0, 0x1

    .line 1680
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .parameter "phone"
    .parameter "ussdMessge"

    .prologue
    .line 1590
    const-string v0, "CallManager"

    const-string v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioMode()V
    .locals 4

    .prologue
    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, mode:I
    sget-object v2, Lcom/android/internal/telephony/CallManager$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 778
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 789
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V

    .line 791
    return-void

    .line 733
    :pswitch_0
    const/4 v0, 0x1

    .line 734
    goto :goto_0

    .line 736
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 737
    .local v1, offhookPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 743
    :cond_1
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_2

    .line 745
    const/4 v0, 0x3

    goto :goto_0

    .line 748
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1642
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1652
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    .line 1605
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1614
    :cond_0
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 1696
    const/4 v0, 0x0

    .line 1699
    .local v0, result:Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1704
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1705
    const/4 v0, 0x1

    .line 1714
    const-string v1, "CallManager"

    const-string v2, "dtmfRequestIsStarted = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1720
    :cond_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1733
    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    if-eqz v0, :cond_1

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->dtmfRequestIsStarted:Z

    .line 1742
    const-string v0, "CallManager"

    const-string v1, "dtmfRequestIsStarted = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_1
    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1214
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1222
    :cond_0
    if-eqz p1, :cond_1

    .line 1223
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1226
    :cond_1
    if-eqz v0, :cond_2

    .line 1227
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1230
    :cond_2
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    .line 1232
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1235
    const-string v2, "CallManager"

    const-string v3, "Switch held call to active one after the active call is held successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z

    .line 1237
    sget-object v2, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->SWITCH_CALL:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 1238
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mActiveCallToBeHeld:Lcom/android/internal/telephony/Call;

    .line 1239
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhoneForWaitingHoldRequest:Lcom/android/internal/telephony/Phone;

    .line 1247
    :cond_3
    :goto_0
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End switchHoldingAndActive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const-string v2, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-void

    .line 1242
    :cond_4
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2841
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v4, "CallManager {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2844
    .local v1, call:Lcom/android/internal/telephony/Call;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2847
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 2856
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 2857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPhone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2860
    const-string v4, "\n- Foreground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2861
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2862
    const-string v4, " Background: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2864
    const-string v4, " Ringing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2867
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v4, "\n}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2072
    return-void
.end method

.method public unregisterForCallWaiting2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3539
    return-void
.end method

.method public unregisterForCallWaitingEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4289
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4290
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4291
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4293
    :cond_0
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2139
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3606
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4381
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4382
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4383
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4385
    :cond_0
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3239
    return-void
.end method

.method public unregisterForCipherIndication2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3791
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3792
    return-void
.end method

.method public unregisterForCipherIndicationEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4661
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4662
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4663
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCipherIndicationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4665
    :cond_0
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3215
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3740
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4577
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4578
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4579
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4581
    :cond_0
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1794
    return-void
.end method

.method public unregisterForDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3262
    return-void
.end method

.method public unregisterForDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3844
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3845
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3846
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3848
    :cond_0
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2120
    return-void
.end method

.method public unregisterForDisplayInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3587
    return-void
.end method

.method public unregisterForDisplayInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4353
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4354
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4355
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4357
    :cond_0
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1974
    return-void
.end method

.method public unregisterForEcmTimerReset2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3441
    return-void
.end method

.method public unregisterForEcmTimerResetEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4143
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4144
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4145
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4147
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2053
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3520
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4261
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4262
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4263
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4265
    :cond_0
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2033
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3500
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4233
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4234
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4235
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4237
    :cond_0
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1877
    return-void
.end method

.method public unregisterForIncomingRing2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3344
    return-void
.end method

.method public unregisterForIncomingRingEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3980
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3981
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3982
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3984
    :cond_0
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1956
    return-void
.end method

.method public unregisterForMmiComplete2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3423
    return-void
.end method

.method public unregisterForMmiCompleteEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4114
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4115
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4116
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4118
    :cond_0
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1936
    return-void
.end method

.method public unregisterForMmiInitiate2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3403
    return-void
.end method

.method public unregisterForMmiInitiateEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4080
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4081
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4082
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4084
    :cond_0
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1856
    return-void
.end method

.method public unregisterForNewRingingConnection2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3323
    return-void
.end method

.method public unregisterForNewRingingConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3946
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3947
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3948
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3950
    :cond_0
    return-void
.end method

.method public unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x4

    .line 891
    instance-of v2, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_3

    .line 892
    instance-of v2, p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_1

    .line 893
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 894
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    move-object v2, p1

    .line 895
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 896
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 897
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 898
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 899
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForIncomingRingGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 900
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForRingbackToneGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 901
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 902
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 903
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 904
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSignalInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 905
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 906
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 907
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 908
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 909
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v3, 0x77

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    move-object v2, p1

    .line 912
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 913
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 914
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 915
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 916
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 917
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 918
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForVoiceCallIncomingIndicationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 919
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V

    move-object v2, p1

    .line 920
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForCipherIndicationGemini(Landroid/os/Handler;I)V

    .line 894
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 893
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    goto/16 :goto_0

    .line 930
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 935
    :cond_2
    :goto_2
    return-void

    .line 933
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterSinglePhoneStates(Lcom/android/internal/telephony/Phone;)V

    goto :goto_2
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2197
    return-void
.end method

.method public unregisterForPostDialCharacter2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3668
    return-void
.end method

.method public unregisterForPostDialCharacterEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4465
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4466
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4467
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4469
    :cond_0
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1815
    return-void
.end method

.method public unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3283
    return-void
.end method

.method public unregisterForPreciseCallStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3879
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3880
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3881
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3883
    :cond_0
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1913
    return-void
.end method

.method public unregisterForResendIncallMute2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3379
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3380
    return-void
.end method

.method public unregisterForResendIncallMuteEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4043
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4044
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4045
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4047
    :cond_0
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1898
    return-void
.end method

.method public unregisterForRingbackTone2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3365
    return-void
.end method

.method public unregisterForRingbackToneEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4014
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4015
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4016
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4018
    :cond_0
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1991
    return-void
.end method

.method public unregisterForServiceStateChanged2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3458
    return-void
.end method

.method public unregisterForServiceStateChangedEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4174
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4175
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4176
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4178
    :cond_0
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2097
    return-void
.end method

.method public unregisterForSignalInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3564
    return-void
.end method

.method public unregisterForSignalInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4322
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4323
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4324
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4326
    :cond_0
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3191
    return-void
.end method

.method public unregisterForSpeechInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3686
    return-void
.end method

.method public unregisterForSpeechInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4493
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4494
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4495
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4497
    :cond_0
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2157
    return-void
.end method

.method public unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3624
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4409
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4410
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4411
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4413
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2013
    return-void
.end method

.method public unregisterForSuppServiceFailed2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3480
    return-void
.end method

.method public unregisterForSuppServiceFailedEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4205
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4206
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4207
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4209
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3223
    return-void
.end method

.method public unregisterForSuppServiceNotification2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3757
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3758
    return-void
.end method

.method public unregisterForSuppServiceNotificationEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4605
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4606
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4607
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4609
    :cond_0
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1830
    return-void
.end method

.method public unregisterForUnknownConnection2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3298
    return-void
.end method

.method public unregisterForUnknownConnectionEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 3908
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 3909
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3910
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3912
    :cond_0
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3231
    return-void
.end method

.method public unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3776
    return-void
.end method

.method public unregisterForVtReplaceDisconnectEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4633
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4634
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4635
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4637
    :cond_0
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3207
    return-void
.end method

.method public unregisterForVtRingInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3722
    return-void
.end method

.method public unregisterForVtRingInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4549
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4550
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4551
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4553
    :cond_0
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3199
    return-void
.end method

.method public unregisterForVtStatusInfo2(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3704
    return-void
.end method

.method public unregisterForVtStatusInfoEx(Landroid/os/Handler;I)V
    .locals 2
    .parameter "h"
    .parameter "simId"

    .prologue
    .line 4521
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CallManager;->getRegistrantsArrayIndex(I)I

    move-result v0

    .line 4522
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4523
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrantsGemini:[Landroid/os/RegistrantList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4525
    :cond_0
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 648
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 650
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 675
    :cond_1
    :goto_0
    return-void

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public voiceAccept(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4776
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceAccept("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4783
    .local v0, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 4786
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End voiceAccept("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    return-void
.end method

.method public vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4729
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4733
    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " vtDial("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4734
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4739
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4741
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    instance-of v6, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v6, :cond_4

    .line 4742
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 4745
    .local v2, hasBgCall:Z
    :goto_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    if-eqz v2, :cond_3

    .line 4749
    const-string v4, "CallManager"

    const-string v5, "Hangup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4760
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasBgCall:Z
    :cond_0
    :goto_2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 4763
    .local v3, result:Lcom/android/internal/telephony/Connection;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End vtDial("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    return-object v3

    .end local v3           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_1
    move v2, v5

    .line 4742
    goto :goto_0

    .restart local v2       #hasBgCall:Z
    :cond_2
    move v4, v5

    .line 4745
    goto :goto_1

    .line 4752
    :cond_3
    const-string v4, "CallManager"

    const-string v5, "Switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .line 4756
    .end local v2           #hasBgCall:Z
    :cond_4
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    goto :goto_2
.end method
