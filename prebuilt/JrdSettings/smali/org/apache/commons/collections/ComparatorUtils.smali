.class public Lorg/apache/commons/collections/ComparatorUtils;
.super Ljava/lang/Object;
.source "ComparatorUtils.java"


# static fields
.field public static final NATURAL_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static booleanComparator(Z)Ljava/util/Comparator;
    .locals 1
    .parameter "trueFirst"

    .prologue
    .line 146
    invoke-static {p0}, Lorg/apache/commons/collections/comparators/BooleanComparator;->getBooleanComparator(Z)Lorg/apache/commons/collections/comparators/BooleanComparator;

    move-result-object v0

    return-object v0
.end method

.method public static chainedComparator(Ljava/util/Collection;)Ljava/util/Comparator;
    .locals 1
    .parameter "comparators"

    .prologue
    .line 114
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Comparator;

    invoke-static {v0}, Lorg/apache/commons/collections/ComparatorUtils;->chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static chainedComparator(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .parameter "comparator1"
    .parameter "comparator2"

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Comparator;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/commons/collections/ComparatorUtils;->chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 4
    .parameter "comparators"

    .prologue
    .line 92
    new-instance v0, Lorg/apache/commons/collections/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>()V

    .line 93
    .local v0, chain:Lorg/apache/commons/collections/comparators/ComparatorChain;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 99
    return-object v0

    .line 94
    :cond_0
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Comparator cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static max(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .parameter "o1"
    .parameter "o2"
    .parameter "comparator"

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 234
    sget-object p2, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 236
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 237
    .local v0, c:I
    if-lez v0, :cond_1

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    move-object p0, p1

    goto :goto_0
.end method

.method public static min(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .parameter "o1"
    .parameter "o2"
    .parameter "comparator"

    .prologue
    .line 215
    if-nez p2, :cond_0

    .line 216
    sget-object p2, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 218
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, c:I
    if-gez v0, :cond_1

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    move-object p0, p1

    goto :goto_0
.end method

.method public static naturalComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static nullHighComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .parameter "comparator"

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 182
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static nullLowComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .parameter "comparator"

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 164
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static reversedComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .parameter "comparator"

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 130
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/ReverseComparator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static transformedComparator(Ljava/util/Comparator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Comparator;
    .locals 1
    .parameter "comparator"
    .parameter "transformer"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 201
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/TransformingComparator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections/Transformer;Ljava/util/Comparator;)V

    return-object v0
.end method
