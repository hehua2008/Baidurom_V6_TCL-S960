.class public Lcom/mediatek/hdmi/HDMISettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "HDMISettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_EDID_UPDATE:Ljava/lang/String; = "mediatek.action.HDMI_EDID_UPDATED"

.field private static final HDMI_RESOLUTION_AUTO:I = 0x64

.field private static final KEY_TOGGLE_HDMI:Ljava/lang/String; = "hdmi_toggler"

.field private static final KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field private static final TAG:Ljava/lang/String; = "HDMISettings"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

.field private mVideoResolutionPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/mediatek/hdmi/HDMISettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/HDMISettings$1;-><init>(Lcom/mediatek/hdmi/HDMISettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 50
    new-instance v0, Lcom/mediatek/hdmi/HDMISettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/HDMISettings$2;-><init>(Lcom/mediatek/hdmi/HDMISettings;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/hdmi/HDMISettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePref()V

    return-void
.end method

.method private updatePref()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "HDMISettings"

    const-string v1, "updatePref"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePrefStatus()V

    .line 127
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updateSelectedResolution()V

    .line 128
    return-void
.end method

.method private updatePrefStatus()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 131
    const-string v4, "HDMISettings"

    const-string v5, "updatePrefStatus"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 133
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 136
    :cond_0
    const/4 v3, 0x0

    .line 138
    .local v3, shouldEnable:Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->isSignalOutputting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hdmi_enable_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 145
    .local v2, hdmiEnabled:Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 146
    return-void

    .line 139
    .end local v2           #hdmiEnabled:Z
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hdmi manager RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSelectedResolution()V
    .locals 15

    .prologue
    const/16 v14, 0x64

    .line 149
    const-string v11, "HDMISettings"

    const-string v12, "updateSelectedResolution"

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 151
    .local v1, dlg:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 152
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 154
    :cond_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hdmi_video_resolution"

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 156
    .local v10, videoResolution:I
    if-le v10, v14, :cond_1

    .line 157
    const/16 v10, 0x64

    .line 159
    :cond_1
    const/4 v11, 0x1

    new-array v9, v11, [I

    const/4 v11, 0x0

    aput v14, v9, v11

    .line 161
    .local v9, supportedResolutions:[I
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v11}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->getSupportedResolutions()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 165
    :goto_0
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0081

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, resolutionEntries:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v5, realResolutionEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v6, realResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    move-object v0, v9

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v7, v0, v3

    .line 174
    .local v7, resolution:I
    :try_start_1
    aget-object v11, v8, v7

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    .end local v0           #arr$:[I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #realResolutionEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6           #realResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v7           #resolution:I
    .end local v8           #resolutionEntries:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "HDMISettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hdmi manager RemoteException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #arr$:[I
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #realResolutionEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v6       #realResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v7       #resolution:I
    .restart local v8       #resolutionEntries:[Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 177
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v11, "HDMISettings"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 180
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v7           #resolution:I
    :cond_2
    iget-object v12, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 182
    iget-object v12, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 185
    iget-object v11, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "HDMISettings"

    const-string v1, "HDMISettings.onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    .line 69
    const-string v0, "hdmi_toggler"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mToggleHdmiPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    const-string v0, "video_resolution"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    .line 72
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v0, "mtkhdmi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    .line 83
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 93
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 112
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, key:Ljava/lang/String;
    const-string v3, "HDMISettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preference changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    const-string v3, "hdmi_toggler"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 194
    .local v0, checked:Z
    iget-object v3, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v3, v0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z

    .line 202
    .end local v0           #checked:Z
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 195
    .restart local p2
    :cond_1
    const-string v3, "video_resolution"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->setVideoResolution(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "HDMISettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hdmi manager RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/mediatek/hdmi/HDMISettings;->updatePref()V

    .line 99
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_cable_plugged"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMISettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    return-void
.end method
