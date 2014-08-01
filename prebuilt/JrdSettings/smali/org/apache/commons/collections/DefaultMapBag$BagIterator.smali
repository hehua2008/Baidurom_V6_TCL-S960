.class Lorg/apache/commons/collections/DefaultMapBag$BagIterator;
.super Ljava/lang/Object;
.source "DefaultMapBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/DefaultMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BagIterator"
.end annotation


# instance fields
.field private _current:Ljava/lang/Object;

.field private _mods:I

.field private _parent:Lorg/apache/commons/collections/DefaultMapBag;

.field private _support:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/DefaultMapBag;Ljava/util/Iterator;)V
    .locals 2
    .parameter "parent"
    .parameter "support"

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    .line 216
    iput-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    .line 217
    iput-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    .line 221
    iput-object p1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    .line 222
    iput-object p2, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    .line 223
    iput-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Lorg/apache/commons/collections/DefaultMapBag;->access$000(Lorg/apache/commons/collections/DefaultMapBag;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    .line 225
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections/DefaultMapBag;->access$000(Lorg/apache/commons/collections/DefaultMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    invoke-static {v0}, Lorg/apache/commons/collections/DefaultMapBag;->access$000(Lorg/apache/commons/collections/DefaultMapBag;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    if-eq v0, v1, :cond_0

    .line 241
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_support:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 244
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_parent:Lorg/apache/commons/collections/DefaultMapBag;

    iget-object v1, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_current:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    .line 245
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;->_mods:I

    .line 246
    return-void
.end method
