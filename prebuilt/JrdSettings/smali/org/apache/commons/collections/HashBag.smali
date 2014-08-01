.class public Lorg/apache/commons/collections/HashBag;
.super Lorg/apache/commons/collections/DefaultMapBag;
.source "HashBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;-><init>(Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/commons/collections/HashBag;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method
