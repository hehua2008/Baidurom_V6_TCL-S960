.class Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;
.super Ljava/lang/Object;
.source "GenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectTimestampPair"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

.field tstamp:J

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Ljava/lang/Object;)V
    .locals 2
    .parameter "this$0"
    .parameter "val"

    .prologue
    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;-><init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Ljava/lang/Object;J)V

    .line 1053
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/pool/impl/GenericObjectPool;Ljava/lang/Object;J)V
    .locals 0
    .parameter "this$0"
    .parameter "val"
    .parameter "time"

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->this$0:Lorg/apache/commons/pool/impl/GenericObjectPool;

    .line 1056
    iput-object p2, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    .line 1057
    iput-wide p3, p0, Lorg/apache/commons/pool/impl/GenericObjectPool$ObjectTimestampPair;->tstamp:J

    .line 1058
    return-void
.end method
