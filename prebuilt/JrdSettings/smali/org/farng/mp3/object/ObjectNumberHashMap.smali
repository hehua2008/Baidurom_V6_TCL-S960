.class public Lorg/farng/mp3/object/ObjectNumberHashMap;
.super Lorg/farng/mp3/object/ObjectNumberFixedLength;
.source "ObjectNumberHashMap.java"

# interfaces
.implements Lorg/farng/mp3/object/ObjectHashMapInterface;


# static fields
.field public static final GENRE:Ljava/lang/String; = "Genre"

.field public static final ID3V2_FRAME_DESCRIPTION:Ljava/lang/String; = "ID3v2 Frame Description"

.field public static final INTERPOLATION_METHOD:Ljava/lang/String; = "Interpolation Method"

.field public static final PICTURE_TYPE:Ljava/lang/String; = "Picture Type"

.field public static final RECIEVED_AS:Ljava/lang/String; = "Recieved As"

.field public static final TEXT_ENCODING:Ljava/lang/String; = "Text Encoding"

.field public static final TIME_STAMP_FORMAT:Ljava/lang/String; = "Time Stamp Format"

.field public static final TYPE_OF_CHANNEL:Ljava/lang/String; = "Type Of Channel"

.field public static final TYPE_OF_EVENT:Ljava/lang/String; = "Type Of Event"


# instance fields
.field private hasEmptyValue:Z

.field private idToString:Ljava/util/HashMap;

.field private stringToId:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "identifier"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    .line 28
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    .line 36
    const-string v0, "Genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lorg/farng/mp3/TagConstant;->genreStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 38
    sget-object v0, Lorg/farng/mp3/TagConstant;->genreIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    .line 67
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v0, "Text Encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lorg/farng/mp3/TagConstant;->textEncodingStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lorg/farng/mp3/TagConstant;->textEncodingIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "Interpolation Method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lorg/farng/mp3/TagConstant;->interpolationMethodStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lorg/farng/mp3/TagConstant;->interpolationMethodIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "ID3v2 Frame Description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    sget-object v0, Lorg/farng/mp3/TagConstant;->id3v2_4FrameStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 48
    sget-object v0, Lorg/farng/mp3/TagConstant;->id3v2_4FrameIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 49
    :cond_3
    const-string v0, "Picture Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    sget-object v0, Lorg/farng/mp3/TagConstant;->pictureTypeStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 51
    sget-object v0, Lorg/farng/mp3/TagConstant;->pictureTypeIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "Type Of Event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    sget-object v0, Lorg/farng/mp3/TagConstant;->typeOfEventStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 54
    sget-object v0, Lorg/farng/mp3/TagConstant;->typeOfEventIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 55
    :cond_5
    const-string v0, "Time Stamp Format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    sget-object v0, Lorg/farng/mp3/TagConstant;->timeStampFormatStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lorg/farng/mp3/TagConstant;->timeStampFormatIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 58
    :cond_6
    const-string v0, "Type Of Channel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    sget-object v0, Lorg/farng/mp3/TagConstant;->typeOfChannelStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lorg/farng/mp3/TagConstant;->typeOfChannelIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto :goto_0

    .line 61
    :cond_7
    const-string v0, "Recieved As"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    sget-object v0, Lorg/farng/mp3/TagConstant;->recievedAsStringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 63
    sget-object v0, Lorg/farng/mp3/TagConstant;->recievedAsIdToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 65
    :cond_8
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

.method public constructor <init>(Lorg/farng/mp3/object/ObjectNumberHashMap;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Lorg/farng/mp3/object/ObjectNumberFixedLength;)V

    .line 27
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    .line 28
    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    .line 74
    iget-boolean v0, p1, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    iput-boolean v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    .line 77
    iget-object v0, p1, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    .line 78
    iget-object v0, p1, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 102
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectNumberHashMap;

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 105
    check-cast v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    .line 106
    .local v0, objectNumberHashMap:Lorg/farng/mp3/object/ObjectNumberHashMap;
    iget-boolean v2, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    iget-boolean v3, v0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    if-ne v2, v3, :cond_0

    .line 109
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 110
    iget-object v2, v0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 118
    :cond_2
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 119
    iget-object v2, v0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 127
    :cond_3
    invoke-super {p0, p1}, Lorg/farng/mp3/object/ObjectNumberFixedLength;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 114
    :cond_4
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 123
    :cond_5
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public getIdToString()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStringToId()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->stringToId:Ljava/util/HashMap;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    .line 136
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v0, treeSet:Ljava/util/TreeSet;
    iget-boolean v1, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->hasEmptyValue:Z

    if-eqz v1, :cond_1

    .line 138
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 90
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 99
    :goto_0
    return-void

    .line 92
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Short;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 94
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 97
    .restart local p1
    :cond_2
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 145
    const-string v0, ""

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, ""

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectNumberHashMap;->idToString:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
