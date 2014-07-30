.class Landroid/drm/DrmManagerClient$5;
.super Ljava/lang/Thread;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 1814
    iput-object p1, p0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1816
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mFilePath "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v13, v14, v15}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_4

    .line 1824
    :cond_2
    :try_start_0
    const-string v13, "DrmManagerClient"

    const-string v14, "clear drm wallpaper"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/drm/DrmManagerClient;->deleteDrmWallpaper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1826
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1827
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v13

    const v14, 0x305000a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v16, v0

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1828
    .local v12, toastMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1834
    .end local v12           #toastMsg:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1835
    .local v9, e:Ljava/lang/Exception;
    const-string v13, "DrmManagerClient"

    const-string v14, "clear DRM wallpaper fail. "

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1830
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v13

    const v14, 0x3050009

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v16, v0

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1831
    .restart local v12       #toastMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1838
    .end local v12           #toastMsg:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/drm/DrmManagerClient;->isDrm(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1840
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/drm/DrmManagerClient;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1842
    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v13

    if-nez v13, :cond_5

    .line 1843
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/drm/DrmManagerClient;->getInstance(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    .line 1844
    :cond_5
    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v13, v14, v15}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 1845
    .local v3, cv:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1847
    const-string/jumbo v13, "license_expiry_time"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    .line 1849
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/drm/DrmManagerClient;->getTimeConstraint(Ljava/lang/String;)J

    move-result-wide v14

    #setter for: Landroid/drm/DrmManagerClient;->drmConstraintsTime:J
    invoke-static {v13, v14, v15}, Landroid/drm/DrmManagerClient;->access$1402(Landroid/drm/DrmManagerClient;J)J

    .line 1850
    const/4 v13, 0x1

    new-array v4, v13, [B

    .line 1851
    .local v4, data:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-byte v14, v4, v13

    .line 1852
    new-instance v7, Landroid/drm/DrmInfo;

    const/16 v13, 0x7d9

    const-string v14, "application/vnd.oma.drm.content"

    invoke-direct {v7, v13, v4, v14}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 1860
    .local v7, drmInfo:Landroid/drm/DrmInfo;
    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/drm/DrmManagerClient;->processExtraDrmInfoSync(Landroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v8

    .line 1862
    .local v8, drmStatus:Landroid/drm/DrmInfoStatus;
    if-eqz v8, :cond_0

    iget v13, v8, Landroid/drm/DrmInfoStatus;->statusCode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1864
    :try_start_2
    iget-object v13, v8, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v13}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v2

    .line 1865
    .local v2, currentTime:[B
    if-eqz v2, :cond_6

    .line 1866
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    new-instance v14, Ljava/lang/String;

    const-string v15, "US-ASCII"

    invoke-direct {v14, v2, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    #setter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static {v13, v14, v15}, Landroid/drm/DrmManagerClient;->access$1502(Landroid/drm/DrmManagerClient;J)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1875
    .end local v2           #currentTime:[B
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1500(Landroid/drm/DrmManagerClient;)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_7

    .line 1876
    const-string v13, "DrmManagerClient"

    const-string v14, "can not get trust drm time"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_7
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drmConstraintsTime := "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->drmConstraintsTime:J
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1400(Landroid/drm/DrmManagerClient;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " date: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v16, v0

    #getter for: Landroid/drm/DrmManagerClient;->drmConstraintsTime:J
    invoke-static/range {v16 .. v16}, Landroid/drm/DrmManagerClient;->access$1400(Landroid/drm/DrmManagerClient;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    #calls: Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/drm/DrmManagerClient;->access$1600(Landroid/drm/DrmManagerClient;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drmTrustSecureTime := "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1500(Landroid/drm/DrmManagerClient;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " date: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v16, v0

    #getter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static/range {v16 .. v16}, Landroid/drm/DrmManagerClient;->access$1500(Landroid/drm/DrmManagerClient;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    #calls: Landroid/drm/DrmManagerClient;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/drm/DrmManagerClient;->access$1600(Landroid/drm/DrmManagerClient;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->drmConstraintsTime:J
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1400(Landroid/drm/DrmManagerClient;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1500(Landroid/drm/DrmManagerClient;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v5, v13, v15

    .line 1883
    .local v5, delta:J
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drmConstraintsTime - drmTrustSecureTime = delta: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-gez v13, :cond_8

    .line 1886
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/drm/DrmManagerClient;->watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1868
    .end local v5           #delta:J
    :catch_1
    move-exception v10

    .line 1869
    .local v10, ex:Ljava/lang/NumberFormatException;
    const-string v13, "DrmManagerClient"

    const-string v14, "The drm secure time is invalid-need-synchronization!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    const-wide/16 v14, -0x1

    #setter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static {v13, v14, v15}, Landroid/drm/DrmManagerClient;->access$1502(Landroid/drm/DrmManagerClient;J)J

    goto/16 :goto_1

    .line 1871
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v9

    .line 1872
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v13, "DrmManagerClient"

    const-string v14, "Got an other Exception."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    const-wide/16 v14, -0x1

    #setter for: Landroid/drm/DrmManagerClient;->drmTrustSecureTime:J
    invoke-static {v13, v14, v15}, Landroid/drm/DrmManagerClient;->access$1502(Landroid/drm/DrmManagerClient;J)J

    goto/16 :goto_1

    .line 1892
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v5       #delta:J
    :cond_8
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v13, "jrdcom.intent.action.SET_WALLPAPER_CHECKER"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1893
    .local v11, it:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1894
    .local v1, bl:Landroid/os/Bundle;
    const-string v13, "delta"

    invoke-virtual {v1, v13, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1895
    invoke-virtual {v11, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1896
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1901
    .end local v1           #bl:Landroid/os/Bundle;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #data:[B
    .end local v5           #delta:J
    .end local v7           #drmInfo:Landroid/drm/DrmInfo;
    .end local v8           #drmStatus:Landroid/drm/DrmInfoStatus;
    .end local v11           #it:Landroid/content/Intent;
    :cond_9
    invoke-static {}, Landroid/drm/DrmManagerClient;->access$1200()Landroid/drm/DrmManagerClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/drm/DrmManagerClient;->isValidCDSDType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1904
    const-string v13, "DrmManagerClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filepath=: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has interval constraint, consume drm right!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/drm/DrmManagerClient;->consumeRights(Ljava/lang/String;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/drm/DrmManagerClient;->hasTimeConstraint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1912
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/drm/DrmManagerClient;->access$1300(Landroid/drm/DrmManagerClient;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/drm/DrmManagerClient$5;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mFilePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/drm/DrmManagerClient;->access$1100(Landroid/drm/DrmManagerClient;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/drm/DrmManagerClient;->watchingDrmWallpaperStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
