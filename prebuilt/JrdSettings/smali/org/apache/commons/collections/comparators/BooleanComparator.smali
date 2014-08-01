.class public final Lorg/apache/commons/collections/comparators/BooleanComparator;
.super Ljava/lang/Object;
.source "BooleanComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator; = null

.field private static final TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator; = null

.field private static final serialVersionUID:J = 0x19659e67a6639c01L


# instance fields
.field private trueFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/collections/comparators/BooleanComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/comparators/BooleanComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    .line 43
    new-instance v0, Lorg/apache/commons/collections/comparators/BooleanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/comparators/BooleanComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/comparators/BooleanComparator;-><init>(Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "trueFirst"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    .line 124
    iput-boolean p1, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    .line 125
    return-void
.end method

.method public static getBooleanComparator(Z)Lorg/apache/commons/collections/comparators/BooleanComparator;
    .locals 1
    .parameter "trueFirst"

    .prologue
    .line 97
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    goto :goto_0
.end method

.method public static getFalseFirstComparator()Lorg/apache/commons/collections/comparators/BooleanComparator;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->FALSE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    return-object v0
.end method

.method public static getTrueFirstComparator()Lorg/apache/commons/collections/comparators/BooleanComparator;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/apache/commons/collections/comparators/BooleanComparator;->TRUE_FIRST:Lorg/apache/commons/collections/comparators/BooleanComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I
    .locals 3
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    .local v0, v1:Z
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 157
    .local v1, v2:Z
    xor-int v2, v0, v1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    xor-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/comparators/BooleanComparator;->compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 185
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/apache/commons/collections/comparators/BooleanComparator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    check-cast p1, Lorg/apache/commons/collections/comparators/BooleanComparator;

    .end local p1
    iget-boolean v1, p1, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 168
    const-string v1, "BooleanComparator"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 169
    .local v0, hash:I
    iget-boolean v1, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, -0x1

    .end local v0           #hash:I
    :cond_0
    return v0
.end method

.method public sortsTrueFirst()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/BooleanComparator;->trueFirst:Z

    return v0
.end method
