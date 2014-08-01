.class public Lorg/apache/commons/collections/list/LazyList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "LazyList.java"


# static fields
.field private static final serialVersionUID:J = -0x17b569d9a565ab0eL


# instance fields
.field protected final factory:Lorg/apache/commons/collections/Factory;


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V
    .locals 2
    .parameter "list"
    .parameter "factory"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    .line 91
    return-void
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "factory"

    .prologue
    .line 74
    new-instance v0, Lorg/apache/commons/collections/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 5
    .parameter "index"

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 106
    .local v2, size:I
    if-ge p1, v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, object:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 111
    iget-object v3, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v3}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 120
    .end local v1           #object:Ljava/lang/Object;
    :cond_1
    move v0, v2

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 124
    iget-object v3, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v3}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 125
    .restart local v1       #object:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v1           #object:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->getList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, sub:Ljava/util/List;
    new-instance v1, Lorg/apache/commons/collections/list/LazyList;

    iget-object v2, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V

    return-object v1
.end method
