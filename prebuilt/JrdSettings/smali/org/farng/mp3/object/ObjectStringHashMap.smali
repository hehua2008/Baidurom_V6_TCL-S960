.class public Lorg/farng/mp3/object/ObjectStringHashMap;
.super Lorg/farng/mp3/object/ObjectStringFixedLength;
.source "ObjectStringHashMap.java"

# interfaces
.implements Lorg/farng/mp3/object/ObjectHashMapInterface;


# static fields
.field public static final LANGUAGE:Ljava/lang/String; = "Language"


# instance fields
.field hasEmptyValue:Z

.field idToString:Ljava/util/HashMap;

.field stringToId:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "identifier"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/farng/mp3/object/ObjectStringFixedLength;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    .line 20
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    .line 28
    const-string v0, "Language"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lorg/farng/mp3/TagConstant;->languageStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lorg/farng/mp3/TagConstant;->languageIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    .line 34
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hashmap identifier not defined in this class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectStringHashMap;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/ObjectStringFixedLength;-><init>(Lorg/farng/mp3/object/ObjectStringFixedLength;)V

    .line 19
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    .line 20
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    .line 41
    iget-boolean v0, p1, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    .line 42
    iget-object v0, p1, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    .line 43
    iget-object v0, p1, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 63
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectStringHashMap;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 66
    check-cast v0, Lorg/farng/mp3/object/ObjectStringHashMap;

    .line 67
    .local v0, objectStringHashMap:Lorg/farng/mp3/object/ObjectStringHashMap;
    iget-boolean v2, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    iget-boolean v3, v0, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    if-ne v2, v3, :cond_0

    .line 70
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 71
    iget-object v2, v0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 79
    :cond_2
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 80
    iget-object v2, v0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 88
    :cond_3
    invoke-super {p0, p1}, Lorg/farng/mp3/object/ObjectStringFixedLength;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 75
    :cond_4
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 84
    :cond_5
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public getIdToString()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStringToId()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->stringToId:Ljava/util/HashMap;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 97
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v0, treeSet:Ljava/util/TreeSet;
    iget-boolean v1, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->hasEmptyValue:Z

    if-eqz v1, :cond_1

    .line 99
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 55
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 60
    :goto_0
    return-void

    .line 58
    .restart local p1
    :cond_0
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    const-string v0, ""

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectStringHashMap;->idToString:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
