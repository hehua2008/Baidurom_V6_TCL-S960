.class Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;
.super Ljava/util/AbstractCollection;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValuesView"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 344
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 345
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->clear()V

    .line 357
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$1;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap$1;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v0

    return v0
.end method
