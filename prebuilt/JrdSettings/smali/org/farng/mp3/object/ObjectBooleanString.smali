.class public Lorg/farng/mp3/object/ObjectBooleanString;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectBooleanString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "identifier"

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectBooleanString;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 31
    instance-of v0, p1, Lorg/farng/mp3/object/ObjectBooleanString;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 4
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "String is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 42
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset to image string is out of bounds: offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", string.length()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 48
    .local v0, ch:C
    new-instance v2, Ljava/lang/Boolean;

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 49
    return-void

    .line 48
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "0"

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
