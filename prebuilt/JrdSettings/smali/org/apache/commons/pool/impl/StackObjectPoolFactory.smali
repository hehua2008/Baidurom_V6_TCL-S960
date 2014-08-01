.class public Lorg/apache/commons/pool/impl/StackObjectPoolFactory;
.super Ljava/lang/Object;
.source "StackObjectPoolFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPoolFactory;


# instance fields
.field protected _factory:Lorg/apache/commons/pool/PoolableObjectFactory;

.field protected _initCapacity:I

.field protected _maxSleeping:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/PoolableObjectFactory;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 38
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/PoolableObjectFactory;

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "max"
    .parameter "init"

    .prologue
    .line 42
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 46
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .locals 1
    .parameter "factory"
    .parameter "max"

    .prologue
    .line 50
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V
    .locals 1
    .parameter "factory"
    .parameter "max"
    .parameter "init"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 64
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    .line 54
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 55
    iput p2, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    .line 56
    iput p3, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    .line 57
    return-void
.end method


# virtual methods
.method public createPool()Lorg/apache/commons/pool/ObjectPool;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lorg/apache/commons/pool/impl/StackObjectPool;

    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_maxSleeping:I

    iget v3, p0, Lorg/apache/commons/pool/impl/StackObjectPoolFactory;->_initCapacity:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    return-object v0
.end method
