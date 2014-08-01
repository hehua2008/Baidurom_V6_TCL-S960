.class public final Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;
.super Ljava/lang/Object;
.source "NullIsExceptionPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;


# static fields
.field static final serialVersionUID:J = 0x2d030c745a1e7c47L


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 62
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "predicate"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;-><init>(Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "Input Object must not be null"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    aput-object v2, v0, v1

    return-object v0
.end method
