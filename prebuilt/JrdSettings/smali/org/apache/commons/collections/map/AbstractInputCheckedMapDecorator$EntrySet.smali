.class Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;
.super Lorg/apache/commons/collections/set/AbstractSetDecorator;
.source "AbstractInputCheckedMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .parameter "set"
    .parameter "parent"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 117
    iput-object p2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    .line 118
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 125
    iget-object v2, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 129
    return-object v0

    .line 127
    :cond_0
    new-instance v3, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    aput-object v3, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter "array"

    .prologue
    const/4 v5, 0x0

    .line 133
    move-object v1, p1

    .line 134
    .local v1, result:[Ljava/lang/Object;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .line 139
    .restart local v1       #result:[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 145
    array-length v2, v1

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 154
    .end local v1           #result:[Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 141
    .restart local v1       #result:[Ljava/lang/Object;
    :cond_1
    new-instance v3, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;

    aget-object v2, v1, v0

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    aput-object v3, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    array-length v2, v1

    invoke-static {v1, v5, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v2, p1

    array-length v3, v1

    if-le v2, v3, :cond_3

    .line 152
    array-length v2, v1

    const/4 v3, 0x0

    aput-object v3, p1, v2

    :cond_3
    move-object v1, p1

    .line 154
    goto :goto_1
.end method
