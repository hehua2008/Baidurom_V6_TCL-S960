.class Lcom/google/api/client/json/gson/GsonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "GsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/gson/GsonParser$1;
    }
.end annotation


# instance fields
.field private currentNameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentText:Ljava/lang/String;

.field private currentToken:Lcom/google/api/client/json/JsonToken;

.field private final factory:Lcom/google/api/client/json/gson/GsonFactory;

.field private final reader:Lcom/google/gson/stream/JsonReader;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/gson/GsonFactory;Lcom/google/gson/stream/JsonReader;)V
    .locals 1
    .parameter "factory"
    .parameter "reader"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonParser;->factory:Lcom/google/api/client/json/gson/GsonFactory;

    .line 51
    iput-object p2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 54
    return-void
.end method

.method private checkNumber()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 140
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 59
    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 104
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getByteValue()B
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 79
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentToken()Lcom/google/api/client/json/JsonToken;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 122
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 128
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->factory:Lcom/google/api/client/json/gson/GsonFactory;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 98
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 92
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 134
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortValue()S
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 85
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsignedIntegerValue()Lcom/google/common/primitives/UnsignedInteger;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 110
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedLongValue()Lcom/google/common/primitives/UnsignedLong;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/api/client/json/gson/GsonParser;->checkNumber()V

    .line 116
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/google/api/client/json/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/google/api/client/json/gson/GsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    iget-object v3, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    .local v1, peek:Lcom/google/gson/stream/JsonToken;
    :goto_1
    sget-object v2, Lcom/google/api/client/json/gson/GsonParser$1;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 219
    iput-object v4, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 220
    iput-object v4, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 222
    :goto_2
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    return-object v2

    .line 152
    .end local v1           #peek:Lcom/google/gson/stream/JsonToken;
    :pswitch_0
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 153
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 157
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/EOFException;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .restart local v1       #peek:Lcom/google/gson/stream/JsonToken;
    goto :goto_1

    .line 171
    .end local v0           #e:Ljava/io/EOFException;
    :pswitch_2
    const-string v2, "["

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 172
    sget-object v2, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_2

    .line 175
    :pswitch_3
    const-string v2, "]"

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 176
    sget-object v2, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 177
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    iget-object v3, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_2

    .line 181
    :pswitch_4
    const-string v2, "{"

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 182
    sget-object v2, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_2

    .line 185
    :pswitch_5
    const-string v2, "}"

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 186
    sget-object v2, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 187
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    iget-object v3, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    goto :goto_2

    .line 191
    :pswitch_6
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const-string v2, "true"

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 193
    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_2

    .line 195
    :cond_1
    const-string v2, "false"

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 196
    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_2

    .line 200
    :pswitch_7
    const-string v2, "null"

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 201
    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 202
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_2

    .line 205
    :pswitch_8
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 206
    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_2

    .line 209
    :pswitch_9
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    :goto_3
    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_2

    :cond_2
    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 214
    :pswitch_a
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 215
    sget-object v2, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    iput-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    .line 216
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    iget-object v3, p0, Lcom/google/api/client/json/gson/GsonParser;->currentNameStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public skipChildren()Lcom/google/api/client/json/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/google/api/client/json/gson/GsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v1}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-object p0

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 230
    const-string v0, "]"

    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 235
    const-string v0, "}"

    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentText:Ljava/lang/String;

    .line 236
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->currentToken:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
