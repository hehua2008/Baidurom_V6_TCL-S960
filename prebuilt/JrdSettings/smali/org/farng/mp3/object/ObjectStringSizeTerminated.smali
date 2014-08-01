.class public Lorg/farng/mp3/object/ObjectStringSizeTerminated;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectStringSizeTerminated.java"


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

.method public constructor <init>(Lorg/farng/mp3/object/ObjectStringSizeTerminated;)V
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
    .line 35
    instance-of v0, p1, Lorg/farng/mp3/object/ObjectStringSizeTerminated;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;->writeString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 31
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 3
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset to String is out of bounds: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", string.length()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
