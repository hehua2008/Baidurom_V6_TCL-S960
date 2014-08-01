.class public Lcom/android/jrdsettings/audioshare/AudioShareSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "AudioShareSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;
    }
.end annotation


# static fields
.field private static final AUDIO_SHARE_FIRST_TIME:Ljava/lang/String; = "audio_share_first_time"

.field private static final CATEGORY_KEY_AVAILABLE_SPEAKERs:Ljava/lang/String; = "available_speakers"

.field private static final CATEGORY_KEY_INTRODUTION:Ljava/lang/String; = "introdution"

.field private static final CATEGORY_KEY_SHARE_SETTINGS:Ljava/lang/String; = "share_settings"

.field private static final MENU_ID_HELP:I = 0x2

.field private static final MENU_ID_NONE:I = 0x1

.field private static final PREFERENCE_KEY_INTRODUTION:Ljava/lang/String; = "introduction_info"

.field private static final PREFERENCE_KEY_SHARE_SETTINGS:Ljava/lang/String; = "setting"

.field private static final STATE_OFF:I = 0xa

.field private static final STATE_ON:I = 0xc

.field private static final STATE_TURNING_OFF:I = 0xd

.field private static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "AudioShareSettings"


# instance fields
.field private mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

.field private mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCurrentState:I

.field private mDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

.field private mIntrodutionCategory:Lcom/android/jrdsettings/audioshare/AudioShareIntroductionCategory;

.field private mIsWifiConnected:Z

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

