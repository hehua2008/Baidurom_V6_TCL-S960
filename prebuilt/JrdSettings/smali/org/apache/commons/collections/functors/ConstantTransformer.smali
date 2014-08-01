.class public Lorg/apache/commons/collections/functors/ConstantTransformer;
.super Ljava/lang/Object;
.source "ConstantTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field public static final NULL_INSTANCE:Lorg/apache/commons/collections/Transformer; = null

.field static final serialVersionUID:J = 0x587690114102b194L


# instance fields
.field private final iConstant:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/collections/functors/ConstantTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/functors/ConstantTransformer;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "constantToReturn"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "constantToReturn"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/ConstantTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ConstantTransformer;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getConstant()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ConstantTransformer;->iConstant:Ljava/lang/Object;

    return-object v0
.end method
