.class public Lorg/apache/commons/collections/iterators/ListIteratorWrapper;
.super Ljava/lang/Object;
.source "ListIteratorWrapper.java"

# interfaces
.implements Ljava/util/ListIterator;


# static fields
.field private static final UNSUPPORTED_OPERATION_MESSAGE:Ljava/lang/String; = "ListIteratorWrapper does not support optional operations of ListIterator."


# instance fields
.field private currentIndex:I

.field private final iterator:Ljava/util/Iterator;

.field private final list:Ljava/util/LinkedList;

.field private wrappedIteratorIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .parameter "iterator"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    .line 41
    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 44
    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    .line 65
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 114
    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v2, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ge v1, v2, :cond_0

    .line 115
    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 116
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    iget v2, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, retval:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 122
    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
