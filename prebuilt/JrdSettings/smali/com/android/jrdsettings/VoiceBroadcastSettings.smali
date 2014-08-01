.class public Lcom/android/jrdsettings/VoiceBroadcastSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "VoiceBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IFLYTEK_ENABLE:Z = false

.field public static final KEY_MUTE_VOICE_SWITCH_CALL:Ljava/lang/String; = "mute_call_voice_broadcast"

.field public static final KEY_MUTE_VOICE_SWITCH_EMAIL:Ljava/lang/String; = "mute_email_voice_broadcast"

.field public static final KEY_MUTE_VOICE_SWITCH_MESSAGE:Ljava/lang/String; = "mute_message_voice_broadcast"

.field public static final KEY_VOICE_SWITCH_CALL:Ljava/lang/String; = "call_voice_broadcast"

.field public static final KEY_VOICE_SWITCH_EMAIL:Ljava/lang/String; = "email_voice_broadcast"

.field public static final KEY_VOICE_SWITCH_MESSAGE:Ljava/lang/String; = "message_voice_broadcast"

.field public static final KEY_VOICE_SWITCH_MESSAGE_ALWAYS_ASK:Ljava/lang/String; = "message_voice_broadcast_always_ask"

.field public static final SPEECH_CLOUD_PACK_NAME:Ljava/lang/String; = "com.iflytek.speechcloud"

.field public static final SPEECH_PACK_NAME:Ljava/lang/String; = "com.iflytek.speech"

.field private static final TAG:Ljava/lang/String; = "VoiceBroadcastSettings"


# instance fields
.field private mCallSwitch:Landroid/preference/SwitchPreference;

.field private mEmailSwitch:Landroid/preference/SwitchPreference;

.field private mMessageCheckBoxAlwaysAsk:Landroid/preference/CheckBoxPreference;

.field private mMessageSwitch:Landroid/preference/SwitchPreference;

.field private mMuteCallCheckBox:Landroid/preference/CheckBoxPreference;

.field private mMuteEmailCheckBox:Landroid/preference/CheckBoxPreference;

.field private mMuteMessageCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 25
    const-string v1, "def.voice.engine"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->IFLYTEK_ENABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkStatus(Landroid/preference/CheckBoxPreference;)V
    .locals 5
    .parameter "checkbox"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "VoiceBroadcastSettings"

    const-string v3, "<checkStatus> set false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 80
    const-string v1, "message_voice_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMessageSwitch:Landroid/preference/SwitchPreference;

    .line 81
    const-string v1, "call_voice_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mCallSwitch:Landroid/preference/SwitchPreference;

    .line 82
    const-string v1, "email_voice_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mEmailSwitch:Landroid/preference/SwitchPreference;

    .line 84
    const-string v1, "message_voice_broadcast_always_ask"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMessageCheckBoxAlwaysAsk:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v1, "mute_call_voice_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMuteCallCheckBox:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v1, "mute_message_voice_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMuteMessageCheckBox:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v1, "mute_email_voice_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMuteEmailCheckBox:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v1, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMuteCallCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "mute_call_voice_broadcast"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, relateValue:I
    iget-object v3, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMuteCallCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 94
    .end local v0           #relateValue:I
    :cond_0
    return-void

    .line 92
    .restart local v0       #relateValue:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, installed:Z
    if-eqz p0, :cond_0

    move v2, v1

    .line 76
    .end local v1           #installed:Z
    .local v2, installed:I
    :goto_0
    return v2

    .line 61
    .end local v2           #installed:I
    .restart local v1       #installed:Z
    :cond_0
    const/4 v3, 0x0

    .line 62
    .local v3, speech:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 64
    .local v4, speechcloud:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.iflytek.speech"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.iflytek.speechcloud"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 71
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 72
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 76
    .restart local v2       #installed:I
    goto :goto_0

    .line 66
    .end local v2           #installed:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "VoiceBroadcastSettings"

    const-string v6, "there is no iflytek apk in this system"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mMessageSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mCallSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/jrdsettings/VoiceBroadcastSettings;->mEmailSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    return-void
.end method

.method private setSystemValue(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 54
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 145
    const-string v0, "VoiceBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPreferenceChange>:preference.getKey()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Landroid/preference/SwitchPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 148
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/VoiceBroadcastSettings;->setSystemValue(Ljava/lang/String;Z)V

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 126
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/jrdsettings/VoiceBroadcastSettings;->setSystemValue(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "mute_call_voice_broadcast"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v1, "turn_over_to_mute"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/jrdsettings/VoiceBroadcastSettings;->setSystemValue(Ljava/lang/String;Z)V

    .line 131
    const-string v0, "def_turn_over_to_mute_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/jrdsettings/VoiceBroadcastSettings;->setSystemValue(Ljava/lang/String;Z)V

    .line 133
    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/android/jrdsettings/VoiceBroadcastSettings;->initView()V

    .line 101
    invoke-direct {p0}, Lcom/android/jrdsettings/VoiceBroadcastSettings;->setListener()V

    .line 102
    return-void
.end method
