.class public Lcom/mediatek/gemini/SimDataRoamingSettings;
.super Lcom/mediatek/gemini/SimInfoPrefFragment;
.source "SimDataRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DLG_ROAMING_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimDataRoamingSettings"


# instance fields
.field private mCurrentSimID:J

.field private mCurrentSimSlot:I

.field private mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

.field private mSimInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;-><init>()V

    return-void
.end method

.method private getDataRoamingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setDataRoaming(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    invoke-static {v2, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    const/4 v1, 0x1

    .line 130
    .local v1, roamingState:I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    invoke-static {v2, v1, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 137
    .end local v1           #roamingState:I
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimDataRoamingSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #roamingState:I
    goto :goto_0

    .line 132
    .end local v1           #roamingState:I
    :cond_2
    const-string v2, "SimDataRoamingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been plug out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSimItemStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 153
    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 155
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimInfoPrefFragment;->getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    move-result-object v1

    .line 157
    .local v1, preference:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 162
    .end local v1           #preference:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-void
.end method


# virtual methods
.method public dealNoSimCardIn()V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/jrdsettings/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 171
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 141
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 142
    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimInfoPrefFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    .line 44
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 47
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    .line 89
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 91
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    const v4, 0x7f090325

    invoke-interface {v3, v1, v4}, Lcom/mediatek/settings/ext/ISimRoamingExt;->getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, msg:Ljava/lang/String;
    const-string v3, "SimDataRoamingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 101
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    check-cast p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 60
    iget-object v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v6}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v1

    .line 61
    .local v1, simID:J
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 62
    .local v3, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_1

    .line 65
    iget v0, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    .line 73
    .local v0, dataRoaming:I
    iget v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    .line 74
    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    .line 75
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 83
    .end local v0           #dataRoaming:I
    :goto_0
    return v4

    .line 78
    .restart local v0       #dataRoaming:I
    :cond_0
    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 79
    iget-object v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v6, v5}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_0

    .end local v0           #dataRoaming:I
    :cond_1
    move v4, v5

    .line 83
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->updateSimItemStatus()V

    .line 54
    return-void
.end method
