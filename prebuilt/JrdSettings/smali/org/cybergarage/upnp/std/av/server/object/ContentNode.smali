.class public abstract Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.super Lorg/cybergarage/xml/Node;
.source "ContentNode.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final PARENT_ID:Ljava/lang/String; = "parentID"

.field public static final RESTRICTED:Ljava/lang/String; = "restricted"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private contentDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

.field private propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 95
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    .line 50
    return-void
.end method

.method private outputPropertyAttributes(Ljava/io/PrintWriter;Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V
    .locals 5
    .parameter "ps"
    .parameter "prop"

    .prologue
    .line 331
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getNAttributes()I

    move-result v2

    .line 332
    .local v2, nAttributes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 333
    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 334
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

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    :cond_0
    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 119
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 121
    return-void
.end method

.method public addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V
    .locals 1
    .parameter "prop"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public getContainerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "dlna:containerType"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->contentDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    return-object v0
.end method

.method public getNProperties()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "parentID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .locals 1
    .parameter "index"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->getContentProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->getContentProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyAttribureValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "propName"
    .parameter "attrName"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 202
    .local v0, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPropertyIntegerValue(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, val:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v1

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPropertyLongValue(Ljava/lang/String;)J
    .locals 3
    .parameter "name"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, val:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 182
    :goto_0
    return-wide v1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 162
    .local v0, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRestricted()I
    .locals 1

    .prologue
    .line 270
    const-string v0, "restricted"

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "dc:title"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPnPClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string v0, "upnp:class"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriteStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "upnp:writeStatus"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNProperties()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertPropertyAt(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;I)V
    .locals 1
    .parameter "prop"
    .parameter "index"

    .prologue
    .line 115
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 116
    return-void
.end method

.method public isContainerNode()Z
    .locals 1

    .prologue
    .line 79
    instance-of v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemNode()Z
    .locals 1

    .prologue
    .line 86
    instance-of v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUPnPClassStartWith(Ljava/lang/String;)Z
    .locals 2
    .parameter "targetClass"

    .prologue
    const/4 v1, 0x0

    .line 303
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, upnpClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .locals 14
    .parameter "ps"
    .parameter "indentLevel"
    .parameter "hasChildNode"

    .prologue
    .line 340
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, indentString:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->hasProperties()Z

    move-result v12

    if-nez v12, :cond_0

    .line 346
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 354
    const-string v12, ">"

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNProperties()I

    move-result v5

    .line 357
    .local v5, nProps:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 358
    add-int/lit8 v12, p2, 0x1

    invoke-virtual {p0, v12}, Lorg/cybergarage/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, propIndentString:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v7

    .line 360
    .local v7, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, propName:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, propValue:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->hasAttributes()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 363
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p1, v7}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputPropertyAttributes(Ljava/io/PrintWriter;Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 368
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 370
    .end local v7           #prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .end local v8           #propIndentString:Ljava/lang/String;
    .end local v9           #propName:Ljava/lang/String;
    .end local v10           #propValue:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputResources(Ljava/io/PrintWriter;)V

    .line 371
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_3

    .line 372
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 373
    .local v4, nChildNodes:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    .line 374
    invoke-virtual {p0, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 375
    .local v1, cnode:Lorg/cybergarage/xml/Node;
    add-int/lit8 v12, p2, 0x1

    const/4 v13, 0x1

    invoke-virtual {v1, p1, v12, v13}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 379
    .end local v1           #cnode:Lorg/cybergarage/xml/Node;
    .end local v4           #nChildNodes:I
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public output(Ljava/io/PrintWriter;Z)V
    .locals 12
    .parameter "ps"
    .parameter "hasChildNode"

    .prologue
    const/4 v11, 0x1

    .line 384
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, value:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->hasProperties()Z

    move-result v9

    if-nez v9, :cond_0

    .line 388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 396
    const-string v9, ">"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNProperties()I

    move-result v3

    .line 399
    .local v3, nProps:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 400
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v5

    .line 401
    .local v5, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, propName:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, propValue:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->hasAttributes()Z

    move-result v9

    if-ne v9, v11, :cond_1

    .line 404
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1, v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputPropertyAttributes(Ljava/io/PrintWriter;Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 409
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 411
    .end local v5           #prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .end local v6           #propName:Ljava/lang/String;
    .end local v7           #propValue:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputResources(Ljava/io/PrintWriter;)V

    .line 412
    if-ne p2, v11, :cond_3

    .line 413
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v2

    .line 414
    .local v2, nChildNodes:I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    .line 415
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 416
    .local v0, cnode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, p1, v11}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;Z)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 420
    .end local v0           #cnode:Lorg/cybergarage/xml/Node;
    .end local v2           #nChildNodes:I
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public abstract outputResources(Ljava/io/PrintWriter;)V
.end method

.method public removeProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->removeProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)Z

    move-result v0

    return v0
.end method

.method public removeProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)Z
    .locals 1
    .parameter "prop"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract set(Lorg/cybergarage/xml/Node;)V
.end method

.method public setContainerType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 233
    const-string v0, "dlna:containerType"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V
    .locals 0
    .parameter "cdir"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->contentDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .line 61
    return-void
.end method

.method public setID(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 219
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 224
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setParentID(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 246
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public setParentID(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 251
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 157
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 144
    .local v0, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .end local v0           #prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v0       #prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    goto :goto_0
.end method

.method public setPropertyAttribure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "propName"
    .parameter "attrName"
    .parameter "value"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 192
    .local v0, prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .end local v0           #prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .restart local v0       #prop:Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 196
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setRestricted(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 265
    const-string v0, "restricted"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    .line 266
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 279
    const-string v0, "dc:title"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setUPnPClass(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 293
    const-string v0, "upnp:class"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setWriteStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 317
    const-string v0, "upnp:writeStatus"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "enc"
    .parameter "hasChildNode"

    .prologue
    .line 424
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 425
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 426
    .local v1, pr:Ljava/io/PrintWriter;
    invoke-virtual {p0, v1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->output(Ljava/io/PrintWriter;Z)V

    .line 427
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 429
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 434
    :goto_0
    return-object v2

    .line 432
    :catch_0
    move-exception v2

    .line 434
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
