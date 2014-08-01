.class public Lorg/apache/commons/collections/iterators/SingletonListIterator;
.super Ljava/lang/Object;
.source "SingletonListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field private beforeFirst:Z

.field private nextCalled:Z

.field private object:Ljava/lang/Object;

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 36
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 37
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    .line 47
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported by this iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 108
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 124
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 139
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    .line 142
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 173
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 164
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    .line 165
    return-void
.end method
