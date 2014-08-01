.class public Lorg/farng/mp3/object/ObjectStringDate;
.super Lorg/farng/mp3/object/ObjectStringFixedLength;
.source "ObjectStringDate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 18
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/farng/mp3/object/ObjectStringFixedLength;-><init>(Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectStringDate;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/ObjectStringFixedLength;-><init>(Lorg/farng/mp3/object/ObjectStringFixedLength;)V

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 42
    instance-of v0, p1, Lorg/farng/mp3/object/ObjectStringDate;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/object/ObjectStringFixedLength;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lorg/farng/mp3/TagUtility;->stripChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lorg/farng/mp3/TagUtility;->stripChar(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method
