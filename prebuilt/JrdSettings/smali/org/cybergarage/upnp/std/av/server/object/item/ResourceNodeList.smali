.class public Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;
.super Ljava/util/Vector;
.source "ResourceNodeList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 1
    .parameter "n"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    return-object v0
.end method
