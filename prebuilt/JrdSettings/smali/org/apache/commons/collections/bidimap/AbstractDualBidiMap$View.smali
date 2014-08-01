.class public abstract Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "View"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .parameter "coll"
    .parameter "parent"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 344
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 345
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->clear()V

    .line 383
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "coll"

    .prologue
    .line 348
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    :cond_0
    const/4 v1, 0x0

    .line 359
    :cond_1
    return v1

    .line 351
    :cond_2
    const/4 v1, 0x0

    .line 352
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    .local v0, it:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 356
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "coll"

    .prologue
    .line 363
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const/4 v1, 0x0

    .line 378
    :cond_0
    :goto_0
    return v1

    .line 366
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->clear()V

    .line 368
    const/4 v1, 0x1

    goto :goto_0

    .line 370
    :cond_2
    const/4 v1, 0x0

    .line 371
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, it:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 375
    const/4 v1, 0x1

    goto :goto_1
.end method
