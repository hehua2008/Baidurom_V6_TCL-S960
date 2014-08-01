.class public Lorg/apache/commons/pool/impl/GenericObjectPool;
.super Lorg/apache/commons/pool/BaseObjectPool;
.source "GenericObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/impl/GenericObjectPool$Config;,
        Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;,
        Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ACTIVE:I = 0x8

.field public static final DEFAULT_MAX_IDLE:I = 0x8

.field public static final DEFAULT_MAX_WAIT:J = -0x1L

.field public static final DEFAULT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = 0x1b7740L

.field public static final DEFAULT_MIN_IDLE:I = 0x0

.field public static final DEFAULT_NUM_TESTS_PER_EVICTION_RUN:I = 0x3

.field public static final DEFAULT_TEST_ON_BORROW:Z = false

.field public static final DEFAULT_TEST_ON_RETURN:Z = false

.field public static final DEFAULT_TEST_WHILE_IDLE:Z = false

.field public static final DEFAULT_TIME_BETWEEN_EVICTION_RUNS_MILLIS:J = -0x1L

.field public static final DEFAULT_WHEN_EXHAUSTED_ACTION:B = 0x1t

.field public static final WHEN_EXHAUSTED_BLOCK:B = 0x1t

.field public static final WHEN_EXHAUSTED_FAIL:B = 0x0t

.field public static final WHEN_EXHAUSTED_GROW:B = 0x2t


# instance fields
.field private _evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

.field private _evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

.field private _factory:Lorg/apache/commons/pool/PoolableObjectFactory;

.field private _maxActive:I

.field private _maxIdle:I

.field private _maxWait:J

.field private _minEvictableIdleTimeMillis:J

.field private _minIdle:I

.field private _numActive:I

.field private _numTestsPerEvictionRun:I

.field private _pool:Lorg/apache/commons/collections/CursorableLinkedList;

.field private _testOnBorrow:Z

.field private _testOnReturn:Z

.field private _testWhileIdle:Z

.field private _timeBetweenEvictionRunsMillis:J

.field private _whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .locals 16

    .prologue
    .line 258
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 16
    .parameter "factory"

    .prologue
    .line 266
    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 267
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"

    .prologue
    .line 284
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 285
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"

    .prologue
    .line 295
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 296
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJI)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"

    .prologue
    .line 320
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 321
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V
    .locals 5
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "minIdle"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"
    .parameter "timeBetweenEvictionRunsMillis"
    .parameter "numTestsPerEvictionRun"
    .parameter "minEvictableIdleTimeMillis"
    .parameter "testWhileIdle"

    .prologue
    .line 370
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 1132
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    .line 1139
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I

    .line 1146
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    .line 1164
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    .line 1178
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    .line 1191
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    .line 1202
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    .line 1215
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z

    .line 1226
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 1241
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    .line 1255
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J

    .line 1258
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1261
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 1267
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 1272
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    .line 1274
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 371
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 372
    iput p2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    .line 373
    packed-switch p3, :pswitch_data_0

    .line 380
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "whenExhaustedAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " not recognized."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :pswitch_0
    iput-byte p3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    .line 382
    iput-wide p4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    .line 383
    iput p6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    .line 384
    iput p7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I

    .line 385
    iput-boolean p8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    .line 386
    iput-boolean p9, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    .line 387
    iput-wide p10, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 388
    move/from16 v0, p12

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    .line 389
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J

    .line 390
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z

    .line 392
    new-instance v2, Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-direct {v2}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 393
    iget-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/pool/impl/GenericObjectPool;->startEvictor(J)V

    .line 394
    return-void

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIZZ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"

    .prologue
    .line 334
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 335
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIZZJIJZ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"
    .parameter "timeBetweenEvictionRunsMillis"
    .parameter "numTestsPerEvictionRun"
    .parameter "minEvictableIdleTimeMillis"
    .parameter "testWhileIdle"

    .prologue
    .line 352
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 353
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJZZ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"

    .prologue
    .line 308
    const/16 v6, 0x8

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 309
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;Lorg/apache/commons/pool/impl/GenericObjectPool$Config;)V
    .locals 17
    .parameter "factory"
    .parameter "config"

    .prologue
    .line 275
    move-object/from16 v0, p2

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxActive:I

    move-object/from16 v0, p2

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->whenExhaustedAction:B

    move-object/from16 v0, p2

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxWait:J

    move-object/from16 v0, p2

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxIdle:I

    move-object/from16 v0, p2

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minIdle:I

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnBorrow:Z

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnReturn:Z

    move-object/from16 v0, p2

    iget-wide v11, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    move-object/from16 v0, p2

    iget v13, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->numTestsPerEvictionRun:I

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minEvictableIdleTimeMillis:J

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testWhileIdle:Z

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v16}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 276
    return-void
