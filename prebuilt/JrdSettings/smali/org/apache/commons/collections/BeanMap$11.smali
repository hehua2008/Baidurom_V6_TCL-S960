.class Lorg/apache/commons/collections/BeanMap$11;
.super Ljava/lang/Object;
.source "BeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final this$0:Lorg/apache/commons/collections/BeanMap;

.field private final val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BeanMap;Ljava/util/Iterator;)V
    .locals 0
    .parameter "this$0"
    .parameter "val$iter"

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$11;->this$0:Lorg/apache/commons/collections/BeanMap;

    iput-object p2, p0, Lorg/apache/commons/collections/BeanMap$11;->val$iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap$11;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 500
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap$11;->val$iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 501
    .local v0, key:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap$11;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 502
    .local v1, value:Ljava/lang/Object;
    new-instance v2, Lorg/apache/commons/collections/BeanMap$MyMapEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/BeanMap$11;->this$0:Lorg/apache/commons/collections/BeanMap;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/collections/BeanMap$MyMapEntry;-><init>(Lorg/apache/commons/collections/BeanMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported for BeanMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