.field private mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 120
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    .line 123
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    .line 124
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIntrodutionCategory:Lcom/android/jrdsettings/audioshare/AudioShareIntroductionCategory;

    .line 125
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIsWifiConnected:Z

    .line 140
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$1;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mSettingListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    .line 157
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    .line 161
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Startting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Startted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Stopping"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "audio_share_service_Stopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$2;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/audioshare/AudioShareSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/audioshare/AudioShareSettings;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->addDevice(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mSettingListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    return-object v0
.end method

.method private addDevice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "udn"
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 572
    const-string v1, "AudioShareSettings"

    const-string v2, "createDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .line 574
    .local v0, devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .end local v0           #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/jrdsettings/audioshare/AudioShareSettings$5;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$5;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;)V

    .line 588
    .restart local v0       #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setDeviceName(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, v3}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setProgress(Z)V

    .line 593
    packed-switch p3, :pswitch_data_0

    .line 603
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 604
    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    .line 607
    :goto_0
    return-void

    .line 595
    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 596
    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    goto :goto_0

    .line 599
    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 600
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentState()I
    .locals 4

    .prologue
    .line 419
    const/16 v0, 0xa

    .line 420
    .local v0, currentState:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_share_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, state:Ljava/lang/String;
    const-string v2, "audio_share_starting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const/16 v0, 0xb

    .line 432
    :goto_0
    return v0

    .line 423
    :cond_0
    const-string v2, "audio_share_started"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    const/16 v0, 0xc

    goto :goto_0

    .line 425
    :cond_1
    const-string v2, "audio_share_stopping"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    const/16 v0, 0xd

    goto :goto_0

    .line 427
    :cond_2
    const-string v2, "audio_share_stopped"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 428
    const/16 v0, 0xa

    goto :goto_0

    .line 430
    :cond_3
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 621
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 624
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 628
    .local v5, wifiState:I
    if-eq v5, v9, :cond_0

    if-nez v5, :cond_1

    .line 630
    :cond_0
    iput-boolean v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIsWifiConnected:Z

    .line 631
    iput v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    .line 658
    .end local v5           #wifiState:I
    :cond_1
    :goto_0
    iget v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->updateContent(I)V

    .line 660
    return-void

    .line 633
    :cond_2
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 634
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 637
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 638
    .local v4, wifiInfo:Landroid/net/NetworkInfo;
    if-nez v4, :cond_3

    move v2, v6

    .line 639
    .local v2, isConnected1:Z
    :goto_1
    if-nez v1, :cond_4

    move v3, v6

    .line 640
    .local v3, isConnected2:Z
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 641
    iput-boolean v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIsWifiConnected:Z

    goto :goto_0

    .line 638
    .end local v2           #isConnected1:Z
    .end local v3           #isConnected2:Z
    :cond_3
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_1

    .line 639
    .restart local v2       #isConnected1:Z
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_2

    .line 642
    .restart local v3       #isConnected2:Z
    :cond_5
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 643
    iput-boolean v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIsWifiConnected:Z

    .line 644
    iput v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    goto :goto_0

    .line 648
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #isConnected1:Z
    .end local v3           #isConnected2:Z
    .end local v4           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v6, "audio_share_service_Startting"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 649
    const/16 v6, 0xb

    iput v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    goto :goto_0

    .line 650
    :cond_7
    const-string v6, "audio_share_service_Startted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 651
    const/16 v6, 0xc

    iput v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    goto :goto_0

    .line 652
    :cond_8
    const-string v6, "audio_share_service_Stopping"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 653
    const/16 v6, 0xd

    iput v6, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    goto :goto_0

    .line 654
    :cond_9
    const-string v6, "audio_share_service_Stopped"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 655
    iput v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    goto :goto_0
.end method

.method private removeDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "udn"
    .parameter "name"

    .prologue
    .line 610
    const-string v1, "AudioShareSettings"

    const-string v2, "removeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .line 613
    .local v0, devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XXX-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x0

    .line 618
    :cond_0
    return-void
.end method

.method private updateContent(I)V
    .locals 7
    .parameter "audioShareState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 518
    iput p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    .line 519
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 520
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 521
    .local v0, messageId:I
    const-string v2, "AudioShareSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContent ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCurrentState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 523
    packed-switch p1, :pswitch_data_0

    .line 568
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 569
    return-void

    .line 527
    :pswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    const v3, 0x7f0901cd

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setMessage(I)V

    .line 528
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 529
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->requestLocalMute()V

    .line 531
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->requestSpeakerList()V

    goto :goto_0

    .line 535
    :pswitch_1
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->removeAll()V

    .line 536
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v2, v6}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setProgress(Z)V

    .line 537
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v2, v5}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setNoDeviceFoundAdded(Z)V

    .line 541
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 548
    :pswitch_2
    const-string v2, "AudioShareSettings"

    const-string v3, "mAvailableDevicesCategory = STATE_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    iget-boolean v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIsWifiConnected:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0901da

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setMessage(I)V

    .line 554
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->clearDevice()V

    .line 555
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v2, v6}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setProgress(Z)V

    .line 556
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v2, v5}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setNoDeviceFoundAdded(Z)V

    .line 560
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 550
    :cond_0
    const v2, 0x7f0901d8

    goto :goto_1

    .line 564
    :pswitch_3
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 565
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 196
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    const v7, 0x7f060008

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 199
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 200
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_1

    move-object v6, v1

    .line 203
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 204
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_1

    .line 206
    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 209
    .local v5, padding:I
    invoke-virtual {v0, v10, v10, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 210
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 213
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 222
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v7, "available_speakers"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    .line 223
    const-string v7, "share_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    .line 224
    const-string v7, "introdution"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/jrdsettings/audioshare/AudioShareIntroductionCategory;

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIntrodutionCategory:Lcom/android/jrdsettings/audioshare/AudioShareIntroductionCategory;

    .line 226
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mSettingListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    invoke-virtual {v7, v8}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->setSettingClickedListener(Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;)V

    .line 228
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mEmptyView:Landroid/widget/TextView;

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 232
    new-instance v7, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V

    invoke-direct {v7, v8, v9}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;)V

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    .line 369
    new-instance v7, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    new-instance v9, Lcom/android/jrdsettings/audioshare/AudioShareSettings$4;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$4;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V

    invoke-direct {v7, v1, v0, v8, v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;Lcom/android/jrdsettings/audioshare/AudioShareSettings$ISwitchOnOffCallBack;)V

    iput-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    .line 393
    const-string v7, "AudioShareSettings"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-virtual {v7}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 395
    const-string v7, "AudioShareSettings"

    const-string v8, "onCreate Is  Checked"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    const/4 v4, 0x0

    .line 402
    .local v4, isFirstTime:Z
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "audio_share_first_time"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 403
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "audio_share_first_time"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 407
    :goto_1
    if-eqz v4, :cond_2

    .line 408
    const/4 v4, 0x0

    .line 409
    iget-object v7, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v7}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 410
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "audio_share_first_time"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 415
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 397
    .end local v4           #isFirstTime:Z
    :cond_3
    const-string v7, "AudioShareSettings"

    const-string v8, "onCreate Not Checked"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .restart local v4       #isFirstTime:Z
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901d0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 182
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 186
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    const-string v0, " "

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 479
    const/4 v0, 0x2

    const v1, 0x7f0901db

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 484
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 485
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "AudioShareSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->disconnectFromService()V

    .line 469
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 470
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 495
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 502
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 497
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 459
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->pause()V

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 508
    const-string v0, "AudioShareSettings"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 438
    const-string v1, "AudioShareSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 440
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAudioShareEnabler:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->resume()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v2, "HHHHHH"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 448
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput-boolean v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mIsWifiConnected:Z

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->getCurrentState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->updateContent(I)V

    .line 454
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 490
    return-void
.end method
