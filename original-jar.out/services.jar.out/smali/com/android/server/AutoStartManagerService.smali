.class public Lcom/android/server/AutoStartManagerService;
.super Landroid/app/IAutoStartManager$Stub;
.source "AutoStartManagerService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStateFile:Landroid/util/AtomicFile;

.field private mStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/IAutoStartManager$Stub;-><init>()V

    .line 52
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/autostart_status.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    .line 58
    iput-object p1, p0, Lcom/android/server/AutoStartManagerService;->mContext:Landroid/content/Context;

    .line 60
    iget-object v1, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 73
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    .line 75
    :cond_1
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAutoStartState(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoStartState(Ljava/lang/String;I)Z
    .locals 7
    .parameter "packageName"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, origState:I
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    :cond_0
    if-ne v1, p2, :cond_1

    .line 93
    const/4 v3, 0x1

    .line 121
    :goto_0
    return v3

    .line 96
    :cond_1
    if-nez p2, :cond_2

    .line 97
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1
    const/4 v2, 0x0

    .line 103
    .local v2, stream:Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    .line 105
    .local v3, success:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 106
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-static {v4, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    if-eqz v3, :cond_3

    .line 115
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 99
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .end local v3           #success:Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 117
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    .restart local v3       #success:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const/4 v3, 0x0

    .line 114
    if-eqz v3, :cond_4

    .line 115
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 110
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    const/4 v3, 0x0

    .line 114
    if-eqz v3, :cond_5

    .line 115
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 117
    :cond_5
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v4, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 114
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    .line 115
    iget-object v5, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 118
    :goto_2
    throw v4

    .line 117
    :cond_6
    iget-object v5, p0, Lcom/android/server/AutoStartManagerService;->mStatus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v5, p0, Lcom/android/server/AutoStartManagerService;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2
.end method
