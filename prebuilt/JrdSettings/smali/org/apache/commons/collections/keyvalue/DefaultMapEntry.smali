.class public final Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.source "DefaultMapEntry.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .locals 2
    .parameter "pair"

    .prologue
    .line 53
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method
