.class public final Lorg/apache/commons/collections/functors/StringValueTransformer;
.super Ljava/lang/Object;
.source "StringValueTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Transformer; = null

.field static final serialVersionUID:J = 0x683cd3613f24060eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/commons/collections/functors/StringValueTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/StringValueTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/commons/collections/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
