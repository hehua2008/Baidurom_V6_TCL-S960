.class Lorg/apache/commons/collections/FastArrayList$ListIter;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListIter"
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private iter:Ljava/util/ListIterator;

.field private lastReturnedIndex:I

.field private final this$0:Lorg/apache/commons/collections/FastArrayList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList;I)V
    .locals 1
    .parameter "this$0"
    .parameter "i"

    .prologue
    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1227
    iget-object v0, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    .line 1228
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    .line 1229
    return-void
.end method

.method private checkMod()V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    if-eq v0, v1, :cond_0

    .line 1233
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1235
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 1295
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1296
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->nextIndex()I

    move-result v0

    .line 1297
    .local v0, i:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1298
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    .line 1299
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1300
    return-void
.end method

.method get()Ljava/util/List;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1242
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1243
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1254
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1247
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1248
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1249
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1269
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1270
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1258
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1259
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1260
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1264
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1265
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1274
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1275
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    if-gez v0, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1279
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    .line 1280
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->previousIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    .line 1281
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    .line 1282
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 1285
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->checkMod()V

    .line 1286
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    if-gez v0, :cond_0

    .line 1287
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->expected:Ljava/util/List;

    .line 1291
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$ListIter;->previousIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$ListIter;->iter:Ljava/util/ListIterator;

    .line 1292
    return-void
.end method
