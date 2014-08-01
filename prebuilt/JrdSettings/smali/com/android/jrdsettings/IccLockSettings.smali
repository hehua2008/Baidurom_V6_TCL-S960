.class public Lcom/android/jrdsettings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/jrdsettings/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final GET_SIM_RETRY_EMPTY:I = -0x64

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final MSG_ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final MSG_SIM_STATE_CHANGED:I = 0x66

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final SIM_ID:Ljava/lang/String; = "sim_id"

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "IccLockSettings"


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeadLocked:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    iput v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    .line 121
    iput-boolean v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsUnlockFollow:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsShouldBeFinished:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsDeadLocked:Z

    .line 131
    new-instance v0, Lcom/android/jrdsettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/IccLockSettings$1;-><init>(Lcom/android/jrdsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/android/jrdsettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/IccLockSettings$2;-><init>(Lcom/android/jrdsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/android/jrdsettings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/IccLockSettings$3;-><init>(Lcom/android/jrdsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/IccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/jrdsettings/IccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->updateOnSimLockStateChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/IccLockSettings;)Lcom/android/jrdsettings/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/jrdsettings/IccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsShouldBeFinished:Z

    return p1
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f090080

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 660
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v0

    .line 661
    .local v0, mPinRetryCount:I
    packed-switch v0, :pswitch_data_0

    .line 665
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " retry pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/android/jrdsettings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/jrdsettings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 663
    :pswitch_0
    const-string v1, " "

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 675
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    if-nez v0, :cond_0

    .line 676
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 689
    :goto_0
    return v0

    .line 678
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    if-ne v0, v1, :cond_1

    .line 679
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 681
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    if-ne v0, v1, :cond_2

    .line 682
    const-string v0, "gsm.sim.retry.pin1.3"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 684
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    if-ne v0, v1, :cond_3

    .line 685
    const-string v0, "gsm.sim.retry.pin1.4"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 688
    :cond_3
    const-string v0, "IccLockSettings"

    const-string v1, "getRetryPinCount sim id error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private iccLockChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 583
    if-eqz p1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 586
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    iget-boolean v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/ISimRoamingExt;->showPinToast(Z)V

    .line 596
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->resetDialogState()V

    .line 597
    return-void

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090512

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, simLockFailed:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 594
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->noRetryPinAvailable()Z

    goto :goto_0
.end method

.method private iccPinChanged(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 613
    if-nez p1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 618
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->noRetryPinAvailable()Z

    .line 627
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->resetDialogState()V

    .line 628
    return-void

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090511

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, simChangeSucceeded:Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private noRetryPinAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 603
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_1

    .line 604
    :cond_0
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryPinCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 606
    iput-boolean v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsDeadLocked:Z

    move v0, v1

    .line 609
    :cond_1
    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 643
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 653
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->setDialogValues()V

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 657
    return-void
.end method

.method private setDialogValues()V
    .locals 8

    .prologue
    .line 461
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/jrdsettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 462
    const-string v2, ""

    .line 464
    .local v2, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, simPinHints:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090508

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, enableSimLock:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090509

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, disableSimLock:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09050d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, simChangePin:Ljava/lang/String;
    iget v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    packed-switch v5, :pswitch_data_0

    .line 495
    .end local v1           #enableSimLock:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 499
    :cond_0
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v5, v2}, Lcom/android/jrdsettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 500
    return-void

    .line 470
    .restart local v1       #enableSimLock:Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090507

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    if-eqz v7, :cond_1

    .end local v1           #enableSimLock:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/jrdsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v1       #enableSimLock:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    goto :goto_1

    .line 477
    :pswitch_1
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09050a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/jrdsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 482
    :pswitch_2
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09050b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v5, v3}, Lcom/android/jrdsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 487
    :pswitch_3
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09050c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    iget-object v5, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v5, v3}, Lcom/android/jrdsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->setDialogValues()V

    .line 457
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/jrdsettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 574
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 576
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 579
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 637
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 640
    return-void
.end method

.method private updateOnSimLockStateChanged()V
    .locals 3

    .prologue
    .line 300
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOnSimLockStateChanged()+mIsDeadLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsDeadLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsDeadLocked:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "IccLockSettings"

    const-string v1, "Restore state"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsDeadLocked:Z

    .line 306
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->resetDialogState()V

    .line 308
    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->isIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    return-void
.end method

