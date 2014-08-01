.class public final Lorg/apache/commons/collections/functors/NullIsTruePredicate;
.super Ljava/lang/Object;
.source "NullIsTruePredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;


# static fields
.field static final serialVersionUID:J = -0x69d1eac361502a01L


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections/functors/NullIsTruePredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 61
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "predicate"

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/NullIsTruePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/NullIsTruePredicate;-><init>(Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/NullIsTruePredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/collections/functors/NullIsTruePredicate;->iPredicate:Lorg/apache/commons/collections/Predicate;

    aput-object v2, v0, v1

    return-object v0
.end method
