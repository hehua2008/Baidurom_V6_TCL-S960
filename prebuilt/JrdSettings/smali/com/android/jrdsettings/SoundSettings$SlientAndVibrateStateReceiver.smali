.class Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlientAndVibrateStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/SoundSettings;Lcom/android/jrdsettings/SoundSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f020085

    const v7, 0x7f02008a

    const v6, 0x7f020087

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 957
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, action:Ljava/lang/String;
    const-string v3, "setSilentAndVibrateUncheck"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 960
    .local v2, theCurrModeisVibrate:Z
    const-string v3, "com.android.jrd.setSilentAndVibrateUncheck"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 964
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #calls: Lcom/android/jrdsettings/SoundSettings;->getCurrentRingerMode()I
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2000(Lcom/android/jrdsettings/SoundSettings;)I

    move-result v1

    .line 966
    .local v1, state:I
    if-nez v1, :cond_2

    .line 967
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 968
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 969
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 970
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 971
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 973
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 974
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    goto :goto_0

    .line 976
    :cond_2
    if-ne v1, v5, :cond_3

    .line 977
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 978
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 979
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 980
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 981
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 983
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 984
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    goto/16 :goto_0

    .line 986
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 987
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 988
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 989
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    const v4, 0x7f020086

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 990
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    const v4, 0x7f020088

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 991
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 993
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setIcon(I)V

    .line 994
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto/16 :goto_0

    .line 996
    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 997
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 998
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 999
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    const v4, 0x7f020086

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1000
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    const v4, 0x7f020088

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1001
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 1003
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setIcon(I)V

    .line 1004
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto/16 :goto_0

    .line 1010
    .end local v1           #state:I
    :cond_5
    const-string v3, "com.android.jrd.startDragJrdVolumeSeekBar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1011
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #setter for: Lcom/android/jrdsettings/SoundSettings;->isJrdVolumeSeekBarDraging:Z
    invoke-static {v3, v5}, Lcom/android/jrdsettings/SoundSettings;->access$2402(Lcom/android/jrdsettings/SoundSettings;Z)Z

    goto/16 :goto_0

    .line 1012
    :cond_6
    const-string v3, "com.android.jrd.endDragJrdVolumeSeekBar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #setter for: Lcom/android/jrdsettings/SoundSettings;->isJrdVolumeSeekBarDraging:Z
    invoke-static {v3, v4}, Lcom/android/jrdsettings/SoundSettings;->access$2402(Lcom/android/jrdsettings/SoundSettings;Z)Z

    goto/16 :goto_0
.end method
