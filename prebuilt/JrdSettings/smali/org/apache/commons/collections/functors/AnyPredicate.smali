.class public final Lorg/apache/commons/collections/functors/AnyPredicate;
.super Ljava/lang/Object;
.source "AnyPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;


# static fields
.field static final serialVersionUID:J = 0x671ca93522adbaf6L


# instance fields
.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicates"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    .line 77
    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "predicates"

    .prologue
    .line 64
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    .line 65
    .local v0, preds:[Lorg/apache/commons/collections/Predicate;
    new-instance v1, Lorg/apache/commons/collections/functors/AnyPredicate;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/functors/AnyPredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 49
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validateMin2([Lorg/apache/commons/collections/Predicate;)V

    .line 50
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 51
    new-instance v0, Lorg/apache/commons/collections/functors/AnyPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/AnyPredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 91
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x1

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method
