.class public Lorg/apache/commons/collections/functors/ChainedClosure;
.super Ljava/lang/Object;
.source "ChainedClosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Closure;


# static fields
.field static final serialVersionUID:J = -0x30dbf54892a4d5f8L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Closure;)V
    .locals 0
    .parameter "closures"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    .line 109
    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;
    .locals 6
    .parameter "closures"

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Closure collection must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 72
    sget-object v4, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .line 81
    :goto_0
    return-object v4

    .line 75
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v0, v4, [Lorg/apache/commons/collections/Closure;

    .line 76
    .local v0, cmds:[Lorg/apache/commons/collections/Closure;
    const/4 v1, 0x0

    .line 77
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    .line 81
    new-instance v4, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v4, v0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Closure;

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public static getInstance(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 3
    .parameter "closure1"
    .parameter "closure2"

    .prologue
    .line 93
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Closures must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/apache/commons/collections/Closure;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 97
    .local v0, closures:[Lorg/apache/commons/collections/Closure;
    new-instance v1, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object v1
.end method

.method public static getInstance([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "closures"

    .prologue
    .line 49
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    .line 50
    array-length v0, p0

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;

    move-result-object p0

    .line 54
    new-instance v0, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getClosures()[Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    return-object v0
.end method
