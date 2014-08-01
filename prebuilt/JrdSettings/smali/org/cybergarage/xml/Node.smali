.class public Lorg/cybergarage/xml/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private attrList:Lorg/cybergarage/xml/AttributeList;

.field private name:Ljava/lang/String;

.field private nodeList:Lorg/cybergarage/xml/NodeList;

.field private parentNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    .line 99
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 156
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 246
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    .line 334
    iput-object v1, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 180
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    .line 182
    return-void
.end method

.method public addAttribute(Lorg/cybergarage/xml/Attribute;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public addNode(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 267
    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 268
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public addValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 140
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttribute(I)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .parameter "index"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .parameter "name"

    .prologue
    .line 168
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeIntegerValue(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, val:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 230
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v1

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 219
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getIndentLevelString(I)Ljava/lang/String;
    .locals 1
    .parameter "nIndentLevel"

    .prologue
    .line 357
    const-string v0, "   "

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/Node;->getIndentLevelString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndentLevelString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "nIndentLevel"
    .parameter "space"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 370
    .local v0, indentString:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 371
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 277
    const/4 v1, -0x1

    .line 278
    .local v1, index:I
    iget-object v4, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cybergarage/xml/Node;

    .line 281
    .local v3, n:Lorg/cybergarage/xml/Node;
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 284
    .end local v1           #index:I
    .end local v3           #n:Lorg/cybergarage/xml/Node;
    .local v2, index:I
    :goto_0
    return v2

    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0
.end method

.method public getNAttributes()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNNodes()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 253
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 1
    .parameter "name"

    .prologue
    .line 258
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 1
    .parameter "name"

    .prologue
    .line 263
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 325
    .local v0, node:Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 327
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getParentNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getRootNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, rootNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 88
    .local v0, parentNode:Lorg/cybergarage/xml/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    move-object v1, v0

    .line 90
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_0
    return-object v1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNodes()Z
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAttributeAt(Lorg/cybergarage/xml/Attribute;I)V
    .locals 1
    .parameter "attr"
    .parameter "index"

    .prologue
    .line 176
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 177
    return-void
.end method

.method public insertNode(Lorg/cybergarage/xml/Node;I)V
    .locals 1
    .parameter "node"
    .parameter "index"

    .prologue
    .line 272
    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 273
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 274
    return-void
.end method

.method public isName(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .locals 8
    .parameter "ps"
    .parameter "indentLevel"
    .parameter "hasChildNode"

    .prologue
    .line 387
    invoke-virtual {p0, p2}, Lorg/cybergarage/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, indentString:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_3

    .line 393
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 396
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 398
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "></"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 400
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 408
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 411
    .local v3, nChildNodes:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 412
    invoke-virtual {p0, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 413
    .local v0, cnode:Lorg/cybergarage/xml/Node;
    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, p1, v6, v7}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    .end local v0           #cnode:Lorg/cybergarage/xml/Node;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public output(Ljava/io/PrintWriter;Z)V
    .locals 7
    .parameter "ps"
    .parameter "hasChildNode"

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_3

    .line 424
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 427
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 429
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "></"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 431
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 439
    const-string v5, ">"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v2

    .line 442
    .local v2, nChildNodes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 443
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 444
    .local v0, cnode:Lorg/cybergarage/xml/Node;
    const/4 v5, 0x1

    invoke-virtual {v0, p1, v5}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;Z)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    .end local v0           #cnode:Lorg/cybergarage/xml/Node;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public outputAttributes(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "ps"

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v2

    .line 379
    .local v2, nAttributes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 380
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 381
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    :cond_0
    return-void
.end method

.method public print()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->print(Z)V

    .line 497
    return-void
.end method

.method public print(Z)V
    .locals 2
    .parameter "hasChildNode"

    .prologue
    .line 489
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 490
    .local v0, pr:Ljava/io/PrintWriter;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 491
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 492
    return-void
.end method

.method public removeAllNodes()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 299
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->removeAttribute(Lorg/cybergarage/xml/Attribute;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/cybergarage/xml/Attribute;)Z
    .locals 1
    .parameter "attr"

    .prologue
    .line 185
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 293
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Lorg/cybergarage/xml/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 289
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 205
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .restart local v0       #attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNameSpace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ns"
    .parameter "value"

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 314
    .local v0, node:Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0           #node:Lorg/cybergarage/xml/Node;
    invoke-direct {v0, p1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v0       #node:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public setParentNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 72
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    .line 73
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 338
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 129
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    const-string v0, "utf-8"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/xml/Node;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "enc"
    .parameter "hasChildNode"

    .prologue
    .line 451
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 453
    .local v1, pr:Ljava/io/PrintWriter;
    invoke-virtual {p0, v1, p2}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;Z)V

    .line 454
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 456
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 461
    :goto_0
    return-object v2

    .line 459
    :catch_0
    move-exception v2

    .line 461
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toXMLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->toXMLString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXMLString(Z)Ljava/lang/String;
    .locals 3
    .parameter "hasChildNode"

    .prologue
    .line 471
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, xmlStr:Ljava/lang/String;
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    return-object v0
.end method
