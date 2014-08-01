.class public Lorg/apache/commons/collections/list/TreeList;
.super Ljava/util/AbstractList;
.source "TreeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/TreeList$1;,
        Lorg/apache/commons/collections/list/TreeList$TreeListIterator;,
        Lorg/apache/commons/collections/list/TreeList$AVLNode;
    }
.end annotation


# instance fields
.field private root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-void
.end method

.method static access$301(Lorg/apache/commons/collections/list/TreeList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method static access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    return-object v0
.end method

.method static access$501(Lorg/apache/commons/collections/list/TreeList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method private checkInterval(III)V
    .locals 3
    .parameter "index"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 247
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .parameter "index"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 187
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/list/TreeList;->checkInterval(III)V

    .line 189
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$AVLNode;Lorg/apache/commons/collections/list/TreeList$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 194
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList;->size:I

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList;->size:I

    .line 235
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/TreeList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/list/TreeList;->checkInterval(III)V

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, -0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-static {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->access$000(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/TreeList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter "fromIndex"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/list/TreeList;->checkInterval(III)V

    .line 140
    new-instance v0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;-><init>(Lorg/apache/commons/collections/list/TreeList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 220
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    .line 221
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/collections/list/TreeList;->checkInterval(III)V

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/TreeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 224
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList;->size:I

    .line 225
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 206
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/collections/list/TreeList;->checkInterval(III)V

    .line 207
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    .line 208
    .local v0, node:Lorg/apache/commons/collections/list/TreeList$AVLNode;
    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->access$200(Lorg/apache/commons/collections/list/TreeList$AVLNode;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    .line 210
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 173
    .local v0, array:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList;->root:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-static {v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->access$000(Lorg/apache/commons/collections/list/TreeList$AVLNode;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 176
    :cond_0
    return-object v0
.end method
