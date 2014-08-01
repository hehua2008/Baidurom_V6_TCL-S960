.class public Lorg/apache/commons/collections/iterators/FilterListIterator;
.super Ljava/lang/Object;
.source "FilterListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private nextIndex:I

.field private nextObject:Ljava/lang/Object;

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections/Predicate;

.field private previousObject:Ljava/lang/Object;

.field private previousObjectSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 71
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 1
    .parameter "iterator"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 71
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 92
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)V
    .locals 1
    .parameter "iterator"
    .parameter "predicate"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 71
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 103
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 104
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Predicate;)V
    .locals 1
    .parameter "predicate"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 71
    iput v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 117
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 118
    return-void
.end method

.method private clearNextObject()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    .line 227
    return-void
.end method

.method private clearPreviousObject()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    .line 257
    return-void
.end method

.method private setNextObject()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    iget-boolean v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-eqz v3, :cond_2

    .line 235
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    .line 236
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    .line 243
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, object:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v3, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 247
    iput-boolean v2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    move v1, v2

    .line 248
    goto :goto_0
.end method

.method private setPreviousObject()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    iget-boolean v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-eqz v3, :cond_2

    .line 265
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    .line 266
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    .line 273
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, object:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v3, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 277
    iput-boolean v2, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    move v1, v2

    .line 278
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.add(Object) is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 143
    iget-boolean v1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObjectSet:Z

    if-nez v1, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setNextObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 148
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 149
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextObject:Ljava/lang/Object;

    .line 150
    .local v0, temp:Ljava/lang/Object;
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearNextObject()V

    .line 151
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    iget-boolean v1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObjectSet:Z

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->setPreviousObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 164
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    .line 165
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->previousObject:Ljava/lang/Object;

    .line 166
    .local v0, temp:Ljava/lang/Object;
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterListIterator;->clearPreviousObject()V

    .line 167
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.remove() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FilterListIterator.set(Object) is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 201
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->iterator:Ljava/util/ListIterator;

    .line 202
    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 220
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterListIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 221
    return-void
.end method
