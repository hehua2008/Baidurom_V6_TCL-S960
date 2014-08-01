.class public Lorg/apache/commons/collections/functors/SwitchClosure;
.super Ljava/lang/Object;
.source "SwitchClosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Closure;


# static fields
.field static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections/Closure;

.field private final iDefault:Lorg/apache/commons/collections/Closure;

.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V
    .locals 0
    .parameter "predicates"
    .parameter "closures"
    .parameter "defaultClosure"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    .line 125
    iput-object p2, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    .line 126
    if-nez p3, :cond_0

    sget-object p3, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .end local p3
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    .line 127
    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 9
    .parameter "predicatesAndClosures"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, closures:[Lorg/apache/commons/collections/Closure;
    const/4 v5, 0x0

    .line 90
    .local v5, preds:[Lorg/apache/commons/collections/Predicate;
    if-nez p0, :cond_0

    .line 91
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The predicate and closure map must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 94
    sget-object v1, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .line 111
    :cond_1
    :goto_0
    return-object v1

    .line 97
    :cond_2
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/Closure;

    .line 98
    .local v1, defaultClosure:Lorg/apache/commons/collections/Closure;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v6

    .line 99
    .local v6, size:I
    if-nez v6, :cond_3

    .line 100
    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    goto :goto_0

    .line 102
    :cond_3
    new-array v0, v6, [Lorg/apache/commons/collections/Closure;

    .line 103
    new-array v5, v6, [Lorg/apache/commons/collections/Predicate;

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, i:I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 111
    new-instance v7, Lorg/apache/commons/collections/functors/SwitchClosure;

    invoke-direct {v7, v5, v0, v1}, Lorg/apache/commons/collections/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    move-object v1, v7

    goto :goto_0

    .line 106
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Predicate;

    aput-object v7, v5, v3

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Closure;

    aput-object v7, v0, v3

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 2
    .parameter "predicates"
    .parameter "closures"
    .parameter "defaultClosure"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Predicate;)V

    .line 58
    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    .line 59
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate and closure arrays must be the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_2

    .line 63
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .line 67
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 65
    .restart local p2
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 66
    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;

    move-result-object p1

    .line 67
    new-instance v0, Lorg/apache/commons/collections/functors/SwitchClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 142
    :goto_1
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getClosures()[Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getDefaultClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method
