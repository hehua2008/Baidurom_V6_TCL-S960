.class public Lorg/apache/commons/collections/ClosureUtils;
.super Ljava/lang/Object;
.source "ClosureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "transformer"

    .prologue
    .line 99
    invoke-static {p0}, Lorg/apache/commons/collections/functors/TransformerClosure;->getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "closures"

    .prologue
    .line 226
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "closure1"
    .parameter "closure2"

    .prologue
    .line 194
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "closures"

    .prologue
    .line 209
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static doWhileClosure(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "closure"
    .parameter "predicate"

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lorg/apache/commons/collections/functors/WhileClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public static forClosure(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "count"
    .parameter "closure"

    .prologue
    .line 114
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ForClosure;->getInstance(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static ifClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "predicate"
    .parameter "trueClosure"
    .parameter "falseClosure"

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static invokerClosure(Ljava/lang/String;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "methodName"

    .prologue
    .line 160
    invoke-static {p0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/ClosureUtils;->asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static invokerClosure(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 179
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/ClosureUtils;->asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static nopClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "predicatesAndClosures"

    .prologue
    .line 311
    invoke-static {p0}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "predicates"
    .parameter "closures"

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "predicates"
    .parameter "closures"
    .parameter "defaultClosure"

    .prologue
    .line 287
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchMapClosure(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 9
    .parameter "objectsAndClosures"

    .prologue
    .line 332
    const/4 v6, 0x0

    .line 333
    .local v6, trs:[Lorg/apache/commons/collections/Closure;
    const/4 v4, 0x0

    .line 334
    .local v4, preds:[Lorg/apache/commons/collections/Predicate;
    if-nez p0, :cond_0

    .line 335
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The object and closure map must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 337
    :cond_0
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Closure;

    .line 338
    .local v0, def:Lorg/apache/commons/collections/Closure;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    .line 339
    .local v5, size:I
    new-array v6, v5, [Lorg/apache/commons/collections/Closure;

    .line 340
    new-array v4, v5, [Lorg/apache/commons/collections/Predicate;

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, i:I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 348
    invoke-static {v4, v6, v0}, Lorg/apache/commons/collections/ClosureUtils;->switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v7

    return-object v7

    .line 343
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 344
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v7

    aput-object v7, v4, v2

    .line 345
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Closure;

    aput-object v7, v6, v2

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static whileClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "predicate"
    .parameter "closure"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/WhileClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method
