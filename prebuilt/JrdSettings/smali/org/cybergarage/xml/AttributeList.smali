.class public Lorg/cybergarage/xml/AttributeList;
.super Ljava/util/Vector;
.source "AttributeList.java"


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
.method public getAttribute(I)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .parameter "n"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/xml/Attribute;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_1

    move-object v0, v3

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 37
    .local v2, nLists:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 38
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 39
    .local v0, elem:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #elem:Lorg/cybergarage/xml/Attribute;
    :cond_2
    move-object v0, v3

    .line 42
    goto :goto_0
.end method
