.class public Lorg/apache/commons/pool/impl/GenericObjectPool$Config;
.super Ljava/lang/Object;
.source "GenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public maxActive:I

.field public maxIdle:I

.field public maxWait:J

.field public minEvictableIdleTimeMillis:J

.field public minIdle:I

.field public numTestsPerEvictionRun:I

.field public testOnBorrow:Z

.field public testOnReturn:Z

.field public testWhileIdle:Z

.field public timeBetweenEvictionRunsMillis:J

.field public whenExhaustedAction:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxIdle:I

    .line 1113
    iput v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minIdle:I

    .line 1114
    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxActive:I

    .line 1115
    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->maxWait:J

    .line 1116
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->whenExhaustedAction:B

    .line 1117
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnBorrow:Z

    .line 1118
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testOnReturn:Z

    .line 1119
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->testWhileIdle:Z

    .line 1120
    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    .line 1121
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->numTestsPerEvictionRun:I

    .line 1122
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$Config;->minEvictableIdleTimeMillis:J

    return-void
.end method
