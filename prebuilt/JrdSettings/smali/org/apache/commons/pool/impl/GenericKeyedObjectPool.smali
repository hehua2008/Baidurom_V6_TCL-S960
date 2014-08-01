.class public Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.super Lorg/apache/commons/pool/BaseKeyedObjectPool;
.source "GenericKeyedObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;,
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;,
        Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ACTIVE:I = 0x8

.field public static final DEFAULT_MAX_IDLE:I = 0x8

.field public static final DEFAULT_MAX_TOTAL:I = -0x1

.field public static final DEFAULT_MAX_WAIT:J = -0x1L

.field public static final DEFAULT_MIN_EVICTABLE_IDLE_TIME_MILLIS:J = 0x1b7740L

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
.field private _activeMap:Ljava/util/HashMap;

.field private _evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

.field private _evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

.field private _evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

.field private _factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

.field private _maxActive:I

.field private _maxIdle:I

.field private _maxTotal:I

.field private _maxWait:J

.field private _minEvictableIdleTimeMillis:J

.field private _numTestsPerEvictionRun:I

.field private _poolList:Lorg/apache/commons/collections/CursorableLinkedList;

.field private _poolMap:Ljava/util/HashMap;

.field private _testOnBorrow:Z

.field private _testOnReturn:Z

.field private _testWhileIdle:Z

.field private _timeBetweenEvictionRunsMillis:J

.field private _totalActive:I

.field private _totalIdle:I

.field private _whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .locals 15

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 261
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    move-object v0, p0

    move v6, v2

    move v8, v7

    move-wide v9, v4

    move v14, v7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 262
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .locals 15
    .parameter "factory"

    .prologue
    .line 269
    const/16 v2, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .locals 15
    .parameter "factory"
    .parameter "maxActive"

    .prologue
    .line 287
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 288
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJ)V
    .locals 15
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"

    .prologue
    .line 298
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 299
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJI)V
    .locals 15
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"

    .prologue
    .line 323
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 324
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V
    .locals 5
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "maxTotal"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"
    .parameter "timeBetweenEvictionRunsMillis"
    .parameter "numTestsPerEvictionRun"
    .parameter "minEvictableIdleTimeMillis"
    .parameter "testWhileIdle"

    .prologue
    .line 373
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;-><init>()V

    .line 1201
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    .line 1208
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    .line 1215
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    .line 1233
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    .line 1247
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    .line 1260
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    .line 1271
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    .line 1284
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z

    .line 1295
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 1310
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    .line 1324
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J

    .line 1327
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    .line 1333
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1336
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    .line 1339
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    .line 1342
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1345
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 1350
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    .line 1352
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 1353
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 374
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 375
    iput p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    .line 376
    packed-switch p3, :pswitch_data_0

    .line 383
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

    .line 380
    :pswitch_0
    iput-byte p3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    .line 385
    iput-wide p4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    .line 386
    iput p6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    .line 387
    iput p7, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    .line 388
    iput-boolean p8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    .line 389
    iput-boolean p9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    .line 390
    iput-wide p10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 391
    move/from16 v0, p12

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    .line 392
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J

    .line 393
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z

    .line 395
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    .line 396
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    .line 397
    new-instance v2, Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-direct {v2}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 399
    iget-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->startEvictor(J)V

    .line 400
    return-void

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZ)V
    .locals 15
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"

    .prologue
    .line 337
    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 338
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V
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
    .line 355
    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 356
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJZZ)V
    .locals 15
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"

    .prologue
    .line 311
    const/16 v6, 0x8

    const-wide/16 v9, -0x1

    const/4 v11, 0x3

    const-wide/32 v12, 0x1b7740

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 312
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;)V
    .locals 17
    .parameter "factory"
    .parameter "config"

    .prologue
    .line 278
    move-object/from16 v0, p2

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    move-object/from16 v0, p2

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    move-object/from16 v0, p2

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    move-object/from16 v0, p2

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    move-object/from16 v0, p2

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxTotal:I

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    move-object/from16 v0, p2

    iget-wide v11, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    move-object/from16 v0, p2

    iget v13, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    move-object/from16 v0, p2

    iget-wide v14, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v16}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 279
    return-void
.end method

