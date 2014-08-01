.class public Lorg/farng/mp3/TagUtility;
.super Ljava/lang/Object;
.source "TagUtility.java"


# static fields
.field private static final UPPERCASE:I

.field private static final capitalizationMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const/16 v2, -0x20

    sput v2, Lorg/farng/mp3/TagUtility;->UPPERCASE:I

    .line 38
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/farng/mp3/TagUtility;->capitalizationMap:Ljava/util/Map;

    .line 39
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->getUpperLowerCaseWordListIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, word:Ljava/lang/String;
    sget-object v2, Lorg/farng/mp3/TagUtility;->capitalizationMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static addTimeStampToTextArea(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .parameter "origPos"

    .prologue
    const/16 v5, 0xa

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 231
    const-string v3, "[00:00]"

    .line 252
    .local v3, newText:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 233
    .end local v3           #newText:Ljava/lang/String;
    :cond_0
    move v2, p1

    .line 234
    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    .line 236
    add-int/lit8 v2, v2, -0x1

    .line 238
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 239
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    .line 243
    :cond_2
    if-nez v2, :cond_4

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[00:00]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newText:Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v3           #newText:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 246
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 247
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, before:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, after:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[00:00]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newText:Ljava/lang/String;
    goto :goto_0
.end method

.method public static appendBeforeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .parameter "addition"

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 266
    .end local p0
    :goto_0
    return-object p0

    .line 259
    .restart local p0
    :cond_0
    if-nez p0, :cond_1

    move-object p0, p1

    .line 260
    goto :goto_0

    .line 262
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 263
    .local v0, index:I
    if-gez v0, :cond_2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 266
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static capitalizeWord(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 5
    .parameter "word"
    .parameter "keepUppercase"

    .prologue
    .line 776
    if-nez p0, :cond_0

    .line 777
    const/4 v3, 0x0

    .line 799
    :goto_0
    return-object v3

    .line 779
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v3, wordBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 781
    .local v1, index:I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 782
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 784
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 785
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 787
    .local v2, len:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 788
    .local v0, ch:C
    :goto_1
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3

    :cond_2
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_3

    .line 789
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 791
    :cond_3
    if-ge v1, v2, :cond_4

    .line 792
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    sget v4, Lorg/farng/mp3/TagUtility;->UPPERCASE:I

    add-int/2addr v4, v0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 794
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 796
    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static convertFrameID2_2to2_3(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v2, 0x3

    .line 270
    if-nez p0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 274
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/farng/mp3/TagConstant;->id3v2_2ToId3v2_3:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrameID2_2to2_4(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "identifier"

    .prologue
    const/4 v3, 0x3

    .line 280
    if-nez p0, :cond_0

    .line 281
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Identifier is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 284
    const/4 v0, 0x0

    .line 290
    :cond_1
    :goto_0
    return-object v0

    .line 286
    :cond_2
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_2ToId3v2_3:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 288
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_3ToId3v2_4:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #id:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #id:Ljava/lang/String;
    goto :goto_0
.end method

.method public static convertFrameID2_3to2_2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v2, 0x4

    .line 294
    if-nez p0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/farng/mp3/TagConstant;->id3v2_3ToId3v2_2:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrameID2_3to2_4(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v2, 0x4

    .line 304
    if-nez p0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/farng/mp3/TagConstant;->id3v2_3ToId3v2_4:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrameID2_4to2_2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "identifier"

    .prologue
    const/4 v3, 0x4

    .line 314
    if-nez p0, :cond_0

    .line 315
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Identifier is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 318
    const/4 v0, 0x0

    .line 324
    :cond_1
    :goto_0
    return-object v0

    .line 320
    :cond_2
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_4ToId3v2_3:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 322
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_3ToId3v2_2:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #id:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #id:Ljava/lang/String;
    goto :goto_0
.end method

.method public static convertFrameID2_4to2_3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "identifier"

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 332
    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/farng/mp3/TagConstant;->id3v2_4ToId3v2_3:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 12
    .parameter "source"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Source is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 344
    :cond_0
    if-nez p1, :cond_1

    .line 345
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Destination is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 347
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 348
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Source file not found."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 350
    :cond_2
    const/4 v6, 0x0

    .line 351
    .local v6, fio:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 352
    .local v1, bio:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 353
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 356
    .local v3, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 357
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 359
    :cond_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v6           #fio:Ljava/io/FileInputStream;
    .local v7, fio:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    .end local v1           #bio:Ljava/io/BufferedInputStream;
    .local v2, bio:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 362
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 363
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    const/16 v10, 0x400

    :try_start_4
    new-array v5, v10, [B

    .line 364
    .local v5, buffer:[B
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 365
    .local v0, b:I
    :goto_0
    const/4 v10, -0x1

    if-eq v0, v10, :cond_4

    .line 366
    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 367
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v0

    goto :goto_0

    .line 370
    :cond_4
    if-eqz v2, :cond_5

    .line 371
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 373
    :cond_5
    if-eqz v4, :cond_6

    .line 374
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 375
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 377
    :cond_6
    if-eqz v9, :cond_7

    .line 378
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 380
    :cond_7
    if-eqz v7, :cond_8

    .line 381
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 384
    :cond_8
    return-void

    .line 370
    .end local v0           #b:I
    .end local v2           #bio:Ljava/io/BufferedInputStream;
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #buffer:[B
    .end local v7           #fio:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bio:Ljava/io/BufferedInputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fio:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v10

    :goto_1
    if-eqz v1, :cond_9

    .line 371
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 373
    :cond_9
    if-eqz v3, :cond_a

    .line 374
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 375
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 377
    :cond_a
    if-eqz v8, :cond_b

    .line 378
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 380
    :cond_b
    if-eqz v6, :cond_c

    .line 381
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_c
    throw v10

    .line 370
    .end local v6           #fio:Ljava/io/FileInputStream;
    .restart local v7       #fio:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #fio:Ljava/io/FileInputStream;
    .restart local v6       #fio:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #bio:Ljava/io/BufferedInputStream;
    .end local v6           #fio:Ljava/io/FileInputStream;
    .restart local v2       #bio:Ljava/io/BufferedInputStream;
    .restart local v7       #fio:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #bio:Ljava/io/BufferedInputStream;
    .restart local v1       #bio:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fio:Ljava/io/FileInputStream;
    .restart local v6       #fio:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #bio:Ljava/io/BufferedInputStream;
    .end local v6           #fio:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bio:Ljava/io/BufferedInputStream;
    .restart local v7       #fio:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #bio:Ljava/io/BufferedInputStream;
    .restart local v1       #bio:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fio:Ljava/io/FileInputStream;
    .restart local v6       #fio:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #bio:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #fio:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bio:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #fio:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v10

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #bio:Ljava/io/BufferedInputStream;
    .restart local v1       #bio:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fio:Ljava/io/FileInputStream;
    .restart local v6       #fio:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "copyObject"

    .prologue
    .line 394
    if-nez p0, :cond_0

    .line 395
    const/4 v4, 0x0

    .line 403
    :goto_0
    return-object v4

    .line 398
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/Class;

    .line 399
    .local v1, constructorParameterArray:[Ljava/lang/Class;
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v1, v4

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 401
    .local v0, constructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    .line 402
    .local v3, parameterArray:[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 403
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    goto :goto_0

    .line 404
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;
    .end local v1           #constructorParameterArray:[Ljava/lang/Class;
    .end local v3           #parameterArray:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 405
    .local v2, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "NoSuchMethodException: Error finding constructor to create copy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    .end local v2           #ex:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 407
    .local v2, ex:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "IllegalAccessException: No access to run constructor to create copy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 409
    .local v2, ex:Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "InstantiationException: Unable to instantiate constructor to copy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 410
    .end local v2           #ex:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 411
    .local v2, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "InvocationTargetException: Unable to invoke constructor to create copy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static findMatchingParenthesis(Ljava/lang/String;I)I
    .locals 10
    .parameter "str"
    .parameter "index"

    .prologue
    const/4 v7, -0x1

    .line 425
    if-nez p0, :cond_0

    .line 426
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "String is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 428
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt p1, v8, :cond_2

    .line 429
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index to image string is out of bounds: offset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", string.length()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 434
    :cond_2
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v5

    .line 435
    .local v5, option:Lorg/farng/mp3/TagOptionSingleton;
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 439
    .local v6, stack:Ljava/util/Stack;
    if-ltz p1, :cond_8

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 441
    .local v3, length:I
    if-nez v3, :cond_4

    .line 442
    const/4 v2, 0x0

    .line 464
    .end local v3           #length:I
    :cond_3
    :goto_0
    return v2

    .line 444
    .restart local v3       #length:I
    :cond_4
    move v2, p1

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_8

    .line 445
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 446
    .local v0, ch:C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, chString:Ljava/lang/String;
    invoke-virtual {v5, v1}, Lorg/farng/mp3/TagOptionSingleton;->isOpenParenthesis(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 448
    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_5
    invoke-virtual {v5, v1}, Lorg/farng/mp3/TagOptionSingleton;->isCloseParenthesis(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 451
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-gtz v8, :cond_6

    move v2, v7

    .line 452
    goto :goto_0

    .line 454
    :cond_6
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    .local v4, open:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/farng/mp3/TagOptionSingleton;->getCloseParenthesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v2, v7

    .line 456
    goto :goto_0

    .line 459
    .end local v4           #open:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #ch:C
    .end local v1           #chString:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_8
    move v2, v7

    .line 464
    goto :goto_0
.end method

.method public static findNumber(Ljava/lang/String;)J
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/farng/mp3/TagUtility;->findNumber(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findNumber(Ljava/lang/String;I)J
    .locals 8
    .parameter "str"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 487
    if-nez p0, :cond_0

    .line 488
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "String is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 490
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 491
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Offset to image string is out of bounds: offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", string.length()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 499
    :cond_2
    move v0, p1

    .line 500
    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v7, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_6

    .line 506
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 507
    .local v1, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 508
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v7, :cond_7

    .line 513
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_8

    if-le v1, v0, :cond_8

    .line 514
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 518
    .local v2, num:J
    return-wide v2

    .line 504
    .end local v1           #j:I
    .end local v2           #num:J
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .restart local v1       #j:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    :cond_8
    new-instance v4, Lorg/farng/mp3/TagException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find integer in string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getFrameDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "identifier"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Identifier is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, returnValue:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 68
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, idPrefix:Ljava/lang/String;
    sget-object v2, Lorg/farng/mp3/TagConstant;->id3v2_4FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #returnValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 70
    .restart local v1       #returnValue:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 71
    sget-object v2, Lorg/farng/mp3/TagConstant;->id3v2_3FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #returnValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 74
    .end local v0           #idPrefix:Ljava/lang/String;
    .restart local v1       #returnValue:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 75
    sget-object v2, Lorg/farng/mp3/TagConstant;->id3v2_2FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #returnValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 77
    .restart local v1       #returnValue:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 78
    sget-object v2, Lorg/farng/mp3/TagConstant;->lyrics3v2FieldIdToString:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #returnValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 81
    .restart local v1       #returnValue:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public static getWholeNumber(Ljava/lang/Object;)J
    .locals 5
    .parameter "value"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Value is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 203
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 215
    .local v0, number:J
    :goto_0
    return-wide v0

    .line 204
    .end local v0           #number:J
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/lang/Byte;

    if-eqz v2, :cond_2

    .line 205
    check-cast p0, Ljava/lang/Byte;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-long v0, v2

    .restart local v0       #number:J
    goto :goto_0

    .line 206
    .end local v0           #number:J
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/lang/Short;

    if-eqz v2, :cond_3

    .line 207
    check-cast p0, Ljava/lang/Short;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-long v0, v2

    .restart local v0       #number:J
    goto :goto_0

    .line 208
    .end local v0           #number:J
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 209
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    .restart local v0       #number:J
    goto :goto_0

    .line 210
    .end local v0           #number:J
    .restart local p0
    :cond_4
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 211
    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0       #number:J
    goto :goto_0

    .line 213
    .end local v0           #number:J
    .restart local p0
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported value class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isID3v2_2FrameIdentifier(Ljava/lang/String;)Z
    .locals 5
    .parameter "identifier"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Identifier is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 104
    :goto_0
    return v1

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 98
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_2FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, upperIdentifier:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 102
    sget-object v2, Lorg/farng/mp3/TagConstant;->id3v2_2FrameIdToString:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 104
    :cond_3
    sget-object v2, Lorg/farng/mp3/TagConstant;->id3v2_2FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isID3v2_3FrameIdentifier(Ljava/lang/String;)Z
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 122
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_3FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isID3v2_4FrameIdentifier(Ljava/lang/String;)Z
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 139
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/farng/mp3/TagConstant;->id3v2_4FrameIdToString:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Identifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 156
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/farng/mp3/TagConstant;->lyrics3v2FieldIdToString:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMatchingParenthesis(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 169
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "String is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :cond_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v3

    .line 172
    .local v3, option:Lorg/farng/mp3/TagOptionSingleton;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/farng/mp3/TagOptionSingleton;->isCloseParenthesis(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    .end local v0           #ch:C
    :cond_1
    :goto_1
    return v4

    .line 178
    .restart local v0       #ch:C
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/farng/mp3/TagOptionSingleton;->isOpenParenthesis(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    invoke-static {p0, v1}, Lorg/farng/mp3/TagUtility;->findMatchingParenthesis(Ljava/lang/String;I)I

    move-result v1

    .line 180
    if-ltz v1, :cond_1

    .line 173
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0           #ch:C
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static padString(Ljava/lang/String;ICZ)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "length"
    .parameter "ch"
    .parameter "padBefore"

    .prologue
    .line 533
    if-gez p1, :cond_1

    .line 565
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 535
    .restart local p0
    :cond_1
    if-nez p1, :cond_2

    .line 536
    if-nez p0, :cond_0

    .line 537
    const-string p0, ""

    goto :goto_0

    .line 541
    :cond_2
    const/4 v4, 0x0

    .line 542
    .local v4, strLength:I
    if-eqz p0, :cond_3

    .line 543
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 545
    :cond_3
    if-ge v4, p1, :cond_0

    .line 548
    new-array v0, p1, [C

    .line 549
    .local v0, buffer:[C
    const/4 v2, 0x0

    .line 550
    .local v2, next:I
    if-eqz p3, :cond_5

    .line 551
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #next:I
    .local v3, next:I
    :goto_1
    sub-int v5, p1, v4

    if-ge v1, v5, :cond_4

    .line 552
    add-int/lit8 v2, v3, 0x1

    .end local v3           #next:I
    .restart local v2       #next:I
    aput-char p2, v0, v3

    .line 551
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #next:I
    .restart local v3       #next:I
    goto :goto_1

    :cond_4
    move v2, v3

    .line 555
    .end local v1           #i:I
    .end local v3           #next:I
    .restart local v2       #next:I
    :cond_5
    if-eqz p0, :cond_7

    .line 556
    const/4 v1, 0x0

    .restart local v1       #i:I
    move v3, v2

    .end local v2           #next:I
    .restart local v3       #next:I
    :goto_2
    if-ge v1, v4, :cond_6

    .line 557
    add-int/lit8 v2, v3, 0x1

    .end local v3           #next:I
    .restart local v2       #next:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v3

    .line 556
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #next:I
    .restart local v3       #next:I
    goto :goto_2

    :cond_6
    move v2, v3

    .line 560
    .end local v1           #i:I
    .end local v3           #next:I
    .restart local v2       #next:I
    :cond_7
    if-nez p3, :cond_9

    .line 561
    const/4 v1, 0x0

    .restart local v1       #i:I
    move v3, v2

    .end local v2           #next:I
    .restart local v3       #next:I
    :goto_3
    sub-int v5, p1, v4

    if-ge v1, v5, :cond_8

    .line 562
    add-int/lit8 v2, v3, 0x1

    .end local v3           #next:I
    .restart local v2       #next:I
    aput-char p2, v0, v3

    .line 561
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #next:I
    .restart local v3       #next:I
    goto :goto_3

    :cond_8
    move v2, v3

    .line 565
    .end local v1           #i:I
    .end local v3           #next:I
    .restart local v2       #next:I
    :cond_9
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static replaceEOLNwithCRLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0xa

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, newText:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 578
    const-string v1, ""

    .line 579
    const/4 v2, 0x0

    .line 580
    .local v2, oldPos:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 581
    .local v0, newPos:I
    :goto_0
    if-ltz v0, :cond_0

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    add-int/lit8 v2, v0, 0x1

    .line 584
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    .line 586
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .end local v0           #newPos:I
    .end local v2           #oldPos:I
    :cond_1
    return-object v1
.end method

.method public static replaceWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "source"
    .parameter "oldString"
    .parameter "newString"

    .prologue
    .line 597
    if-nez p0, :cond_0

    .line 598
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Source is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 600
    :cond_0
    if-nez p1, :cond_1

    .line 601
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Old string (string to be replaced) is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 603
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 604
    if-nez p2, :cond_2

    .line 605
    const-string p2, ""

    .line 607
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 608
    .local v2, str:Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 609
    .local v0, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 610
    .local v1, length:I
    :goto_0
    if-ltz v0, :cond_7

    .line 611
    if-nez v0, :cond_3

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int v3, v0, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    :cond_4
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 615
    :cond_5
    add-int v3, v0, v1

    invoke-virtual {v2, v0, v3, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    :cond_6
    invoke-virtual {v2, p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 619
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 621
    .end local v0           #index:I
    .end local v1           #length:I
    .end local v2           #str:Ljava/lang/StringBuffer;
    :cond_8
    return-object p0
.end method

.method public static stripChar(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "ch"

    .prologue
    .line 633
    if-nez p0, :cond_0

    .line 634
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "String is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 636
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [C

    .line 637
    .local v0, buffer:[C
    const/4 v2, 0x0

    .line 638
    .local v2, next:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 639
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p1, :cond_1

    .line 640
    add-int/lit8 v3, v2, 0x1

    .end local v2           #next:I
    .local v3, next:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v2

    move v2, v3

    .line 638
    .end local v3           #next:I
    .restart local v2       #next:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method public static toSentenceCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "keepUppercase"

    .prologue
    const/16 v7, 0x20

    .line 657
    if-nez p0, :cond_0

    .line 658
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "String is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 660
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 662
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 663
    .local v2, numberTokens:I
    const/4 v0, 0x0

    .line 664
    .local v0, countedTokens:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 667
    .local v1, newString:Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 668
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, token:Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/farng/mp3/TagUtility;->capitalizeWord(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 670
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 671
    add-int/lit8 v0, v0, 0x1

    .line 675
    .end local v3           #token:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ge v0, v2, :cond_4

    .line 676
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 677
    .restart local v3       #token:Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 678
    sget-object v5, Lorg/farng/mp3/TagUtility;->capitalizationMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 679
    sget-object v5, Lorg/farng/mp3/TagUtility;->capitalizationMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 685
    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 680
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 681
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 683
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 689
    .end local v3           #token:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 690
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 692
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static toTitleCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "keepUppercase"

    .prologue
    const/16 v7, 0x20

    .line 705
    if-nez p0, :cond_0

    .line 706
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "String is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 708
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 710
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 711
    .local v2, numberTokens:I
    const/4 v0, 0x0

    .line 712
    .local v0, countedTokens:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 715
    .local v1, newString:Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 716
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, token:Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/farng/mp3/TagUtility;->capitalizeWord(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 718
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 719
    add-int/lit8 v0, v0, 0x1

    .line 723
    .end local v3           #token:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_3

    .line 724
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 725
    .restart local v3       #token:Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 726
    sget-object v5, Lorg/farng/mp3/TagUtility;->capitalizationMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    sget-object v5, Lorg/farng/mp3/TagUtility;->capitalizationMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 731
    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 729
    :cond_2
    invoke-static {v3, p1}, Lorg/farng/mp3/TagUtility;->capitalizeWord(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 735
    .end local v3           #token:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 736
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 737
    .restart local v3       #token:Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/farng/mp3/TagUtility;->capitalizeWord(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 738
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 742
    .end local v3           #token:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 743
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 745
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "len"

    .prologue
    .line 755
    if-nez p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    if-gez p1, :cond_1

    .line 759
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Length is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 764
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
