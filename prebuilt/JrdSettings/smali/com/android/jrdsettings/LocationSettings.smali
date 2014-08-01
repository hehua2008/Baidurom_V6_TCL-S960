.class public Lcom/android/jrdsettings/LocationSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final KEY_LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final KEY_LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final KEY_LOCATION_TOGGLE:Ljava/lang/String; = "location_toggle"


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/jrdsettings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 91
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 94
    :cond_0
    const v1, 0x7f060022

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 97
    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 98
    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 99
    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v1, "assisted_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    return-object v0
.end method

.method private onToggleLocationAccess(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 191
    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 193
    invoke-direct {p0}, Lcom/android/jrdsettings/LocationSettings;->updateLocationToggles()V

    .line 194
    return-void
.end method

.method private updateLocationToggles()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 163
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 165
    .local v0, gpsEnabled:Z
    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 167
    .local v1, networkEnabled:Z
    iget-object v3, p0, Lcom/android/jrdsettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/jrdsettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 169
    iget-object v6, p0, Lcom/android/jrdsettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 170
    iget-object v3, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 173
    iget-object v3, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 169
    goto :goto_0

    :cond_3
    move v5, v4

    .line 171
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    invoke-direct {p0}, Lcom/android/jrdsettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 184
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 201
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 138
    const-string v2, "network"

    iget-object v4, p0, Lcom/android/jrdsettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 155
    :cond_0
    :goto_0
    return v3

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 142
    .local v1, enabled:Z
    const-string v2, "gps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 144
    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 147
    .end local v1           #enabled:Z
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 148
    const-string v4, "assisted_gps_enabled"

    iget-object v2, p0, Lcom/android/jrdsettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 152
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/jrdsettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 121
    invoke-direct {p0}, Lcom/android/jrdsettings/LocationSettings;->updateLocationToggles()V

    .line 123
    iget-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/jrdsettings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/LocationSettings$1;-><init>(Lcom/android/jrdsettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 69
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location_providers_allowed"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsCursor:Landroid/database/Cursor;

    .line 73
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 74
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 79
    iget-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/jrdsettings/LocationSettings;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_1
    return-void
.end method