.method private updateTitle(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    .line 311
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 313
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v3, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simInfo is null: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v1, :cond_0

    .line 315
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 316
    .local v0, simDisplayName:Ljava/lang/String;
    const-string v2, "IccLockSettings"

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

    .line 317
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    .end local v0           #simDisplayName:Ljava/lang/String;
    :cond_0
    return-void

    .line 313
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090504

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 218
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    const v2, 0x7f090505

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method isIccLockEnabled()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 696
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 697
    const-string v0, "IccLockSettings"

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

    .line 699
    if-ne v3, p2, :cond_1

    .line 700
    const-string v0, "slotid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    .line 701
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->updateTitle(I)V

    .line 703
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->updatePreferences()V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 713
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const-string v0, "IccLockSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->finish()V

    .line 293
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 235
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 237
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 244
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/EditPinPreference;

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    .line 245
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 246
    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 248
    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 249
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    .line 250
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 253
    const v0, 0x7f090500

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->startSelectSimActivity(Landroid/app/Activity;I)V

    .line 258
    :goto_1
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogState is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 262
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 263
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 264
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    .line 265
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogState is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPin is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mError is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToState  is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/jrdsettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/jrdsettings/EditPinPreference$OnPinEnteredListener;)V

    .line 291
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    goto/16 :goto_0

    .line 255
    :cond_2
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->updateTitle(I)V

    .line 256
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->updatePreferences()V

    goto/16 :goto_1

    .line 272
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 273
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOldPin  is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 277
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 278
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 279
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOldPin  is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNewPin   is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 412
    const-string v0, "IccLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 414
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 399
    const-string v0, "IccLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    :cond_0
    return-void
.end method

.method public onPinEntered(Lcom/android/jrdsettings/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 503
    if-nez p2, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->resetDialogState()V

    .line 546
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/android/jrdsettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09050e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 512
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 515
    :cond_1
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 517
    :pswitch_0
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 520
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 521
    iput v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 522
    iput-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 523
    iput-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 524
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 527
    :pswitch_2
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 528
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 529
    iput-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 530
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 533
    :pswitch_3
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09050f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 535
    iput v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 536
    iput-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 539
    :cond_2
    iput-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 540
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 549
    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    .line 553
    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 554
    iput v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    .line 555
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 560
    :goto_0
    return v0

    .line 556
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 557
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v9, -0x1

    .line 325
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 326
    const-string v6, "IccLockSettings"

    const-string v7, "onResume"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/jrdsettings/IccLockSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090503

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, simPinToggle:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v6, v3, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, simPinToggleCT:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090506

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, simPinChange:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget v7, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-interface {v6, v1, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, simPinChangeCT:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v6, v2}, Lcom/android/jrdsettings/EditPinPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    const-string v6, "IccLockSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsShouldBeFinished: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsShouldBeFinished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsShouldBeFinished:Z

    if-eqz v6, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/jrdsettings/IccLockSettings;->finish()V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    if-eq v6, v9, :cond_0

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/jrdsettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    iget v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    if-eqz v6, :cond_3

    .line 361
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->showPinDialog()V

    .line 366
    :goto_1
    iget-boolean v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsUnlockFollow:Z

    if-nez v6, :cond_0

    .line 367
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mIsUnlockFollow:Z

    .line 368
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 369
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->getRetryPinCount()I

    move-result v6

    const/16 v7, -0x64

    if-ne v6, v7, :cond_4

    .line 371
    :cond_2
    const-string v6, "IccLockSettings"

    const-string v7, "OnResume: postDelay call - handleCellConn 1"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/jrdsettings/IccLockSettings$4;

    invoke-direct {v7, p0}, Lcom/android/jrdsettings/IccLockSettings$4;-><init>(Lcom/android/jrdsettings/IccLockSettings;)V

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 364
    :cond_3
    invoke-direct {p0}, Lcom/android/jrdsettings/IccLockSettings;->resetDialogState()V

    goto :goto_1

    .line 382
    :cond_4
    const-string v6, "IccLockSettings"

    const-string v7, "OnResume: postDelay call - handleCellConn 2"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v6, p0, Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/jrdsettings/IccLockSettings$5;

    invoke-direct {v7, p0}, Lcom/android/jrdsettings/IccLockSettings$5;-><init>(Lcom/android/jrdsettings/IccLockSettings;)V

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 423
    const-string v0, "IccLockSettings"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/jrdsettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/jrdsettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    const-string v0, "sim_id"

    iget v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget v0, p0, Lcom/android/jrdsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 434
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/jrdsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
