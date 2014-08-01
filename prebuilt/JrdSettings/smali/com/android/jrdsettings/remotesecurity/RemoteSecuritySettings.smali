.class public Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "RemoteSecuritySettings.java"


# static fields
.field private static final KEY_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field private static final KEY_EMERGENCY_NUMBUER:Ljava/lang/String; = "emergency_number"

.field private static final KEY_LOGIN_WEBSITE:Ljava/lang/String; = "login_website"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super/range {p0 .. p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v14, 0x7f060037

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 25
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v14, "emergency_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 27
    .local v3, emergencyNumberPreference:Landroid/preference/Preference;
    const-string v14, "device_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 28
    .local v2, deviceNamePreference:Landroid/preference/Preference;
    const-string v14, "login_website"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 29
    .local v7, loginWebsitePreference:Landroid/preference/Preference;
    const-string v14, "sec_number"

    invoke-virtual {v1, v14}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 30
    .local v12, sec_number:Ljava/lang/String;
    const-string v14, "phone_name"

    invoke-virtual {v1, v14}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 31
    .local v11, phone_name:Ljava/lang/String;
    const v14, 0x7f09097e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, login_website_text:Ljava/lang/String;
    const-string v10, "https://remotesecurity.alcatelonetouch.com"

    .line 33
    .local v10, login_website_url:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 34
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    .line 35
    .local v4, len:I
    const/4 v14, 0x4

    if-le v4, v14, :cond_1

    .line 36
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    add-int/lit8 v16, v4, -0x4

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "xxxx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 40
    :goto_0
    invoke-virtual {v3, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 42
    .end local v4           #len:I
    :cond_0
    invoke-static {v11}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 43
    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, login_website:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 50
    .local v5, lenText:I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 51
    .local v6, lenUrl:I
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .local v13, sp:Landroid/text/SpannableString;
    invoke-virtual {v7, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void

    .line 38
    .end local v5           #lenText:I
    .end local v6           #lenUrl:I
    .end local v8           #login_website:Ljava/lang/String;
    .end local v13           #sp:Landroid/text/SpannableString;
    .restart local v4       #len:I
    :cond_1
    const-string v12, "xxxx"

    goto :goto_0

    .line 45
    .end local v4           #len:I
    :cond_2
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
