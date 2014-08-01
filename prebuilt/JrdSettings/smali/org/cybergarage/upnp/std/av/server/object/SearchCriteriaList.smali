.class public Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
.super Ljava/util/Vector;
.source "SearchCriteriaList.java"


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
.method public compare(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;)Z
    .locals 17
    .parameter "cnode"
    .parameter "searchCapList"

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v14

    .line 55
    .local v14, searchCriCnt:I
    const/4 v5, 0x0

    .local v5, n:I
    :goto_0
    if-ge v5, v14, :cond_2

    .line 56
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v13

    .line 57
    .local v13, searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v13}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, property:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 59
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    .line 55
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/cybergarage/upnp/std/av/server/object/SearchCapList;->getSearchCap(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCap;

    move-result-object v12

    .line 63
    .local v12, searchCap:Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    if-nez v12, :cond_1

    .line 64
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_1

    .line 67
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v12, v13, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCap;->compare(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    move-result v1

    .line 68
    .local v1, cmpResult:Z
    invoke-virtual {v13, v1}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    goto :goto_1

    .line 72
    .end local v1           #cmpResult:Z
    .end local v11           #property:Ljava/lang/String;
    .end local v12           #searchCap:Lorg/cybergarage/upnp/std/av/server/object/SearchCap;
    .end local v13           #searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_2
    new-instance v10, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;

    invoke-direct {v10}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;-><init>()V

    .line 73
    .local v10, orSearchCriList:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v14, :cond_5

    .line 74
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v3

    .line 75
    .local v3, currSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    add-int/lit8 v15, v14, -0x1

    if-ge v5, v15, :cond_4

    .line 76
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->isLogicalAND()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 77
    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v7

    .line 78
    .local v7, nextSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v2

    .line 79
    .local v2, currResult:Z
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v6

    .line 80
    .local v6, nextResult:Z
    and-int v15, v2, v6

    if-eqz v15, :cond_3

    const/4 v4, 0x1

    .line 81
    .local v4, logicalAND:Z
    :goto_3
    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->setResult(Z)V

    .line 73
    .end local v2           #currResult:Z
    .end local v4           #logicalAND:Z
    .end local v6           #nextResult:Z
    .end local v7           #nextSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 80
    .restart local v2       #currResult:Z
    .restart local v6       #nextResult:Z
    .restart local v7       #nextSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 85
    .end local v2           #currResult:Z
    .end local v6           #nextResult:Z
    .end local v7           #nextSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_4
    new-instance v8, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    invoke-direct {v8, v3}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;-><init>(Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;)V

    .line 86
    .local v8, orSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 90
    .end local v3           #currSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .end local v8           #orSearchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_5
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v9

    .line 91
    .local v9, orSearchCriCnt:I
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_7

    .line 92
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v13

    .line 93
    .restart local v13       #searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v13}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getResult()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 94
    const/4 v15, 0x1

    .line 97
    .end local v13           #searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :goto_6
    return v15

    .line 91
    .restart local v13       #searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 97
    .end local v13           #searchCri:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_7
    const/4 v15, 0x0

    goto :goto_6
.end method

.method public getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .locals 1
    .parameter "n"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    return-object v0
.end method

.method public getSearchCriteria(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_1

    move-object v2, v3

    .line 42
    :cond_0
    :goto_0
    return-object v2

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 37
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 38
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteriaList;->getSearchCriteria(I)Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;

    move-result-object v2

    .line 39
    .local v2, node:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #node:Lorg/cybergarage/upnp/std/av/server/object/SearchCriteria;
    :cond_2
    move-object v2, v3

    .line 42
    goto :goto_0
.end method
