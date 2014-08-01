.class Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "AbstractInputCheckedMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetIterator"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .parameter "iterator"
    .parameter "parent"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 168
    iput-object p2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    .line 169
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, entry:Ljava/util/Map$Entry;
    new-instance v1, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    return-object v1
.end method
