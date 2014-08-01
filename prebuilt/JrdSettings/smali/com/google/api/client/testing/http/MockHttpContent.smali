.class public Lcom/google/api/client/testing/http/MockHttpContent;
.super Ljava/lang/Object;
.source "MockHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private content:[B

.field private encoding:Ljava/lang/String;

.field private length:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->length:J

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->content:[B

    return-void
.end method


# virtual methods
.method public final getContent()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->content:[B

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->length:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public retrySupported()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public setContent([B)Lcom/google/api/client/testing/http/MockHttpContent;
    .locals 1
    .parameter "content"

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->content:[B

    .line 88
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockHttpContent;
    .locals 0
    .parameter "encoding"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpContent;->encoding:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setLength(J)Lcom/google/api/client/testing/http/MockHttpContent;
    .locals 2
    .parameter "length"

    .prologue
    .line 111
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 112
    iput-wide p1, p0, Lcom/google/api/client/testing/http/MockHttpContent;->length:J

    .line 113
    return-object p0

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockHttpContent;
    .locals 0
    .parameter "type"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpContent;->type:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpContent;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 61
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 62
    return-void
.end method
