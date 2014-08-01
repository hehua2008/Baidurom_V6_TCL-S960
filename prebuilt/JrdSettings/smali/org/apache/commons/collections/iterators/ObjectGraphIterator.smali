.class public Lorg/apache/commons/collections/iterators/ObjectGraphIterator;
.super Ljava/lang/Object;
.source "ObjectGraphIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected currentIterator:Ljava/util/Iterator;

.field protected currentValue:Ljava/lang/Object;

.field protected hasNext:Z

.field protected lastUsedIterator:Ljava/util/Iterator;

.field protected root:Ljava/lang/Object;

.field protected final stack:Lorg/apache/commons/collections/ArrayStack;

.field protected transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)V
    .locals 2
    .parameter "root"
    .parameter "transformer"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    .line 107
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Ljava/util/Iterator;

    .end local p1
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 112
    :goto_0
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    .line 113
    return-void

    .line 110
    .restart local p1
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .parameter "rootIterator"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    .line 127
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    .line 129
    return-void
.end method


# virtual methods
.method protected findNext(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 161
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Ljava/util/Iterator;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    .line 169
    :goto_0
    return-void

    .line 166
    .restart local p1
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    goto :goto_0
.end method

.method protected findNextByIterator(Ljava/util/Iterator;)V
    .locals 3
    .parameter "iterator"

    .prologue
    .line 177
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-eq p1, v1, :cond_1

    .line 179
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    iget-object v2, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 185
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v1, :cond_4

    .line 192
    :cond_2
    iget-boolean v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v1, :cond_6

    .line 201
    :cond_3
    :goto_1
    return-void

    .line 186
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, next:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v1, :cond_5

    .line 188
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    .end local v0           #next:Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 198
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->stack:Lorg/apache/commons/collections/ArrayStack;

    invoke-virtual {v1}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    .line 199
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    .line 211
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->updateCurrentIterator()V

    .line 222
    iget-boolean v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more elements in the iteration"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    .line 227
    .local v0, result:Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentValue:Ljava/lang/Object;

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    .line 229
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() cannot be called at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->lastUsedIterator:Ljava/util/Iterator;

    .line 251
    return-void
.end method

.method protected updateCurrentIterator()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->hasNext:Z

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    .line 148
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->root:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->currentIterator:Ljava/util/Iterator;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;->findNextByIterator(Ljava/util/Iterator;)V

    goto :goto_0
.end method
