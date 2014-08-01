.class public Lorg/apache/commons/collections/ArrayStack;
.super Ljava/util/ArrayList;
.source "ArrayStack.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = 0x1d8f8fb5d72f1947L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialSize"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, size:I
    if-nez v0, :cond_0

    .line 175
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1

    .line 177
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    .local v0, n:I
    if-gtz v0, :cond_0

    .line 89
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 91
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 106
    .local v0, m:I
    if-gez v0, :cond_0

    .line 107
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, n:I
    if-gtz v0, :cond_0

    .line 122
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    .line 124
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "item"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-object p1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 188
    .local v0, size:I
    if-nez v0, :cond_0

    .line 189
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1

    .line 191
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 153
    .local v1, i:I
    const/4 v2, 0x1

    .line 154
    .local v2, n:I
    :goto_0
    if-gez v1, :cond_1

    .line 163
    const/4 v2, -0x1

    .end local v2           #n:I
    :cond_0
    return v2

    .line 155
    .restart local v2       #n:I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, current:Ljava/lang/Object;
    if-nez p1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
