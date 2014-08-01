.class public Lorg/apache/commons/collections/PredicateUtils;
.super Ljava/lang/Object;
.source "PredicateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static allPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 293
    invoke-static {p0}, Lorg/apache/commons/collections/functors/AllPredicate;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static allPredicate([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 277
    invoke-static {p0}, Lorg/apache/commons/collections/functors/AllPredicate;->getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static andPredicate(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicate1"
    .parameter "predicate2"

    .prologue
    .line 261
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/AndPredicate;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static anyPredicate(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 340
    invoke-static {p0}, Lorg/apache/commons/collections/functors/AnyPredicate;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static anyPredicate([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 324
    invoke-static {p0}, Lorg/apache/commons/collections/functors/AnyPredicate;->getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static asPredicate(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "transformer"

    .prologue
    .line 466
    invoke-static {p0}, Lorg/apache/commons/collections/functors/TransformerPredicate;->getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static eitherPredicate(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "predicate1"
    .parameter "predicate2"

    .prologue
    .line 355
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/commons/collections/PredicateUtils;->onePredicate([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    invoke-static {p0}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public static falsePredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/apache/commons/collections/functors/FalsePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public static identityPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "value"

    .prologue
    .line 165
    invoke-static {p0}, Lorg/apache/commons/collections/functors/IdentityPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static instanceofPredicate(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "type"

    .prologue
    .line 180
    invoke-static {p0}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static invokerPredicate(Ljava/lang/String;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "methodName"

    .prologue
    .line 218
    invoke-static {p0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/PredicateUtils;->asPredicate(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static invokerPredicate(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/PredicateUtils;->asPredicate(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static neitherPredicate(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "predicate1"
    .parameter "predicate2"

    .prologue
    .line 402
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/commons/collections/PredicateUtils;->nonePredicate([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static nonePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 434
    invoke-static {p0}, Lorg/apache/commons/collections/functors/NonePredicate;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static nonePredicate([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 418
    invoke-static {p0}, Lorg/apache/commons/collections/functors/NonePredicate;->getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static notNullPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/apache/commons/collections/functors/NotNullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public static notPredicate(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicate"

    .prologue
    .line 448
    invoke-static {p0}, Lorg/apache/commons/collections/functors/NotPredicate;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static nullIsExceptionPredicate(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicate"

    .prologue
    .line 484
    invoke-static {p0}, Lorg/apache/commons/collections/functors/NullIsExceptionPredicate;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static nullIsFalsePredicate(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicate"

    .prologue
    .line 499
    invoke-static {p0}, Lorg/apache/commons/collections/functors/NullIsFalsePredicate;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static nullIsTruePredicate(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicate"

    .prologue
    .line 514
    invoke-static {p0}, Lorg/apache/commons/collections/functors/NullIsTruePredicate;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static nullPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public static onePredicate(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 387
    invoke-static {p0}, Lorg/apache/commons/collections/functors/OnePredicate;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static onePredicate([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicates"

    .prologue
    .line 371
    invoke-static {p0}, Lorg/apache/commons/collections/functors/OnePredicate;->getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static orPredicate(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "predicate1"
    .parameter "predicate2"

    .prologue
    .line 308
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/OrPredicate;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static transformedPredicate(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "transformer"
    .parameter "predicate"

    .prologue
    .line 532
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/TransformedPredicate;->getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static truePredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/apache/commons/collections/functors/TruePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public static uniquePredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lorg/apache/commons/collections/functors/UniquePredicate;->getInstance()Lorg/apache/commons/collections/Predicate;

    move-result-object v0

    return-object v0
.end method
