.class Lorg/apache/commons/collections/MultiHashMap$ValueIterator;
.super Ljava/lang/Object;
.source "MultiHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/MultiHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation


# instance fields
.field private backedIterator:Ljava/util/Iterator;

.field private tempIterator:Ljava/util/Iterator;

.field private final this$0:Lorg/apache/commons/collections/MultiHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/MultiHashMap;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->this$0:Lorg/apache/commons/collections/MultiHashMap;

    .line 390
    invoke-static {p1}, Lorg/apache/commons/collections/MultiHashMap;->access$201(Lorg/apache/commons/collections/MultiHashMap;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->backedIterator:Ljava/util/Iterator;

    .line 391
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;-><init>(Lorg/apache/commons/collections/MultiHashMap;)V

    return-void
.end method

.method private searchNextIterator()Z
    .locals 1

    .prologue
    .line 394
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->backedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    const/4 v0, 0x0

    goto :goto_1

    .line 398
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->backedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->searchNextIterator()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->searchNextIterator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap$ValueIterator;->tempIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 419
    return-void
.end method
