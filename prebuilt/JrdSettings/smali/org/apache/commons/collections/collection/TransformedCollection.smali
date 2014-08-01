.class public Lorg/apache/commons/collections/collection/TransformedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "TransformedCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x78a140f7a4730e9aL


# instance fields
.field protected final transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V
    .locals 2
    .parameter "coll"
    .parameter "transformer"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    .line 80
    return-void
.end method

.method public static decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 1
    .parameter "coll"
    .parameter "transformer"

    .prologue
    .line 60
    new-instance v0, Lorg/apache/commons/collections/collection/TransformedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "object"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .parameter "coll"

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v1, list:Ljava/util/List;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    return-object v1

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
