.class Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectTimestampPair"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

.field tstamp:J

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;)V
    .locals 2
    .parameter "this$0"
    .parameter "val"

    .prologue
    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 1114
    iput-object p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    .line 1116
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;Ljava/lang/Object;J)V
    .locals 0
    .parameter "this$0"
    .parameter "val"
    .parameter "time"

    .prologue
    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->this$0:Lorg/apache/commons/pool/impl/GenericKeyedObjectPool;

    .line 1119
    iput-object p2, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    .line 1120
    iput-wide p3, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    .line 1121
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/pool/impl/GenericKeyedObjectPool$ObjectTimestampPair;->tstamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
