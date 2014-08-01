.class public Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;
.super Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.source "EmptyOrderedMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;-><init>()V

    .line 42
    return-void
.end method
