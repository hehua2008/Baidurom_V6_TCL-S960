.class public Lorg/apache/commons/collections/functors/ChainedTransformer;
.super Ljava/lang/Object;
.source "ChainedTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = 0x30c797ec287a9704L


# instance fields
.field private final iTransformers:[Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "transformers"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    .line 112
    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;
    .locals 6
    .parameter "transformers"

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Transformer collection must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 75
    sget-object v4, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 84
    :goto_0
    return-object v4

    .line 78
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v0, v4, [Lorg/apache/commons/collections/Transformer;

    .line 79
    .local v0, cmds:[Lorg/apache/commons/collections/Transformer;
    const/4 v1, 0x0

    .line 80
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 84
    new-instance v4, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {v4, v0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Transformer;

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 3
    .parameter "transformer1"
    .parameter "transformer2"

    .prologue
    .line 96
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transformers must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/apache/commons/collections/Transformer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 100
    .local v0, transformers:[Lorg/apache/commons/collections/Transformer;
    new-instance v1, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public static getInstance([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "transformers"

    .prologue
    .line 52
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 53
    array-length v0, p0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Transformer;)[Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    .line 57
    new-instance v0, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    goto :goto_0
.end method


# virtual methods
.method public getTransformers()[Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "object"

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 124
    return-object p1

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
