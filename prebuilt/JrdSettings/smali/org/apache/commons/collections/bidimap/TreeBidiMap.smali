.class public Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedBidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;,
        Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I = 0x0

.field private static final INVERSEMAPENTRY:I = 0x3

.field private static final KEY:I = 0x0

.field private static final MAPENTRY:I = 0x2

.field private static final NUMBER_OF_INDICES:I = 0x2

.field private static final SUM_OF_INDICES:I = 0x1

.field private static final VALUE:I = 0x1

.field private static final dataName:[Ljava/lang/String;


# instance fields
.field private entrySet:Ljava/util/Set;

.field private inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

.field private keySet:Ljava/util/Set;

.field private modifications:I

.field private nodeCount:I

.field private rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field private valuesSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 87
    iput v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 88
    iput v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 87
    iput v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 88
    iput v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->putAll(Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method static access$1300(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method static access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$1500(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    return v0
.end method

.method static access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    return-object v0
.end method

.method static access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    return-void
.end method

.method static access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$2300(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result v0

    return v0
.end method

.method static access$2400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method static access$2500(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    return-void
.end method

.method static access$2600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static access$2700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static access$2800(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doHashCode(I)I

    move-result v0

    return v0
.end method

.method static access$2900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1278
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1279
    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1304
    invoke-static {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 1305
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 1306
    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 3
    .parameter "o"
    .parameter "index"

    .prologue
    .line 1261
    if-nez p0, :cond_0

    .line 1262
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_0
    instance-of v0, p0, Ljava/lang/Comparable;

    if-nez v0, :cond_1

    .line 1265
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->dataName:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " must be Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_1
    return-void
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1290
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1291
    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 698
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "from"
    .parameter "to"
    .parameter "index"

    .prologue
    .line 745
    if-eqz p1, :cond_0

    .line 746
    if-nez p0, :cond_1

    .line 748
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0
.end method

.method private doEquals(Ljava/lang/Object;I)Z
    .locals 9
    .parameter "obj"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1383
    if-ne p1, p0, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return v5

    .line 1386
    :cond_1
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_2

    move v5, v6

    .line 1387
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 1389
    check-cast v3, Ljava/util/Map;

    .line 1390
    .local v3, other:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 1391
    goto :goto_0

    .line 1394
    :cond_3
    iget v7, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v7, :cond_0

    .line 1396
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .local v1, it:Lorg/apache/commons/collections/MapIterator;
    :cond_4
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1397
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1398
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1399
    .local v4, value:Ljava/lang/Object;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 1400
    goto :goto_0

    .line 1404
    .end local v1           #it:Lorg/apache/commons/collections/MapIterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/ClassCastException;
    move v5, v6

    goto :goto_0

    .line 1406
    .end local v0           #ex:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/NullPointerException;
    move v5, v6

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "index"

    .prologue
    .line 490
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 491
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 492
    .local v0, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    goto :goto_0
.end method

.method private doHashCode(I)I
    .locals 6
    .parameter "type"

    .prologue
    .line 1419
    const/4 v2, 0x0

    .line 1420
    .local v2, total:I
    iget v4, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-lez v4, :cond_0

    .line 1421
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1427
    .end local v0           #it:Lorg/apache/commons/collections/MapIterator;
    :cond_0
    return v2

    .line 1422
    .restart local v0       #it:Lorg/apache/commons/collections/MapIterator;
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1423
    .local v1, key:Ljava/lang/Object;
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1424
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v2, v4

    goto :goto_0
.end method

.method private doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 8
    .parameter "key"
    .parameter "value"
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 504
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    if-nez p3, :cond_0

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v3

    .line 508
    .local v3, prev:Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    .line 509
    invoke-direct {p0, p2, v7}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    .line 511
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v2, v5, v6

    .line 512
    .local v2, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v2, :cond_2

    .line 514
    new-instance v4, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v4, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 515
    .local v4, root:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v4, v5, v6

    .line 516
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v4, v5, v7

    .line 517
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    .line 558
    .end local v4           #root:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    return-object v3

    .line 507
    .end local v2           #node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .end local v3           #prev:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p2, v7}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 527
    .local v0, cmp:I
    .restart local v2       #node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .restart local v3       #prev:Ljava/lang/Object;
    :cond_1
    if-gez v0, :cond_4

    .line 528
    invoke-static {v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 529
    invoke-static {v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    .line 522
    .end local v0           #cmp:I
    :cond_2
    :goto_2
    invoke-static {v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 524
    .restart local v0       #cmp:I
    if-nez v0, :cond_1

    .line 526
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cannot store a duplicate key (\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\") in this Map"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 531
    :cond_3
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 533
    .local v1, newNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 534
    invoke-static {v2, v1, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 535
    invoke-static {v1, v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 536
    invoke-direct {p0, v1, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    goto :goto_1

    .line 542
    .end local v1           #newNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_4
    invoke-static {v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 543
    invoke-static {v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    goto :goto_2

    .line 545
    :cond_5
    new-instance v1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 547
    .restart local v1       #newNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 548
    invoke-static {v2, v1, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 549
    invoke-static {v1, v2, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 550
    invoke-direct {p0, v1, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 551
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->grow()V

    goto :goto_1
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 4
    .parameter "deletedNode"

    .prologue
    const/4 v3, 0x0

    .line 1011
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1065
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->shrink()V

    .line 1066
    return-void

    .line 1014
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1015
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->swapPosition(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1018
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1021
    .local v1, replacement:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    if-eqz v1, :cond_6

    .line 1022
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1024
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1025
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v1, v2, v0

    .line 1032
    :goto_2
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1033
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1034
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1036
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1011
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1018
    .end local v1           #replacement:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_3
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_1

    .line 1026
    .restart local v1       #replacement:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 1027
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_2

    .line 1029
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_2

    .line 1042
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1045
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v3, v2, v0

    goto :goto_3

    .line 1049
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1050
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1053
    :cond_8
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1054
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 1055
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1060
    :goto_4
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1057
    :cond_9
    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_4
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 3
    .parameter "replacementNode"
    .parameter "index"

    .prologue
    .line 1078
    move-object v0, p1

    .line 1080
    .local v0, currentNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v2, v2, p2

    if-eq v0, v2, :cond_0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1148
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1149
    return-void

    .line 1081
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1082
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1084
    .local v1, siblingNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1085
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1086
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1087
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1089
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1092
    :cond_2
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1094
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1096
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1098
    :cond_3
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1099
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1100
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1101
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1103
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1106
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1107
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1108
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1109
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1111
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v2, p2

    goto/16 :goto_0

    .line 1114
    .end local v1           #siblingNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1116
    .restart local v1       #siblingNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1117
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1118
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1119
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1121
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1124
    :cond_6
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1126
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1128
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto/16 :goto_0

    .line 1130
    :cond_7
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1131
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1132
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1133
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1135
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1138
    :cond_8
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1139
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1140
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1141
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1143
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v2, p2

    goto/16 :goto_0
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 3
    .parameter "insertedNode"
    .parameter "index"

    .prologue
    .line 944
    move-object v0, p1

    .line 945
    .local v0, currentNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 949
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v2, v2, p2

    if-eq v0, v2, :cond_1

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1001
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v2, v2, p2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1002
    return-void

    .line 950
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 951
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 953
    .local v1, y:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 954
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 955
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 956
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 958
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    .line 960
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 961
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 963
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 966
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 967
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 969
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 970
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 976
    .end local v1           #y:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 978
    .restart local v1       #y:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 979
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 980
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 981
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 983
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto/16 :goto_0

    .line 985
    :cond_6
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 986
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 988
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 991
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 992
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 994
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 995
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto/16 :goto_0
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3
    .parameter "o"
    .parameter "index"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 573
    .local v0, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    const/4 v1, 0x0

    .line 574
    .local v1, rval:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 575
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->oppositeIndex(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    .line 576
    .local v1, rval:Ljava/lang/Comparable;
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackDelete(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 578
    .end local v1           #rval:Ljava/lang/Comparable;
    :cond_0
    return-object v1
.end method

.method private doToString(I)Ljava/lang/String;
    .locals 7
    .parameter "type"

    .prologue
    .line 1437
    iget v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v5, :cond_0

    .line 1438
    const-string v5, "{}"

    .line 1458
    :goto_0
    return-object v5

    .line 1440
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    mul-int/lit8 v5, v5, 0x20

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1441
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1442
    new-instance v2, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    .line 1443
    .local v2, it:Lorg/apache/commons/collections/MapIterator;
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    .line 1444
    .local v1, hasNext:Z
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1457
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1458
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1445
    :cond_2
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1446
    .local v3, key:Ljava/lang/Object;
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1447
    .local v4, value:Ljava/lang/Object;
    if-ne v3, p0, :cond_3

    const-string v3, "(this Map)"

    .end local v3           #key:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    if-ne v4, p0, :cond_4

    const-string v4, "(this Map)"

    .end local v4           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1451
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    .line 1452
    if-eqz v1, :cond_1

    .line 1453
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 809
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 842
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 820
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 831
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 727
    move-object v0, p0

    .line 728
    .local v0, rval:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v0, :cond_0

    .line 729
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 733
    :cond_0
    return-object v0

    .line 730
    :cond_1
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private grow()V
    .locals 1

    .prologue
    .line 1321
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 1322
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 1323
    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V
    .locals 6
    .parameter "newNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1342
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v2, v5

    .line 1345
    .local v1, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    invoke-static {p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1347
    .local v0, cmp:I
    if-nez v0, :cond_0

    .line 1348
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot store a duplicate value (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1350
    :cond_0
    if-gez v0, :cond_2

    .line 1351
    invoke-static {v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1352
    invoke-static {v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_0

    .line 1354
    :cond_1
    invoke-static {v1, p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1355
    invoke-static {p1, v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1356
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1372
    :goto_1
    return-void

    .line 1361
    :cond_2
    invoke-static {v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1362
    invoke-static {v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_0

    .line 1364
    :cond_3
    invoke-static {v1, p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1365
    invoke-static {p1, v1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1366
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRedBlackInsert(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_1
.end method

.method private static isBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 774
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 3
    .parameter "node"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 857
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 763
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$900(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 3
    .parameter "node"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 875
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 710
    move-object v0, p0

    .line 711
    .local v0, rval:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v0, :cond_0

    .line 712
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 716
    :cond_0
    return-object v0

    .line 713
    :cond_1
    invoke-static {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 4
    .parameter "data"
    .parameter "index"

    .prologue
    .line 590
    const/4 v2, 0x0

    .line 591
    .local v2, rval:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v1, v3, p2

    .line 593
    .local v1, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_0
    if-nez v1, :cond_0

    .line 603
    :goto_1
    return-object v2

    .line 594
    :cond_0
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 595
    .local v0, cmp:I
    if-nez v0, :cond_1

    .line 596
    move-object v2, v1

    .line 597
    goto :goto_1

    .line 599
    :cond_1
    if-gez v0, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_2
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_2
.end method

.method private static makeBlack(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "node"
    .parameter "index"

    .prologue
    .line 796
    if-eqz p0, :cond_0

    .line 797
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 799
    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "node"
    .parameter "index"

    .prologue
    .line 784
    if-eqz p0, :cond_0

    .line 785
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 787
    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modifications:I

    .line 1315
    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 4
    .parameter "node"
    .parameter "index"

    .prologue
    .line 614
    const/4 v2, 0x0

    .line 615
    .local v2, rval:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez p1, :cond_0

    .line 616
    const/4 v2, 0x0

    .line 637
    :goto_0
    return-object v2

    .line 617
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 620
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    goto :goto_0

    .line 628
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 629
    .local v1, parent:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    move-object v0, p1

    .line 631
    .local v0, child:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 635
    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 632
    :cond_3
    move-object v0, v1

    .line 633
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_1
.end method

.method private nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 4
    .parameter "node"
    .parameter "index"

    .prologue
    .line 648
    const/4 v2, 0x0

    .line 649
    .local v2, rval:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez p1, :cond_0

    .line 650
    const/4 v2, 0x0

    .line 671
    :goto_0
    return-object v2

    .line 651
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 654
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    goto :goto_0

    .line 662
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 663
    .local v1, parent:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    move-object v0, p1

    .line 665
    .local v0, child:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 669
    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 666
    :cond_3
    move-object v0, v1

    .line 667
    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    goto :goto_1
.end method

.method private static oppositeIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 685
    rsub-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private rotateLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 888
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 889
    .local v0, rightChild:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 891
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 892
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 894
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 896
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 898
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v0, v1, p2

    .line 905
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 906
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 907
    return-void

    .line 899
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 900
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 902
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0
.end method

.method private rotateRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 916
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 917
    .local v0, leftChild:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 918
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 919
    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 921
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 923
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 925
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v0, v1, p2

    .line 932
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 933
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 934
    return-void

    .line 926
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 927
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0

    .line 929
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_0
.end method

.method private shrink()V
    .locals 1

    .prologue
    .line 1329
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 1330
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 1331
    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1162
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1163
    .local v1, xFormerParent:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1164
    .local v0, xFormerLeftChild:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v2

    .line 1165
    .local v2, xFormerRightChild:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v5

    .line 1166
    .local v5, yFormerParent:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v4

    .line 1167
    .local v4, yFormerLeftChild:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v6

    .line 1168
    .local v6, yFormerRightChild:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v10

    invoke-static {v10, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v10

    if-ne p1, v10, :cond_5

    move v3, v8

    .line 1169
    .local v3, xWasLeftChild:Z
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v10

    invoke-static {v10, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v10

    if-ne p2, v10, :cond_6

    move v7, v8

    .line 1172
    .local v7, yWasLeftChild:Z
    :goto_1
    if-ne p1, v5, :cond_8

    .line 1173
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1175
    if-eqz v7, :cond_7

    .line 1176
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1177
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1197
    :goto_2
    if-ne p2, v1, :cond_c

    .line 1198
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1200
    if-eqz v3, :cond_b

    .line 1201
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1202
    invoke-static {p1, v6, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1223
    :goto_3
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1224
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1227
    :cond_0
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1228
    invoke-static {p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1231
    :cond_1
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1232
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1235
    :cond_2
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1236
    invoke-static {p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1239
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$1200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1242
    iget-object v8, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v8, v8, p3

    if-ne v8, p1, :cond_f

    .line 1243
    iget-object v8, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p2, v8, p3

    .line 1247
    :cond_4
    :goto_4
    return-void

    .end local v3           #xWasLeftChild:Z
    .end local v7           #yWasLeftChild:Z
    :cond_5
    move v3, v9

    .line 1168
    goto :goto_0

    .restart local v3       #xWasLeftChild:Z
    :cond_6
    move v7, v9

    .line 1169
    goto :goto_1

    .line 1179
    .restart local v7       #yWasLeftChild:Z
    :cond_7
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1180
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_2

    .line 1183
    :cond_8
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1185
    if-eqz v5, :cond_9

    .line 1186
    if-eqz v7, :cond_a

    .line 1187
    invoke-static {v5, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1193
    :cond_9
    :goto_5
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1194
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_2

    .line 1189
    :cond_a
    invoke-static {v5, p1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_5

    .line 1204
    :cond_b
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1205
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1208
    :cond_c
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1210
    if-eqz v1, :cond_d

    .line 1211
    if-eqz v3, :cond_e

    .line 1212
    invoke-static {v1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1218
    :cond_d
    :goto_6
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    .line 1219
    invoke-static {p1, v6, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_3

    .line 1214
    :cond_e
    invoke-static {v1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    goto :goto_6

    .line 1244
    :cond_f
    iget-object v8, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v8, v8, p3

    if-ne v8, p2, :cond_4

    .line 1245
    iget-object v8, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v8, p3

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->modify()V

    .line 244
    iput v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    .line 245
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object v2, v0, v1

    .line 246
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 247
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 146
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkValue(Ljava/lang/Object;)V

    .line 161
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    .line 396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doEquals(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->leastNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 177
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 263
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doHashCode(I)I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;

    invoke-direct {v0, p0, v1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->rootNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->greatestNode(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    .line 411
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    goto :goto_0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 318
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextGreater(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 319
    .local v0, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    .line 425
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    goto :goto_0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->checkKey(Ljava/lang/Object;)V

    .line 332
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nextSmaller(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 333
    .local v0, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 205
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doPut(Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter "map"

    .prologue
    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    return-void

    .line 218
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 235
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 278
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->nodeCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->doToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->valuesSet:Ljava/util/Set;

    return-object v0
.end method
