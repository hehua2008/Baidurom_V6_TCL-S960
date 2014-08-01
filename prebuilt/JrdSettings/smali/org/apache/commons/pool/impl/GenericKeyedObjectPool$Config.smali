.class public Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public maxActive:I

.field public maxIdle:I

.field public maxTotal:I

.field public maxWait:J

.field public minEvictableIdleTimeMillis:J

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

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxIdle:I

    .line 1182
    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxActive:I

    .line 1183
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxTotal:I

    .line 1184
    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->maxWait:J

    .line 1185
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->whenExhaustedAction:B

    .line 1186
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnBorrow:Z

    .line 1187
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testOnReturn:Z

    .line 1188
    iput-boolean v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->testWhileIdle:Z

    .line 1189
    iput-wide v2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->timeBetweenEvictionRunsMillis:J

    .line 1190
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->numTestsPerEvictionRun:I

    .line 1191
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$Config;->minEvictableIdleTimeMillis:J

    return-void
.end method
