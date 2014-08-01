.class public abstract Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractSerializableCollectionDecorator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x56bc1013bba6a134L


# direct methods
.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 42
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 65
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    .line 66
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 53
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
