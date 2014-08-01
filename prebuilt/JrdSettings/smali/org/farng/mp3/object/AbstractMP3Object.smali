.class public abstract Lorg/farng/mp3/object/AbstractMP3Object;
.super Ljava/lang/Object;
.source "AbstractMP3Object.java"


# instance fields
.field protected identifier:Ljava/lang/String;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/AbstractMP3Object;)V
    .locals 4
    .parameter "copyObject"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 33
    iput-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 73
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    new-instance v1, Ljava/lang/String;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 37
    new-instance v1, Ljava/lang/Boolean;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 39
    new-instance v1, Ljava/lang/Byte;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Byte;-><init>(B)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 41
    new-instance v1, Ljava/lang/Character;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_4
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 43
    new-instance v1, Ljava/lang/Double;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_5
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 45
    new-instance v1, Ljava/lang/Float;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_6
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 47
    new-instance v1, Ljava/lang/Integer;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 48
    :cond_7
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 49
    new-instance v1, Ljava/lang/Long;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :cond_8
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 51
    new-instance v1, Ljava/lang/Short;

    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Short;-><init>(S)V

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 52
    :cond_9
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 54
    :cond_a
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_b

    .line 55
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 56
    :cond_b
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 58
    :cond_c
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_d

    .line 59
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [D

    check-cast v0, [D

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :cond_d
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_e

    .line 61
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 62
    :cond_e
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_f

    .line 63
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :cond_f
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_10

    .line 65
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 66
    :cond_10
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [S

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 68
    :cond_11
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 69
    iget-object v0, p1, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create copy of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    instance-of v1, p1, Lorg/farng/mp3/object/AbstractMP3Object;

    if-nez v1, :cond_0

    move v1, v3

    .line 201
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 135
    check-cast v0, Lorg/farng/mp3/object/AbstractMP3Object;

    .line 136
    .local v0, abstractMp3Object:Lorg/farng/mp3/object/AbstractMP3Object;
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 137
    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    move v1, v4

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v1, :cond_4

    :cond_3
    move v1, v3

    .line 142
    goto :goto_0

    .line 146
    :cond_4
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_5

    .line 147
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [Z

    check-cast v1, [Z

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [Z

    check-cast v2, [Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 148
    goto :goto_0

    .line 152
    :cond_5
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_6

    .line 153
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 154
    goto :goto_0

    .line 158
    :cond_6
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [C

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [C

    if-eqz v1, :cond_7

    .line 159
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [C

    check-cast v1, [C

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [C

    check-cast v2, [C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 160
    goto/16 :goto_0

    .line 164
    :cond_7
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8

    .line 165
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [D

    check-cast v1, [D

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [D

    check-cast v2, [D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 166
    goto/16 :goto_0

    .line 170
    :cond_8
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_9

    .line 171
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [F

    check-cast v2, [F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 172
    goto/16 :goto_0

    .line 176
    :cond_9
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_a

    .line 177
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 178
    goto/16 :goto_0

    .line 182
    :cond_a
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_b

    .line 183
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 184
    goto/16 :goto_0

    .line 188
    :cond_b
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_c

    .line 189
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 190
    goto/16 :goto_0

    .line 194
    :cond_c
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [S

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    instance-of v1, v1, [S

    if-eqz v1, :cond_d

    .line 195
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [S

    check-cast v1, [S

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, [S

    check-cast v2, [S

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_d
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 199
    goto/16 :goto_0

    :cond_e
    move v1, v4

    .line 201
    goto/16 :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSize()I
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final readByteArray([B)V
    .locals 1
    .parameter "arr"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/farng/mp3/object/AbstractMP3Object;->readByteArray([BI)V

    .line 89
    return-void
.end method

.method public readByteArray([BI)V
    .locals 4
    .parameter "arr"
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 103
    if-nez p2, :cond_1

    .line 104
    move-object v1, p1

    .line 111
    .local v1, subarr:[B
    :goto_0
    const/4 v2, 0x2

    :try_start_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 112
    const/4 v2, -0x1

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    if-ne v2, v3, :cond_2

    const/4 v2, -0x2

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    if-ne v2, v3, :cond_2

    .line 113
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-16"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/farng/mp3/object/AbstractMP3Object;->readString(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 106
    .end local v1           #subarr:[B
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p2

    new-array v1, v2, [B

    .line 107
    .restart local v1       #subarr:[B
    array-length v2, v1

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "GBK"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/farng/mp3/object/AbstractMP3Object;->readString(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public final readString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/farng/mp3/object/AbstractMP3Object;->readString(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 2
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/object/AbstractMP3Object;->readByteArray([BI)V

    .line 127
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 80
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public writeByteArray()[B
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/farng/mp3/object/AbstractMP3Object;->writeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/farng/mp3/object/AbstractMP3Object;->writeByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
