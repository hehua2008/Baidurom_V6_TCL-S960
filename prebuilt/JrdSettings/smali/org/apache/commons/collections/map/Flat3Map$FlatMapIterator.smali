.class Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapIterator"
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 1
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 581
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 585
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    .line 586
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 611
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    packed-switch v0, :pswitch_data_0

    .line 622
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 618
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 620
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 626
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    packed-switch v0, :pswitch_data_0

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    .line 635
    :goto_0
    return-object v0

    .line 633
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 589
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections/map/Flat3Map;->access$000(Lorg/apache/commons/collections/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 597
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 598
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 608
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 657
    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 658
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 659
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 641
    iget-boolean v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-nez v1, :cond_0

    .line 642
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 645
    .local v0, old:Ljava/lang/Object;
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    packed-switch v1, :pswitch_data_0

    .line 653
    :goto_0
    return-object v0

    .line 647
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    goto :goto_0
.end method
