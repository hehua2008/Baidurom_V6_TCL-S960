.class public Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInfoGemini.java"


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final KEY_IMEI_SLOT1:Ljava/lang/String; = "imei_slot1"

.field private static final KEY_IMEI_SLOT2:Ljava/lang/String; = "imei_slot2"

.field private static final KEY_IMEI_SLOT3:Ljava/lang/String; = "imei_slot3"

.field private static final KEY_IMEI_SV_SLOT1:Ljava/lang/String; = "imei_sv_slot1"

.field private static final KEY_IMEI_SV_SLOT2:Ljava/lang/String; = "imei_sv_slot2"

.field private static final KEY_IMEI_SV_SLOT3:Ljava/lang/String; = "imei_sv_slot3"

.field private static final KEY_MEID_NUMBER_SLOT1:Ljava/lang/String; = "meid_number_slot1"

.field private static final KEY_MEID_NUMBER_SLOT2:Ljava/lang/String; = "meid_number_slot2"

.field private static final KEY_MEID_NUMBER_SLOT3:Ljava/lang/String; = "meid_number_slot3"

.field private static final KEY_MIN_NUMBER_SLOT1:Ljava/lang/String; = "min_number_slot1"

.field private static final KEY_MIN_NUMBER_SLOT2:Ljava/lang/String; = "min_number_slot2"

.field private static final KEY_MIN_NUMBER_SLOT3:Ljava/lang/String; = "min_number_slot3"

.field private static final KEY_PRL_VERSION_SLOT1:Ljava/lang/String; = "prl_version_slot1"

.field private static final KEY_PRL_VERSION_SLOT2:Ljava/lang/String; = "prl_version_slot2"

.field private static final KEY_PRL_VERSION_SLOT3:Ljava/lang/String; = "prl_version_slot3"

.field private static final TAG:Ljava/lang/String; = "ImeiInfoGemini"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mParent:Landroid/preference/PreferenceScreen;

.field private mRemovablePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method private removePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "imeiKey"
    .parameter "imeiSvKey"
    .parameter "meidNumberKey"
    .parameter "minNumberKey"
    .parameter "prlVersionKey"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 129
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 132
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 134
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    return-void
.end method

.method private setSlotStatus()V
    .locals 7

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    .line 64
    const/4 v1, 0x0

    const-string v2, "imei_slot1"

    const-string v3, "imei_sv_slot1"

    const-string v4, "meid_number_slot1"

    const-string v5, "min_number_slot1"

    const-string v6, "prl_version_slot1"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x1

    const-string v2, "imei_slot2"

    const-string v3, "imei_sv_slot2"

    const-string v4, "meid_number_slot2"

    const-string v5, "min_number_slot2"

    const-string v6, "prl_version_slot2"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "imei_slot3"

    const-string v2, "imei_sv_slot3"

    const-string v3, "meid_number_slot3"

    const-string v4, "min_number_slot3"

    const-string v5, "prl_version_slot3"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->removePreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "ImeiInfoGemini"

    const-string v1, "MTK_GEMINI_3SIM_SUPPORT is false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 142
    .local v0, p:Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "slotId"
    .parameter "imeiKey"
    .parameter "imeiSvKey"
    .parameter "meidNumberKey"
    .parameter "minNumberKey"
    .parameter "prlVersionKey"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p5, v1}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p6, v1}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 93
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 95
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 102
    const-string v1, "ro.def.software.svn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, imeisvn:Ljava/lang/String;
    const-string v1, "imei_sv_slot2"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v0           #imeisvn:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 115
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 117
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 119
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    const-string v2, "imei_sv_slot1"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    .line 109
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mParent:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mRemovablePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 49
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/ImeiInfoGemini;->setSlotStatus()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 55
    return-void
.end method
