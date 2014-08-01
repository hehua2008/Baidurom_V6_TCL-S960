.class Lorg/apache/commons/collections/ReferenceMap$WeakRef;
.super Ljava/lang/ref/WeakReference;
.source "ReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakRef"
.end annotation


# instance fields
.field private hash:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .parameter "hash"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 946
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 947
    iput p1, p0, Lorg/apache/commons/collections/ReferenceMap$WeakRef;->hash:I

    .line 948
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap$WeakRef;->hash:I

    return v0
.end method
