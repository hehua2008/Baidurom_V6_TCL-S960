.class public Lcom/android/jrdsettings/powersaver/JrdPowerManger;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "JrdPowerManger.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_POWERSAVE_PREFERENCE:Ljava/lang/String; = "powersave_preference"

.field private static final KEY_SUPERPOWERSAVE_PREFERENCE:Ljava/lang/String; = "super_powersave_preference"

.field private static final TAG:Ljava/lang/String; = "PowerSave"

.field private static mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

.field private static mSuperPowerSaveModePreference:Landroid/preference/Preference;


# instance fields
.field mAppIdNoRestricts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAppIdRestricts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavingModeObserver:Landroid/database/ContentObserver;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    invoke-static {}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->getInstance()Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mAppIdNoRestricts:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mAppIdRestricts:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/android/jrdsettings/powersaver/JrdPowerManger$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/powersaver/JrdPowerManger$1;-><init>(Lcom/android/jrdsettings/powersaver/JrdPowerManger;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSavingModeObserver:Landroid/database/ContentObserver;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/powersaver/JrdPowerManger;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->getPowerSaveMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    return-object v0
.end method

.method private getPowerSaveMode()I
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, powersavemode:I
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 70
    const-string v1, "powersave_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    sput-object v1, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    .line 71
    sget-object v1, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 72
    const-string v1, "super_powersave_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sput-object v1, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSuperPowerSaveModePreference:Landroid/preference/Preference;

    .line 73
    const-string v1, "ro.def.supermode.enable"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 74
    .local v0, custoSuperModeIcon:Z
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSuperPowerSaveModePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    :goto_0
    sget-object v1, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    sget-object v1, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    return-void

    .line 81
    :cond_0
    sget-object v1, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSuperPowerSaveModePreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    const-string v0, "powersave_preference"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 144
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->setChecked(Z)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_saving_mode"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    :cond_0
    return v1

    .line 147
    .restart local p2
    :cond_1
    sget-object v0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .end local p2
    :cond_2
    move v0, v2

    .line 149
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 157
    const-string v3, "powersave_preference"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v1, settings:Landroid/content/Intent;
    const-string v3, "com.android.jrdsettings"

    const-string v5, "com.android.jrdsettings.powersaver.JrdPowerSaveSettings"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 167
    sget-object v3, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    invoke-virtual {v3}, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->isChecked()Z

    move-result v2

    .line 168
    .local v2, value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_saving_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    .end local v1           #settings:Landroid/content/Intent;
    .end local v2           #value:Z
    :cond_0
    :goto_1
    return v4

    .line 168
    .restart local v1       #settings:Landroid/content/Intent;
    .restart local v2       #value:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    .end local v1           #settings:Landroid/content/Intent;
    .end local v2           #value:Z
    :cond_2
    const-string v3, "super_powersave_preference"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.jrdcom.supermode"

    const-string v5, "com.jrdcom.supermode.SuperModeMainActivity"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/high16 v3, 0x1400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 94
    sget-object v2, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mPowerSaveModePreference:Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    invoke-direct {p0}, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->getPowerSaveMode()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->setChecked(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_saving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->mSavingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    return-void

    :cond_0
    move v0, v1

    .line 94
    goto :goto_0
.end method
