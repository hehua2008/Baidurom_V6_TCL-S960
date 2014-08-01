.class public Lorg/apache/commons/collections/iterators/EmptyListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;
.source "EmptyListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# static fields
.field public static final INSTANCE:Ljava/util/ListIterator;

.field public static final RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/EmptyListIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;

    .line 45
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->INSTANCE:Ljava/util/ListIterator;

    .line 40
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/AbstractEmptyIterator;-><init>()V

    .line 52
    return-void
.end method
