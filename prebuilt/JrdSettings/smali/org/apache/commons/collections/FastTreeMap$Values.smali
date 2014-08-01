.class Lorg/apache/commons/collections/FastTreeMap$Values;
.super Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.source "FastTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$Values;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$Values;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .locals 1
    .parameter "map"

    .prologue
    .line 799
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter "entry"

    .prologue
    .line 803
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
