.class public abstract Lorg/apache/commons/collections/set/AbstractSetDecorator;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractSetDecorator.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
