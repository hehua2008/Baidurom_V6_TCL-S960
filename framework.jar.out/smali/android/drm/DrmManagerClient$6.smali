.class Landroid/drm/DrmManagerClient$6;
.super Ljava/lang/Thread;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->watchingDrmRingtoneStatus(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient;)V
    .locals 0
    .parameter

    .prologue
    .line 2262
    iput-object p1, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2264
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 2265
    .local v9, status:Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2266
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "watchingDrmRingtoneStatus status.equals(Environment.MEDIA_MOUNTED_READ_ONLY)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2270
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2271
    .local v4, cr:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2272
    .local v5, values:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 2274
    .local v2, ringtonePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2275
    .local v6, beforeAudioRingtoneFilePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2276
    .local v7, beforeVedioRingtoneFilePath:Ljava/lang/String;
    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/drm/DrmManagerClient;->access$1700(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #calls: Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/drm/DrmManagerClient;->access$1800(Landroid/drm/DrmManagerClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2277
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtonePath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const-string v0, "drm_audio_set_as_ringtone"

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2279
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeAudioRingtoneFilePath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string v0, "drm_video_set_as_ringtone"

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2282
    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2285
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Watching status of voice_call_ringtone, ringtonePath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iget-object v0, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "ringtone"

    invoke-virtual/range {v0 .. v5}, Landroid/drm/DrmManagerClient;->watchStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 2289
    :cond_2
    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Watching status of video_call_ringtone, ringtonePath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget-object v0, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "video_call"

    invoke-virtual/range {v0 .. v5}, Landroid/drm/DrmManagerClient;->watchStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2295
    .end local v2           #ringtonePath:Ljava/lang/String;
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #beforeAudioRingtoneFilePath:Ljava/lang/String;
    .end local v7           #beforeVedioRingtoneFilePath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2296
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "DrmManagerClient"

    const-string v1, "clear drm ringtone fail. "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
