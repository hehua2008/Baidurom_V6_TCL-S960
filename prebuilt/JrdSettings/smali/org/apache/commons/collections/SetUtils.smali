.class public Lorg/apache/commons/collections/SetUtils;
.super Ljava/lang/Object;
.source "SetUtils.java"


# static fields
.field public static final EMPTY_SET:Ljava/util/Set;

.field public static final EMPTY_SORTED_SET:Ljava/util/SortedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lorg/apache/commons/collections/SetUtils;->EMPTY_SET:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/SetUtils;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static hashCodeForSet(Ljava/util/Collection;)I
    .locals 4
    .parameter "set"

    .prologue
    .line 122
    if-nez p0, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 135
    :cond_0
    return v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 126
    .local v0, hashCode:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 129
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public static isEqualSet(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .parameter "set1"
    .parameter "set2"

    .prologue
    .line 99
    if-ne p0, p1, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static orderedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "set"

    .prologue
    .line 236
    invoke-static {p0}, Lorg/apache/commons/collections/set/ListOrderedSet;->decorate(Ljava/util/Set;)Lorg/apache/commons/collections/set/ListOrderedSet;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSet(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)Ljava/util/Set;
    .locals 1
    .parameter "set"
    .parameter "predicate"

    .prologue
    .line 192
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/PredicatedSet;->decorate(Ljava/util/Set;Lorg/apache/commons/collections/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"
    .parameter "predicate"

    .prologue
    .line 293
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/PredicatedSortedSet;->decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "set"

    .prologue
    .line 162
    invoke-static {p0}, Lorg/apache/commons/collections/set/SynchronizedSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"

    .prologue
    .line 263
    invoke-static {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSet(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;
    .locals 1
    .parameter "set"
    .parameter "transformer"

    .prologue
    .line 221
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TransformedSet;->decorate(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"
    .parameter "transformer"

    .prologue
    .line 322
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TransformedSortedSet;->decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static typedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .parameter "set"
    .parameter "type"

    .prologue
    .line 205
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TypedSet;->decorate(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static typedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"
    .parameter "type"

    .prologue
    .line 306
    invoke-static {p0, p1}, Lorg/apache/commons/collections/set/TypedSortedSet;->decorate(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "set"

    .prologue
    .line 175
    invoke-static {p0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"

    .prologue
    .line 276
    invoke-static {p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;->decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
