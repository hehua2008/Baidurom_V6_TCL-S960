.class public Lorg/apache/commons/collections/functors/SwitchTransformer;
.super Ljava/lang/Object;
.source "SwitchTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = -0x58e1373f7c2edd14L


# instance fields
.field private final iDefault:Lorg/apache/commons/collections/Transformer;

.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;

.field private final iTransformers:[Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "predicates"
    .parameter "transformers"
    .parameter "defaultTransformer"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    .line 125
    iput-object p2, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    .line 126
    if-nez p3, :cond_0

    sget-object p3, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    .end local p3
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections/Transformer;

    .line 127
    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 9
    .parameter "predicatesAndTransformers"

    .prologue
    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, transformers:[Lorg/apache/commons/collections/Transformer;
    const/4 v4, 0x0

    .line 90
    .local v4, preds:[Lorg/apache/commons/collections/Predicate;
    if-nez p0, :cond_0

    .line 91
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The predicate and transformer map must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 94
    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 111
    :cond_1
    :goto_0
    return-object v0

    .line 97
    :cond_2
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    .line 98
    .local v0, defaultTransformer:Lorg/apache/commons/collections/Transformer;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    .line 99
    .local v5, size:I
    if-nez v5, :cond_3

    .line 100
    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    goto :goto_0

    .line 102
    :cond_3
    new-array v6, v5, [Lorg/apache/commons/collections/Transformer;

    .line 103
    new-array v4, v5, [Lorg/apache/commons/collections/Predicate;

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, i:I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 111
    new-instance v7, Lorg/apache/commons/collections/functors/SwitchTransformer;

    invoke-direct {v7, v4, v6, v0}, Lorg/apache/commons/collections/functors/SwitchTransformer;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    move-object v0, v7

    goto :goto_0

    .line 106
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Predicate;

    aput-object v7, v4, v2

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Transformer;

    aput-object v7, v6, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "predicates"
    .parameter "transformers"
    .parameter "defaultTransformer"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Predicate;)V

    .line 58
    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 59
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate and transformer arrays must be the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_2

    .line 63
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 67
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 65
    .restart local p2
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 66
    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Transformer;)[Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    .line 67
    new-instance v0, Lorg/apache/commons/collections/functors/SwitchTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getTransformers()[Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "input"

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 139
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
