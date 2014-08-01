.class Lorg/apache/commons/collections/CursorableLinkedList$Listable;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listable"
.end annotation


# instance fields
.field private _next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field private _prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field private _val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V
    .locals 1
    .parameter "prev"
    .parameter "next"
    .parameter "val"

    .prologue
    const/4 v0, 0x0

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 958
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 959
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 962
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 963
    iput-object p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 964
    iput-object p3, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 965
    return-void
.end method


# virtual methods
.method next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-object v0
.end method

.method prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    return-object v0
.end method

.method setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 0
    .parameter "next"

    .prologue
    .line 980
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_next:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 981
    return-void
.end method

.method setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 0
    .parameter "prev"

    .prologue
    .line 984
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_prev:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 985
    return-void
.end method

.method setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "val"

    .prologue
    .line 988
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 989
    .local v0, temp:Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    .line 990
    return-object v0
.end method

.method value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->_val:Ljava/lang/Object;

    return-object v0
.end method
