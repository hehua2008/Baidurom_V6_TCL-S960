.class public final Lorg/apache/commons/collections/functors/TransformerPredicate;
.super Ljava/lang/Object;
.source "TransformerPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;


# static fields
.field static final serialVersionUID:J = -0x216ad0af7d27feb5L


# instance fields
.field private final iTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "transformer"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    .line 63
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "transformer"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transformer to call must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/TransformerPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/TransformerPredicate;-><init>(Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 73
    iget-object v1, p0, Lorg/apache/commons/collections/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 75
    new-instance v2, Lorg/apache/commons/collections/FunctorException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Transformer must return an instanceof Boolean, it was a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v1, "null object"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformerPredicate;->iTransformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method
