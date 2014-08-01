.class Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;
.super Ljava/lang/Object;
.source "PictureQualityToolPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/PictureQualityToolPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/PictureQualityToolPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    #setter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mProgress:I
    invoke-static {v0, v1}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$202(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I

    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #calls: Lcom/android/jrdsettings/PictureQualityToolPreference;->setSystemColor()V
    invoke-static {v0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$300(Lcom/android/jrdsettings/PictureQualityToolPreference;)V

    .line 129
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v0, v0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onProgressChanged progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v0, v0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    const-string v1, "onStartTrackingTouch called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$SeekBarListener;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v0, v0, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    const-string v1, "onStopTrackingTouch called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method
