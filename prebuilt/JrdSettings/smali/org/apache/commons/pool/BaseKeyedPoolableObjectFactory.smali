.class public abstract Lorg/apache/commons/pool/BaseKeyedPoolableObjectFactory;
.super Ljava/lang/Object;
.source "BaseKeyedPoolableObjectFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedPoolableObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public abstract makeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method public validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
