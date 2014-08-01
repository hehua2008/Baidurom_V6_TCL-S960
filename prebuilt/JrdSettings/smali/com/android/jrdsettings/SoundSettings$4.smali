.class Lcom/android/jrdsettings/SoundSettings$4;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings$4;->this$0:Lcom/android/jrdsettings/SoundSettings;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V

    .line 279
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfile Changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$4;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #setter for: Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/jrdsettings/SoundSettings;->access$1102(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 282
    .local v0, senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$4;->this$0:Lcom/android/jrdsettings/SoundSettings;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z
    invoke-static {v2, v1}, Lcom/android/jrdsettings/SoundSettings;->access$302(Lcom/android/jrdsettings/SoundSettings;Z)Z

    .line 285
    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$4;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #calls: Lcom/android/jrdsettings/SoundSettings;->UpdateSoundUI()V
    invoke-static {v1}, Lcom/android/jrdsettings/SoundSettings;->access$1400(Lcom/android/jrdsettings/SoundSettings;)V

    .line 288
    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$4;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #calls: Lcom/android/jrdsettings/SoundSettings;->updatVibrateAndSilentCheckBox(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/jrdsettings/SoundSettings;->access$1500(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;)V

    .line 290
    return-void

    .line 282
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
