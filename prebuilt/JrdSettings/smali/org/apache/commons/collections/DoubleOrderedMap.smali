.class public final Lorg/apache/commons/collections/DoubleOrderedMap;
.super Ljava/util/AbstractMap;
.source "DoubleOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/DoubleOrderedMap$Node;,
        Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I = 0x0

.field private static final KEY:I = 0x0

.field private static final NUMBER_OF_INDICES:I = 0x2

.field private static final SUM_OF_INDICES:I = 0x1

.field private static final VALUE:I = 0x1

.field private static final dataName:[Ljava/lang/String;


# instance fields
.field private collectionOfValues:[Ljava/util/Collection;

.field private modifications:I

.field private nodeCount:I

.field private rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private setOfEntries:[Ljava/util/Set;

.field private setOfKeys:[Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 116
    new-array v0, v4, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 117
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 118
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 119
    new-array v0, v4, [Ljava/util/Set;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    .line 120
    new-array v0, v4, [Ljava/util/Set;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    .line 121
    new-array v0, v4, [Ljava/util/Collection;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 116
    new-array v0, v4, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 117
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 118
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 119
    new-array v0, v4, [Ljava/util/Set;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    .line 120
    new-array v0, v4, [Ljava/util/Set;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    .line 121
    new-array v0, v4, [Ljava/util/Collection;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    .line 149
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method static access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    return v0
.end method

.method static access$2300(Lorg/apache/commons/collections/DoubleOrderedMap;)[Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object v0
.end method

.method static access$2400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$2500(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    return-void
.end method

.method static access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return v0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1172
    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1198
    invoke-static {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1199
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    .line 1200
    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 3
    .parameter "o"
    .parameter "index"

    .prologue
    .line 1151
    if-nez p0, :cond_0

    .line 1152
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

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

    .line 1156
    :cond_0
    instance-of v0, p0, Ljava/lang/Comparable;

    if-nez v0, :cond_1

    .line 1157
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

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

    .line 1160
    :cond_1
    return-void
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1184
    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 496
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .parameter "from"
    .parameter "to"
    .parameter "index"

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 575
    if-nez p0, :cond_1

    .line 578
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1100(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 2
    .parameter "o"
    .parameter "index"

    .prologue
    .line 431
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 433
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 435
    .local v0, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    goto :goto_0
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 4
    .parameter "deletedNode"

    .prologue
    const/4 v3, 0x0

    .line 876
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 939
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->shrink()V

    .line 940
    return-void

    .line 880
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 882
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 886
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 890
    .local v1, replacement:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_1
    if-eqz v1, :cond_6

    .line 891
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 893
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-nez v2, :cond_4

    .line 894
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v1, v2, v0

    .line 902
    :goto_2
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 903
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 904
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 906
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 907
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 876
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    .end local v1           #replacement:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_3
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_1

    .line 895
    .restart local v1       #replacement:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 897
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 899
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 912
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-nez v2, :cond_7

    .line 915
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v3, v2, v0

    goto :goto_3

    .line 919
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 920
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 923
    :cond_8
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 924
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-ne p1, v2, :cond_9

    .line 927
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 933
    :goto_4
    invoke-static {p1, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 929
    :cond_9
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_4
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 3
    .parameter "replacementNode"
    .parameter "index"

    .prologue
    .line 954
    move-object v0, p1

    .line 957
    .local v0, currentNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v2, v2, p2

    if-eq v0, v2, :cond_0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1032
    return-void

    .line 958
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 959
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 962
    .local v1, siblingNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 964
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 965
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 967
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 970
    :cond_2
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 973
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 975
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 977
    :cond_3
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 978
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 979
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 980
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 982
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 986
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 988
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 989
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 990
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 992
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v2, p2

    goto/16 :goto_0

    .line 995
    .end local v1           #siblingNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 997
    .restart local v1       #siblingNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 998
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 999
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1000
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1002
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1005
    :cond_6
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1007
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1009
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto/16 :goto_0

    .line 1011
    :cond_7
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1012
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1013
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1014
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1016
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1020
    :cond_8
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1022
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1023
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1024
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1026
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v2, p2

    goto/16 :goto_0
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 3
    .parameter "insertedNode"
    .parameter "index"

    .prologue
    .line 805
    move-object v0, p1

    .line 807
    .local v0, currentNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 810
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v2, v2, p2

    if-eq v0, v2, :cond_1

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 865
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v2, v2, p2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 866
    return-void

    .line 811
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 812
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 815
    .local v1, y:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 816
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 817
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 818
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 820
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 823
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 825
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 828
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 829
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 831
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 832
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 839
    .end local v1           #y:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 842
    .restart local v1       #y:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 843
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 844
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 845
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 847
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto/16 :goto_0

    .line 849
    :cond_6
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 850
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 852
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 855
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 856
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 858
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 859
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto/16 :goto_0
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3
    .parameter "o"
    .parameter "index"

    .prologue
    .line 407
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 408
    .local v0, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    const/4 v1, 0x0

    .line 410
    .local v1, rval:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    .line 413
    .local v1, rval:Ljava/lang/Comparable;
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 416
    .end local v1           #rval:Ljava/lang/Comparable;
    :cond_0
    return-object v1
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 647
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    return-object v0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 687
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 659
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 673
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private grow()V
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1218
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1219
    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 6
    .parameter "newNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1242
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v2, v5

    .line 1245
    .local v1, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    invoke-static {p1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1247
    .local v0, cmp:I
    if-nez v0, :cond_0

    .line 1248
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot store a duplicate value (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

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

    .line 1251
    :cond_0
    if-gez v0, :cond_2

    .line 1252
    invoke-static {v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1253
    invoke-static {v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_0

    .line 1255
    :cond_1
    invoke-static {v1, p1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1256
    invoke-static {p1, v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1257
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1273
    :goto_1
    return-void

    .line 1262
    :cond_2
    invoke-static {v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1263
    invoke-static {v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_0

    .line 1265
    :cond_3
    invoke-static {v1, p1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1266
    invoke-static {p1, v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1267
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_1
.end method

.method private static isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 608
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1300(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3
    .parameter "node"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 594
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3
    .parameter "node"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 725
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 511
    move-object v0, p0

    .line 513
    .local v0, rval:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-eqz v0, :cond_0

    .line 514
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 519
    :cond_0
    return-object v0

    .line 515
    :cond_1
    invoke-static {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 4
    .parameter "data"
    .parameter "index"

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, rval:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v3, p2

    .line 469
    .local v1, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    if-nez v1, :cond_0

    .line 483
    :goto_1
    return-object v2

    .line 470
    :cond_0
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 472
    .local v0, cmp:I
    if-nez v0, :cond_1

    .line 473
    move-object v2, v1

    .line 475
    goto :goto_1

    .line 477
    :cond_1
    if-gez v0, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_2
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_2
.end method

.method private static makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .parameter "node"
    .parameter "index"

    .prologue
    .line 634
    if-eqz p0, :cond_0

    .line 635
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 637
    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0
    .parameter "node"
    .parameter "index"

    .prologue
    .line 621
    if-eqz p0, :cond_0

    .line 622
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 624
    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 1209
    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 4
    .parameter "node"
    .parameter "index"

    .prologue
    .line 532
    const/4 v2, 0x0

    .line 534
    .local v2, rval:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-nez p1, :cond_0

    .line 535
    const/4 v2, 0x0

    .line 560
    :goto_0
    return-object v2

    .line 536
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 540
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    goto :goto_0

    .line 549
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 550
    .local v1, parent:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    move-object v0, p1

    .line 552
    .local v0, child:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 557
    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 553
    :cond_3
    move-object v0, v1

    .line 554
    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_1
.end method

.method private oppositeIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 452
    rsub-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 740
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 742
    .local v0, rightChild:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 744
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 748
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 750
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 753
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, v1, p2

    .line 760
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 761
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 762
    return-void

    .line 754
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 755
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 757
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0
.end method

.method private rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 772
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 774
    .local v0, leftChild:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 776
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 777
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 780
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 782
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 785
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, v1, p2

    .line 792
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 793
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 794
    return-void

    .line 786
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 787
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 789
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0
.end method

.method private shrink()V
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1228
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1229
    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1046
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1047
    .local v1, xFormerParent:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1048
    .local v0, xFormerLeftChild:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .line 1049
    .local v2, xFormerRightChild:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v5

    .line 1050
    .local v5, yFormerParent:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v4

    .line 1051
    .local v4, yFormerLeftChild:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    .line 1052
    .local v6, yFormerRightChild:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v10

    invoke-static {v10, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v10

    if-ne p1, v10, :cond_5

    move v3, v8

    .line 1055
    .local v3, xWasLeftChild:Z
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v10

    invoke-static {v10, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v10

    if-ne p2, v10, :cond_6

    move v7, v8

    .line 1060
    .local v7, yWasLeftChild:Z
    :goto_1
    if-ne p1, v5, :cond_8

    .line 1061
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1063
    if-eqz v7, :cond_7

    .line 1064
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1065
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1085
    :goto_2
    if-ne p2, v1, :cond_c

    .line 1086
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1088
    if-eqz v3, :cond_b

    .line 1089
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1090
    invoke-static {p1, v6, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1111
    :goto_3
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1112
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1115
    :cond_0
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1116
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1119
    :cond_1
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1120
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1123
    :cond_2
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1124
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1127
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1130
    iget-object v8, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v8, v8, p3

    if-ne v8, p1, :cond_f

    .line 1131
    iget-object v8, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object p2, v8, p3

    .line 1135
    :cond_4
    :goto_4
    return-void

    .end local v3           #xWasLeftChild:Z
    .end local v7           #yWasLeftChild:Z
    :cond_5
    move v3, v9

    .line 1052
    goto :goto_0

    .restart local v3       #xWasLeftChild:Z
    :cond_6
    move v7, v9

    .line 1055
    goto :goto_1

    .line 1067
    .restart local v7       #yWasLeftChild:Z
    :cond_7
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1068
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 1071
    :cond_8
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1073
    if-eqz v5, :cond_9

    .line 1074
    if-eqz v7, :cond_a

    .line 1075
    invoke-static {v5, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1081
    :cond_9
    :goto_5
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1082
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 1077
    :cond_a
    invoke-static {v5, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_5

    .line 1092
    :cond_b
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1093
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 1096
    :cond_c
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1098
    if-eqz v1, :cond_d

    .line 1099
    if-eqz v3, :cond_e

    .line 1100
    invoke-static {v1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1106
    :cond_d
    :goto_6
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1107
    invoke-static {p1, v6, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 1102
    :cond_e
    invoke-static {v1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_6

    .line 1132
    :cond_f
    iget-object v8, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v8, v8, p3

    if-ne v8, p2, :cond_4

    .line 1133
    iget-object v8, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object p1, v8, p3

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1440
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1442
    iput v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1443
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v2, v0, v1

    .line 1444
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 1445
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1304
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1306
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

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

    .line 1320
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    .line 1322
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

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
    const/4 v2, 0x0

    .line 1586
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 1587
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$11;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$11;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v1, v0, v2

    .line 1644
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public entrySetByValue()Ljava/util/Set;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$1;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v1, v0, v2

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1340
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeyForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1461
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$7;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$7;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v1, v0, v2

    .line 1497
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public keySetByValue()Ljava/util/Set;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$3;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$3;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v1, v0, v2

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1367
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1369
    iget-object v4, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v2, v4, v6

    .line 1371
    .local v2, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-nez v2, :cond_1

    .line 1372
    new-instance v3, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-direct {v3, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1374
    .local v3, root:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    iget-object v4, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v3, v4, v6

    .line 1375
    iget-object v4, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 1377
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    .line 1420
    .end local v3           #root:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 1386
    .local v0, cmp:I
    .restart local p1
    .restart local p2
    :cond_0
    if-gez v0, :cond_3

    .line 1387
    invoke-static {v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1388
    invoke-static {v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .end local v0           #cmp:I
    :cond_1
    :goto_1
    move-object v4, p1

    .line 1380
    check-cast v4, Ljava/lang/Comparable;

    invoke-static {v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1382
    .restart local v0       #cmp:I
    if-nez v0, :cond_0

    .line 1383
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Cannot store a duplicate key (\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\") in this Map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1390
    :cond_2
    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1393
    .local v1, newNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1394
    invoke-static {v2, v1, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1395
    invoke-static {v1, v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1396
    invoke-direct {p0, v1, v6}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1397
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    goto :goto_0

    .line 1402
    .end local v1           #newNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .restart local p1
    .restart local p2
    :cond_3
    invoke-static {v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1403
    invoke-static {v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    goto :goto_1

    .line 1405
    :cond_4
    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1408
    .restart local v1       #newNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1409
    invoke-static {v2, v1, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1410
    invoke-static {v1, v2, v6}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1411
    invoke-direct {p0, v1, v6}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1412
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 1432
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1285
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1515
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 1516
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$9;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$9;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v1, v0, v2

    .line 1565
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public valuesByValue()Ljava/util/Collection;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/collections/DoubleOrderedMap$5;

    invoke-direct {v1, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$5;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v1, v0, v2

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v2

    return-object v0
.end method
