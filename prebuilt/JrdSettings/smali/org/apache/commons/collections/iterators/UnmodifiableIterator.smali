.class public final Lorg/apache/commons/collections/iterators/UnmodifiableIterator;
.super Ljava/lang/Object;
.source "UnmodifiableIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    .line 63
    return-void
.end method

.method public static decorate(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .parameter "iterator"

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_1

    .line 51
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
