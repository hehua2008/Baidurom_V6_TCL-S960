.class public Lcom/mediatek/audioprofile/AudioProfileSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "AudioProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;
    }
.end annotation


# static fields
.field private static final CUSTOMCATEGORY:Ljava/lang/String; = "custom"

.field private static final DIALOG_DELETE:I = 0x3

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_NAME:I = 0x0

.field private static final DIALOG_RESET:I = 0x2

.field private static final ERROR_COUNT_OVERFLOW:I = 0x2

.field private static final ERROR_NAME_EXIST:I = 0x0

.field private static final ERROR_NAME_LENGTH:I = 0x1

.field private static final GENERAL_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static final GET_BESLOUDNESS_STATUS:Ljava/lang/String; = "GetBesLoudnessStatus"

.field private static final GET_BESLOUDNESS_STATUS_ENABLED:Ljava/lang/String; = "GetBesLoudnessStatus=1"

.field private static final GET_MUSIC_PLUS_STATUS:Ljava/lang/String; = "GetMusicPlusStatus"

.field private static final GET_MUSIC_PLUS_STATUS_ENABLED:Ljava/lang/String; = "GetMusicPlusStatus=1"

.field private static final H_RESET_SUCCESS:I = 0xb

.field private static final KEY_BESLOUDNESS:Ljava/lang/String; = "bes_loudness"

.field private static final KEY_MUSIC_PLUS:Ljava/lang/String; = "music_plus"

.field private static final KEY_SOUND_ENAHCNE:Ljava/lang/String; = "sound_enhance"

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final MENUID_ADD:I = 0x1

.field private static final MENUID_DELETE:I = 0x4

.field private static final MENUID_ENABLE:I = 0x2

.field private static final MENUID_RENAME:I = 0x3

.field private static final MENUID_RESET:I = 0x2

.field private static final OUTDOOR_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_outdoor"

.field private static final PREDEFINEDCATEGORY:Ljava/lang/String; = "predefine"

.field private static final SET_BESLOUDNESS_DISABLED:Ljava/lang/String; = "SetBesLoudnessStatus=0"

.field private static final SET_BESLOUDNESS_ENABLED:Ljava/lang/String; = "SetBesLoudnessStatus=1"

.field private static final SET_MUSIC_PLUS_DISABLED:Ljava/lang/String; = "SetMusicPlusStatus=0"

.field private static final SET_MUSIC_PLUS_ENABLED:Ljava/lang/String; = "SetMusicPlusStatus=1"

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field private static final SOUND_PREFERENCE_NULL_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioProfileSettings:"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"


# instance fields
.field private mAudioEnhParent:Landroid/preference/PreferenceCategory;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

.field public mCurrentDialogId:I

.field private mCustomParent:Landroid/preference/PreferenceCategory;

.field private mCustomerExist:Z

.field private mCustomerProfilePrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfilePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKey:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorType:I

.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mMenuId:I

.field private mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

.field private mPredefineParent:Landroid/preference/PreferenceCategory;

.field private mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mProfileSettingListener:Landroid/view/View$OnClickListener;

