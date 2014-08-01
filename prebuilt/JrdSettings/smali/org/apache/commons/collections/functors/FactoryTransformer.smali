.class public Lorg/apache/commons/collections/functors/FactoryTransformer;
.super Ljava/lang/Object;
.source "FactoryTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = -0x5e9d3ed6a2480c48L


# instance fields
.field private final iFactory:Lorg/apache/commons/collections/Factory;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Factory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections/functors/FactoryTransformer;->iFactory:Lorg/apache/commons/collections/Factory;

    .line 62
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "factory"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/FactoryTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/FactoryTransformer;-><init>(Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method


# virtual methods
.method public getFactory()Lorg/apache/commons/collections/Factory;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/functors/FactoryTransformer;->iFactory:Lorg/apache/commons/collections/Factory;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/functors/FactoryTransformer;->iFactory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v0}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
