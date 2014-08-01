.class public Lorg/apache/commons/collections/functors/TransformerClosure;
.super Ljava/lang/Object;
.source "TransformerClosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Closure;


# static fields
.field static final serialVersionUID:J = -0x4818523c51a8a3a9L


# instance fields
.field private final iTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "transformer"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/functors/TransformerClosure;->iTransformer:Lorg/apache/commons/collections/Transformer;

    .line 64
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "transformer"

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/TransformerClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/TransformerClosure;-><init>(Lorg/apache/commons/collections/Transformer;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformerClosure;->iTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/functors/TransformerClosure;->iTransformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method
