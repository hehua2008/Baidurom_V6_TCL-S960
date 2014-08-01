.class Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/set/ListOrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OrderedSetIterator"
.end annotation


# instance fields
.field protected last:Ljava/lang/Object;

.field protected final set:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Ljava/util/Iterator;Ljava/util/Collection;)V
    .locals 0
    .parameter "iterator"
    .parameter "set"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 292
    iput-object p2, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    .line 293
    return-void
.end method

.method constructor <init>(Ljava/util/Iterator;Ljava/util/Collection;Lorg/apache/commons/collections/set/ListOrderedSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 283
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/Iterator;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->set:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;->last:Ljava/lang/Object;

    .line 304
    return-void
.end method
