.class public Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:I

.field private eof:Z

.field private index:I

.field private line:I

.field private previous:C

.field private reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .parameter "reader"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 65
    iput-boolean v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->eof:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->usePrevious:Z

    .line 67
    iput-char v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->previous:C

    .line 68
    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    .line 69
    iput v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    .line 70
    iput v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    .line 71
    return-void

    .line 63
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 80
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 81
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 108
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 110
    add-int/lit8 v0, p0, -0x30

    .line 120
    :goto_0
    return v0

    .line 112
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 114
    add-int/lit8 v0, p0, -0x37

    goto :goto_0

    .line 116
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 118
    add-int/lit8 v0, p0, -0x57

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    if-gtz v0, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    .line 95
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->usePrevious:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->eof:Z

    .line 98
    return-void
.end method

.method public end()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    .line 136
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iget-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->usePrevious:Z

    if-eqz v4, :cond_1

    .line 154
    iput-boolean v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->usePrevious:Z

    .line 155
    iget-char v0, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->previous:C

    .line 174
    .local v0, c:I
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    .line 175
    iget-char v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->previous:C

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 177
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    .line 178
    if-ne v0, v6, :cond_2

    :goto_1
    iput v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    .line 189
    :goto_2
    int-to-char v2, v0

    iput-char v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->previous:C

    .line 190
    iget-char v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->previous:C

    return v2

    .line 161
    .end local v0           #c:I
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    .restart local v0       #c:I
    if-gtz v0, :cond_0

    .line 170
    iput-boolean v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->eof:Z

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    .end local v0           #c:I
    :catch_0
    move-exception v1

    .line 165
    .local v1, exception:Ljava/io/IOException;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    invoke-direct {v2, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1           #exception:Ljava/io/IOException;
    .restart local v0       #c:I
    :cond_2
    move v2, v3

    .line 178
    goto :goto_1

    .line 180
    :cond_3
    if-ne v0, v6, :cond_4

    .line 182
    iget v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    .line 183
    iput v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    goto :goto_2

    .line 187
    :cond_4
    iget v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    goto :goto_2
.end method

.method public next(C)C
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 203
    .local v0, n:C
    if-eq v0, p1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v1

    throw v1

    .line 208
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 224
    const-string v2, ""

    .line 239
    :goto_0
    return-object v2

    .line 227
    :cond_0
    new-array v0, p1, [C

    .line 228
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 230
    .local v1, pos:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 233
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 252
    .local v0, c:C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 254
    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 276
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 277
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 316
    if-ne v0, p1, :cond_0

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 282
    :sswitch_0
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 284
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 285
    sparse-switch v0, :sswitch_data_1

    .line 312
    const-string v2, "Illegal escape."

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v2

    throw v2

    .line 288
    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 291
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 294
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 297
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 300
    :sswitch_6
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 303
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 309
    :sswitch_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 285
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 337
    .local v0, c:C
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 339
    :cond_0
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 343
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 345
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "delimiters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 362
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 364
    :cond_0
    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 368
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 370
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextClean()C

    move-result v0

    .line 386
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 409
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 412
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 390
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v3

    .line 422
    :goto_1
    return-object v3

    .line 392
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 393
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;-><init>(Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;)V

    goto :goto_1

    .line 396
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 397
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONArray;-><init>(Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;)V

    goto :goto_1

    .line 415
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, s:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    move-result-object v3

    throw v3

    .line 422
    :cond_1
    invoke-static {v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 7
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/jrdsettings/remotesecurity/json/JSONException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    iget v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    .line 438
    .local v3, startIndex:I
    iget v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    .line 439
    .local v2, startCharacter:I
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    .line 440
    .local v4, startLine:I
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->reader:Ljava/io/Reader;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Ljava/io/Reader;->mark(I)V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->next()C

    move-result v0

    .line 444
    .local v0, c:C
    if-nez v0, :cond_1

    .line 446
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->reset()V

    .line 447
    iput v3, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    .line 448
    iput v2, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    .line 449
    iput v4, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return v0

    .line 452
    :cond_1
    if-ne v0, p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->back()V

    goto :goto_0

    .line 454
    .end local v0           #c:C
    .end local v2           #startCharacter:I
    .end local v3           #startIndex:I
    .end local v4           #startLine:I
    :catch_0
    move-exception v1

    .line 456
    .local v1, exc:Ljava/io/IOException;
    new-instance v5, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    invoke-direct {v5, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public syntaxError(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    .locals 3
    .parameter "message"

    .prologue
    .line 471
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/remotesecurity/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->character:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/jrdsettings/remotesecurity/json/JSONTokener;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
