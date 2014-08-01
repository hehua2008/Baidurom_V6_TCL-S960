.class public Lorg/cybergarage/upnp/std/av/server/object/container/RootNode;
.super Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
.source "RootNode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 27
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(I)V

    .line 28
    const-string v0, "Root"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 29
    return-void
.end method
