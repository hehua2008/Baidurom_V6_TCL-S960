.class public Lorg/cybergarage/upnp/std/av/server/object/sort/DCTitleSortCap;
.super Ljava/lang/Object;
.source "DCTitleSortCap.java"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/SortCap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)I
    .locals 3
    .parameter "conNode1"
    .parameter "conNode2"

    .prologue
    const/4 v2, 0x0

    .line 34
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, title1:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, title2:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "dc:title"

    return-object v0
.end method