.end method

.method static access$000(Lorg/apache/commons/pool/impl/GenericObjectPool;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->ensureMinIdle()V

    return-void
.end method

.method static access$100(Lorg/apache/commons/pool/impl/GenericObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    return-object v0
.end method

.method static access$102(Lorg/apache/commons/pool/impl/GenericObjectPool;Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    return-object p1
.end method

.method private addObjectToPool(Ljava/lang/Object;Z)V
    .locals 5
    .parameter "obj"
    .parameter "decrementNumActive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 858
    const/4 v2, 0x1

    .line 859
    .local v2, success:Z
    iget-boolean v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 860
    const/4 v2, 0x0

    .line 869
    :goto_0
    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 871
    .local v1, shouldDestroy:Z
    :goto_1
    monitor-enter p0

    .line 872
    if-eqz p2, :cond_0

    .line 873
    :try_start_0
    iget v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 875
    :cond_0
    iget v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    if-ltz v3, :cond_5

    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    if-lt v3, v4, :cond_5

    .line 876
    const/4 v1, 0x1

    .line 880
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 881
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    if-eqz v1, :cond_2

    .line 885
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 890
    :cond_2
    :goto_3
    return-void

    .line 863
    .end local v1           #shouldDestroy:Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 866
    goto :goto_0

    .line 869
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 877
    .restart local v1       #shouldDestroy:Z
    :cond_5
    if-eqz v2, :cond_1

    .line 878
    :try_start_3
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    new-instance v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;

    invoke-direct {v4, p0, p1}, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    goto :goto_2

    .line 881
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 886
    :catch_1
    move-exception v0

    .line 888
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_3
.end method

.method private declared-synchronized calculateDeficit()I
    .locals 5

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMinIdle()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v3

    sub-int v1, v2, v3

    .line 984
    .local v1, objectDeficit:I
    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    if-lez v2, :cond_0

    .line 985
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getMaxActive()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumActive()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 986
    .local v0, growLimit:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 988
    .end local v0           #growLimit:I
    :cond_0
    monitor-exit p0

    return v1

    .line 983
    .end local v1           #objectDeficit:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private ensureMinIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 976
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->calculateDeficit()I

    move-result v1

    .line 977
    .local v1, objectDeficit:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->calculateDeficit()I

    move-result v2

    if-gtz v2, :cond_1

    .line 980
    :cond_0
    return-void

    .line 978
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->addObject()V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getNumTests()I
    .locals 4

    .prologue
    .line 1035
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    if-ltz v0, :cond_0

    .line 1036
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    .line 1038
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public addObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 996
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .line 997
    .local v0, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->addObjectToPool(Ljava/lang/Object;Z)V

    .line 998
    return-void
.end method

.method public borrowObject()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 717
    .local v6, starttime:J
    const/4 v3, 0x0

    .line 719
    .local v3, newlyCreated:Z
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 721
    .local v5, pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    monitor-enter p0

    .line 722
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :try_start_1
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;

    move-object v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 732
    :goto_1
    if-nez v5, :cond_1

    .line 735
    :try_start_2
    iget v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    if-lez v8, :cond_1

    iget v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    iget v9, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    if-ge v8, v9, :cond_3

    .line 765
    :cond_1
    :pswitch_0
    iget v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 766
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    if-nez v5, :cond_2

    .line 771
    :try_start_3
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v8}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v4

    .line 772
    .local v4, obj:Ljava/lang/Object;
    new-instance v5, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;

    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    invoke-direct {v5, p0, v4}, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 773
    .restart local v5       #pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    const/4 v3, 0x1

    .line 787
    .end local v4           #obj:Ljava/lang/Object;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v9, v5, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 788
    iget-boolean v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v9, v5, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 789
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "validateObject failed"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 795
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    monitor-enter p0

    .line 796
    :try_start_5
    iget v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 797
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 798
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 800
    :try_start_6
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v9, v5, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 805
    :goto_2
    if-eqz v3, :cond_0

    .line 806
    new-instance v8, Ljava/util/NoSuchElementException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Could not create a validated object, cause: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 728
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 729
    .local v1, e:Ljava/util/NoSuchElementException;
    goto :goto_1

    .line 739
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_3
    :try_start_7
    iget-byte v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    packed-switch v8, :pswitch_data_0

    .line 761
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "whenExhaustedAction "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-byte v10, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " not recognized."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 766
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v8

    .line 744
    :pswitch_1
    :try_start_8
    new-instance v8, Ljava/util/NoSuchElementException;

    invoke-direct {v8}, Ljava/util/NoSuchElementException;-><init>()V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 747
    :pswitch_2
    :try_start_9
    iget-wide v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    cmp-long v8, v8, v12

    if-gtz v8, :cond_4

    .line 748
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 755
    :goto_3
    :try_start_a
    iget-wide v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    cmp-long v8, v8, v12

    if-lez v8, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iget-wide v10, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 756
    new-instance v8, Ljava/util/NoSuchElementException;

    const-string v9, "Timeout waiting for idle object"

    invoke-direct {v8, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 750
    :cond_4
    :try_start_b
    iget-wide v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    .line 752
    :catch_2
    move-exception v1

    .line 754
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_3

    .line 758
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 777
    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    monitor-enter p0

    .line 778
    :try_start_d
    iget v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 780
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 781
    throw v1

    .line 780
    :catchall_1
    move-exception v8

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v8

    .line 791
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    :cond_6
    :try_start_f
    iget-object v8, v5, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    return-object v8

    .line 798
    .restart local v1       #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v8

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v8

    .line 802
    :catch_4
    move-exception v2

    .line 804
    .local v2, e2:Ljava/lang/Exception;
    goto/16 :goto_2

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 829
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 830
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList;->clear()V

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    .line 832
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;

    iget-object v2, v2, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v3, v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 836
    :goto_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 829
    .end local v1           #it:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 833
    .restart local v1       #it:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->clear()V

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 896
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 898
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 900
    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->startEvictor(J)V

    .line 901
    invoke-super {p0}, Lorg/apache/commons/pool/BaseObjectPool;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized debugInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1022
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v5, "Active: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumActive()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1023
    const-string v5, "Idle: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumIdle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    const-string v5, "Idle Objects:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1025
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1026
    .local v1, it:Ljava/util/Iterator;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1027
    .local v3, time:J
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1031
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 1028
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;

    .line 1029
    .local v2, pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v2, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-wide v6, v2, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->tstamp:J

    sub-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    .end local v3           #time:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized evict()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 916
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 917
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-nez v6, :cond_2

    .line 918
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v7}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/collections/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 923
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumTests()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, m:I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 964
    .end local v2           #i:I
    .end local v3           #m:I
    :cond_1
    monitor-exit p0

    return-void

    .line 919
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->hasPrevious()Z

    move-result v6

    if-nez v6, :cond_0

    .line 920
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 921
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v7}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/collections/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 915
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 924
    .restart local v2       #i:I
    .restart local v3       #m:I
    :cond_3
    :try_start_2
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->hasPrevious()Z

    move-result v6

    if-nez v6, :cond_5

    .line 925
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 926
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v7, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v7}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/collections/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 923
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 928
    :cond_5
    const/4 v5, 0x0

    .line 929
    .local v5, removeObject:Z
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;

    .line 930
    .local v4, pair:Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
    iget-wide v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->tstamp:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 932
    const/4 v5, 0x1

    .line 953
    :cond_6
    :goto_3
    if-eqz v5, :cond_4

    .line 955
    :try_start_3
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->remove()V

    .line 956
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v7, v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 958
    :catch_0
    move-exception v1

    .line 959
    .local v1, e:Ljava/lang/Exception;
    goto :goto_2

    .line 933
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-boolean v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_6

    .line 934
    const/4 v0, 0x0

    .line 936
    .local v0, active:Z
    :try_start_5
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v7, v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 937
    const/4 v0, 0x1

    .line 941
    :goto_4
    if-eqz v0, :cond_6

    .line 942
    :try_start_6
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v7, v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    if-nez v6, :cond_8

    .line 943
    const/4 v5, 0x1

    goto :goto_3

    .line 939
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v5, 0x1

    .line 940
    goto :goto_4

    .line 946
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_7
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget-object v7, v4, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 948
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v5, 0x1

    .line 949
    goto :goto_3
