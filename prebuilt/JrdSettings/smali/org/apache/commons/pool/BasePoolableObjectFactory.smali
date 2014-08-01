.class public abstract Lorg/apache/commons/pool/BasePoolableObjectFactory;
.super Ljava/lang/Object;
.source "BasePoolableObjectFactory.java"

# interfaces
.implements Lorg/apache/commons/pool/PoolableObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public destroyObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method public abstract makeObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public passivateObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public validateObject(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
