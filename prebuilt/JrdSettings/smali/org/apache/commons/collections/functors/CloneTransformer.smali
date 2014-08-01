.class public Lorg/apache/commons/collections/functors/CloneTransformer;
.super Ljava/lang/Object;
.source "CloneTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Transformer; = null

.field static final serialVersionUID:J = -0x71a4421bc4cbe9d7L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/commons/collections/functors/CloneTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/CloneTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections/functors/PrototypeFactory;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