.method static access$000(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    return-wide v0
.end method

.method static access$100(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    return-object v0
.end method

.method static access$102(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    return-object p1
.end method

.method static access$200(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    return-object v0
.end method

.method static access$202(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    return-object p1
.end method

.method private declared-synchronized decrementActiveCount(Ljava/lang/Object;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    .line 1085
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    .local v0, active:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1093
    :goto_0
    monitor-exit p0

    return-void

    .line 1088
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 1089
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1084
    .end local v0           #active:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1091
    .restart local v0       #active:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized getActiveCount(Ljava/lang/Object;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 1096
    monitor-enter p0

    const/4 v1, 0x0

    .line 1097
    .local v1, active:I
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1098
    .local v0, act:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1101
    :cond_0
    monitor-exit p0

    return v1

    .line 1096
    .end local v0           #act:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getNumTests()I
    .locals 4

    .prologue
    .line 1066
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    if-ltz v0, :cond_0

    .line 1067
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementActiveCount(Ljava/lang/Object;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    .line 1075
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1076
    .local v0, active:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1077
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :goto_0
    monitor-exit p0

    return-void

    .line 1079
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1074
    .end local v0           #active:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 914
    .local v0, obj:Ljava/lang/Object;
    monitor-enter p0

    .line 915
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->incrementActiveCount(Ljava/lang/Object;)V

    .line 916
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    monitor-exit p0

    .line 918
    return-void

    .line 917
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v13, 0x0

    .line 715
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 716
    .local v7, starttime:J
    const/4 v3, 0x0

    .line 718
    .local v3, newlyCreated:Z
    :cond_0
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/collections/CursorableLinkedList;

    .line 719
    .local v6, pool:Lorg/apache/commons/collections/CursorableLinkedList;
    if-nez v6, :cond_1

    .line 720
    new-instance v6, Lorg/apache/commons/collections/CursorableLinkedList;

    .end local v6           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    invoke-direct {v6}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    .line 721
    .restart local v6       #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :cond_1
    const/4 v5, 0x0

    .line 727
    .local v5, pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    move-object v5, v0

    .line 728
    if-eqz v5, :cond_2

    .line 729
    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    :cond_2
    :goto_0
    if-nez v5, :cond_6

    .line 738
    :try_start_2
    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-lez v9, :cond_3

    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    iget v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-lt v9, v10, :cond_3

    .line 739
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->clear()V

    .line 744
    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getActiveCount(Ljava/lang/Object;)I

    move-result v1

    .line 745
    .local v1, active:I
    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    if-lez v9, :cond_4

    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    if-ge v1, v9, :cond_7

    :cond_4
    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-lez v9, :cond_5

    iget v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I

    iget v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    if-ge v9, v10, :cond_7

    .line 747
    :cond_5
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 748
    .local v4, obj:Ljava/lang/Object;
    new-instance v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    invoke-direct {v5, p0, v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;)V

    .line 749
    .restart local v5       #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    const/4 v3, 0x1

    .line 779
    .end local v1           #active:I
    .end local v4           #obj:Ljava/lang/Object;
    :cond_6
    :goto_1
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 780
    iget-boolean v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 781
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 782
    if-eqz v3, :cond_0

    .line 783
    new-instance v9, Ljava/util/NoSuchElementException;

    const-string v10, "Could not create a validated object"

    invoke-direct {v9, v10}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    .end local v3           #newlyCreated:Z
    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .end local v6           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    .end local v7           #starttime:J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 731
    .restart local v3       #newlyCreated:Z
    .restart local v5       #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .restart local v6       #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    .restart local v7       #starttime:J
    :catch_0
    move-exception v2

    .line 732
    .local v2, e:Ljava/util/NoSuchElementException;
    goto :goto_0

    .line 752
    .end local v2           #e:Ljava/util/NoSuchElementException;
    .restart local v1       #active:I
    :cond_7
    :try_start_3
    iget-byte v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    packed-switch v9, :pswitch_data_0

    .line 775
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "whenExhaustedAction "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-byte v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " not recognized."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 754
    :pswitch_0
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 755
    .restart local v4       #obj:Ljava/lang/Object;
    new-instance v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    invoke-direct {v5, p0, v4}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;)V

    .line 756
    .restart local v5       #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    goto :goto_1

    .line 758
    .end local v4           #obj:Ljava/lang/Object;
    :pswitch_1
    new-instance v9, Ljava/util/NoSuchElementException;

    invoke-direct {v9}, Ljava/util/NoSuchElementException;-><init>()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    :pswitch_2
    :try_start_4
    iget-wide v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    cmp-long v9, v9, v13

    if-gtz v9, :cond_8

    .line 762
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 769
    :goto_2
    :try_start_5
    iget-wide v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    cmp-long v9, v9, v13

    if-lez v9, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iget-wide v11, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    .line 770
    new-instance v9, Ljava/util/NoSuchElementException;

    const-string v10, "Timeout waiting for idle object"

    invoke-direct {v9, v10}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 764
    :cond_8
    :try_start_6
    iget-wide v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J

    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 766
    :catch_1
    move-exception v2

    .line 768
    .local v2, e:Ljava/lang/InterruptedException;
    goto :goto_2

    .line 786
    .end local v1           #active:I
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_9
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->incrementActiveCount(Ljava/lang/Object;)V

    .line 787
    iget-object v9, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v9

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized clear()V
    .locals 7

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, keyiter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 805
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 806
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList;->clear()V

    .line 807
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 808
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    monitor-exit p0

    return-void

    .line 794
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 795
    .local v2, key:Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/CursorableLinkedList;

    .line 796
    .local v4, list:Lorg/apache/commons/collections/CursorableLinkedList;
    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 798
    :try_start_2
    iget-object v6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    iget-object v5, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v6, v2, v5}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 802
    :goto_1
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 793
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keyiter:Ljava/util/Iterator;
    .end local v4           #list:Lorg/apache/commons/collections/CursorableLinkedList;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 799
    .restart local v1       #it:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Object;
    .restart local v3       #keyiter:Ljava/util/Iterator;
    .restart local v4       #list:Lorg/apache/commons/collections/CursorableLinkedList;
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method public declared-synchronized clear(Ljava/lang/Object;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 812
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    .local v2, pool:Lorg/apache/commons/collections/CursorableLinkedList;
    if-nez v2, :cond_0

    .line 828
    :goto_0
    monitor-exit p0

    return-void

    .line 816
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v3, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 827
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 812
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 819
    .restart local v1       #it:Ljava/util/Iterator;
    .restart local v2       #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    iget-object v3, v3, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v4, p1, v3}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 823
    :goto_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 824
    iget v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 820
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/Exception;
    goto :goto_2
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->clear()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_activeMap:Ljava/util/HashMap;

    .line 925
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 933
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-virtual {v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->cancel()V

    .line 935
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :cond_2
    monitor-exit p0

    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized debugInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1055
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1056
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "Active: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumActive()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1057
    const-string v2, "Idle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumIdle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    iget-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1059
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1060
    :cond_0
    :try_start_1
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1055
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #it:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized evict()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 949
    monitor-enter p0

    const/4 v3, 0x0

    .line 950
    .local v3, key:Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumTests()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .local v4, m:I
    move-object v8, v3

    .end local v3           #key:Ljava/lang/Object;
    :goto_0
    if-lt v2, v4, :cond_0

    .line 1032
    monitor-exit p0

    return-void

    .line 951
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 953
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-nez v9, :cond_2

    .line 954
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList;->cursor()Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 955
    const/4 v3, 0x0

    .line 956
    .restart local v3       #key:Ljava/lang/Object;
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v8, :cond_1

    .line 957
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 958
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    :cond_1
    move-object v8, v3

    .line 962
    .end local v3           #key:Ljava/lang/Object;
    :cond_2
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-nez v9, :cond_b

    .line 964
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v9}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 965
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->next()Ljava/lang/Object;

    move-result-object v3

    .line 966
    .restart local v3       #key:Ljava/lang/Object;
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/collections/CursorableLinkedList;

    .line 967
    .local v6, pool:Lorg/apache/commons/collections/CursorableLinkedList;
    invoke-virtual {v6}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/collections/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-object v9, v3

    .line 982
    .end local v3           #key:Ljava/lang/Object;
    .end local v6           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 983
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    .line 984
    .local v5, pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    const/4 v7, 0x0

    .line 985
    .local v7, removeObject:Z
    iget-wide v10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v8, v10, v12

    if-lez v8, :cond_7

    .line 987
    const/4 v7, 0x1

    .line 1008
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 1010
    :try_start_2
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->remove()V

    .line 1011
    iget v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    .line 1012
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1015
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1016
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v8, v9}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_3
    move-object v8, v9

    .line 950
    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .end local v7           #removeObject:Z
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 970
    :cond_6
    :try_start_3
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v9, :cond_5

    .line 971
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v9}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 972
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v9}, Lorg/apache/commons/collections/CursorableLinkedList;->cursor()Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionKeyCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 973
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v9, :cond_5

    .line 974
    iget-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v9}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 975
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 949
    .end local v4           #m:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 988
    .restart local v4       #m:I
    .restart local v5       #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .restart local v7       #removeObject:Z
    :cond_7
    :try_start_4
    iget-boolean v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_3

    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, active:Z
    :try_start_5
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 992
    const/4 v0, 0x1

    .line 996
    :goto_5
    if-eqz v0, :cond_3

    .line 997
    :try_start_6
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v8

    if-nez v8, :cond_8

    .line 998
    const/4 v7, 0x1

    goto :goto_2

    .line 994
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x1

    .line 995
    goto :goto_5

    .line 1001
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_7
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    iget-object v10, v5, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1003
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x1

    .line 1004
    goto :goto_2

    .line 1020
    .end local v0           #active:Z
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1021
    .restart local v1       #e:Ljava/lang/Exception;
    goto :goto_3

    .line 1025
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #pair:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
    .end local v7           #removeObject:Z
    :cond_9
    :try_start_8
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    if-eqz v8, :cond_a

    .line 1026
    iget-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-virtual {v8}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->close()V

    .line 1027
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictionCursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    move-object v8, v9

    goto :goto_4

    :cond_b
    move-object v9, v8

    goto/16 :goto_1
.end method

.method public declared-synchronized getMaxActive()I
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I
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
    .line 524
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxTotal()I
    .locals 1

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I
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
    .line 497
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J
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
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive()I
    .locals 1

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalActive:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumActive(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 839
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getActiveCount(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumIdle()I
    .locals 1

    .prologue
    .line 835
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumIdle(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 844
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 846
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 844
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNumTestsPerEvictionRun()I
    .locals 1

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I
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
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z
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
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z
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
    iget-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z
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
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J
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
    .line 455
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 902
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    monitor-enter p0

    .line 906
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 907
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 908
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 910
    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-enter p0

    .line 906
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 907
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 908
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 905
    throw v0

    .line 908
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

.method public returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 853
    const/4 v3, 0x1

    .line 854
    .local v3, success:Z
    iget-boolean v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 855
    const/4 v3, 0x0

    .line 857
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    const/4 v2, 0x0

    .line 870
    .local v2, shouldDestroy:Z
    monitor-enter p0

    .line 872
    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/CursorableLinkedList;

    .line 874
    .local v1, pool:Lorg/apache/commons/collections/CursorableLinkedList;
    if-nez v1, :cond_0

    .line 875
    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList;

    .end local v1           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    invoke-direct {v1}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    .line 876
    .restart local v1       #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_poolList:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v4, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 882
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    if-ltz v4, :cond_4

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    if-lt v4, v5, :cond_4

    .line 883
    const/4 v2, 0x1

    .line 888
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 889
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    if-eqz v2, :cond_2

    .line 893
    :try_start_2
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 898
    :cond_2
    :goto_2
    return-void

    .line 858
    .end local v1           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    .end local v2           #shouldDestroy:Z
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 863
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 865
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 866
    goto :goto_0

    .line 884
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    .restart local v2       #shouldDestroy:Z
    :cond_4
    if-eqz v3, :cond_1

    .line 885
    :try_start_4
    new-instance v4, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;

    invoke-direct {v4, p0, p2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lorg/apache/commons/collections/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    .line 886
    iget v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_totalIdle:I

    goto :goto_1

    .line 889
    .end local v1           #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 894
    .restart local v1       #pool:Lorg/apache/commons/collections/CursorableLinkedList;
    :catch_2
    move-exception v0

    .line 896
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_2
.end method

.method public declared-synchronized setConfig(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;)V
    .locals 2
    .parameter "conf"

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxIdle(I)V

    .line 700
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxActive(I)V

    .line 701
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxTotal:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxTotal(I)V

    .line 702
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMaxWait(J)V

    .line 703
    iget-byte v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setWhenExhaustedAction(B)V

    .line 704
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTestOnBorrow(Z)V

    .line 705
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTestOnReturn(Z)V

    .line 706
    iget-boolean v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTestWhileIdle(Z)V

    .line 707
    iget v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setNumTestsPerEvictionRun(I)V

    .line 708
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setMinEvictableIdleTimeMillis(J)V

    .line 709
    iget-wide v0, p1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->setTimeBetweenEvictionRunsMillis(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .locals 2
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 940
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->getNumActive()I

    move-result v0

    if-lez v0, :cond_0

    .line 941
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 943
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->clear()V

    .line 944
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setMaxActive(I)V
    .locals 1
    .parameter "maxActive"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxActive:I

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxIdle(I)V
    .locals 1
    .parameter "maxIdle"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxIdle:I

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxTotal(I)V
    .locals 1
    .parameter "maxTotal"

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxTotal:I

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxWait(J)V
    .locals 1
    .parameter "maxWait"

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_maxWait:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 515
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
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_minEvictableIdleTimeMillis:J
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

.method public declared-synchronized setNumTestsPerEvictionRun(I)V
    .locals 1
    .parameter "numTestsPerEvictionRun"

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_numTestsPerEvictionRun:I
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
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnBorrow:Z
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
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testOnReturn:Z
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
    iput-boolean p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_testWhileIdle:Z
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
    iput-wide p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    .line 613
    iget-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_timeBetweenEvictionRunsMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->startEvictor(J)V
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
    .line 469
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 477
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

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :pswitch_0
    :try_start_1
    iput-byte p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_whenExhaustedAction:B

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 469
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
    .line 1042
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-virtual {v1}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;->cancel()V

    .line 1044
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    .line 1046
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 1047
    new-instance v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;-><init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;J)V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    .line 1048
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;->_evictor:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Evictor;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1049
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    .end local v0           #t:Ljava/lang/Thread;
    :cond_1
    monitor-exit p0

    return-void

    .line 1042
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
