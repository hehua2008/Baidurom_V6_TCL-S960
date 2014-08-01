.class public Lorg/cybergarage/xml/NodeList;
.super Ljava/util/Vector;
.source "NodeList.java"


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
.method public getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 51
    if-nez p1, :cond_0

    move-object v2, v4

    .line 63
    :goto_0
    return-object v2

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 55
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 56
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 57
    .local v2, node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, nodeName:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .end local v2           #node:Lorg/cybergarage/xml/Node;
    .end local v3           #nodeName:Ljava/lang/String;
    :cond_3
    move-object v2, v4

    .line 63
    goto :goto_0
.end method

.method public getNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .parameter "n"

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/xml/Node;

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 36
    if-nez p1, :cond_1

    move-object v2, v4

    .line 46
    :cond_0
    :goto_0
    return-object v2

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 40
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 41
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 42
    .local v2, node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, nodeName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #node:Lorg/cybergarage/xml/Node;
    .end local v3           #nodeName:Ljava/lang/String;
    :cond_2
    move-object v2, v4

    .line 46
    goto :goto_0
.end method
