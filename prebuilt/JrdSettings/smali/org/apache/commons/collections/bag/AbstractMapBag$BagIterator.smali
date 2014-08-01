.class Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bag/AbstractMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BagIterator"
.end annotation


# instance fields
.field private canRemove:Z

.field private current:Ljava/util/Map$Entry;

.field private entryIterator:Ljava/util/Iterator;

.field private itemCount:I

.field private final mods:I

.field private parent:Lorg/apache/commons/collections/bag/AbstractMapBag;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/bag/AbstractMapBag;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections/bag/AbstractMapBag;

    .line 193
    invoke-static {p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->access$000(Lorg/apache/commons/collections/bag/AbstractMapBag;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    .line 195
    invoke-static {p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections/bag/AbstractMapBag;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->mods:I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 197
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->itemCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections/bag/AbstractMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections/bag/AbstractMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->mods:I

    if-eq v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 207
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->itemCount:I

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    .line 209
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    iget v0, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->itemCount:I

    .line 211
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 212
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->itemCount:I

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections/bag/AbstractMapBag;

    invoke-static {v1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->access$100(Lorg/apache/commons/collections/bag/AbstractMapBag;)I

    move-result v1

    iget v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->mods:I

    if-eq v1, v2, :cond_0

    .line 218
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 220
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->canRemove:Z

    if-nez v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 223
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->current:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 224
    .local v0, mut:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    if-lez v1, :cond_2

    .line 225
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 226
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->parent:Lorg/apache/commons/collections/bag/AbstractMapBag;

    invoke-static {v1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->access$210(Lorg/apache/commons/collections/bag/AbstractMapBag;)I

    .line 230
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->canRemove:Z

    .line 231
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
