.class public Lorg/farng/mp3/object/ObjectStringDateTime;
.super Lorg/farng/mp3/object/ObjectStringSizeTerminated;
.source "ObjectStringDateTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "identifier"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectStringDateTime;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Lorg/farng/mp3/object/ObjectStringSizeTerminated;)V

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 40
    instance-of v0, p1, Lorg/farng/mp3/object/ObjectStringDateTime;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 30
    :cond_0
    return-void
.end method
