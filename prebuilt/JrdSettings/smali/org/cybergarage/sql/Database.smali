.class public abstract Lorg/cybergarage/sql/Database;
.super Ljava/lang/Object;
.source "Database.java"


# instance fields
.field private con:Ljava/sql/Connection;

.field private rs:Ljava/sql/ResultSet;

.field private stmt:Ljava/sql/Statement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, v0}, Lorg/cybergarage/sql/Database;->setConnection(Ljava/sql/Connection;)V

    .line 31
    invoke-direct {p0, v0}, Lorg/cybergarage/sql/Database;->setStatement(Ljava/sql/Statement;)V

    .line 32
    invoke-direct {p0, v0}, Lorg/cybergarage/sql/Database;->setResultSet(Ljava/sql/ResultSet;)V

    .line 33
    return-void
.end method

.method private getConnection()Ljava/sql/Connection;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cybergarage/sql/Database;->con:Ljava/sql/Connection;

    return-object v0
.end method

.method private getResultSet()Ljava/sql/ResultSet;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cybergarage/sql/Database;->rs:Ljava/sql/ResultSet;

    return-object v0
.end method

.method private getStatement()Ljava/sql/Statement;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cybergarage/sql/Database;->stmt:Ljava/sql/Statement;

    return-object v0
.end method

