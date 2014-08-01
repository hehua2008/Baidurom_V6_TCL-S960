.class public Lorg/apache/commons/collections/list/NodeCachingLinkedList;
.super Lorg/apache/commons/collections/list/AbstractLinkedList;
.source "NodeCachingLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_MAXIMUM_CACHE_SIZE:I = 0x14

.field static final serialVersionUID:J = 0x5fb9deb63bbc3f09L


# instance fields
.field protected transient cacheSize:I

.field protected transient firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected maximumCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;-><init>(I)V

    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maximumCacheSize"

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>()V

    .line 98
    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter "coll"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 88
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 89
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 244
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 235
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 3
    .parameter "node"

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->isCacheFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 173
    .local v0, nextCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iput-object v2, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 174
    iput-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 175
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 176
    iput-object p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 177
    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    goto :goto_0
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 190
    .local v0, cachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    if-nez v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 194
    .end local v0           #cachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    return-object v0

    .line 193
    .restart local v0       #cachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getMaximumCacheSize()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    return v0
.end method

.method protected getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    iget v2, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    if-nez v2, :cond_0

    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 144
    .local v0, cachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v2, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v2, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 145
    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 147
    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    goto :goto_0
.end method

.method protected isCacheFull()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeAllNodes()V
    .locals 7

    .prologue
    .line 219
    iget v4, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    iget v5, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    iget v6, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 220
    .local v2, numberOfNodesToCache:I
    iget-object v4, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v4, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 221
    .local v1, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    const/4 v0, 0x0

    .local v0, currentIndex:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 226
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    .line 227
    return-void

    .line 222
    :cond_0
    move-object v3, v1

    .line 223
    .local v3, oldNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 224
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 207
    return-void
.end method

.method protected setMaximumCacheSize(I)V
    .locals 0
    .parameter "maximumCacheSize"

    .prologue
    .line 118
    iput p1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

    .line 120
    return-void
.end method

.method protected shrinkCacheToMaximumSize()V
    .locals 2

    .prologue
    .line 127
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-gt v0, v1, :cond_0

    .line 130
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0
.end method
