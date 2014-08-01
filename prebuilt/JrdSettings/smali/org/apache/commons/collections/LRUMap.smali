.class public Lorg/apache/commons/collections/LRUMap;
.super Lorg/apache/commons/collections/SequencedHashMap;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1e7ed9cc8d43a4bbL


# instance fields
.field private maximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/LRUMap;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;-><init>(I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    .line 75
    iput p1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    .line 76
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, value:Ljava/lang/Object;
    invoke-super {p0, p1, v0}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMaximumSize()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    return v0
.end method

.method protected processRemovedLRU(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 155
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    .line 113
    .local v0, mapSize:I
    const/4 v1, 0x0

    .line 115
    .local v1, retval:Ljava/lang/Object;
    iget v2, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    if-lt v0, v2, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->removeLRU()V

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    return-object v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    .line 161
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 163
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 168
    return-void

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, key:Ljava/lang/Object;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected removeLRU()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, key:Ljava/lang/Object;
    invoke-super {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/LRUMap;->processRemovedLRU(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public setMaximumSize(I)V
    .locals 1
    .parameter "maximumSize"

    .prologue
    .line 196
    iput p1, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    .line 197
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 200
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/LRUMap;->removeLRU()V

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget v3, p0, Lorg/apache/commons/collections/LRUMap;->maximumSize:I

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    return-void

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, key:Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 178
    invoke-super {p0, v1}, Lorg/apache/commons/collections/SequencedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, value:Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