.end method

.method public declared-synchronized getMaxActive()I
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxIdle()I
    .locals 1

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxWait()J
    .locals 2

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinEvictableIdleTimeMillis()J
    .locals 2

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinIdle()I
    .locals 1

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive()I
    .locals 1

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 844
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumIdle()I
    .locals 1

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 849
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_pool:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumTestsPerEvictionRun()I
    .locals 1

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestOnBorrow()Z
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestOnReturn()Z
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTestWhileIdle()Z
    .locals 1

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeBetweenEvictionRunsMillis()J
    .locals 2

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhenExhaustedAction()B
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateObject(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 818
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-enter p0

    .line 822
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 824
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 826
    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-enter p0

    .line 822
    :try_start_2
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numActive:I

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 824
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 821
    throw v0

    .line 824
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 853
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 854
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->addObjectToPool(Ljava/lang/Object;Z)V

    .line 855
    return-void
.end method

.method public declared-synchronized setConfig(Lorg/apache/commons/pool/impl/GenericObjectPool$Config;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMaxIdle(I)V

    .line 700
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMinIdle(I)V

    .line 701
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxActive:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMaxActive(I)V

    .line 702
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxWait:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMaxWait(J)V

    .line 703
    iget-byte v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->whenExhaustedAction:B

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setWhenExhaustedAction(B)V

    .line 704
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnBorrow:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTestOnBorrow(Z)V

    .line 705
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnReturn:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTestOnReturn(Z)V

    .line 706
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testWhileIdle:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTestWhileIdle(Z)V

    .line 707
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->numTestsPerEvictionRun:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setNumTestsPerEvictionRun(I)V

    .line 708
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minEvictableIdleTimeMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setMinEvictableIdleTimeMillis(J)V

    .line 709
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->setTimeBetweenEvictionRunsMillis(J)V

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 2
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 906
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->getNumActive()I

    move-result v0

    if-lez v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 909
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericObjectPool;->clear()V

    .line 910
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setMaxActive(I)V
    .locals 1
    .parameter "maxActive"

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxActive:I

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxIdle(I)V
    .locals 1
    .parameter "maxIdle"

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxIdle:I

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxWait(J)V
    .locals 1
    .parameter "maxWait"

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_maxWait:J

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinEvictableIdleTimeMillis(J)V
    .locals 1
    .parameter "minEvictableIdleTimeMillis"

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    monitor-exit p0

    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinIdle(I)V
    .locals 1
    .parameter "minIdle"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_minIdle:I

    .line 524
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNumTestsPerEvictionRun(I)V
    .locals 1
    .parameter "numTestsPerEvictionRun"

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_numTestsPerEvictionRun:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTestOnBorrow(Z)V
    .locals 1
    .parameter "testOnBorrow"

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnBorrow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTestOnReturn(Z)V
    .locals 1
    .parameter "testOnReturn"

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testOnReturn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTestWhileIdle(Z)V
    .locals 1
    .parameter "testWhileIdle"

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_testWhileIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeBetweenEvictionRunsMillis(J)V
    .locals 2
    .parameter "timeBetweenEvictionRunsMillis"

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 613
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool;->startEvictor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWhenExhaustedAction(B)V
    .locals 3
    .parameter "whenExhaustedAction"

    .prologue
    .line 443
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 451
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "whenExhaustedAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not recognized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :pswitch_0
    :try_start_1
    iput-byte p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_whenExhaustedAction:B

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized startEvictor(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;->cancel()V

    .line 1010
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    .line 1012
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 1013
    new-instance v1, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool;J)V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    .line 1014
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericObjectPool$Evictor;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1015
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    .end local v0           #t:Ljava/lang/Thread;
    :cond_1
    monitor-exit p0

    return-void

    .line 1008
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
