.class public Lcom/android/jrdsettings/GesturesSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "GesturesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_ALARM_PREFERENCE:Ljava/lang/String; = "alarm_preference"

.field private static final KEY_CALLS_PREFERENCE:Ljava/lang/String; = "calls_preference"

.field private static final KEY_MUSIC_PREFERENCE:Ljava/lang/String; = "music_preference"

.field private static final TAG:Ljava/lang/String; = "GesturesSettings"


# instance fields
.field private mAlarmItem:[Ljava/lang/String;

.field private mAlarmPreference:Landroid/preference/SwitchPreference;

.field private mCallsPreference:Landroid/preference/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMusicPreference:Landroid/preference/CheckBoxPreference;

.field private mSnoozeEnable:Z

.field private mStopEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/GesturesSettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 218
    new-instance v0, Lcom/android/jrdsettings/GesturesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/GesturesSettings$1;-><init>(Lcom/android/jrdsettings/GesturesSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/GesturesSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/GesturesSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/GesturesSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private showAlarmStatusDialog()V
    .locals 7

    .prologue
    .line 202
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v2, labelArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x109000f

    invoke-direct {v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 205
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, index:I
    iget-object v4, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    const/4 v1, 0x0

    .line 211
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090941

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mItemChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 215
    .local v3, mAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 216
    return-void

    .line 208
    .end local v3           #mAlertDialog:Landroid/app/AlertDialog;
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 130
    const-string v0, "GesturesSettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-object v0, p0, Lcom/android/jrdsettings/GesturesSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f06001b

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 91
    const-string v2, "music_preference"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mMusicPreference:Landroid/preference/CheckBoxPreference;

    .line 92
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mMusicPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 94
    const-string v2, "calls_preference"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 97
    const-string v2, "alarm_preference"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    .line 98
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 100
    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mMusicPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "music_shake_enable"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 103
    const-string v2, "def_turn_over_to_mute_enabled"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, defTotmV:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "turn_over_to_mute"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, mDefTurnOverToMute:I
    const-string v2, "candy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GesturesSettings onCreate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "alarm_turnover_enable"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 112
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "snooze_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mSnoozeEnable:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "stop_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mStopEnable:Z

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0049

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    .line 119
    iget-boolean v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mSnoozeEnable:Z

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-boolean v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mStopEnable:Z

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    return-void

    .end local v0           #defTotmV:I
    .end local v1           #mDefTurnOverToMute:I
    :cond_2
    move v2, v4

    .line 100
    goto/16 :goto_0

    .restart local v0       #defTotmV:I
    .restart local v1       #mDefTurnOverToMute:I
    :cond_3
    move v2, v4

    .line 107
    goto :goto_1

    :cond_4
    move v2, v4

    .line 109
    goto :goto_2

    :cond_5
    move v2, v4

    .line 114
    goto :goto_3

    :cond_6
    move v2, v4

    .line 116
    goto :goto_4
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 152
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, key:Ljava/lang/String;
    const-string v1, "alarm_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 174
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_turnover_enable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    :cond_0
    return v2

    .line 177
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .end local p2
    :cond_2
    move v1, v3

    .line 179
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 187
    const-string v3, "alarm_preference"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    :goto_0
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 194
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "alarm_turnover_enable"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    invoke-direct {p0}, Lcom/android/jrdsettings/GesturesSettings;->showAlarmStatusDialog()V

    .line 198
    .end local v0           #value:Z
    :cond_1
    return v2

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 157
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mMusicPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mMusicPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 159
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "music_shake_enable"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 163
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 164
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "turn_over_to_mute"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 168
    .end local v0           #value:Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mAlarmItem:[Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "def_turn_over_to_mute_enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, defTotmV:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "turn_over_to_mute"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, mDefTurnOverToMute:I
    iget-object v3, p0, Lcom/android/jrdsettings/GesturesSettings;->mCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    .end local v0           #defTotmV:I
    .end local v1           #mDefTurnOverToMute:I
    :cond_0
    return-void

    .line 144
    .restart local v0       #defTotmV:I
    .restart local v1       #mDefTurnOverToMute:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
