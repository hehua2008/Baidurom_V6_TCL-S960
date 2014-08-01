.class public Lorg/farng/mp3/object/ObjectGroupRepeated;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectGroupRepeated.java"


# instance fields
.field private objectList:Ljava/util/ArrayList;

.field private propertyList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectGroupRepeated;)V
    .locals 3
    .parameter "copyObject"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 36
    iget-object v2, p1, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 37
    .local v1, newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v1           #newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 40
    iget-object v2, p1, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 41
    .restart local v1       #newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    .end local v1           #newObject:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public addObject(Lorg/farng/mp3/object/AbstractMP3Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 65
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public addProperty(Lorg/farng/mp3/object/AbstractMP3Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 73
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectGroupRepeated;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 76
    check-cast v0, Lorg/farng/mp3/object/ObjectGroupRepeated;

    .line 77
    .local v0, objectGroupRepeated:Lorg/farng/mp3/object/ObjectGroupRepeated;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getObjectList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPropertyList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, size:I
    iget-object v3, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 57
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 59
    .local v1, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v1}, Lorg/farng/mp3/object/AbstractMP3Object;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 61
    .end local v1           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_0
    return v2
.end method

.method public readByteArray([BI)V
    .locals 7
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Byte array is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_0
    if-ltz p2, :cond_1

    array-length v4, p1

    if-lt p2, v4, :cond_2

    .line 91
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Offset to byte array is out of bounds: offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", array.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_2
    iget-object v4, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 101
    :cond_3
    array-length v4, p1

    if-ge p2, v4, :cond_4

    .line 102
    iget-object v4, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->propertyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 103
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, className:Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 107
    .local v3, object:Lorg/farng/mp3/object/AbstractMP3Object;
    iget-object v4, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v3, p1, p2}, Lorg/farng/mp3/object/AbstractMP3Object;->readByteArray([BI)V

    .line 109
    invoke-virtual {v3}, Lorg/farng/mp3/object/AbstractMP3Object;->getSize()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    add-int/2addr p2, v4

    goto :goto_0

    .line 110
    .end local v3           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0           #className:Ljava/lang/Class;
    .end local v1           #ex:Ljava/lang/InstantiationException;
    .end local v2           #iterator:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    const-string v2, ""

    .line 127
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 128
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 130
    .local v1, object:Lorg/farng/mp3/object/AbstractMP3Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/farng/mp3/object/AbstractMP3Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 132
    .end local v1           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    :cond_0
    return-object v2
.end method

.method public writeByteArray()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectGroupRepeated;->getSize()I

    move-result v4

    new-array v3, v4, [B

    .line 139
    .local v3, totalArray:[B
    iget-object v4, p0, Lorg/farng/mp3/object/ObjectGroupRepeated;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 140
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 142
    .local v1, object:Lorg/farng/mp3/object/AbstractMP3Object;
    invoke-virtual {v1}, Lorg/farng/mp3/object/AbstractMP3Object;->writeByteArray()[B

    move-result-object v2

    .line 143
    .local v2, objectArray:[B
    array-length v4, v3

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 145
    .end local v1           #object:Lorg/farng/mp3/object/AbstractMP3Object;
    .end local v2           #objectArray:[B
    :cond_0
    return-object v3
.end method
