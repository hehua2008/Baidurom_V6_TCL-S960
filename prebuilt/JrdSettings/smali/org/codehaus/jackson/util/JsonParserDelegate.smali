.class public Lorg/codehaus/jackson/util/JsonParserDelegate;
.super Lorg/codehaus/jackson/JsonParser;
.source "JsonParserDelegate.java"


# instance fields
.field protected delegate:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonParser;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    .line 27
    return-void
.end method


# virtual methods
.method public canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z
    .locals 1
    .parameter "schema"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z

    move-result v0

    return v0
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 117
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 91
    return-void
.end method

.method public disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .parameter "f"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;

    .line 54
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .parameter "f"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;

    .line 48
    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 1
    .parameter "b64variant"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getByteValue()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getByteValue()B

    move-result v0

    return v0
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getInputSource()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLastClearedToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getLastClearedToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getShortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v0

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->hasCurrentToken()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 37
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->setCodec(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 38
    return-void
.end method

.method public setSchema(Lorg/codehaus/jackson/FormatSchema;)V
    .locals 1
    .parameter "schema"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 65
    return-void
.end method

.method public skipChildren()Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 249
    return-object p0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->version()Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
