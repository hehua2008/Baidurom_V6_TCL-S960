.class public Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPoolFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPoolFactory;


# instance fields
.field protected _factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

.field protected _maxActive:I

.field protected _maxIdle:I

.field protected _maxTotal:I

.field protected _maxWait:J

.field protected _minEvictableIdleTimeMillis:J

.field protected _numTestsPerEvictionRun:I

.field protected _testOnBorrow:Z

.field protected _testOnReturn:Z

.field protected _testWhileIdle:Z

.field protected _timeBetweenEvictionRunsMillis:J

.field protected _whenExhaustedAction:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .locals 15
    .parameter "factory"

    .prologue
    .line 35
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

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"

    .prologue
    .line 43
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/16 v6, 0x8

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x3

    const-wide/32 v13, 0x1b7740

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"

    .prologue
    .line 47
    const/16 v6, 0x8

    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJI)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"

    .prologue
    .line 55
    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJII)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "maxTotal"

    .prologue
    .line 59
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

    move/from16 v7, p7

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V
    .locals 4
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    .line 92
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    .line 93
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    .line 94
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    .line 95
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    .line 98
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    .line 99
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 100
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 101
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 71
    iput p6, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    .line 72
    iput p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    .line 73
    iput p7, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    .line 74
    iput-wide p4, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    .line 75
    iput-byte p3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    .line 76
    iput-boolean p8, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    .line 77
    iput-boolean p9, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    .line 78
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    .line 79
    iput-wide p10, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 80
    move/from16 v0, p12

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 81
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 82
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "maxIdle"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"

    .prologue
    .line 63
    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 64
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
    .line 67
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJZZ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"
    .parameter "testOnBorrow"
    .parameter "testOnReturn"

    .prologue
    .line 51
    const/16 v6, 0x8

    const/4 v7, -0x1

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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;)V
    .locals 16
    .parameter "factory"
    .parameter "config"

    .prologue
    .line 39
    move-object/from16 v0, p2

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    move-object/from16 v0, p2

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    move-object/from16 v0, p2

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    move-object/from16 v0, p2

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    move-object/from16 v0, p2

    iget v12, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    move-object/from16 v0, p2

    iget-wide v13, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIZZJIJZ)V

    .line 40
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/KeyedObjectPool;
    .locals 17

    .prologue
    .line 86
    new-instance v1, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxActive:I

    move-object/from16 v0, p0

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_whenExhaustedAction:B

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxWait:J

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxIdle:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_maxTotal:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnBorrow:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testOnReturn:Z

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_numTestsPerEvictionRun:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPoolFactory;->_testWhileIdle:Z

    move/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;IBJIIZZJIJZ)V

    return-object v1
.end method
