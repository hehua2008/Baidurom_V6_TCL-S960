.class public Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
.super Ljava/lang/Object;
.source "ContentProperty.java"


# instance fields
.field private attrList:Lorg/cybergarage/xml/AttributeList;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 67
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 67
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 31
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 91
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    .line 93
    return-void
.end method

.method public addAttribute(Lorg/cybergarage/xml/Attribute;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 83
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public getAttribute(I)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .parameter "index"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeIntegerValue(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, val:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 130
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 132
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNAttributes()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getNAttributes()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 107
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
    .line 87
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 88
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->removeAttribute(Lorg/cybergarage/xml/Attribute;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/cybergarage/xml/Attribute;)Z
    .locals 1
    .parameter "attr"

    .prologue
    .line 96
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 116
    .local v0, attr:Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    .end local v0           #attr:Lorg/cybergarage/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .restart local v0       #attr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 41
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->value:Ljava/lang/String;

    .line 56
    return-void
.end method
