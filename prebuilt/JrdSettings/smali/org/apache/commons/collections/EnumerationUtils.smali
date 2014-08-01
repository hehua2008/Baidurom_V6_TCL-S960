.class public Lorg/apache/commons/collections/EnumerationUtils;
.super Ljava/lang/Object;
.source "EnumerationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static toList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 1
    .parameter "enumeration"

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v0}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