.field private mProfileTitle:[Ljava/lang/String;

.field private mRenameDialogtext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 111
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 121
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 155
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 313
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    .line 692
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 6
    .parameter "root"
    .parameter "key"

    .prologue
    .line 288
    invoke-static {p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 289
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 290
    .local v1, preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1           #preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;)V

    .line 292
    .restart local v1       #preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {v1, p2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setProfileKey(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:Add into profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    if-nez v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 306
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 307
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private dynamicshowSummary()V
    .locals 3

    .prologue
    .line 342
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 343
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 344
    .local v1, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 346
    .end local v1           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    return-void
.end method

.method private updateActivePreference()V
    .locals 5

    .prologue
    .line 328
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, key:Ljava/lang/String;
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfileSettings:key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 332
    .local v0, activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 335
    :cond_1
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 238
    .local v4, root:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllProfileKeys()Ljava/util/List;

    move-result-object v3

    .line 239
    .local v3, profileKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 240
    const-string v6, "Settings/AudioP"

    const-string v7, "AudioProfileSettings:profileKey size is 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v7, "Settings/AudioP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProfileSettings:profileKey size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 246
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 247
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 258
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v8, "GetMusicPlusStatus"

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, state:Ljava/lang/String;
    const-string v7, "Settings/AudioP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProfileSettings:get the state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, isChecked:Z
    if-eqz v5, :cond_2

    .line 262
    const-string v7, "GetMusicPlusStatus=1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    .line 265
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 270
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "GetBesLoudnessStatus"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    const-string v6, "Settings/AudioP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioProfileSettings:get besloudness state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

    const-string v7, "GetBesLoudnessStatus=1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 250
    .end local v1           #isChecked:Z
    .end local v5           #state:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 251
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 252
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, profileKey:Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #profileKey:Ljava/lang/String;
    .restart local v1       #isChecked:Z
    .restart local v5       #state:Ljava/lang/String;
    :cond_4
    move v1, v6

    .line 262
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 620
    const-string v3, "Settings/AudioP"

    const-string v4, "onClick"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 623
    const-string v3, "Settings/AudioP"

    const-string v4, "return"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    packed-switch v3, :pswitch_data_0

    .line 686
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:unrecongnized dialog id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const-string v2, ""

    .line 630
    .local v2, title:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 631
    iput v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 632
    invoke-virtual {p0, v7}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 628
    .end local v2           #title:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 633
    .restart local v2       #title:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 634
    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 635
    invoke-virtual {p0, v7}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 637
    :cond_4
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v7, :cond_6

    .line 638
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->addProfile()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, profileKey:Ljava/lang/String;
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:add profile Key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    move-result-object v0

    .line 644
    .local v0, activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-nez v0, :cond_5

    .line 645
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto/16 :goto_0

    .line 648
    :cond_5
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 650
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto/16 :goto_0

    .line 653
    .end local v0           #activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    .end local v1           #profileKey:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v2, v7}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 658
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 659
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 663
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 664
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 667
    :cond_7
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->deleteProfile(Ljava/lang/String;)Z

    .line 668
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 669
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 670
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 671
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 672
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto/16 :goto_0

    .line 676
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_8

    .line 677
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 678
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 679
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 680
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 682
    :cond_8
    const-string v3, "predefine"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 683
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;Lcom/mediatek/audioprofile/AudioProfileSettings$1;)V

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 511
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 513
    .local v1, pref:Landroid/preference/Preference;
    instance-of v4, v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 514
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1           #pref:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 531
    :goto_0
    return v2

    .line 517
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 520
    :pswitch_1
    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 521
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .restart local v1       #pref:Landroid/preference/Preference;
    :cond_0
    move v2, v3

    .line 531
    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 175
    const-string v2, "Settings/AudioP"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/jrdsettings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    .line 181
    const-string v2, "audioprofile"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 182
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 183
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 184
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 187
    :cond_0
    const v2, 0x7f060007

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 188
    const-string v2, "custom"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    .line 190
    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 191
    .local v0, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const-string v2, "mtk_audioprofile_silent"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 193
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const-string v2, "mtk_audioprofile_meeting"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 195
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const-string v2, "mtk_audioprofile_outdoor"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 197
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtk_audioprofile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 203
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileSettings$2;

    invoke-direct {v2, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 212
    const-string v2, "music_plus"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    .line 213
    const-string v2, "sound_enhance"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    .line 214
    const-string v2, "bes_loudness"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

    .line 224
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 228
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 480
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 481
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 482
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 484
    .local v2, pref:Landroid/preference/Preference;
    instance-of v4, v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 485
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, key:Ljava/lang/String;
    check-cast v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    .line 487
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 488
    const/4 v4, 0x2

    const v5, 0x7f090039

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 489
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 490
    .local v3, senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    const/4 v4, 0x3

    const v5, 0x7f09003a

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 493
    const/4 v4, 0x4

    const v5, 0x7f09003b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 497
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v6, 0x1080027

    const/high16 v10, 0x104

    const/4 v9, 0x0

    const v8, 0x104000a

    const/4 v5, 0x1

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, dialog:Landroid/app/Dialog;
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 549
    if-nez p1, :cond_4

    .line 550
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040044

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, content:Landroid/view/View;
    const v3, 0x7f0b009c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 553
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    const v4, 0x10001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 556
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_3

    const v3, 0x7f090038

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09003d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 608
    .end local v0           #content:Landroid/view/View;
    :cond_1
    :goto_2
    return-object v1

    .line 556
    .restart local v0       #content:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    goto :goto_0

    .line 559
    :cond_3
    const v3, 0x7f09003a

    goto :goto_1

    .line 571
    .end local v0           #content:Landroid/view/View;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, stringId:I
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    packed-switch v3, :pswitch_data_0

    .line 586
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090103

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 591
    goto :goto_2

    .line 575
    :pswitch_0
    const v2, 0x7f090041

    .line 576
    goto :goto_3

    .line 578
    :pswitch_1
    const v2, 0x7f09003e

    .line 579
    goto :goto_3

    .line 581
    :pswitch_2
    const v2, 0x7f09003f

    .line 582
    goto :goto_3

    .line 591
    .end local v2           #stringId:I
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 592
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 598
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 599
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090040

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_2

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 430
    const/4 v0, 0x1

    const v1, 0x7f090038

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 435
    const/4 v0, 0x2

    const v1, 0x7f090037

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 439
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 451
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCount()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 452
    iput v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 463
    :goto_0
    return v0

    .line 456
    :cond_0
    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 459
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 460
    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 463
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 371
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 372
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 374
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 386
    instance-of v0, p2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v0, :cond_0

    move-object v10, p2

    .line 387
    check-cast v10, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 388
    .local v10, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 389
    .local v9, key:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IAudioProfileExt;->isPrefEditable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "profileKey"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/audioprofile/Editprofile;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 401
    .end local v2           #args:Landroid/os/Bundle;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_1

    move-object v0, p2

    .line 402
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    .line 403
    .local v8, enabled:Z
    if-eqz v8, :cond_4

    const-string v7, "SetMusicPlusStatus=1"

    .line 404
    .local v7, cmdStr:Ljava/lang/String;
    :goto_1
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings: set command about music plus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 410
    .end local v7           #cmdStr:Ljava/lang/String;
    .end local v8           #enabled:Z
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mBesLoudnessPref:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_2

    move-object v0, p2

    .line 411
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    .line 412
    .restart local v8       #enabled:Z
    if-eqz v8, :cond_5

    const-string v7, "SetBesLoudnessStatus=1"

    .line 413
    .restart local v7       #cmdStr:Ljava/lang/String;
    :goto_2
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings: set command about besloudness: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 417
    .end local v7           #cmdStr:Ljava/lang/String;
    .end local v8           #enabled:Z
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 395
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v9}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .line 403
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    .restart local v8       #enabled:Z
    :cond_4
    const-string v7, "SetMusicPlusStatus=0"

    goto :goto_1

    .line 412
    :cond_5
    const-string v7, "SetBesLoudnessStatus=0"

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 353
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfileSettings:onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 356
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    .line 358
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->dynamicshowSummary()V

    .line 359
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updateActivePreference()V

    .line 361
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 364
    return-void
.end method
