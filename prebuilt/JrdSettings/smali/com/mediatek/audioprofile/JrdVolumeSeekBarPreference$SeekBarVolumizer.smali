.class public Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "JrdVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalVolume:I

.field public mProfileIsActive:Z

.field public mRingtone:Landroid/media/Ringtone;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field public mSystemVolume:I

.field final synthetic this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    const/4 v1, -0x1

    .line 355
    iput-object p1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 337
    iput v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    .line 338
    iput v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 339
    iput v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mProfileIsActive:Z

    .line 356
    iput-object p2, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 358
    iput p4, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    .line 359
    iput-object p3, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 362
    :try_start_0
    invoke-direct {p0, p3}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$200(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 386
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    .line 387
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    .line 388
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 389
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 392
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 393
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 407
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 409
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 412
    :cond_1
    return-void

    .line 394
    :cond_2
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 395
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 396
    :cond_3
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 397
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 399
    :cond_4
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 400
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 403
    :cond_5
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SYSTEM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSilentProfileActive()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sample()V
    .locals 3

    .prologue
    .line 554
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sample, set system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->setVolume(II)V

    .line 556
    return-void
.end method

.method private setVolume(II)V
    .locals 4
    .parameter "streamType"
    .parameter "volume"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 425
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 458
    :goto_0
    return-void

    .line 441
    :cond_0
    if-ne p1, v3, :cond_1

    .line 443
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 447
    :cond_1
    if-ne p1, v2, :cond_2

    .line 449
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 567
    return-void
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 490
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : fromTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.jrd.startDragJrdVolumeSeekBar"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    :cond_0
    iput p2, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    .line 496
    if-nez p3, :cond_1

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 592
    iget v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 593
    iget v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    .line 594
    iget v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mOriginalVolume:I

    .line 595
    iget v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    .line 596
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 598
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 577
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 578
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mVolume:I

    .line 579
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mOriginalVolume:I

    .line 580
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p1, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$VolumeStore;->mSystemVolume:I

    .line 582
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 476
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    invoke-direct {p0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->sample()V

    .line 523
    iget v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$300(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jrd_ring_and_notifaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    #getter for: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$100(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 535
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-direct {p0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v1

    #calls: Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->changeVibrateAndSlientPreferState(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->access$400(Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;Z)V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.jrd.endDragJrdVolumeSeekBar"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    :cond_3
    return-void

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->sample()V

    .line 548
    return-void
.end method

.method public updateSeekBarByVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 370
    iput p1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    .line 371
    iget-object v0, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 372
    return-void
.end method
