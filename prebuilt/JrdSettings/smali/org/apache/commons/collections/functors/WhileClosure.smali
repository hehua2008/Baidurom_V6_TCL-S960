.class public Lorg/apache/commons/collections/functors/WhileClosure;
.super Ljava/lang/Object;
.source "WhileClosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Closure;


# static fields
.field static final serialVersionUID:J = -0x2b2ad9efdef5076cL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;

.field private final iDoLoop:Z

.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)V
    .locals 0
    .parameter "predicate"
    .parameter "closure"
    .parameter "doLoop"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    .line 75
    iput-boolean p3, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iDoLoop:Z

    .line 76
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;
    .locals 2
    .parameter "predicate"
    .parameter "closure"
    .parameter "doLoop"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Closure must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/functors/WhileClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/WhileClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iDoLoop:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public isDoLoop()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iDoLoop:Z

    return v0
.end method
