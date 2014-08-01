.class public Lorg/apache/commons/collections/functors/ConstantFactory;
.super Ljava/lang/Object;
.source "ConstantFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Factory;


# static fields
.field public static final NULL_INSTANCE:Lorg/apache/commons/collections/Factory; = null

.field static final serialVersionUID:J = -0x30dbf54892a4d5f8L


# instance fields
.field private final iConstant:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/collections/functors/ConstantFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/functors/ConstantFactory;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "constantToReturn"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .locals 1
    .parameter "constantToReturn"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    sget-object v0, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/ConstantFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ConstantFactory;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-object v0
.end method

.method public getConstant()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ConstantFactory;->iConstant:Ljava/lang/Object;

    return-object v0
.end method
