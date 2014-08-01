.class Lorg/apache/commons/collections/ReferenceMap$KeyIterator;
.super Lorg/apache/commons/collections/ReferenceMap$EntryIterator;
.source "ReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;Lorg/apache/commons/collections/ReferenceMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
