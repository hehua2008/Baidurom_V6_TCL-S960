.class public Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;
.super Ljava/lang/Object;
.source "FactoryInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static nvio:Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;


# instance fields
.field public data:[B

.field public isSync:Z

.field private mNvItemsIds:[I

.field public nvi_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "FactoryInfo"

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    .line 23
    iput-boolean v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->isSync:Z

    .line 31
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    .line 32
    iput-boolean v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->isSync:Z

    .line 34
    sget-object v0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvio:Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;

    invoke-direct {v0}, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvio:Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;

    .line 38
    :cond_0
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .parameter "size"
    .parameter "id"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;-><init>(I)V

    .line 52
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    .line 54
    return-void
.end method

.method constructor <init>(I[I)V
    .locals 1
    .parameter "size"
    .parameter "ids"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;-><init>(I)V

    .line 44
    array-length v0, p2

    div-int v0, p1, v0

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    .line 45
    iput-object p2, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized read()[B
    .locals 7

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->isSync:Z

    if-nez v4, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, offset:I
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    new-array v3, v4, [B

    .line 63
    .local v3, temp:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v4, :cond_0

    .line 65
    :try_start_1
    sget-object v4, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvio:Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->doNvRead(I)[B

    move-result-object v3

    .line 66
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v2, v4

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Value from NV "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 58
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v3           #temp:[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 73
    .restart local v1       #i:I
    .restart local v2       #offset:I
    .restart local v3       #temp:[B
    :cond_0
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->isSync:Z

    .line 76
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v3           #temp:[B
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized write([BI)V
    .locals 7
    .parameter "newdata"
    .parameter "pos"

    .prologue
    .line 81
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->isSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    array-length v6, p1

    invoke-static {p1, v4, v5, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :goto_0
    const/4 v2, 0x0

    .line 89
    .local v2, offset:I
    :try_start_2
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    new-array v3, v4, [B

    .line 91
    .local v3, temp:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    array-length v4, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v1, v4, :cond_0

    .line 93
    :try_start_3
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I

    invoke-static {v4, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sget-object v4, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvio:Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5, v3}, Lcom/android/jrdsettings/remotesecurity/jni/QcNvItemsJRD;->doNvWrite(I[B)V

    .line 95
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->nvi_length:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/2addr v2, v4

    .line 91
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v3           #temp:[B
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v4, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t copy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bytes to data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 96
    .restart local v1       #i:I
    .restart local v2       #offset:I
    .restart local v3       #temp:[B
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    sget-object v4, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->mNvItemsIds:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Value from NV "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 101
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->isSync:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    monitor-exit p0

    return-void
.end method
