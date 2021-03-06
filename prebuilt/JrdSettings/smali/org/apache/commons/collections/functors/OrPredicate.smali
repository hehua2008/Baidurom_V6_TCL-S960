.class public final Lorg/apache/commons/collections/functors/OrPredicate;
.super Ljava/lang/Object;
.source "OrPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;


# static fields
.field static final serialVersionUID:J = -0x7a01bf5679c85207L


# instance fields
.field private final iPredicate1:Lorg/apache/commons/collections/Predicate;

.field private final iPredicate2:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicate1"
    .parameter "predicate2"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/collections/functors/OrPredicate;->iPredicate1:Lorg/apache/commons/collections/Predicate;

    .line 65
    iput-object p2, p0, Lorg/apache/commons/collections/functors/OrPredicate;->iPredicate2:Lorg/apache/commons/collections/Predicate;

    .line 66
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "predicate1"
    .parameter "predicate2"

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/functors/OrPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/OrPredicate;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections/functors/OrPredicate;->iPredicate1:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/functors/OrPredicate;->iPredicate2:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/collections/functors/OrPredicate;->iPredicate1:Lorg/apache/commons/collections/Predicate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/collections/functors/OrPredicate;->iPredicate2:Lorg/apache/commons/collections/Predicate;

    aput-object v2, v0, v1

    return-object v0
.end method
