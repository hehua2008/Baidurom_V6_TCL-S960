.class public Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;
.super Ljava/lang/Object;
.source "GenericObjectPoolFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPoolFactory;


# instance fields
.field protected _factory:Lorg/apache/commons/pool/PoolableObjectFactory;

.field protected _maxActive:I

.field protected _maxIdle:I

.field protected _maxWait:J

.field protected _minEvictableIdleTimeMillis:J

.field protected _minIdle:I

.field protected _numTestsPerEvictionRun:I

.field protected _testOnBorrow:Z

.field protected _testOnReturn:Z

.field protected _testWhileIdle:Z

.field protected _timeBetweenEvictionRunsMillis:J

.field protected _whenExhaustedAction:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 16
    .parameter "factory"

    .prologue
    .line 34
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"

    .prologue
    .line 42
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJ)V
    .locals 16
    .parameter "factory"
    .parameter "maxActive"
    .parameter "whenExhaustedAction"
    .parameter "maxWait"

    .prologue
    .line 46
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 47
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
    .line 54
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V
    .locals 4
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    .line 85
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    .line 86
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    .line 87
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    .line 88
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    .line 92
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 93
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 94
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 66
    iput p6, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    .line 67
    iput p7, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    .line 68
    iput p2, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    .line 69
    iput-wide p4, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    .line 70
    iput-byte p3, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    .line 71
    iput-boolean p8, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    .line 72
    iput-boolean p9, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    .line 73
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    .line 74
    iput-wide p10, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    .line 75
    move/from16 v0, p12

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    .line 76
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    .line 77
    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 78
    return-void
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
    .line 58
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 59
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
    .line 62
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 63
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
    .line 50
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

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;Lorg/apache/commons/pool/impl/GenericObjectPool$Config;)V
    .locals 17
    .parameter "factory"
    .parameter "config"

    .prologue
    .line 38
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

    invoke-direct/range {v1 .. v16}, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    .line 39
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/ObjectPool;
    .locals 17

    .prologue
    .line 81
    new-instance v1, Lorg/apache/commons/pool/impl/GenericObjectPool;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxActive:I

    move-object/from16 v0, p0

    iget-byte v4, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_whenExhaustedAction:B

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxWait:J

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_maxIdle:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minIdle:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnBorrow:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testOnReturn:Z

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_timeBetweenEvictionRunsMillis:J

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_numTestsPerEvictionRun:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_minEvictableIdleTimeMillis:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/pool/impl/GenericObjectPoolFactory;->_testWhileIdle:Z

    move/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lorg/apache/commons/pool/impl/GenericObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;IBJIIZZJIJZ)V

    return-object v1
.end method
