.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field private blackColor:[Z

.field private calculatedHashCode:Z

.field private data:[Ljava/lang/Comparable;

.field private hashcodeValue:I

.field private leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field private parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field private rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    new-array v0, v2, [Ljava/lang/Comparable;

    aput-object p1, v0, v3

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    .line 1729
    new-array v0, v2, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1730
    new-array v0, v2, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1731
    new-array v0, v2, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1732
    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    .line 1733
    iput-boolean v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    .line 1734
    return-void

    .line 1732
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method static access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method static access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getLeft(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$1000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->isBlack(I)Z

    move-result v0

    return v0
.end method

.method static access$1100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setRed(I)V

    return-void
.end method

.method static access$1200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->swapColors(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getRight(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getParent(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setBlack(I)V

    return-void
.end method

.method static access$800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static access$900(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->isRed(I)Z

    move-result v0

    return v0
.end method

.method private copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 2
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1864
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    iget-object v1, p1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v1, v1, p2

    aput-boolean v1, v0, p2

    .line 1865
    return-void
.end method

.method private getData(I)Ljava/lang/Comparable;
    .locals 1
    .parameter "index"

    .prologue
    .line 1743
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getLeft(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 1763
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getParent(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 1803
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getRight(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 1783
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private isBlack(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1826
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private isRed(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1836
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBlack(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1845
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1846
    return-void
.end method

.method private setLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1753
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v0, p2

    .line 1754
    return-void
.end method

.method private setParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v0, p2

    .line 1794
    return-void
.end method

.method private setRed(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1854
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1855
    return-void
.end method

.method private setRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1773
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v0, p2

    .line 1774
    return-void
.end method

.method private swapColors(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .locals 3
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1814
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v1, v0, p2

    iget-object v2, p1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v2, v2, p2

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    .line 1815
    iget-object v0, p1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v1, v0, p2

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v2, v2, p2

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    .line 1816
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v1, v0, p2

    iget-object v2, p1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v2, v2, p2

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    .line 1817
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1908
    if-ne p1, p0, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return v1

    .line 1911
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move v1, v2

    .line 1912
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1914
    check-cast v0, Ljava/util/Map$Entry;

    .line 1915
    .local v0, e:Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v3, v3, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1883
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1922
    iget-boolean v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    if-nez v0, :cond_0

    .line 1923
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    .line 1924
    iput-boolean v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    .line 1926
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "ignored"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.Entry.setValue is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
