.class Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/SequencedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderedIterator"
.end annotation


# instance fields
.field private transient expectedModCount:J

.field private pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

.field private returnType:I

.field private final this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;I)V
    .locals 2
    .parameter "this$0"
    .parameter "returnType"

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    .line 704
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v0}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 711
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v0}, Lorg/apache/commons/collections/SequencedHashMap;->access$300(Lorg/apache/commons/collections/SequencedHashMap;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    .line 730
    const/high16 v0, -0x8000

    or-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    .line 731
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v0}, Lorg/apache/commons/collections/SequencedHashMap;->access$300(Lorg/apache/commons/collections/SequencedHashMap;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 759
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 760
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 764
    :cond_1
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    .line 766
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 767
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    packed-switch v0, :pswitch_data_0

    .line 776
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad iterator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    .line 771
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 773
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 793
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() must follow next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v0}, Lorg/apache/commons/collections/SequencedHashMap;->access$300(Lorg/apache/commons/collections/SequencedHashMap;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 797
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 800
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 803
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->expectedModCount:J

    .line 806
    iget v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    or-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;->returnType:I

    .line 807
    return-void
.end method
