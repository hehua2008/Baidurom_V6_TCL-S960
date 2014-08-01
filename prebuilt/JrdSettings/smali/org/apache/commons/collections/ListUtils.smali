.class public Lorg/apache/commons/collections/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/apache/commons/collections/ListUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static fixedSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "list"

    .prologue
    .line 351
    invoke-static {p0}, Lorg/apache/commons/collections/list/FixedSizeList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static hashCodeForList(Ljava/util/Collection;)I
    .locals 6
    .parameter "list"

    .prologue
    const/4 v4, 0x0

    .line 207
    if-nez p0, :cond_0

    .line 218
    :goto_0
    return v4

    .line 210
    :cond_0
    const/4 v0, 0x1

    .line 211
    .local v0, hashCode:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 214
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v0

    .line 218
    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 216
    .local v2, obj:Ljava/lang/Object;
    mul-int/lit8 v5, v0, 0x1f

    if-nez v2, :cond_2

    move v3, v4

    :goto_2
    add-int v0, v5, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public static intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter "list1"
    .parameter "list2"

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, result:Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    return-object v2

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isEqualList(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 8
    .parameter "list1"
    .parameter "list2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v4

    .line 173
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    move v4, v5

    .line 174
    goto :goto_0

    .line 177
    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, it1:Ljava/util/Iterator;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    .local v1, it2:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 180
    .local v2, obj1:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 182
    .end local v2           #obj1:Ljava/lang/Object;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 191
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_6
    move v4, v5

    goto :goto_0

    .line 183
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 184
    .restart local v2       #obj1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, obj2:Ljava/lang/Object;
    if-nez v2, :cond_9

    if-nez v3, :cond_8

    move v6, v4

    :goto_1
    if-nez v6, :cond_4

    move v4, v5

    .line 187
    goto :goto_0

    :cond_8
    move v6, v5

    .line 186
    goto :goto_1

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "factory"

    .prologue
    .line 337
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/LazyList;->decorate(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedList(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "predicate"

    .prologue
    .line 275
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->decorate(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter "list1"
    .parameter "list2"

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v1, result:Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    return-object v1

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static sum(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter "list1"
    .parameter "list2"

    .prologue
    .line 121
    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->union(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/ListUtils;->intersection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/ListUtils;->subtract(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "list"

    .prologue
    .line 245
    invoke-static {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static transformedList(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "transformer"

    .prologue
    .line 304
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/TransformedList;->decorate(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static typedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "type"

    .prologue
    .line 288
    invoke-static {p0, p1}, Lorg/apache/commons/collections/list/TypedList;->decorate(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "list1"
    .parameter "list2"

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v0, result:Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "list"

    .prologue
    .line 258
    invoke-static {p0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
