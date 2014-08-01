.class public Lorg/apache/commons/collections/functors/ClosureTransformer;
.super Ljava/lang/Object;
.source "ClosureTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = 0x6a3db1ca1a06d46L


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Closure;)V
    .locals 0
    .parameter "closure"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections/Closure;

    .line 63
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "closure"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Closure must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/ClosureTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ClosureTransformer;-><init>(Lorg/apache/commons/collections/Closure;)V

    return-object v0
.end method


# virtual methods
.method public getClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ClosureTransformer;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 73
    return-object p1
.end method
