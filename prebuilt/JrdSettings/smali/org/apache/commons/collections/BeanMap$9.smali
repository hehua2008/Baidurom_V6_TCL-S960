.class Lorg/apache/commons/collections/BeanMap$9;
.super Ljava/util/AbstractSet;
.source "BeanMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/BeanMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BeanMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$9;->this$0:Lorg/apache/commons/collections/BeanMap;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$9;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/BeanMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$9;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-static {v0}, Lorg/apache/commons/collections/BeanMap;->access$000(Lorg/apache/commons/collections/BeanMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
