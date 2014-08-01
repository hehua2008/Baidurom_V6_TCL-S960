.class Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList$SubList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubListIter"
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private iter:Ljava/util/ListIterator;

.field private lastReturnedIndex:I

.field private final this$1:Lorg/apache/commons/collections/FastArrayList$SubList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V
    .locals 1
    .parameter "this$1"
    .parameter "i"

    .prologue
    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    .line 1131
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1135
    invoke-static {p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    .line 1136
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    .line 1137
    return-void
.end method

.method private checkMod()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    if-eq v0, v1, :cond_0

    .line 1141
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1143
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter "o"

    .prologue
    .line 1204
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1205
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->nextIndex()I

    move-result v0

    .line 1206
    .local v0, i:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1207
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$208(Lorg/apache/commons/collections/FastArrayList$SubList;)I

    .line 1208
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    .line 1209
    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1210
    return-void
.end method

.method get()Ljava/util/List;
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1150
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1151
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 1161
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1162
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1155
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1156
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1157
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1177
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1178
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1166
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1167
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1168
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1173
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1182
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1183
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    if-gez v0, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$210(Lorg/apache/commons/collections/FastArrayList$SubList;)I

    .line 1188
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    .line 1189
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->previousIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    .line 1190
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    .line 1191
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 1194
    invoke-direct {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->checkMod()V

    .line 1195
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    if-gez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->lastReturnedIndex:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->this$1:Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-static {v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->expected:Ljava/util/List;

    .line 1200
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->previousIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;->iter:Ljava/util/ListIterator;

    .line 1201
    return-void
.end method
