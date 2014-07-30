.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$1;,
        Landroid/drm/DrmUtils$DrmProfile;,
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation


# static fields
.field private static final AUTHORITY_MMS:Ljava/lang/String; = "mms"

.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method public static getAction(Ljava/lang/String;)I
    .locals 2
    .parameter "mime"

    .prologue
    const/4 v0, 0x1

    .line 236
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const/4 v0, 0x7

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "video/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmUtils$DrmProfile;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "client"

    .prologue
    .line 260
    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmProfile() : uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 262
    :cond_0
    const/4 v11, 0x0

    .line 312
    :cond_1
    :goto_0
    return-object v11

    .line 265
    :cond_2
    new-instance v11, Landroid/drm/DrmUtils$DrmProfile;

    invoke-direct {v11}, Landroid/drm/DrmUtils$DrmProfile;-><init>()V

    .line 266
    .local v11, profile:Landroid/drm/DrmUtils$DrmProfile;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, scheme:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, authority:Ljava/lang/String;
    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmProfile() : uri sheme: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", authority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "content"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, c:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "is_drm"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "drm_method"

    aput-object v1, v2, v0

    .line 276
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 277
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    const-string v0, "1"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    .line 280
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Landroid/drm/DrmUtils$DrmProfile;->method:I

    .line 286
    :cond_3
    :goto_1
    if-eqz v7, :cond_1

    .line 287
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 282
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    goto :goto_1

    .line 290
    .end local v2           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_5
    const-string v0, "file"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/drm/DrmUtils;->isDrmSufix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    .line 293
    invoke-virtual {p2, p1}, Landroid/drm/DrmManagerClient;->getMethod(Landroid/net/Uri;)I

    move-result v0

    iput v0, v11, Landroid/drm/DrmUtils$DrmProfile;->method:I

    goto/16 :goto_0

    .line 295
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    goto/16 :goto_0

    .line 297
    :cond_7
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "DrmUtils"

    const-string v1, "getDrmProfile() : getMetadata"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v8

    .line 300
    .local v8, cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_1

    .line 301
    const-string/jumbo v0, "isdrm"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 302
    .local v9, isdrm:I
    const-string v0, "drm_method"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 303
    .local v10, method:I
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is drm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x1

    if-ne v0, v9, :cond_8

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    .line 306
    iput v10, v11, Landroid/drm/DrmUtils$DrmProfile;->method:I

    goto/16 :goto_0

    .line 308
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    goto/16 :goto_0
.end method

.method public static getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .locals 2
    .parameter "extendedMetadata"

    .prologue
    .line 125
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils$1;)V

    return-object v0
.end method

.method private static isDrmSufix(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"

    .prologue
    .line 331
    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmSufix() : filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-nez p0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static quietlyDispose(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static quietlyDispose(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 109
    if-eqz p0, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static readBytes(Ljava/io/File;)[B
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 61
    .local v2, inputStream:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    .local v0, bufferedStream:Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 65
    .local v1, data:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .line 66
    .local v3, length:I
    if-lez v3, :cond_0

    .line 67
    new-array v1, v3, [B

    .line 69
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    .line 73
    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    .line 75
    return-object v1

    .line 72
    .end local v3           #length:I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    .line 73
    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    throw v4
.end method

.method static readBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method static removeFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    return-void
.end method

.method static writeToFile(Ljava/lang/String;[B)V
    .locals 3
    .parameter "path"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, outputStream:Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    .local v1, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 90
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    throw v2

    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method
