.class public final Lorg/apache/commons/collections/functors/MapTransformer;
.super Ljava/lang/Object;
.source "MapTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = 0xbf7d4c78427030bL


# instance fields
.field private final iMap:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/functors/MapTransformer;->iMap:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "map"

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/MapTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/MapTransformer;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/functors/MapTransformer;->iMap:Ljava/util/Map;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "input"

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/functors/MapTransformer;->iMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
