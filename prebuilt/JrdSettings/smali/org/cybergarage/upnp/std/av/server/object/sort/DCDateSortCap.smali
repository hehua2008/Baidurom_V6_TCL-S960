.class public Lorg/cybergarage/upnp/std/av/server/object/sort/DCDateSortCap;
.super Ljava/lang/Object;
.source "DCDateSortCap.java"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/SortCap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)I
    .locals 8
    .parameter "conNode1"
    .parameter "conNode2"

    .prologue
    const/4 v6, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v6

    .line 37
    :cond_1
    instance-of v7, p1, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    if-eqz v7, :cond_0

    instance-of v7, p2, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .local v0, itemNode1:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    move-object v1, p2

    .line 40
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .line 41
    .local v1, itemNode2:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getDateTime()J

    move-result-wide v2

    .line 42
    .local v2, itemTime1:J
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getDateTime()J

    move-result-wide v4

    .line 43
    .local v4, itemTime2:J
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 45
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    const/4 v6, -0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "dc:date"

    return-object v0
.end method
