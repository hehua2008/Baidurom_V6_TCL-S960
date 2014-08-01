.class public Lorg/cybergarage/upnp/std/av/server/object/search/TitleSearchCap;
.super Ljava/lang/Object;
.source "TitleSearchCap.java"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/SearchCap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public compare(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 7
    .parameter "searchCri"
    .parameter "conNode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, searchCriTitle:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, conTitle:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move v4, v5

    .line 49
    :cond_1
    :goto_0
    return v4

    .line 37
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, cmpRet:I
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isEQ()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isLE()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isGE()Z

    move-result v6

    if-nez v6, :cond_1

    .line 40
    :cond_3
    if-gez v0, :cond_4

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isLT()Z

    move-result v6

    if-nez v6, :cond_1

    .line 42
    :cond_4
    if-lez v0, :cond_5

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isGT()Z

    move-result v6

    if-nez v6, :cond_1

    .line 44
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, idxRet:I
    if-ltz v2, :cond_6

    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isContains()Z

    move-result v6

    if-nez v6, :cond_1

    .line 47
    :cond_6
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isDoesNotContain()Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 49
    goto :goto_0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "dc:title"

    return-object v0
.end method
