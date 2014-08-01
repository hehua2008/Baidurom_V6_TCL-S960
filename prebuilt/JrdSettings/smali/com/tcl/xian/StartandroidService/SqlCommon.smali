.class public Lcom/tcl/xian/StartandroidService/SqlCommon;
.super Ljava/lang/Object;
.source "SqlCommon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveKey(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 216
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 217
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 218
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 220
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    const-string v0, "activekey"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 223
    if-nez v0, :cond_0

    .line 229
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_2
    if-nez v7, :cond_3

    .line 232
    const-string v7, ""

    .line 234
    :cond_3
    return-object v7
.end method

.method public getDeviceActiveFlag(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 128
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 129
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 132
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    const-string v0, "activeflag"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 136
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 135
    if-nez v0, :cond_0

    .line 141
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_2
    if-nez v7, :cond_3

    .line 144
    const-string v7, ""

    .line 146
    :cond_3
    return-object v7
.end method

.method public getDeviceModel(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 194
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 195
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 198
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    const-string v0, "devicemodel"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 201
    if-nez v0, :cond_0

    .line 207
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_2
    if-nez v7, :cond_3

    .line 210
    const-string v7, ""

    .line 212
    :cond_3
    return-object v7
.end method

.method public getDeviceid(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 150
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 151
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 152
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 154
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    const-string v0, "deviceid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 158
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 157
    if-nez v0, :cond_0

    .line 163
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    if-nez v7, :cond_3

    .line 166
    const-string v7, ""

    .line 168
    :cond_3
    return-object v7
.end method

.method public getDidtoken(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 239
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 240
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 241
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 243
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const-string v0, "didtoken"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 246
    if-nez v0, :cond_0

    .line 252
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_2
    if-nez v7, :cond_3

    .line 255
    const-string v7, ""

    .line 257
    :cond_3
    return-object v7
.end method

.method public getDum(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 172
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 173
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 174
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 176
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    const-string v0, "dum"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 180
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 179
    if-nez v0, :cond_0

    .line 185
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_2
    if-nez v7, :cond_3

    .line 188
    const-string v7, ""

    .line 190
    :cond_3
    return-object v7
.end method

.method public getHuanid(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 285
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 286
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 288
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 289
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    const-string v0, "huanid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 293
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 296
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 292
    if-nez v0, :cond_0

    .line 298
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_2
    if-nez v7, :cond_3

    .line 301
    const-string v7, ""

    .line 303
    :cond_3
    return-object v7
.end method

.method public getLicenseData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 330
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 331
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 332
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 334
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    const-string v0, "license_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 338
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 337
    if-nez v0, :cond_0

    .line 343
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_2
    if-nez v7, :cond_3

    .line 346
    const-string v7, ""

    .line 348
    :cond_3
    return-object v7
.end method

.method public getLicenseType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 307
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 308
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 310
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 311
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 312
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    const-string v0, "license_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 315
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 314
    if-nez v0, :cond_0

    .line 320
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_2
    if-nez v7, :cond_3

    .line 323
    const-string v7, ""

    .line 325
    :cond_3
    return-object v7
.end method

.method public getToken(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 262
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "activeflag"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "dum"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "devicemodel"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "activekey"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "didtoken"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "token"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "huanid"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "license_type"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "license_data"

    aput-object v4, v2, v0

    .line 263
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    .local v1, myUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 264
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, cur:Landroid/database/Cursor;
    const-string v7, ""

    .line 266
    .local v7, deviceid:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    const-string v0, "token"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 270
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 269
    if-nez v0, :cond_0

    .line 275
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_2
    if-nez v7, :cond_3

    .line 278
    const-string v7, ""

    .line 280
    :cond_3
    return-object v7
.end method

.method public updateActivekeyRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "activekey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public updateDeviceActiveFlag(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "activeflag"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public updateDeviceModel(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "devicemodel"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public updateDeviceidRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "deviceid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public updateDidTokenRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "didtoken"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public updateDumRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "dum"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public updateHuanidRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "huanid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public updateLicenseDataRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "license_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public updateLicenseTypeRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "license_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public updateTokenRecord(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "record"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, values1:Landroid/content/ContentValues;
    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/tcl/xian/StartandroidService/MyUsers$devicetoken;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    return-void
.end method
