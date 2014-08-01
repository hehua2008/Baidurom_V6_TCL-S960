.class public Lorg/cybergarage/upnp/StateVariable;
.super Lorg/cybergarage/upnp/xml/NodeData;
.source "StateVariable.java"


# static fields
.field private static final DATATYPE:Ljava/lang/String; = "dataType"

.field private static final DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field public static final ELEM_NAME:Ljava/lang/String; = "stateVariable"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SENDEVENTS:Ljava/lang/String; = "sendEvents"

.field private static final SENDEVENTS_NO:Ljava/lang/String; = "no"

.field private static final SENDEVENTS_YES:Ljava/lang/String; = "yes"


# instance fields
.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private stateVariableNode:Lorg/cybergarage/xml/Node;

.field private upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lorg/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 430
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 476
    iput-object v1, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 104
    iput-object v1, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 105
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "stateVariable"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->stateVariableNode:Lorg/cybergarage/xml/Node;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 1
    .parameter "serviceNode"
    .parameter "stateVarNode"

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 430
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 111
    iput-object p2, p0, Lorg/cybergarage/upnp/StateVariable;->stateVariableNode:Lorg/cybergarage/xml/Node;

    .line 112
    return-void
.end method

.method public static isStateVariableNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 120
    const-string v0, "stateVariable"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V

    .line 396
    return-void
.end method


