.class public Lorg/apache/commons/collections/collection/PredicatedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "PredicatedCollection.java"


# static fields
.field private static final serialVersionUID:J = -0x48fc5e4b3b8f598aL


# instance fields
.field protected final predicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V
    .locals 3
    .parameter "coll"
    .parameter "predicate"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Predicate must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    return-void

    .line 85
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 1
    .parameter "coll"
    .parameter "predicate"

    .prologue
    .line 63
    new-instance v0, Lorg/apache/commons/collections/collection/PredicatedCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "coll"

    .prologue
    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected validate(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot add Object \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' - Predicate rejected it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method
