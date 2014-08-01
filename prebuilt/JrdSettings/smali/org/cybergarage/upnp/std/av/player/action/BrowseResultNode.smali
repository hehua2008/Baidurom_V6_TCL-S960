.class public Lorg/cybergarage/upnp/std/av/player/action/BrowseResultNode;
.super Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
.source "BrowseResultNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "*/*"

    return-object v0
.end method
