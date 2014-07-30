.class public Lcom/orange/server/SimCardAuthenticationManagerService;
.super Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;
.source "SimCardAuthenticationManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimCardAuthenticationManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTeleponyservice:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[BLjava/util/List;)Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    .locals 21
    .parameter "rand"
    .parameter "autn"
    .parameter "auts_ret"

    .prologue
    .line 194
    const-string v18, "SimCardAuthenticationManagerService"

    const-string v19, "akaAuthentication"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 197
    const-string v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    .line 199
    :cond_0
    new-instance v12, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;

    invoke-direct {v12}, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;-><init>()V

    .line 200
    .local v12, ret:Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    const/16 v17, 0x0

    .line 201
    .local v17, str_ret:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, str_rand:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, str_autn:Ljava/lang/String;
    const/16 v18, 0x40

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 205
    .local v4, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 206
    const/4 v14, 0x0

    .line 207
    .local v14, sres_len:I
    const/4 v6, 0x0

    .line 208
    .local v6, ck_len:I
    const/4 v9, 0x0

    .line 209
    .local v9, ik_len:I
    const/4 v10, 0x0

    .line 210
    .local v10, is_sucess:B
    const/4 v3, 0x0

    .line 214
    .local v3, auts_len:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v15}, Lcom/android/internal/telephony/ITelephony;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 215
    if-eqz v17, :cond_1

    .line 217
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 218
    .local v11, result:[B
    const-string v18, "SimCardAuthenticationManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "gsmAuthentication Received: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 224
    const/16 v18, -0x24

    move/from16 v0, v18

    if-ne v10, v0, :cond_2

    .line 226
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 227
    new-array v2, v3, [B

    .line 228
    .local v2, auts:[B
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    const-string v18, "SimCardAuthenticationManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "auts: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v2           #auts:[B
    .end local v11           #result:[B
    :cond_1
    :goto_0
    const/4 v12, 0x0

    .end local v12           #ret:Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    :goto_1
    return-object v12

    .line 232
    .restart local v11       #result:[B
    .restart local v12       #ret:Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    :cond_2
    const/16 v18, -0x25

    move/from16 v0, v18

    if-ne v10, v0, :cond_1

    .line 234
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    .line 235
    new-array v13, v14, [B

    .line 236
    .local v13, sres:[B
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 238
    new-array v5, v6, [B

    .line 239
    .local v5, ck:[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 241
    new-array v8, v9, [B

    .line 242
    .local v8, ik:[B
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v12, v5}, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->setCk([B)V

    .line 244
    invoke-virtual {v12, v8}, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->setIk([B)V

    .line 245
    invoke-virtual {v12, v13}, Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;->setRes([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    .end local v5           #ck:[B
    .end local v8           #ik:[B
    .end local v11           #result:[B
    .end local v13           #sres:[B
    :catch_0
    move-exception v7

    .line 251
    .local v7, ex:Landroid/os/RemoteException;
    const-string v18, "SimCardAuthenticationManagerService"

    const-string v19, "akaAuthentication: RemoteException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"

    .prologue
    const/4 v0, 0x0

    .line 263
    const-string v1, "SimCardAuthenticationManagerService"

    const-string v2, "checkPermission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const-string v1, "SimCardAuthenticationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder.getCallingPid()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Binder.getCallingUid()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSimCardType()I
    .locals 6

    .prologue
    .line 82
    const-string v3, "SimCardAuthenticationManagerService"

    const-string v4, "getSimCardType"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 85
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, cardType:I
    :try_start_0
    iget-object v3, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const/4 v0, 0x2

    .line 94
    iget-object v3, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, sim_type:Ljava/lang/String;
    const-string v3, "SimCardAuthenticationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccCardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    const/4 v0, 0x4

    .line 112
    .end local v2           #sim_type:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 100
    .restart local v2       #sim_type:Ljava/lang/String;
    :cond_2
    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    const/4 v0, 0x5

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    .end local v2           #sim_type:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "SimCardAuthenticationManagerService"

    const-string v4, "getSimCardType: RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    .locals 13
    .parameter "rand"

    .prologue
    const/4 v9, 0x0

    .line 126
    const-string v10, "SimCardAuthenticationManagerService"

    const-string v11, "gsmAuthentication"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v10, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    if-nez v10, :cond_0

    .line 129
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    iput-object v10, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    .line 131
    :cond_0
    new-instance v5, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    invoke-direct {v5}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;-><init>()V

    .line 132
    .local v5, ret:Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    const/4 v8, 0x0

    .line 133
    .local v8, str_ret:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, str_rand:Ljava/lang/String;
    const/16 v10, 0x40

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    .local v0, buf:Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, sres:I
    const-wide/16 v2, 0x0

    .line 141
    .local v2, kc:J
    :try_start_0
    iget-object v10, p0, Lcom/orange/server/SimCardAuthenticationManagerService;->mTeleponyservice:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v10, v7}, Lcom/android/internal/telephony/ITelephony;->simAuth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 145
    :goto_0
    if-eqz v8, :cond_3

    .line 147
    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 148
    .local v4, result:[B
    const-string v10, "SimCardAuthenticationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gsmAuthentication Received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    array-length v10, v4

    const/16 v11, 0xc

    if-ne v10, v11, :cond_1

    .line 152
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 171
    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->setKc(J)V

    .line 172
    invoke-virtual {v5, v6}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;->setSres(I)V

    .line 173
    const-string v9, "SimCardAuthenticationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sres:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "result_len:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v4           #result:[B
    .end local v5           #ret:Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    :goto_2
    return-object v5

    .line 142
    .restart local v5       #ret:Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    :catch_0
    move-exception v1

    .line 143
    .local v1, ex:Landroid/os/RemoteException;
    const-string v10, "SimCardAuthenticationManagerService"

    const-string v11, "gsmAuthentication: RemoteException"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v4       #result:[B
    :cond_1
    array-length v10, v4

    const/16 v11, 0xe

    if-ne v10, v11, :cond_2

    .line 160
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-object v5, v9

    .line 169
    goto :goto_2

    .end local v4           #result:[B
    :cond_3
    move-object v5, v9

    .line 177
    goto :goto_2
.end method
