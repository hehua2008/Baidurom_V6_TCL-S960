.class public Lorg/cybergarage/upnp/std/av/server/action/SearchAction;
.super Lorg/cybergarage/upnp/Action;
.source "SearchAction.java"


# static fields
.field public static final CONTAINER_ID:Ljava/lang/String; = "ContainerID"

.field public static final FILTER:Ljava/lang/String; = "Filter"

.field public static final NUMBER_RETURNED:Ljava/lang/String; = "NumberReturned"

.field public static final REQUESTED_COUNT:Ljava/lang/String; = "RequestedCount"

.field public static final RESULT:Ljava/lang/String; = "Result"

.field public static final SEARCH_CRITERIA:Ljava/lang/String; = "SearchCriteria"

.field public static final SORT_CRITERIA:Ljava/lang/String; = "SortCriteria"

.field public static final STARTING_INDEX:Ljava/lang/String; = "StartingIndex"

.field public static final TOTAL_MACHES:Ljava/lang/String; = "TotalMatches"

.field public static final UPDATE_ID:Ljava/lang/String; = "UpdateID"


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/Action;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Action;-><init>(Lorg/cybergarage/upnp/Action;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "ContainerID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Filter"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCount()I
    .locals 1

    .prologue
    .line 68
    const-string v0, "RequestedCount"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSearchCriteria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SearchCriteria"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortCriteria()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "SortCriteria"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartingIndex()I
    .locals 1

    .prologue
    .line 63
    const-string v0, "StartingIndex"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setNumberReturned(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 92
    const-string v0, "NumberReturned"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const-string v0, "Result"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setTotalMaches(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    const-string v0, "TotalMatches"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public setUpdateID(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    const-string v0, "UpdateID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 103
    return-void
.end method
