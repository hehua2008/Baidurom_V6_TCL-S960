.class public Lorg/apache/commons/collections/comparators/NullComparator;
.super Ljava/lang/Object;
.source "NullComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final serialVersionUID:J = -0x50c789d15007a6d3L


# instance fields
.field private nonNullComparator:Ljava/util/Comparator;

.field private nullsAreHigh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "nonNullComparator"

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 2
    .parameter "nonNullComparator"
    .parameter "nullsAreHigh"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 111
    iput-boolean p2, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null nonNullComparator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "nullsAreHigh"

    .prologue
    .line 87
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    .line 88
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 136
    if-ne p1, p2, :cond_1

    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 138
    :cond_2
    if-nez p2, :cond_4

    iget-boolean v2, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 169
    check-cast v0, Lorg/apache/commons/collections/comparators/NullComparator;

    .line 171
    .local v0, other:Lorg/apache/commons/collections/comparators/NullComparator;
    iget-boolean v3, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    iget-boolean v4, v0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
