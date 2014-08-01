.class public final Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.source "UnmodifiableMapEntry.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 61
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .locals 2
    .parameter "pair"

    .prologue
    .line 51
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setValue() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
