.class public Lorg/cybergarage/upnp/AllowedValueList;
.super Ljava/util/Vector;
.source "AllowedValueList.java"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "allowedValueList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 42
    new-instance v1, Lorg/cybergarage/upnp/AllowedValue;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lorg/cybergarage/upnp/AllowedValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllowedValue(I)Lorg/cybergarage/upnp/AllowedValue;
    .locals 1
    .parameter "n"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/AllowedValue;

    return-object v0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/AllowedValue;

    .line 60
    .local v0, av:Lorg/cybergarage/upnp/AllowedValue;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/AllowedValue;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 63
    .end local v0           #av:Lorg/cybergarage/upnp/AllowedValue;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
