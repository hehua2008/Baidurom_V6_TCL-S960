.class public Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.source "PredicatedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/PredicatedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PredicatedListIterator"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/list/PredicatedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/PredicatedList;Ljava/util/ListIterator;)V
    .locals 0
    .parameter "this$0"
    .parameter "iterator"

    .prologue
    .line 145
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 144
    iput-object p1, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections/list/PredicatedList;

    .line 146
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections/list/PredicatedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->access$001(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;->this$0:Lorg/apache/commons/collections/list/PredicatedList;

    invoke-static {v0, p1}, Lorg/apache/commons/collections/list/PredicatedList;->access$101(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 156
    return-void
.end method
