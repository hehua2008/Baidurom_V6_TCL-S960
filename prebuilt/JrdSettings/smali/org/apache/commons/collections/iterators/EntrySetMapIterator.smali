.class public Lorg/apache/commons/collections/iterators/EntrySetMapIterator;
.super Ljava/lang/Object;
.source "EntrySetMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private canRemove:Z

.field private iterator:Ljava/util/Iterator;

.field private last:Ljava/util/Map$Entry;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 55
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    .line 57
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 78
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 99
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->iterator:Ljava/util/Iterator;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->canRemove:Z

    .line 155
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MapIterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MapIterator[]"

    goto :goto_0
.end method
