.class public Lcom/android/jrdsettings/DateTimeSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final AUTO_TIME_GPS_INDEX:I = 0x1

.field private static final AUTO_TIME_NETWORK_INDEX:I = 0x0

.field private static final AUTO_TIME_OFF_INDEX:I = 0x2

.field private static final DIALOG_DATEPICKER:I = 0x0

.field private static final DIALOG_GPS_CONFIRM:I = 0x2

.field private static final DIALOG_TIMEPICKER:I = 0x1

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time_list"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private mAutoTimePref:Landroid/preference/ListPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mExt:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 489
    new-instance v0, Lcom/android/jrdsettings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DateTimeSettings$1;-><init>(Lcom/android/jrdsettings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/DateTimeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->updateDateFormatEntries()V

    return-void
.end method

.method private static formatOffset(Ljava/lang/StringBuilder;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/StringBuilder;
    .locals 5
    .parameter "sb"
    .parameter "tz"
    .parameter "d"

    .prologue
    .line 465
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v2, v3, 0x3c

    .line 467
    .local v2, off:I
    const-string v3, "GMT"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    if-gez v2, :cond_0

    .line 469
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    neg-int v2, v2

    .line 475
    :goto_0
    div-int/lit8 v0, v2, 0x3c

    .line 476
    .local v0, hours:I
    rem-int/lit8 v1, v2, 0x3c

    .line 478
    .local v1, minutes:I
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    return-object p0

    .line 472
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .parameter "tz"

    .prologue
    .line 458
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 459
    .local v0, now:Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/android/jrdsettings/DateTimeSettings;->formatOffset(Ljava/lang/StringBuilder;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initUI()V
    .locals 15

    .prologue
    .line 108
    const-string v11, "auto_time"

    invoke-direct {p0, v11}, Lcom/android/jrdsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 109
    .local v1, autoTimeEnabled:Z
    const-string v11, "auto_time_zone"

    invoke-direct {p0, v11}, Lcom/android/jrdsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v3

    .line 110
    .local v3, autoTimeZoneEnabled:Z
    const-string v11, "auto_time_gps"

    invoke-direct {p0, v11}, Lcom/android/jrdsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 111
    .local v2, autoTimeGpsEnabled:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 112
    .local v9, intent:Landroid/content/Intent;
    const-string v11, "firstRun"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 114
    .local v10, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 116
    const-string v11, "auto_time_list"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    .line 117
    if-eqz v1, :cond_4

    .line 118
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 124
    :goto_0
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    const-string v11, "auto_zone"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    const/4 v3, 0x0

    .line 133
    :cond_1
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 135
    const-string v11, "time"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 136
    const-string v11, "24 hour"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 137
    const-string v11, "timezone"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 138
    const-string v11, "date"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 139
    const-string v11, "date_format"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 140
    if-eqz v10, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, dateFormats:[Ljava/lang/String;
    array-length v11, v5

    new-array v7, v11, [Ljava/lang/String;

    .line 147
    .local v7, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, currentFormat:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 151
    const-string v4, ""

    .line 153
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v11, v7

    if-ge v8, v11, :cond_7

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    aget-object v12, v5, v8

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v11

    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, formatted:Ljava/lang/String;
    aget-object v11, v5, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0902c2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    .line 153
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 119
    .end local v4           #currentFormat:Ljava/lang/String;
    .end local v5           #dateFormats:[Ljava/lang/String;
    .end local v6           #formatted:Ljava/lang/String;
    .end local v7           #formattedDates:[Ljava/lang/String;
    .end local v8           #i:I
    :cond_4
    if-eqz v2, :cond_5

    .line 120
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 122
    :cond_5
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 162
    .restart local v4       #currentFormat:Ljava/lang/String;
    .restart local v5       #dateFormats:[Ljava/lang/String;
    .restart local v6       #formatted:Ljava/lang/String;
    .restart local v7       #formattedDates:[Ljava/lang/String;
    .restart local v8       #i:I
    :cond_6
    aput-object v6, v7, v8

    goto :goto_2

    .line 166
    .end local v6           #formatted:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 167
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v12, 0x7f0a0001

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 168
    iget-object v11, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v11, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    const/4 v0, 0x1

    .line 172
    .local v0, autoEnabled:Z
    :goto_3
    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_a

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    iget-object v12, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v3, :cond_c

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    return-void

    .line 170
    .end local v0           #autoEnabled:Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 172
    .restart local v0       #autoEnabled:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .line 173
    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 174
    :cond_c
    const/4 v11, 0x0

    goto :goto_6
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private reSetAutoTimePref()V
    .locals 4

    .prologue
    .line 524
    const-string v2, "DateTimeSettings"

    const-string v3, "reset AutoTimePref as cancel the selection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 526
    .local v0, autoTimeEnabled:Z
    const-string v2, "auto_time_gps"

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 527
    .local v1, autoTimeGpsEnabled:Z
    if-eqz v0, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 534
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    return-void

    .line 529
    :cond_0
    if-eqz v1, :cond_1

    .line 530
    iget-object v2, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    return-void

    .line 408
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 7
    .parameter "context"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 429
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 430
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 431
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 434
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 435
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 437
    :cond_0
    return-void
.end method

.method private setDateRange(Landroid/app/DatePickerDialog;)V
    .locals 13
    .parameter "dialog"

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 360
    .local v0, minTime:Landroid/text/format/Time;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 361
    .local v10, maxTime:Landroid/text/format/Time;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7b2

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 362
    const/16 v2, 0x3b

    const/16 v3, 0x3b

    const/16 v4, 0x17

    const/16 v5, 0x1f

    const/16 v6, 0xb

    const/16 v7, 0x7f5

    move-object v1, v10

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 364
    .local v8, maxDate:J
    const-wide/16 v1, 0x3e7

    add-long/2addr v8, v1

    .line 365
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 366
    .local v11, minDate:J
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 367
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 369
    .end local v0           #minTime:Landroid/text/format/Time;
    .end local v8           #maxDate:J
    .end local v10           #maxTime:Landroid/text/format/Time;
    .end local v11           #minDate:J
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 442
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 443
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 444
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 445
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 446
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 448
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 449
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 451
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method private updateDateFormatEntries()V
    .locals 8

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, dateFormats:[Ljava/lang/String;
    array-length v4, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 228
    .local v2, formattedDates:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, formatted:Ljava/lang/String;
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902c2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 228
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_0
    aput-object v1, v2, v3

    goto :goto_1

    .line 239
    .end local v1           #formatted:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 394
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 539
    const-string v0, "DateTimeSettings"

    const-string v1, "onCancel Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->reSetAutoTimePref()V

    .line 541
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 504
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 505
    const-string v1, "DateTimeSettings"

    const-string v2, "Enable GPS time sync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 508
    .local v0, gpsEnabled:Z
    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    .end local v0           #gpsEnabled:Z
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 518
    const-string v1, "DateTimeSettings"

    const-string v2, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->reSetAutoTimePref()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 550
    const-string v0, "DateTimeSettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 552
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 553
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->initUI()V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getDateTimeSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mExt:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mExt:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IDateTimeSettingsExt;->customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 105
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 311
    packed-switch p1, :pswitch_data_0

    .line 350
    const/4 v0, 0x0

    .line 354
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 313
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 314
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .restart local v0       #d:Landroid/app/Dialog;
    move-object v1, v0

    .line 320
    check-cast v1, Landroid/app/DatePickerDialog;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DateTimeSettings;->setDateRange(Landroid/app/DatePickerDialog;)V

    goto :goto_0

    .line 324
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 325
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 331
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 335
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const v7, 0x7f090081

    .line 341
    .local v7, msg:I
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902d5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 347
    .restart local v0       #d:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 339
    .end local v0           #d:Landroid/app/Dialog;
    .end local v7           #msg:I
    :cond_0
    const v7, 0x7f090082

    .restart local v7       #msg:I
    goto :goto_1

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 245
    invoke-static {v0, p2, p3, p4}, Lcom/android/jrdsettings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 247
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->updateDateFormatEntries()V

    .line 249
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 209
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 387
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 378
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/DateTimeSettings;->set24Hour(Z)V

    .line 381
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 382
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->timeUpdated()V

    goto :goto_0

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 385
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->startTimeZone(Lcom/android/jrdsettings/SettingsPreferenceFragment;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 195
    invoke-direct {p0}, Lcom/android/jrdsettings/DateTimeSettings;->updateDateFormatEntries()V

    .line 199
    iget-object v1, p0, Lcom/android/jrdsettings/DateTimeSettings;->mExt:Lcom/mediatek/settings/ext/IDateTimeSettingsExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v2, v3, v4}, Lcom/mediatek/settings/ext/IDateTimeSettingsExt;->customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V

    .line 201
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 266
    const-string v6, "date_format"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, format:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.dateformatchange"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 305
    .end local v2           #format:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v6, "auto_time_list"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 279
    iget-object v6, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 281
    .local v3, index:I
    iget-object v6, p0, Lcom/android/jrdsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    const/4 v0, 0x1

    .line 284
    .local v0, autoEnabled:Z
    if-nez v3, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "auto_time"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "auto_time_gps"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :goto_1
    iget-object v9, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 298
    iget-object v6, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 289
    :cond_2
    if-ne v3, v7, :cond_3

    .line 290
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 291
    invoke-virtual {p0, p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "auto_time"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "auto_time_gps"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v6, v8

    .line 297
    goto :goto_2

    :cond_5
    move v7, v8

    .line 298
    goto :goto_3

    .line 299
    .end local v0           #autoEnabled:Z
    .end local v3           #index:I
    .end local v5           #value:Ljava/lang/String;
    :cond_6
    const-string v6, "auto_zone"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 301
    .local v1, autoZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    if-eqz v1, :cond_7

    move v6, v7

    :goto_4
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    iget-object v6, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    move v6, v8

    .line 301
    goto :goto_4

    :cond_8
    move v7, v8

    .line 303
    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 254
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 255
    invoke-static {v0, p2, p3}, Lcom/android/jrdsettings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 262
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 212
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 213
    .local v9, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 214
    .local v8, now:Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 217
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 218
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 219
    .local v7, dummyDate:Ljava/util/Date;
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/android/jrdsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method
