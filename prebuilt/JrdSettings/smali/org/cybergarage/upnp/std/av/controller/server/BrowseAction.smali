.class public Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;
.super Ljava/lang/Object;
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


# instance fields
.field private action:Lorg/cybergarage/upnp/Action;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/Action;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    .line 52
    return-void
.end method


# virtual methods
.method public getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;
    .locals 1
    .parameter "name"

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    return-object v0
.end method

.method public getBrowseFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "BrowseFlag"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "Filter"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "ObjectID"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCount()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "RequestedCount"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSortCriteria()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "SortCriteria"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartingIndex()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "StartingIndex"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Action;->getArgumentIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isDirectChildren()Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "BrowseDirectChildren"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->getBrowseFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMetadata()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "BrowseMetadata"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->getBrowseFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postControlAction()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v0

    return v0
.end method

.method public setBrowseFlag(Ljava/lang/String;)V
    .locals 2
    .parameter "browseFlag"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "BrowseFlag"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "Filter"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setNumberReturned(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "NumberReturned"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public setObjectID(Ljava/lang/String;)V
    .locals 2
    .parameter "objectID"

    .prologue
    .line 118
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "ObjectID"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setRequestedCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 128
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "RequestedCount"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 147
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "Result"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setSortCriteria(Ljava/lang/String;)V
    .locals 2
    .parameter "sortCaiteria"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "SortCriteria"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setStartingIndex(I)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "StartingIndex"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public setTotalMaches(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 157
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "TotalMatches"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public setUpdateID(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/controller/server/BrowseAction;->action:Lorg/cybergarage/upnp/Action;

    const-string v1, "UpdateID"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 163
    return-void
.end method
