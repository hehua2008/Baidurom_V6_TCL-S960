.class Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "JrdVolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, action:Ljava/lang/String;
    const-string v3, "Settings/VolPref"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHeadSetPlugListener.onReceive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$000(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$000(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->getStreamType()I

    move-result v1

    .line 136
    .local v1, streamType:I
    iget-object v3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 137
    .local v2, volume:I
    iget-object v3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$1;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mSeekBarVolumizer:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$000(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->updateSeekBarByVolume(I)V

    .line 139
    .end local v1           #streamType:I
    .end local v2           #volume:I
    :cond_0
    return-void
.end method