.method private setResultSet(Ljava/sql/ResultSet;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/cybergarage/sql/Database;->rs:Ljava/sql/ResultSet;

    .line 76
    return-void
.end method

.method private setStatement(Ljava/sql/Statement;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/cybergarage/sql/Database;->stmt:Ljava/sql/Statement;

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 96
    .local v0, con:Ljava/sql/Connection;
    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/cybergarage/sql/Database;->setConnection(Ljava/sql/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public fetch()Z
    .locals 5

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, fetchRet:Z
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v2

    .line 144
    .local v2, rs:Ljava/sql/ResultSet;
    if-nez v2, :cond_0

    .line 145
    const/4 v4, 0x0

    .line 160
    .end local v2           #rs:Ljava/sql/ResultSet;
    :goto_0
    return v4

    .line 146
    .restart local v2       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    .line 147
    if-nez v1, :cond_2

    .line 148
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 149
    .local v3, stmt:Ljava/sql/Statement;
    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 151
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/cybergarage/sql/Database;->setStatement(Ljava/sql/Statement;)V

    .line 153
    :cond_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 154
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/cybergarage/sql/Database;->setResultSet(Ljava/sql/ResultSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #rs:Ljava/sql/ResultSet;
    .end local v3           #stmt:Ljava/sql/Statement;
    :cond_2
    :goto_1
    move v4, v1

    .line 160
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getDate(I)J
    .locals 5
    .parameter "n"

    .prologue
    const-wide/16 v3, 0x0

    .line 301
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 302
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 310
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-wide v3

    .line 304
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v2

    .line 305
    .local v2, ts:Ljava/sql/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 307
    .end local v1           #rs:Ljava/sql/ResultSet;
    .end local v2           #ts:Ljava/sql/Date;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)J
    .locals 5
    .parameter "name"

    .prologue
    const-wide/16 v3, 0x0

    .line 286
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 287
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 295
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-wide v3

    .line 289
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v2

    .line 290
    .local v2, ts:Ljava/sql/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 292
    .end local v1           #rs:Ljava/sql/ResultSet;
    .end local v2           #ts:Ljava/sql/Date;
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getInteger(I)I
    .locals 3
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 215
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 222
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return v2

    .line 217
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 219
    .end local v1           #rs:Ljava/sql/ResultSet;
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 200
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 201
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 208
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return v2

    .line 203
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 205
    .end local v1           #rs:Ljava/sql/ResultSet;
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "n"

    .prologue
    const-wide/16 v2, 0x0

    .line 242
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 243
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 250
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-wide v2

    .line 245
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 247
    .end local v1           #rs:Ljava/sql/ResultSet;
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .parameter "name"

    .prologue
    const-wide/16 v2, 0x0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 229
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 236
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-wide v2

    .line 231
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 233
    .end local v1           #rs:Ljava/sql/ResultSet;
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    .line 185
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 186
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 187
    const-string v3, ""

    .line 194
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-object v3

    .line 188
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    .line 189
    .local v2, str_b:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1           #rs:Ljava/sql/ResultSet;
    .end local v2           #str_b:[B
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 194
    const-string v3, ""

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 171
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 172
    const-string v3, ""

    .line 179
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-object v3

    .line 173
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 174
    .local v2, str_b:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v1           #rs:Ljava/sql/ResultSet;
    .end local v2           #str_b:[B
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 179
    const-string v3, ""

    goto :goto_0
.end method

.method public getTimestamp(I)J
    .locals 5
    .parameter "n"

    .prologue
    const-wide/16 v3, 0x0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 272
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 280
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-wide v3

    .line 274
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v2

    .line 275
    .local v2, ts:Ljava/sql/Timestamp;
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 277
    .end local v1           #rs:Ljava/sql/ResultSet;
    .end local v2           #ts:Ljava/sql/Timestamp;
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getTimestamp(Ljava/lang/String;)J
    .locals 5
    .parameter "name"

    .prologue
    const-wide/16 v3, 0x0

    .line 256
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    .line 257
    .local v1, rs:Ljava/sql/ResultSet;
    if-nez v1, :cond_0

    .line 265
    .end local v1           #rs:Ljava/sql/ResultSet;
    :goto_0
    return-wide v3

    .line 259
    .restart local v1       #rs:Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v2

    .line 260
    .local v2, ts:Ljava/sql/Timestamp;
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 262
    .end local v1           #rs:Ljava/sql/ResultSet;
    .end local v2           #ts:Ljava/sql/Timestamp;
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public query(Ljava/lang/String;)Z
    .locals 5
    .parameter "sql"

    .prologue
    const/4 v4, 0x0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 115
    .local v3, stmt:Ljava/sql/Statement;
    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v3}, Ljava/sql/Statement;->close()V

    .line 117
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v2

    .line 118
    .local v2, rs:Ljava/sql/ResultSet;
    if-eqz v2, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 120
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 121
    .local v0, con:Ljava/sql/Connection;
    if-nez v0, :cond_2

    .line 132
    .end local v0           #con:Ljava/sql/Connection;
    .end local v2           #rs:Ljava/sql/ResultSet;
    .end local v3           #stmt:Ljava/sql/Statement;
    :goto_0
    return v4

    .line 123
    .restart local v0       #con:Ljava/sql/Connection;
    .restart local v2       #rs:Ljava/sql/ResultSet;
    .restart local v3       #stmt:Ljava/sql/Statement;
    :cond_2
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 124
    invoke-direct {p0, v3}, Lorg/cybergarage/sql/Database;->setStatement(Ljava/sql/Statement;)V

    .line 125
    invoke-interface {v3, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 126
    invoke-direct {p0, v2}, Lorg/cybergarage/sql/Database;->setResultSet(Ljava/sql/ResultSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v4, 0x1

    goto :goto_0

    .line 128
    .end local v0           #con:Ljava/sql/Connection;
    .end local v2           #rs:Ljava/sql/ResultSet;
    .end local v3           #stmt:Ljava/sql/Statement;
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected setConnection(Ljava/sql/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 43
    iput-object p1, p0, Lorg/cybergarage/sql/Database;->con:Ljava/sql/Connection;

    .line 44
    return-void
.end method

.method public update(Ljava/lang/String;)I
    .locals 6
    .parameter "sql"

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, numOfUpdated:I
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 322
    .local v4, stmt:Ljava/sql/Statement;
    if-eqz v4, :cond_0

    .line 323
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 324
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/cybergarage/sql/Database;->setStatement(Ljava/sql/Statement;)V

    .line 326
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v3

    .line 327
    .local v3, rs:Ljava/sql/ResultSet;
    if-eqz v3, :cond_1

    .line 328
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 329
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/cybergarage/sql/Database;->setResultSet(Ljava/sql/ResultSet;)V

    .line 331
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/sql/Database;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 332
    .local v0, con:Ljava/sql/Connection;
    if-nez v0, :cond_2

    .line 333
    const/4 v5, 0x0

    .line 341
    .end local v0           #con:Ljava/sql/Connection;
    .end local v3           #rs:Ljava/sql/ResultSet;
    .end local v4           #stmt:Ljava/sql/Statement;
    :goto_0
    return v5

    .line 334
    .restart local v0       #con:Ljava/sql/Connection;
    .restart local v3       #rs:Ljava/sql/ResultSet;
    .restart local v4       #stmt:Ljava/sql/Statement;
    :cond_2
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 335
    invoke-interface {v4, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result v2

    .line 336
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #con:Ljava/sql/Connection;
    .end local v3           #rs:Ljava/sql/ResultSet;
    .end local v4           #stmt:Ljava/sql/Statement;
    :goto_1
    move v5, v2

    .line 341
    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1
.end method