# virtual methods
.method public getAllowedValueList()Lorg/cybergarage/upnp/AllowedValueList;
    .locals 8

    .prologue
    .line 257
    new-instance v4, Lorg/cybergarage/upnp/AllowedValueList;

    invoke-direct {v4}, Lorg/cybergarage/upnp/AllowedValueList;-><init>()V

    .line 258
    .local v4, valueList:Lorg/cybergarage/upnp/AllowedValueList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "allowedValueList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 259
    .local v5, valueListNode:Lorg/cybergarage/xml/Node;
    if-nez v5, :cond_1

    .line 260
    const/4 v4, 0x0

    .line 269
    .end local v4           #valueList:Lorg/cybergarage/upnp/AllowedValueList;
    :cond_0
    return-object v4

    .line 261
    .restart local v4       #valueList:Lorg/cybergarage/upnp/AllowedValueList;
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v2

    .line 262
    .local v2, nNode:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 263
    invoke-virtual {v5, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 264
    .local v3, node:Lorg/cybergarage/xml/Node;
    invoke-static {v3}, Lorg/cybergarage/upnp/AllowedValue;->isAllowedValueNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 262
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/AllowedValue;

    invoke-direct {v0, v3}, Lorg/cybergarage/upnp/AllowedValue;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 267
    .local v0, allowedVal:Lorg/cybergarage/upnp/AllowedValue;
    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAllowedValueRange()Lorg/cybergarage/upnp/AllowedValueRange;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "allowedValueRange"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 316
    .local v0, valueRangeNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 317
    const/4 v1, 0x0

    .line 318
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/AllowedValueRange;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/AllowedValueRange;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;

    move-result-object v0

    return-object v0
.end method

.method public getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getQueryStatus()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPError()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 88
    .local v0, serviceNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/Service;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 197
    .local v0, node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/StateVariableData;

    .line 198
    .local v1, userData:Lorg/cybergarage/upnp/xml/StateVariableData;
    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lorg/cybergarage/upnp/xml/StateVariableData;

    .end local v1           #userData:Lorg/cybergarage/upnp/xml/StateVariableData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/StateVariableData;-><init>()V

    .line 200
    .restart local v1       #userData:Lorg/cybergarage/upnp/xml/StateVariableData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/NodeData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 203
    :cond_0
    return-object v1
.end method

.method public getStateVariableNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->stateVariableNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStatus()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowedValueList()Z
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getAllowedValueList()Lorg/cybergarage/upnp/AllowedValueList;

    move-result-object v0

    .line 306
    .local v0, valueList:Lorg/cybergarage/upnp/AllowedValueList;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasAllowedValueRange()Z
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getAllowedValueRange()Lorg/cybergarage/upnp/AllowedValueRange;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendEvents()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    const-string v4, "sendEvents"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 174
    goto :goto_0
.end method

.method public performQueryListener(Lorg/cybergarage/upnp/control/QueryRequest;)Z
    .locals 7
    .parameter "queryReq"

    .prologue
    const/4 v4, 0x1

    .line 365
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;

    move-result-object v0

    .line 366
    .local v0, listener:Lorg/cybergarage/upnp/control/QueryListener;
    if-nez v0, :cond_0

    .line 367
    const/4 v4, 0x0

    .line 381
    :goto_0
    return v4

    .line 368
    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/control/QueryResponse;

    invoke-direct {v1}, Lorg/cybergarage/upnp/control/QueryResponse;-><init>()V

    .line 369
    .local v1, queryRes:Lorg/cybergarage/upnp/control/QueryResponse;
    new-instance v2, Lorg/cybergarage/upnp/StateVariable;

    invoke-direct {v2}, Lorg/cybergarage/upnp/StateVariable;-><init>()V

    .line 370
    .local v2, retVar:Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v2, p0}, Lorg/cybergarage/upnp/StateVariable;->set(Lorg/cybergarage/upnp/StateVariable;)V

    .line 371
    const-string v5, ""

    invoke-virtual {v2, v5}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 372
    const/16 v5, 0x194

    invoke-virtual {v2, v5}, Lorg/cybergarage/upnp/StateVariable;->setStatus(I)V

    .line 373
    invoke-interface {v0, v2}, Lorg/cybergarage/upnp/control/QueryListener;->queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 374
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/control/QueryResponse;->setResponse(Lorg/cybergarage/upnp/StateVariable;)V

    .line 380
    :goto_1
    invoke-virtual {p1, v1}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/StateVariable;->getStatus()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v3

    .line 378
    .local v3, upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/UPnPStatus;->getCode()I

    move-result v5

    invoke-virtual {v3}, Lorg/cybergarage/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public postQuerylAction()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 409
    new-instance v0, Lorg/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/QueryRequest;-><init>()V

    .line 410
    .local v0, queryReq:Lorg/cybergarage/upnp/control/QueryRequest;
    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/control/QueryRequest;->setRequest(Lorg/cybergarage/upnp/StateVariable;)V

    .line 411
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 412
    invoke-virtual {v0}, Lorg/cybergarage/soap/SOAPRequest;->print()V

    .line 413
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/control/QueryRequest;->post()Lorg/cybergarage/upnp/control/QueryResponse;

    move-result-object v1

    .line 414
    .local v1, queryRes:Lorg/cybergarage/upnp/control/QueryResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 415
    invoke-virtual {v1}, Lorg/cybergarage/soap/SOAPResponse;->print()V

    .line 416
    :cond_1
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/StateVariable;->setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V

    .line 418
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_2

    .line 419
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/QueryResponse;->getReturnValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x0

    .line 423
    :goto_0
    return v2

    .line 422
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/QueryResponse;->getReturnValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public set(Lorg/cybergarage/upnp/StateVariable;)V
    .locals 1
    .parameter "stateVar"

    .prologue
    .line 184
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setDataType(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setSendEvents(Z)V

    .line 188
    return-void
.end method

.method public setAllowedValueList(Lorg/cybergarage/upnp/AllowedValueList;)V
    .locals 5
    .parameter "avl"

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    const-string v4, "allowedValueList"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 290
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    const-string v4, "allowedValueRange"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 291
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v3, "allowedValueList"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, n:Lorg/cybergarage/xml/Node;
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/AllowedValue;

    .line 296
    .local v0, av:Lorg/cybergarage/upnp/AllowedValue;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/AllowedValue;->getAllowedValueNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0

    .line 298
    .end local v0           #av:Lorg/cybergarage/upnp/AllowedValue;
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 300
    return-void
.end method

.method public setAllowedValueRange(Lorg/cybergarage/upnp/AllowedValueRange;)V
    .locals 2
    .parameter "avr"

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueList"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 339
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueRange"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 340
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 342
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 470
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 361
    return-void
.end method

.method public setSendEvents(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "sendEvents"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 165
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method setServiceNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 83
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 440
    invoke-static {p1}, Lorg/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/StateVariable;->setStatus(ILjava/lang/String;)V

    .line 441
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "descr"

    .prologue
    .line 434
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 435
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 480
    iput-object p1, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 481
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 243
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, currValue:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setValue(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 222
    .local v1, service:Lorg/cybergarage/upnp/Service;
    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v2, var:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/Service;->notify(Ljava/util/HashMap;)V

    goto :goto_0

    .line 231
    .end local v2           #var:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v1, p0}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/StateVariable;)V

    goto :goto_0
.end method
