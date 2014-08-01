.class public Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;
.super Ljava/util/AbstractList;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedSubList"
.end annotation


# instance fields
.field private expectedModCount:I

.field private offset:I

.field private parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

.field private size:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V
    .locals 3
    .parameter "parent"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 896
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 897
    if-gez p2, :cond_0

    .line 898
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 901
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_1
    if-le p2, p3, :cond_2

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    .line 907
    iput p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    .line 908
    sub-int v0, p3, p2

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 909
    iget v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 910
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Lorg/apache/commons/collections/list/AbstractLinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 886
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    return-object v0
.end method

.method static access$100(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    return v0
.end method

.method static access$200(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method static access$208(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method static access$210(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method static access$302(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 886
    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 924
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 925
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 926
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->add(ILjava/lang/Object;)V

    .line 927
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 928
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 929
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 930
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .parameter "index"
    .parameter "coll"

    .prologue
    .line 947
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 948
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 949
    .local v0, cSize:I
    if-nez v0, :cond_0

    .line 950
    const/4 v1, 0x0

    .line 958
    :goto_0
    return v1

    .line 953
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 954
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    .line 955
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 956
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 957
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    .line 958
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 943
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected checkModCount()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 999
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1001
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 968
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 969
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 970
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    return-void

    .line 971
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 972
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 918
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 919
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 920
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 978
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"

    .prologue
    .line 982
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 983
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 984
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected rangeCheck(II)V
    .locals 3
    .parameter "index"
    .parameter "beyond"

    .prologue
    .line 992
    if-ltz p1, :cond_0

    if-lt p1, p2, :cond_1

    .line 993
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' out of bounds for size \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 933
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 934
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 935
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 936
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 937
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 938
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    .line 939
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 962
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 963
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 964
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 913
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 914
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter "fromIndexInclusive"
    .parameter "toIndexExclusive"

    .prologue
    .line 988
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V

    return-object v0
.end method
