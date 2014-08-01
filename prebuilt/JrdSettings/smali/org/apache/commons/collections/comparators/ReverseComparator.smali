.class public Lorg/apache/commons/collections/comparators/ReverseComparator;
.super Ljava/lang/Object;
.source "ReverseComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final serialVersionUID:J = 0x27acceccb201dd81L


# instance fields
.field private comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 112
    if-ne p0, p1, :cond_1

    .line 113
    const/4 v1, 0x1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 117
    check-cast v0, Lorg/apache/commons/collections/comparators/ReverseComparator;

    .line 118
    .local v0, thatrc:Lorg/apache/commons/collections/comparators/ReverseComparator;
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    iget-object v2, v0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 92
    const-string v0, "ReverseComparator"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ReverseComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
