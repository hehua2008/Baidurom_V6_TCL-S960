.class public Lcom/android/jrdsettings/hifi/HifiEnabler;
.super Landroid/app/Fragment;
.source "HifiEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final HIFI_SWITCH_SETTINGS:Ljava/lang/String; = "hifi_open_settings"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mHifiStatusChangeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    const-string v0, "HifiEnabler"

    iput-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/android/jrdsettings/hifi/HifiEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler$1;-><init>(Lcom/android/jrdsettings/hifi/HifiEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mHifiStatusChangeObserver:Landroid/database/ContentObserver;

    .line 45
    iput-object p1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/jrdsettings/hifi/HifiSwitchPreference;)V
    .locals 2
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    const-string v0, "HifiEnabler"

    iput-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/android/jrdsettings/hifi/HifiEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler$1;-><init>(Lcom/android/jrdsettings/hifi/HifiEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mHifiStatusChangeObserver:Landroid/database/ContentObserver;

    .line 50
    iput-object p1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitchPreference:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/hifi/HifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/hifi/HifiEnabler;->enableHifi(Z)V

    return-void
.end method

.method private enableHifi(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hifi_current_status"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "persist.sys.HIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "HIFIStatus"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 167
    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 171
    goto :goto_1
.end method

.method private isShowDialog(Z)Z
    .locals 5
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v3, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hifi_current_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 143
    .local v0, hifiEnabled:Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0           #hifiEnabled:Z
    :cond_0
    move v0, v2

    .line 141
    goto :goto_0

    .restart local v0       #hifiEnabled:Z
    :cond_1
    move v1, v2

    .line 143
    goto :goto_1
.end method

.method private setSwitchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitchPreference:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 136
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/hifi/HifiEnabler;->enableHifi(Z)V

    .line 137
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 112
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    .local v0, isChecked:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hifi_open_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->enableHifi(Z)V

    .line 123
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mHifiStatusChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitchPreference:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->setSwitchEnabled()V

    .line 63
    invoke-virtual {p0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->setSwitchChecked()V

    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hifi_current_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mHifiStatusChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitchPreference:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public setSwitchChecked()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hifi_current_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 91
    .local v0, hifiEnabled:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->setSwitchChecked(Z)V

    .line 92
    return-void
.end method

.method public setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mSwitchPreference:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitchEnabled()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "GetHiFiDACStatus"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, hasHifiCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler;->setSwitchEnabled(Z)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler;->setSwitchEnabled(Z)V

    goto :goto_0
.end method

.method public showDialog(Z)V
    .locals 5
    .parameter "isChecked"

    .prologue
    const/high16 v4, 0x2

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/jrdsettings/hifi/HifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09098b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    const v2, 0x1040013

    new-instance v3, Lcom/android/jrdsettings/hifi/HifiEnabler$2;

    invoke-direct {v3, p0, p1}, Lcom/android/jrdsettings/hifi/HifiEnabler$2;-><init>(Lcom/android/jrdsettings/hifi/HifiEnabler;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 159
    .local v1, mSwitchDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 161
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 163
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 164
    return-void
.end method
