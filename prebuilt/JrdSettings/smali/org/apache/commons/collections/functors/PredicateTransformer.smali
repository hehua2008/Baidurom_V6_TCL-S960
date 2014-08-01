.class public Lorg/apache/commons/collections/functors/PredicateTransformer;
.super Ljava/lang/Object;
.source "PredicateTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = 0x4942215fad46c7a2L


# instance fields
.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 63
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "predicate"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/PredicateTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/PredicateTransformer;-><init>(Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/functors/PredicateTransformer;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
