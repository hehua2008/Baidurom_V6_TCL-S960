.class public Lorg/apache/commons/collections/IteratorUtils;
.super Ljava/lang/Object;
.source "IteratorUtils.java"


# static fields
.field public static final EMPTY_ITERATOR:Lorg/apache/commons/collections/ResettableIterator;

.field public static final EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections/ResettableListIterator;

.field public static final EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections/MapIterator;

.field public static final EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections/OrderedIterator;

.field public static final EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections/OrderedMapIterator;

.field static class$java$util$Iterator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections/ResettableIterator;

    .line 89
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections/ResettableListIterator;

    .line 93
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections/OrderedIterator;

    .line 97
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections/MapIterator;

    .line 101
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections/OrderedMapIterator;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static arrayIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "array"

    .prologue
    .line 236
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayIterator(Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "array"
    .parameter "start"

    .prologue
    .line 271
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayIterator(Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 308
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "array"

    .prologue
    .line 221
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "array"
    .parameter "start"

    .prologue
    .line 253
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 289
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1
    .parameter "array"

    .prologue
    .line 335
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1
    .parameter "array"
    .parameter "start"

    .prologue
    .line 365
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 399
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayListIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1
    .parameter "array"

    .prologue
    .line 320
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1
    .parameter "array"
    .parameter "start"

    .prologue
    .line 348
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 380
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .locals 2
    .parameter "iterator"

    .prologue
    .line 729
    if-nez p0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static asIterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 2
    .parameter "enumeration"

    .prologue
    .line 697
    if-nez p0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Enumeration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static asIterator(Ljava/util/Enumeration;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 2
    .parameter "enumeration"
    .parameter "removeCollection"

    .prologue
    .line 712
    if-nez p0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Enumeration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_0
    if-nez p1, :cond_1

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static chainedIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterators"

    .prologue
    .line 478
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static chainedIterator(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterator1"
    .parameter "iterator2"

    .prologue
    .line 453
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static chainedIterator([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterators"

    .prologue
    .line 465
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>([Ljava/util/Iterator;)V

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static collatedIterator(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter "comparator"
    .parameter "iterators"

    .prologue
    .line 539
    new-instance v0, Lorg/apache/commons/collections/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "comparator"
    .parameter "iterator1"
    .parameter "iterator2"

    .prologue
    .line 500
    new-instance v0, Lorg/apache/commons/collections/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;[Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "comparator"
    .parameter "iterators"

    .prologue
    .line 519
    new-instance v0, Lorg/apache/commons/collections/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static emptyIterator()Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections/ResettableIterator;

    return-object v0
.end method

.method public static emptyListIterator()Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections/ResettableListIterator;

    return-object v0
.end method

.method public static emptyMapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections/MapIterator;

    return-object v0
.end method

.method public static emptyOrderedIterator()Lorg/apache/commons/collections/OrderedIterator;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections/OrderedIterator;

    return-object v0
.end method

.method public static emptyOrderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0
.end method

.method public static filteredIterator(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)Ljava/util/Iterator;
    .locals 2
    .parameter "iterator"
    .parameter "predicate"

    .prologue
    .line 638
    if-nez p0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    if-nez p1, :cond_1

    .line 642
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/FilterIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method public static filteredListIterator(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)Ljava/util/ListIterator;
    .locals 2
    .parameter "listIterator"
    .parameter "predicate"

    .prologue
    .line 659
    if-nez p0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ListIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    if-nez p1, :cond_1

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/FilterListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/FilterListIterator;-><init>(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method public static getIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 5
    .parameter "obj"

    .prologue
    .line 854
    if-nez p0, :cond_0

    .line 855
    invoke-static {}, Lorg/apache/commons/collections/IteratorUtils;->emptyIterator()Lorg/apache/commons/collections/ResettableIterator;

    move-result-object p0

    .line 890
    .end local p0
    :goto_0
    return-object p0

    .line 857
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    .line 858
    check-cast p0, Ljava/util/Iterator;

    goto :goto_0

    .line 860
    :cond_1
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 861
    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    .line 863
    .restart local p0
    :cond_2
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 864
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    check-cast p0, [Ljava/lang/Object;

    .end local p0
    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 866
    .restart local p0
    :cond_3
    instance-of v2, p0, Ljava/util/Enumeration;

    if-eqz v2, :cond_4

    .line 867
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    check-cast p0, Ljava/util/Enumeration;

    .end local p0
    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    move-object p0, v0

    goto :goto_0

    .line 869
    .restart local p0
    :cond_4
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 870
    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    .line 872
    .restart local p0
    :cond_5
    instance-of v2, p0, Ljava/util/Dictionary;

    if-eqz v2, :cond_6

    .line 873
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    check-cast p0, Ljava/util/Dictionary;

    .end local p0
    invoke-virtual {p0}, Ljava/util/Dictionary;->elements()Ljava/util/Enumeration;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    move-object p0, v0

    goto :goto_0

    .line 875
    .restart local p0
    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 876
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 880
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "iterator"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 881
    .local v1, method:Ljava/lang/reflect/Method;
    sget-object v2, Lorg/apache/commons/collections/IteratorUtils;->class$java$util$Iterator:Ljava/lang/Class;

    if-nez v2, :cond_8

    const-string v2, "java.util.Iterator"

    invoke-static {v2}, Lorg/apache/commons/collections/IteratorUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/collections/IteratorUtils;->class$java$util$Iterator:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 882
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 883
    .local v0, it:Ljava/util/Iterator;
    if-eqz v0, :cond_9

    move-object p0, v0

    .line 884
    goto/16 :goto_0

    .line 881
    .end local v0           #it:Ljava/util/Iterator;
    :cond_8
    sget-object v2, Lorg/apache/commons/collections/IteratorUtils;->class$java$util$Iterator:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 887
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 890
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/collections/IteratorUtils;->singletonIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static loopingIterator(Ljava/util/Collection;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 2
    .parameter "coll"

    .prologue
    .line 682
    if-nez p0, :cond_0

    .line 683
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/LoopingIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/LoopingIterator;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static objectGraphIterator(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)Ljava/util/Iterator;
    .locals 1
    .parameter "root"
    .parameter "transformer"

    .prologue
    .line 598
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;-><init>(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1
    .parameter "object"

    .prologue
    .line 192
    new-instance v0, Lorg/apache/commons/collections/iterators/SingletonIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/SingletonIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 1
    .parameter "object"

    .prologue
    .line 205
    new-instance v0, Lorg/apache/commons/collections/iterators/SingletonListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/SingletonListIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toArray(Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 3
    .parameter "iterator"

    .prologue
    .line 763
    if-nez p0, :cond_0

    .line 764
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Iterator must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    :cond_0
    const/16 v1, 0x64

    invoke-static {p0, v1}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    .line 767
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .parameter "iterator"
    .parameter "arrayClass"

    .prologue
    .line 784
    if-nez p0, :cond_0

    .line 785
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Iterator must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_0
    if-nez p1, :cond_1

    .line 788
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Array class must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_1
    const/16 v1, 0x64

    invoke-static {p0, v1}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    .line 791
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 1
    .parameter "iterator"

    .prologue
    .line 805
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toList(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 3
    .parameter "iterator"
    .parameter "estimatedSize"

    .prologue
    .line 821
    if-nez p0, :cond_0

    .line 822
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Iterator must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_0
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 825
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Estimated size must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    .local v0, list:Ljava/util/List;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 831
    return-object v0

    .line 829
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toListIterator(Ljava/util/Iterator;)Ljava/util/ListIterator;
    .locals 2
    .parameter "iterator"

    .prologue
    .line 746
    if-nez p0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Iterator;
    .locals 2
    .parameter "iterator"
    .parameter "transform"

    .prologue
    .line 615
    if-nez p0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    if-nez p1, :cond_1

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/TransformIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterator"

    .prologue
    .line 413
    invoke-static {p0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;
    .locals 1
    .parameter "listIterator"

    .prologue
    .line 426
    invoke-static {p0}, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->decorate(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableMapIterator(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;
    .locals 1
    .parameter "mapIterator"

    .prologue
    .line 438
    invoke-static {p0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method
