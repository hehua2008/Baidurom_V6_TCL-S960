.class public final Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;
.super Ljava/lang/Object;
.source "UnmodifiableListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private iterator:Ljava/util/ListIterator;


# direct methods
.method private constructor <init>(Ljava/util/ListIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    .line 61
    return-void
.end method

.method public static decorate(Ljava/util/ListIterator;)Ljava/util/ListIterator;
    .locals 2
    .parameter "iterator"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ListIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_1

    .line 49
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;-><init>(Ljava/util/ListIterator;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
