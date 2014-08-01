.class public Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bag/AbstractMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MutableInteger"
.end annotation


# instance fields
.field protected value:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 412
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 415
    instance-of v1, p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    if-nez v1, :cond_1

    .line 418
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .end local p1
    iget v1, p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    iget v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    return v0
.end method
