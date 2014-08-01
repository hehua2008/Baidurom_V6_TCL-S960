.class Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/SoundSettings;Lcom/android/jrdsettings/SoundSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f02008a

    const v4, 0x7f020087

    const/4 v3, 0x1

    .line 1035
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->isJrdVolumeSeekBarDraging:Z
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2400(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2500(Lcom/android/jrdsettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2500(Lcom/android/jrdsettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1040
    .local v1, ringMode:I
    if-nez v1, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1042
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1043
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1044
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1045
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1048
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1049
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1086
    .end local v1           #ringMode:I
    :cond_0
    :goto_0
    return-void

    .line 1052
    .restart local v1       #ringMode:I
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1053
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1054
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1055
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1056
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1057
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1060
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1061
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1073
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1074
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    const v3, 0x7f020088

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1075
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 1078
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1079
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto/16 :goto_0
.end method
