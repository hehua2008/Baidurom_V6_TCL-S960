.class public Lorg/apache/commons/collections/comparators/ComparableComparator;
.super Ljava/lang/Object;
.source "ComparableComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lorg/apache/commons/collections/comparators/ComparableComparator; = null

.field private static final serialVersionUID:J = -0x40b66da47914ec9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/collections/comparators/ComparableComparator;

    invoke-direct {v0}, Lorg/apache/commons/collections/comparators/ComparableComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/comparators/ComparableComparator;->instance:Lorg/apache/commons/collections/comparators/ComparableComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/commons/collections/comparators/ComparableComparator;->instance:Lorg/apache/commons/collections/comparators/ComparableComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 122
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    const-string v0, "ComparableComparator"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
