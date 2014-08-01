.class public Lorg/apache/commons/collections/TransformerUtils;
.super Ljava/lang/Object;
.source "TransformerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "closure"

    .prologue
    .line 152
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ClosureTransformer;->getInstance(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "factory"

    .prologue
    .line 180
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "predicate"

    .prologue
    .line 166
    invoke-static {p0}, Lorg/apache/commons/collections/functors/PredicateTransformer;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "transformers"

    .prologue
    .line 226
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "transformer1"
    .parameter "transformer2"

    .prologue
    .line 195
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "transformers"

    .prologue
    .line 210
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static cloneTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "constantToReturn"

    .prologue
    .line 138
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ConstantTransformer;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static instantiateTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 374
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->getInstance([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "methodName"

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 425
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "map"

    .prologue
    .line 388
    invoke-static {p0}, Lorg/apache/commons/collections/functors/MapTransformer;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static nopTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static nullTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static stringValueTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lorg/apache/commons/collections/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static switchMapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 9
    .parameter "objectsAndTransformers"

    .prologue
    .line 331
    const/4 v6, 0x0

    .line 332
    .local v6, trs:[Lorg/apache/commons/collections/Transformer;
    const/4 v4, 0x0

    .line 333
    .local v4, preds:[Lorg/apache/commons/collections/Predicate;
    if-nez p0, :cond_0

    .line 334
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The object and transformer map must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 336
    :cond_0
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    .line 337
    .local v0, def:Lorg/apache/commons/collections/Transformer;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    .line 338
    .local v5, size:I
    new-array v6, v5, [Lorg/apache/commons/collections/Transformer;

    .line 339
    new-array v4, v5, [Lorg/apache/commons/collections/Predicate;

    .line 340
    const/4 v2, 0x0

    .line 341
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

    .line 347
    invoke-static {v4, v6, v0}, Lorg/apache/commons/collections/TransformerUtils;->switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v7

    return-object v7

    .line 342
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 343
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v7

    aput-object v7, v4, v2

    .line 344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Transformer;

    aput-object v7, v6, v2

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "predicatesAndTransformers"

    .prologue
    .line 310
    invoke-static {p0}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 3
    .parameter "predicate"
    .parameter "trueTransformer"
    .parameter "falseTransformer"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    new-array v0, v1, [Lorg/apache/commons/collections/Predicate;

    aput-object p0, v0, v2

    new-array v1, v1, [Lorg/apache/commons/collections/Transformer;

    aput-object p1, v1, v2

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "predicates"
    .parameter "transformers"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "predicates"
    .parameter "transformers"
    .parameter "defaultTransformer"

    .prologue
    .line 285
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method
