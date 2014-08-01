.class public Lorg/apache/commons/collections/BeanMap$MyMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;
.source "BeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/BeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyMapEntry"
.end annotation


# instance fields
.field private owner:Lorg/apache/commons/collections/BeanMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/BeanMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "owner"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 656
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    .line 658
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    .line 667
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 668
    .local v0, key:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 670
    .local v2, oldValue:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v3, v0, p1}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v3, p0, Lorg/apache/commons/collections/BeanMap$MyMapEntry;->owner:Lorg/apache/commons/collections/BeanMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 672
    .local v1, newValue:Ljava/lang/Object;
    invoke-super {p0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-object v2
.end method
