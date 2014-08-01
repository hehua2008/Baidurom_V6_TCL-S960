.class public Lorg/apache/commons/collections/buffer/TypedBuffer;
.super Ljava/lang/Object;
.source "TypedBuffer.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;Ljava/lang/Class;)Lorg/apache/commons/collections/Buffer;
    .locals 2
    .parameter "buffer"
    .parameter "type"

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/collections/buffer/PredicatedBuffer;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/buffer/PredicatedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
