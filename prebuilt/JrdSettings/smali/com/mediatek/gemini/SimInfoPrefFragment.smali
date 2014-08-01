.class public Lcom/mediatek/gemini/SimInfoPrefFragment;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "SimInfoPrefFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimInfoPrefFragment"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 37
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 39
    new-instance v0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimInfoPrefFragment$1;-><init>(Lcom/mediatek/gemini/SimInfoPrefFragment;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimInfoPrefFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->initPreferenceScreen()V

    return-void
.end method

.method private addSimPreference()V
    .locals 6

    .prologue
    .line 179
    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 180
    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 181
    .local v2, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v3, "SimInfoPrefFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initPreferenceScreen with slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;)V

    .line 183
    .local v1, infoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-direct {p0, v1, v2}, Lcom/mediatek/gemini/SimInfoPrefFragment;->setDataIntoSimPref(Lcom/mediatek/gemini/simui/SimCardInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 184
    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 186
    .end local v1           #infoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v2           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return-void
.end method

.method private enablePreferenceScreen()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 153
    .local v0, isAirplaneModeOn:Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 154
    return-void

    .end local v0           #isAirplaneModeOn:Z
    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    .restart local v0       #isAirplaneModeOn:Z
    :cond_1
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method private initPreferenceScreen()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->getSimInfoRecordList()Ljava/util/List;

    .line 170
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->addSimPreference()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->updatePrefSimInfo()V

    goto :goto_0
.end method

.method private setDataIntoSimPref(Lcom/mediatek/gemini/simui/SimCardInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .parameter "pref"
    .parameter "siminfo"

    .prologue
    const/4 v1, 0x1

    .line 198
    iget v2, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimInfoPrefFragment;->getSimIndicator(I)I

    move-result v0

    .line 199
    .local v0, indicator:I
    invoke-virtual {p1, p2, v0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoProperty(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V

    .line 200
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    return-void
.end method

.method private updatePrefSimInfo()V
    .locals 6

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, index:I
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

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

    .line 192
    .local v4, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 193
    .local v3, infoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-direct {p0, v3, v4}, Lcom/mediatek/gemini/SimInfoPrefFragment;->setDataIntoSimPref(Lcom/mediatek/gemini/simui/SimCardInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    move v1, v2

    .line 194
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 195
    .end local v3           #infoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public dealNoSimCardIn()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 219
    return-void
.end method

.method protected getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 84
    .restart local v1       #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 85
    const-string v2, "SimInfoPrefFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " related preference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 89
    :goto_1
    return-object v2

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getSimIndicator(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-static {v0, v1, p1}, Lcom/mediatek/gemini/GeminiUtils;->getSimIndicator(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ITelephony;I)I

    move-result v0

    return v0
.end method

.method protected getSimInfoRecordList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

    .line 208
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method protected handleAirplaneModeChange(Z)V
    .locals 4
    .parameter "isAirplaneOn"

    .prologue
    .line 97
    if-eqz p1, :cond_1

    .line 99
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 101
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimIndicator(I)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 107
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method protected handleSimIndicChange(II)V
    .locals 7
    .parameter "slotId"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 66
    if-eq p1, v6, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 69
    .local v0, isAirplaneModeOn:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    const/4 p2, 0x1

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/SimInfoPrefFragment;->getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    move-result-object v1

    .line 73
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1, p2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimIndicator(I)V

    .line 75
    if-eq p2, v2, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 78
    .end local v0           #isAirplaneModeOn:Z
    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 67
    goto :goto_0

    .restart local v0       #isAirplaneModeOn:Z
    .restart local v1       #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_3
    move v2, v3

    .line 75
    goto :goto_1
.end method

.method protected isNoSimInserted()Z
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 112
    .local v0, simNum:I
    const-string v1, "SimInfoPrefFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isSimRadioOff(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-static {v1, v2, p1}, Lcom/mediatek/gemini/GeminiUtils;->getSimIndicator(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ITelephony;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    .line 130
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 131
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->initPreferenceScreen()V

    .line 137
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->isNoSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->dealNoSimCardIn()V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoPrefFragment;->enablePreferenceScreen()V

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method protected setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPrefFragment;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 118
    return-void
.end method
