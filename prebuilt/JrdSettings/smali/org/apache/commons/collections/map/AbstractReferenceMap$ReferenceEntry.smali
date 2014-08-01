.class public Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReferenceEntry"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "parent"
    .parameter "next"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, p2, p3, v0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 574
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    .line 575
    iget v0, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p0, v0, p4, p3}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 576
    iget v0, p1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p0, v0, p5, p3}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 577
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 624
    if-ne p1, p0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v3

    .line 627
    :cond_1
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_2

    move v3, v4

    .line 628
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 631
    check-cast v0, Ljava/util/Map$Entry;

    .line 632
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 633
    .local v1, entryKey:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 634
    .local v2, entryValue:Ljava/lang/Object;
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v3, v4

    .line 635
    goto :goto_0

    .line 639
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v6, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 4
    .parameter "ref"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 679
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v3, v3, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    if-ne v3, p1, :cond_3

    move v0, v2

    .line 680
    .local v0, r:Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v3, v3, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    if-ne v3, p1, :cond_4

    :cond_0
    move v0, v2

    .line 681
    :goto_1
    if-eqz v0, :cond_2

    .line 682
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v1, :cond_1

    .line 683
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 685
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v1, :cond_5

    .line 686
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 691
    :cond_2
    :goto_2
    return v0

    .end local v0           #r:Z
    :cond_3
    move v0, v1

    .line 679
    goto :goto_0

    .restart local v0       #r:Z
    :cond_4
    move v0, v1

    .line 680
    goto :goto_1

    .line 687
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-boolean v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    if-eqz v1, :cond_2

    .line 688
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    goto :goto_2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 606
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 607
    .local v0, old:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    if-lez v1, :cond_0

    .line 608
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 610
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 611
    return-object v0
.end method

.method protected toReference(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter "type"
    .parameter "referent"
    .parameter "hash"

    .prologue
    .line 665
    packed-switch p1, :pswitch_data_0

    .line 669
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 667
    :pswitch_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p2, v0

    .line 668
    .end local p2
    :goto_0
    :pswitch_1
    return-object p2

    .restart local p2
    :pswitch_2
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p2, v0

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
