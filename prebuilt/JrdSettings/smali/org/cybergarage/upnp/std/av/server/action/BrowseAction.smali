.class public Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;
.super Lorg/cybergarage/upnp/Action;
.source "BrowseAction.java"


# static fields
.field public static final BROWSE_DIRECT_CHILDREN:Ljava/lang/String; = "BrowseDirectChildren"

.field public static final BROWSE_FLAG:Ljava/lang/String; = "BrowseFlag"

.field public static final BROWSE_METADATA:Ljava/lang/String; = "BrowseMetadata"

.field public static final FILTER:Ljava/lang/String; = "Filter"

.field public static final NUMBER_RETURNED:Ljava/lang/String; = "NumberReturned"

.field public static final OBJECT_ID:Ljava/lang/String; = "ObjectID"

.field public static final REQUESTED_COUNT:Ljava/lang/String; = "RequestedCount"

.field public static final RESULT:Ljava/lang/String; = "Result"

.field public static final SORT_CRITERIA:Ljava/lang/String; = "SortCriteria"

.field public static final STARTING_INDEX:Ljava/lang/String; = "StartingIndex"

.field public static final TOTAL_MACHES:Ljava/lang/String; = "TotalMatches"

.field public static final UPDATE_ID:Ljava/lang/String; = "UpdateID"


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/Action;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Action;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getBrowseFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "BrowseFlag"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "Filter"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberReturned()I
    .locals 1

    .prologue
    .line 88
    const-string v0, "NumberReturned"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "ObjectID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCount()I
    .locals 1

    .prologue
    .line 83
    const-string v0, "RequestedCount"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSortCriteria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "SortCriteria"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartingIndex()I
    .locals 1

    .prologue
    .line 78
    const-string v0, "StartingIndex"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalMatches()I
    .locals 1

    .prologue
    .line 93
    const-string v0, "TotalMatches"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isDirectChildren()Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "BrowseDirectChildren"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getBrowseFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMetadata()Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "BrowseMetadata"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/action/BrowseAction;->getBrowseFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setNumberReturned(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 117
    const-string v0, "NumberReturned"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 112
    const-string v0, "Result"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setTotalMaches(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 122
    const-string v0, "TotalMatches"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public setUpdateID(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    const-string v0, "UpdateID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 128
    return-void
.end method
