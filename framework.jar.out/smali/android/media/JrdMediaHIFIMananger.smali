.class public Landroid/media/JrdMediaHIFIMananger;
.super Ljava/lang/Object;
.source "JrdMediaHIFIMananger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JrdMediaHIFIMananger"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Landroid/media/JrdMediaHIFIMananger;


# instance fields
.field private final DEFAULT_WHITE_LIST:Ljava/lang/String;

.field private mJrdHIFIManager:Landroid/app/JrdHIFIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/media/JrdMediaHIFIMananger;

    invoke-direct {v0}, Landroid/media/JrdMediaHIFIMananger;-><init>()V

    sput-object v0, Landroid/media/JrdMediaHIFIMananger;->mInstance:Landroid/media/JrdMediaHIFIMananger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "com.maxmpz.audioplayer;com.sds.android.ttpod;com.ting.mp3.android;com.kugou.android;com.jrdcom.music;com.duomi.android;cn.kuwo.player;com.tencent.qqmusic"

    iput-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->DEFAULT_WHITE_LIST:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static getInstance()Landroid/media/JrdMediaHIFIMananger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mInstance:Landroid/media/JrdMediaHIFIMananger;

    return-object v0
.end method

.method private isSupportHIFI(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 149
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v6, 0x80

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    new-instance v6, Ljava/io/File;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "audio/mp3"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/high16 v6, 0x1

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, mResolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 157
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    const-string v6, "JrdMediaHIFIMananger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "support packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v6, 0x1

    .line 163
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v6

    .line 162
    :cond_1
    const-string v6, "JrdMediaHIFIMananger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not support packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getHIFIStatus()I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 129
    monitor-enter p0

    :try_start_0
    const-string v1, "JrdMediaHIFIMananger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSensorEnable mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 131
    const-string v1, "JrdMediaHIFIMananger"

    const-string v2, " error mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 134
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    if-eqz v1, :cond_0

    .line 135
    const-string v0, "JrdMediaHIFIMananger"

    const-string v1, " getHIFIStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    invoke-virtual {v0}, Landroid/app/JrdHIFIManager;->getHIFIStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isContextEnable()Z
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setAudioTrackHIFIStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    if-nez v0, :cond_2

    .line 111
    :cond_0
    const-string v0, "JrdMediaHIFIMananger"

    const-string v1, " error mContext or mJrdHIFIManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_2
    :try_start_1
    const-string v0, "com.maxmpz.audioplayer;com.sds.android.ttpod;com.ting.mp3.android;com.kugou.android;com.jrdcom.music;com.duomi.android;cn.kuwo.player;com.tencent.qqmusic"

    sget-object v1, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    invoke-virtual {v0, p1}, Landroid/app/JrdHIFIManager;->setHIFIStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_3
    :try_start_2
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/JrdMediaHIFIMananger;->isSupportHIFI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    invoke-virtual {v0, p1}, Landroid/app/JrdHIFIManager;->setHIFIStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 68
    const-string v0, "JrdMediaHIFIMananger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContext context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sput-object p1, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    .line 70
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "jrd_HIFI_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/JrdHIFIManager;

    iput-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    .line 72
    :cond_0
    return-void
.end method

.method public declared-synchronized setHIFIStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    if-nez v0, :cond_2

    .line 91
    :cond_0
    const-string v0, "JrdMediaHIFIMananger"

    const-string v1, " error mContext or mJrdHIFIManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_2
    :try_start_1
    const-string v0, "com.maxmpz.audioplayer;com.sds.android.ttpod;com.ting.mp3.android;com.kugou.android;com.jrdcom.music;com.duomi.android;cn.kuwo.player;com.tencent.qqmusic"

    sget-object v1, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    invoke-virtual {v0, p1}, Landroid/app/JrdHIFIManager;->setHIFIStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_3
    :try_start_2
    sget-object v0, Landroid/media/JrdMediaHIFIMananger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/JrdMediaHIFIMananger;->isSupportHIFI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/media/JrdMediaHIFIMananger;->mJrdHIFIManager:Landroid/app/JrdHIFIManager;

    invoke-virtual {v0, p1}, Landroid/app/JrdHIFIManager;->setHIFIStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
